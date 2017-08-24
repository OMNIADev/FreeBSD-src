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

46 logoX ! 7 logoY ! \ Initialize logo placement defaults

: logo+ ( x y c-addr/u -- x y' )
	2swap 2dup at-xy 2swap \ position the cursor
	type \ print to the screen
	1+ \ increase y for next time we're called
;

: logo ( x y -- ) \ B/W IWIP logo (40 rows x 40 columns)

s"​​​​​               ...,,,,...               " logo+​​​​​
s"​​​​​          .,:;iii111111iii;:,.          " logo+​​​​​
s"​​​​​       .:;i11111iiiiiiii11111i;,.       " logo+​​​​​
s"​​​​​     ,;i1111. ,,,,,,,,,,,, .1111i;.     " logo+​​​​​
s"​​​​​   .;1111i: ,:;ii111111ii;:,  i111i;.   " logo+​​​​​
s"​​​​​     111: ,;i1i  .,,,,.  i1i;,.;111;   ​ " logo+​​​​
s"​​​​​ ;L1,    ;11i: .:;;ii;;:,  i11;i1;  .1L;" logo+ ​​​​​
s"​​​​​,C00C1,  111:. 11i;;;;i11;, :11;  1C00C," logo+​​​​​
s"​​​​​f00000C1, 1111i,:i11i:,i11:     1C00000f" logo+​​​​​
s"​​​​​LG000000C1  ;1i.;C0000C;.i1  ,1C000000GL" logo+​​​​​
s"​​​​​.;L0000000C1    f000000f   ,1C0000000L;." logo+​​​​​
s"​​​​​  .;L0000000C1, :C0000C: ,1C0000000L;.  " logo+​​​​​
s"​​​​​    .;L0000000C11G0000G11C0000000L;.    " logo+​​​​​
s"​​​​​      .;L0000000000000000000000L;.      " logo+​​​​​
s"​​​​​        .;L000000000000000000L;.        " logo+​​​​​
s"​​​​​          .;L00000C11C00000L;.          " logo+​​​​​
s"​​​​​            .;L0C1,  ,1C0L;.            " logo+​​​​​
s"​​​​​              .;,      ,;.              " logo+

2drop
;
