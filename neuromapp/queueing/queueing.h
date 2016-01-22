/*
 * Neuromapp - queueing.h, Copyright (c), 2015,
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
 * @file neuromapp/queueing/queueing.h
 * \brief Declaration for the queuing_execute function from main.cpp
 */

#ifndef MAPP_QUEUEING_EXECUTE_
#define MAPP_QUEUEING_EXECUTE_

/** \fn queuing_execute(int argc, char *const argv[])
    \param argc number of argument from the command line
    \param argv the command line from the driver or external call
    \return error message from mapp::mapp_error
 */
int queueing_execute(int argc, char* const argv[]);

#endif
