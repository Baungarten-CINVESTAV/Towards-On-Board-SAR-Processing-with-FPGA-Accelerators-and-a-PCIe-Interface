// ----------------------------------------------------------------------
// Copyright (c) 2016, The Regents of the University of California All
// rights reserved.
// 
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are
// met:
// 
//     * Redistributions of source code must retain the above copyright
//       notice, this list of conditions and the following disclaimer.
// 
//     * Redistributions in binary form must reproduce the above
//       copyright notice, this list of conditions and the following
//       disclaimer in the documentation and/or other materials provided
//       with the distribution.
// 
//     * Neither the name of The Regents of the University of California
//       nor the names of its contributors may be used to endorse or
//       promote products derived from this software without specific
//       prior written permission.
// 
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
// "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
// A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL REGENTS OF THE
// UNIVERSITY OF CALIFORNIA BE LIABLE FOR ANY DIRECT, INDIRECT,
// INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
// BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
// OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
// ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR
// TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE
// USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH
// DAMAGE.
// ----------------------------------------------------------------------
#include <sys/time.h>

#define GET_TIME_INIT(num) struct timeval _timers[num]

#define GET_TIME_VAL(num) gettimeofday(&_timers[num], NULL)

#define TIME_VAL_TO_MS(num) (((double)_timers[num].tv_sec*1000.0) + ((double)_timers[num].tv_usec/1000.0))






#define GET_TIME_INIT_2(num) struct timeval _timers_2[num]

#define GET_TIME_VAL_2(num) gettimeofday(&_timers_2[num], NULL)

#define TIME_VAL_TO_MS_2(num) (((double)_timers_2[num].tv_sec*1000.0) + ((double)_timers_2[num].tv_usec/1000.0))



#define GET_TIME_INIT_3(num) struct timeval _timers_3[num]

#define GET_TIME_VAL_3(num) gettimeofday(&_timers_3[num], NULL)

#define TIME_VAL_TO_MS_3(num) (((double)_timers_3[num].tv_sec*1000.0) + ((double)_timers_3[num].tv_usec/1000.0))



#define GET_TIME_INIT_4(num) struct timeval _timers_4[num]

#define GET_TIME_VAL_4(num) gettimeofday(&_timers_4[num], NULL)

#define TIME_VAL_TO_MS_4(num) (((double)_timers_4[num].tv_sec*1000.0) + ((double)_timers_4[num].tv_usec/1000.0))



#define GET_TIME_INIT_5(num) struct timeval _timers_5[num]

#define GET_TIME_VAL_5(num) gettimeofday(&_timers_5[num], NULL)

#define TIME_VAL_TO_MS_5(num) (((double)_timers_5[num].tv_sec*1000.0) + ((double)_timers_5[num].tv_usec/1000.0))




#define GET_TIME_INIT_6(num) struct timeval _timers_6[num]

#define GET_TIME_VAL_6(num) gettimeofday(&_timers_6[num], NULL)

#define TIME_VAL_TO_MS_6(num) (((double)_timers_6[num].tv_sec*1000.0) + ((double)_timers_6[num].tv_usec/1000.0))



