/*
 * Neuromapp - driver_exception.h, Copyright (c), 2015,
 * Timothee Ewart - Swiss Federal Institute of technology in Lausanne,
 * timothee.ewart@epfl.ch,
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
 * @file neuromapp/app/driver_exception.h
 * Driver implementation
 */

#ifndef MAPP_DRIVER_EXCEPTION
#define MAPP_DRIVER_EXCEPTION
#include <exception>
#include <string>

#include "utils/error.h"


namespace mapp{

    /** \class driver_exception
        \brief exception of the miniapp derived from std::exception
     */
    class driver_exception : public std::exception {
        public:
            explicit driver_exception(const std::string& m = std::string(), int error=MAPP_OK): error_code(error),
                                                                                                message(m){}
            explicit driver_exception(int error): error_code(error), message(default_message(error)) {}
            ~driver_exception() throw() {}
            const char* what() const throw() { return message.c_str(); }

            int error_code;
        private:
            std::string message;

        /**
         \param int error message generated by the C miniapp
         */
        static std::string default_message(int error) {
            switch (error){
                case MAPP_BAD_ARG:
                    return "The arguments are incorrect";
                case MAPP_USAGE:
                    return "Application usage invoked";
                case MAPP_BAD_DATA:
                    return "The input data is incorrect, path?";
                case MAPP_BAD_THREAD:
                    return "Threading problem";
                default:
                    return "Unknown error";
            }
        }
    };

} // end namespace

#endif
