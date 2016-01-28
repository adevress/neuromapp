/*
 * Neuromapp - thread.h, Copyright (c), 2015,
 * Kai Langen - Swiss Federal Institute of technology in Lausanne,
 * kai.langen@epfl.ch,
 * All rights reserved.
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 3.0 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library.
 */

/**
 * @file neuromapp/queueing/thread.h
 * \brief Contains NrnThreadData class declaration.
 */

#ifndef thread_h
#define thread_h

#include <queue>
#include <vector>
#include <iostream>
#include <cassert>
#include <unistd.h>

#include "queueing/queue.h"
#include "queueing/spinlock_queue.h"
#include "queueing/lock.h"

#ifdef _OPENMP
#include <omp.h>
#endif

namespace queueing {

enum implementation {mutex, spinlock};

template<implementation I>
struct InterThread;

template<>
struct InterThread<mutex>{
	/// vector for inter thread events
	spinlock_queue<event> inter_thread_events_;
	std::vector<event> q_;
#ifdef _OPENMP
	OMPLock lock_;
#else
	DummyLock lock_;
#endif
};

template<>
struct InterThread<spinlock>{
	/// linked-list for inter thread events
	spinlock_queue<event> q_;
};

template<implementation I>
class NrnThreadData{
private:
	queue qe_;
	InterThread<I> inter_thread_events_;
public:
	int ite_received_;
	int enqueued_;
	int delivered_;

	/** \fn NrnThreadData()
	    \brief initializes NrnThreadData and creates a new priority queue
	    \param i provides the thread id for this NrnThreadData
	    \param verbose verbose mode: 1 = ON, 0 = OFF
	 */
	NrnThreadData(): ite_received_(0), enqueued_(0), delivered_(0) {}

	/** \fn void selfSend(double d, double tt)
	 *  \brief send an item directly to my priority queue
	 *  \param d the Event's data value
	 *  \param tt the Event's time value
	 **/
	void selfSend(double d, double tt){
		enqueued_++;
		qe_.insert(tt, d);
	}

	/** \fn bool deliver(int id, int til)
	    \brief dequeue all items with time < til
	    \param id used in sanity check to verify destination
	    \param til the current time. compared against event times
	    \return true if event delivered, else false
	 */
	bool deliver(int id, int til){
		event q;
		if(qe_.atomic_dq(til,q)){
		    delivered_++;
			assert((int)q.data_ == id);

			// Use imitation of the point_receive calculation time (ms).
			// Varies per a specific simulation case.
			//usleep(10);

			return true;
		}
		return false;
	}

	/** \fn interThreadSize()
	 *  \return the size of inter_thread_events_
	 */
	size_t interThreadSize(){return inter_thread_events_.q_.size();}

    /** \fn PQSize()
	 *  \return the size of qe_
	 */
	size_t PQSize(){return qe_.size();}

	/** \fn void interThreadSend(double d, double tt)
	    \brief sends an Event to the destination thread's array
	    \param d the event's data value
	    \param tt the event's time value
	 */
	void interThreadSend(double d, double tt) {}

	/** \fn void enqeueMyEvents()
	    \brief (for this thread) push all the events from my
	    ites_ to my priority queue
	 */
	void enqueueMyEvents() {}
};

template<>
inline void NrnThreadData<mutex>::interThreadSend(double d, double tt){
	inter_thread_events_.lock_.acquire();
	event ite(d,tt,true);
	ite_received_++;
	inter_thread_events_.q_.push_back(ite);
	inter_thread_events_.lock_.release();
}

template<>
inline void NrnThreadData<mutex>::enqueueMyEvents(){
	inter_thread_events_.lock_.acquire();
	event ite = event();
	for(int i = 0; i < inter_thread_events_.q_.size(); ++i){
		ite = inter_thread_events_.q_[i];
		selfSend(ite.data_, ite.t_);
	}
	inter_thread_events_.q_.clear();
	inter_thread_events_.lock_.release();
}

template<>
inline void NrnThreadData<spinlock>::interThreadSend(double d, double tt){
	event ite(d,tt,true);
	ite_received_++;
	inter_thread_events_.q_.push(ite);
}

template<>
inline void NrnThreadData<spinlock>::enqueueMyEvents(){
	spinlock_queue<event>::node* head = inter_thread_events_.q_.pop_all();
	spinlock_queue<event>::node* elem = NULL;
	event ite = event();
	while(head){
		elem = head;
		ite = elem->data;
		selfSend(ite.data_, ite.t_);
		head = head->next;
		delete elem;
	}
}

} //endnamespace
#endif