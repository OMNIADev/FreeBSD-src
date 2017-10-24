\ Copyright (c) 2004-2015 Electric Sheep Fencing LLC
\ All rights reserved.
\ 
\ Redistribution and use in source and binary forms, with or without
\ modification, are permitted provided that the following conditions
\ are met:
\ 1. Redistributions of source code must retain the above copyright
\    notice, this list of conditions and the following disclaimer.
\ 2. Redistributions in binary form must reproduce the above copyright
\    notice, this list of conditions and the following disclaimer in the
\    documentation and/or other materials provided with the distribution.
\ 
\ THIS SOFTWARE IS PROVIDED BY THE AUTHOR AND CONTRIBUTORS ``AS IS'' AND
\ ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
\ IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
\ ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE LIABLE
\ FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
\ DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
\ OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
\ HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
\ LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
\ OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
\ SUCH DAMAGE.
\ 
\ $FreeBSD$

40 logoX ! 7 logoY ! \ Initialize logo placement defaults

: logo+ ( x y c-addr/u -- x y' )
	2swap 2dup at-xy 2swap \ position the cursor
	type \ print to the screen
	1+ \ increase y for next time we're called
;

: logo ( x y -- ) \ B/W pfSense logo (15 rows x 32 columns)

	s"            111111111111111             ​​​​​" logo+
​  s"​​​​        11111111111111111111111         ​​​​​" logo+
​  s"​​​​      11111111            11111111      ​​​​​" logo+
​  s"​​​​    1111111   111111111111   1111111    ​​​​​" logo+
​  s"​​​​    11111  111111      111111  11111    ​​​​​" logo+
​  s"​​​​ 1111 1  1111    111111    1111111 1111 ​​​​​" logo+
​  s"​​​​100001   1111 111111111111  1111 1100001​​​​​" logo+
​  s"​​​​100000011 111111 111111 1111   110000001​​​​​" logo+
​  s"​​​​10000000011 111 10000001 111  1000000001​​​​​" logo+
​  s"​​​​ 110000000011   10000001   110000000011 ​​​​​" logo+
​  s"​​​​   11000000001  11000011  10000000011   ​​​​​" logo+
​  s"​​​​     110000000011000000110000000011     ​​​​​" logo+
​  s"​​​​       11000000000000000000000011       ​​​​​" logo+
​  s"​​​​         1100000000000000000011         ​​​​​" logo+
​  s"​​​​           110000011110000011           ​​​​​" logo+
​  s"​​​​             11011    11011             " logo+​​​​​

	2drop
;
