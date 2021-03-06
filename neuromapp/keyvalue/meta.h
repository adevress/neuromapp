/*
 * Neuromapp - meta.h, Copyright (c), 2015,
 * Timothee Ewart - Swiss Federal Institute of technology in Lausanne,
 * timothee.ewart@epfl.ch,
 * All rights reserved.
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details..  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library.
 */

/**
 * @file neuromapp/keyvalue/meta.h
 * \brief Implements the meta class to simplify keyvalue technology
 */

#ifndef META_H
#define META_H

#include <string>
#include <vector>

#ifdef SKV_STORE
#include "keyvalue/skv/meta_skv.h"
#endif

namespace keyvalue{

class meta{
public:
    typedef double value_type;
    typedef value_type* pointer;
    typedef value_type const* const_pointer;

    typedef std::pair<const_pointer,std::size_t> value_pair;

    /** \fn meta(std::string const& s, std::pair<double*,std::size_t> const& v_pair)
	    \brief constructor of the meta information
	    \param s the key encapsulate the key value and its size
	    \param v_pair the value encapsulate the value pointer and the corresping size
    */
    explicit meta(std::string const& s = std::string(),
                   value_pair const& p = std::make_pair((pointer)NULL,0)):k(s),vp(p){
    }

    /** \fn meta(std::string const& s, double* p, std::size_t n)
	    \brief constructor of the meta information
	    \param s the key encapsulate the key value and its size
	    \param p the data
        \param n size of the data
    */
    explicit meta(std::string const& s = std::string(),
                  const_pointer p = (pointer)NULL,
                  std::size_t n = 0){
        k = s;
        vp = std::make_pair(p,n);
    }

    /** \fn key()
	    \brief modify the key
     */
    inline std::string & key() {
        return k;
    }

    /** \fn key()
	    \brief read the key
     */
    inline std::string const & key() const {
        return k;
    }

    /** \fn key_size()
	    \brief return the key size in byte
     */
    inline std::size_t const key_size() const {
        return k.size();
    }

    /** \fn value() 
        \brief modify the pointer of the memory
     */
    inline value_pair::first_type & value() {
        return vp.first;
    }

    /** \fn value()
        \brief read the pointer of the memory
     */
    inline value_pair::first_type const& value() const {
        return vp.first;
    }

    /** \fn value_size()
        \brief modify the value of the size of the memory
     */
    inline value_pair::second_type &value_size() {
        return vp.second;
    }

    /** \fn value_size()
        \brief read the value of the size of the memory
    */
    inline value_pair::second_type const& value_size() const {
        return vp.second;
    }

private:
    /** tke key, the size of the key is a data memeber of the std::string */
    std::string k;
    /** the value, the pointer of the memory and  the associated size is stored in std::pair */
    value_pair vp;
};

} //end namespace
#endif
