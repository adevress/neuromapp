/*
 * Neuromapp - evironment.cpp, Copyright (c), 2015,
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
 * @file neuromapp/spike/environment.cpp
 * contains definitions for dummy environment class
 */
#include <iostream>
#include <stdlib.h>
#include <stddef.h>
#include <boost/range/algorithm/random_shuffle.hpp>
#include <boost/range/algorithm_ext/iota.hpp>

#include "spike/environment.h"

namespace spike {

environment::environment(int ev, int out, int in, int netcons, int procs, int rank){
    events_per_ = ev;
    num_out_ = out;
    num_in_ = in;
    netcons_per_input_ = netcons;
    num_procs_ = procs;
    rank_ = rank;
    total_received_ = 0;
    total_relevent_ = 0;
    srand(time(NULL)+rank);

    //assign input and output gid's
    int_vec available_inputs;
    int_vec cellgroups;
    if(num_procs_ > 1){
        for(int i = 0; i < (num_procs_ * num_out_); ++i){
            if(i >= (rank_ * num_out_) && i < ((rank_ * num_out_) + num_out_)){
	        output_presyns_.push_back(i);
            }
            else{
                available_inputs.push_back(i);
            }
        }
        //create a randomly ordered list of input_presyns_
        assert(available_inputs.size() >= num_in_);
        boost::random_shuffle(available_inputs);
        available_inputs.resize(num_in_);

        //create a vector of randomly ordered cellgroups
        cellgroups.resize(num_cells_);
        boost::iota(cellgroups, 0);

        boost::random_shuffle(cellgroups);

        //for each input presyn,
        //select N unique netcons to cell groups
        for(int i = 0; i < num_in_; ++i){
            int presyn = available_inputs[i];
            int index = rand()%(num_cells_ - netcons_per_input_);
            for(int j = 0; j < netcons_per_input_; ++j){
                input_presyns_[presyn].push_back(cellgroups[index+j]);
            }
        }
    }

    else{
        for(int i = 0; i < num_out_; ++i){
	    output_presyns_.push_back(i);
        }
        assert(input_presyns_.empty());
    }
    spikein_.resize(num_procs_ * events_per_ * min_delay_);
    nin_.resize(num_procs_);
    displ_.resize(num_procs_);
}

void environment::generate_all_events(int totalTime){
    int index;
    spike_item sitem;
    //generate all spikes that will be sent during the simulation
    for(int i = 0; i < (events_per_ * totalTime); ++i){
        index = rand() % output_presyns_.size();
        sitem.data_ = output_presyns_[index];
        sitem.t_ = (rand() / (double)RAND_MAX);
        generated_spikes_.push_back(sitem);
    }
}


void environment::time_step(){
    for(int i = 0; i < events_per_; ++i){
        assert(generated_spikes_.size() > 0);

        spikeout_.push_back(generated_spikes_.back());
        generated_spikes_.pop_back();
    }
}

void environment::set_displ(){
    displ_[0] = 0;
    int total = nin_[0];
    for(int i=1; i < num_procs_; ++i){
        displ_[i] = total;
        total += nin_[i];
    }
}

void environment::filter(){
    total_received_ += spikein_.size();
    std::map<int, std::vector<int> >::iterator it;
    spike_item ev;
    for(size_t i = 0; i < spikein_.size(); ++i){
        ev = spikein_[i];
        it = input_presyns_.find(ev.data_);
        if(it != input_presyns_.end()){
            ++total_relevent_;
        }
    }
}


void environment::parallel_send(){
    //should still send out events
    //all other tasks are calls to usleep
    for(int i = 0; i < events_per_; ++i){
        assert(generated_spikes_.size() > 0);

        spikeout_.push_back(generated_spikes_.back());
        generated_spikes_.pop_back();
    }
}


}


