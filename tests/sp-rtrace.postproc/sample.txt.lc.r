version=1.0, arch=i486-linux-gnu, time=2010.9.21 16:04:56, process=../bin/alloc_test, pid=11492, 
<1> : memory (memory allocation in bytes)
: /lib/tls/i686/cmov/libc-2.11.1.so => 0x110000-0x263000
: /lib/ld-2.11.1.so => 0x412000-0x42d000
: /lib/tls/i686/cmov/libpthread-2.11.1.so => 0x46e000-0x483000
: /usr/lib/sp-rtrace/libsp-rtrace-main.so.1.0.0 => 0x6bb000-0x6c1000
: /lib/tls/i686/cmov/librt-2.11.1.so => 0x97e000-0x985000
: /lib/tls/i686/cmov/libm-2.11.1.so => 0xb12000-0xb36000
: /usr/lib/sp-rtrace/libsp-rtrace-memory.so.1.0.0 => 0xeec000-0xeee000
: /lib/tls/i686/cmov/libdl-2.11.1.so => 0xfe9000-0xfeb000
: /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test => 0x8048000-0x8049000
# heap status information:
#   heap bottom 0x92a8000
#   heap top 0x92c9000
#   lowest block 0x92a8008
#   highest block 0x92af600
#   non-mapped space allocated from system 135168
#   number of free chunks 1
#   number of fastbin blocks 0
#   number of mapped regions 0
#   space in mapped regions 0
#   maximum total allocated space 0
#   space available in freed fastbin blocks 0
#   total allocated space 30200
#   total free space 104968
#   top-most, releasable (via malloc_trim) space 104968
# tracing module: [0] main (1.0)
# tracing module: [1] memory (1.0)
1. [16:58:52.521] malloc(1003) = 0x92a8008
	0x8048570 three from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x80485af start from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x80485f1 main from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x126bd6 __libc_start_main from /lib/tls/i686/cmov/libc-2.11.1.so
	0x8048421 from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
13. [16:58:52.521] malloc(1003) = 0x92a9390
	0x8048570 three from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x80485af start from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x80485f1 main from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x126bd6 __libc_start_main from /lib/tls/i686/cmov/libc-2.11.1.so
	0x8048421 from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
25. [16:58:52.521] malloc(1003) = 0x92aa350
	0x8048570 three from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x80485af start from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x80485f1 main from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x126bd6 __libc_start_main from /lib/tls/i686/cmov/libc-2.11.1.so
	0x8048421 from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
37. [16:58:52.521] malloc(1003) = 0x92ab310
	0x8048570 three from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x80485af start from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x80485f1 main from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x126bd6 __libc_start_main from /lib/tls/i686/cmov/libc-2.11.1.so
	0x8048421 from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
49. [16:58:52.521] malloc(1003) = 0x92ac2d0
	0x8048570 three from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x80485af start from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x80485f1 main from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x126bd6 __libc_start_main from /lib/tls/i686/cmov/libc-2.11.1.so
	0x8048421 from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
2. [16:58:52.521] malloc(1002) = 0x92a87c0
	0x8048533 two from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x8048585 three from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x80485af start from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x80485f1 main from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x126bd6 __libc_start_main from /lib/tls/i686/cmov/libc-2.11.1.so
	0x8048421 from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
14. [16:58:52.521] malloc(1002) = 0x92a9780
	0x8048533 two from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x8048585 three from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x80485af start from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x80485f1 main from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x126bd6 __libc_start_main from /lib/tls/i686/cmov/libc-2.11.1.so
	0x8048421 from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
26. [16:58:52.521] malloc(1002) = 0x92aa740
	0x8048533 two from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x8048585 three from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x80485af start from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x80485f1 main from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x126bd6 __libc_start_main from /lib/tls/i686/cmov/libc-2.11.1.so
	0x8048421 from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
38. [16:58:52.521] malloc(1002) = 0x92ab700
	0x8048533 two from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x8048585 three from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x80485af start from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x80485f1 main from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x126bd6 __libc_start_main from /lib/tls/i686/cmov/libc-2.11.1.so
	0x8048421 from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
50. [16:58:52.521] malloc(1002) = 0x92ac6c0
	0x8048533 two from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x8048585 three from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x80485af start from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x80485f1 main from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x126bd6 __libc_start_main from /lib/tls/i686/cmov/libc-2.11.1.so
	0x8048421 from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
3. [16:58:52.521] malloc(1001) = 0x92a8bb0
	0x80484f6 one from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x8048548 two from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x8048585 three from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x80485af start from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x80485f1 main from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x126bd6 __libc_start_main from /lib/tls/i686/cmov/libc-2.11.1.so
	0x8048421 from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
15. [16:58:52.521] malloc(1001) = 0x92a9b70
	0x80484f6 one from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x8048548 two from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x8048585 three from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x80485af start from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x80485f1 main from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x126bd6 __libc_start_main from /lib/tls/i686/cmov/libc-2.11.1.so
	0x8048421 from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
27. [16:58:52.521] malloc(1001) = 0x92aab30
	0x80484f6 one from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x8048548 two from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x8048585 three from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x80485af start from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x80485f1 main from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x126bd6 __libc_start_main from /lib/tls/i686/cmov/libc-2.11.1.so
	0x8048421 from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
39. [16:58:52.521] malloc(1001) = 0x92abaf0
	0x80484f6 one from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x8048548 two from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x8048585 three from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x80485af start from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x80485f1 main from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x126bd6 __libc_start_main from /lib/tls/i686/cmov/libc-2.11.1.so
	0x8048421 from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
51. [16:58:52.521] malloc(1001) = 0x92acab0
	0x80484f6 one from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x8048548 two from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x8048585 three from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x80485af start from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x80485f1 main from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x126bd6 __libc_start_main from /lib/tls/i686/cmov/libc-2.11.1.so
	0x8048421 from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
4. [16:58:52.521] malloc(1000) = 0x92a8fa0
	0x80484c6 zero from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x804850b one from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x8048548 two from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x8048585 three from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x80485af start from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x80485f1 main from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x126bd6 __libc_start_main from /lib/tls/i686/cmov/libc-2.11.1.so
	0x8048421 from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
16. [16:58:52.521] malloc(1000) = 0x92a9f60
	0x80484c6 zero from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x804850b one from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x8048548 two from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x8048585 three from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x80485af start from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x80485f1 main from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x126bd6 __libc_start_main from /lib/tls/i686/cmov/libc-2.11.1.so
	0x8048421 from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
28. [16:58:52.521] malloc(1000) = 0x92aaf20
	0x80484c6 zero from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x804850b one from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x8048548 two from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x8048585 three from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x80485af start from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x80485f1 main from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x126bd6 __libc_start_main from /lib/tls/i686/cmov/libc-2.11.1.so
	0x8048421 from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
40. [16:58:52.521] malloc(1000) = 0x92abee0
	0x80484c6 zero from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x804850b one from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x8048548 two from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x8048585 three from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x80485af start from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x80485f1 main from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x126bd6 __libc_start_main from /lib/tls/i686/cmov/libc-2.11.1.so
	0x8048421 from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
52. [16:58:52.521] malloc(1000) = 0x92acea0
	0x80484c6 zero from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x804850b one from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x8048548 two from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x8048585 three from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x80485af start from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x80485f1 main from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x126bd6 __libc_start_main from /lib/tls/i686/cmov/libc-2.11.1.so
	0x8048421 from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
61. [16:58:52.521] malloc(1002) = 0x92ad290
	0x8048533 two from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x80485cf start from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x80485f1 main from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x126bd6 __libc_start_main from /lib/tls/i686/cmov/libc-2.11.1.so
	0x8048421 from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
70. [16:58:52.521] malloc(1002) = 0x92ade60
	0x8048533 two from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x80485cf start from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x80485f1 main from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x126bd6 __libc_start_main from /lib/tls/i686/cmov/libc-2.11.1.so
	0x8048421 from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
79. [16:58:52.521] malloc(1002) = 0x92aea30
	0x8048533 two from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x80485cf start from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x80485f1 main from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x126bd6 __libc_start_main from /lib/tls/i686/cmov/libc-2.11.1.so
	0x8048421 from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
62. [16:58:52.521] malloc(1001) = 0x92ad680
	0x80484f6 one from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x8048548 two from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x80485cf start from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x80485f1 main from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x126bd6 __libc_start_main from /lib/tls/i686/cmov/libc-2.11.1.so
	0x8048421 from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
71. [16:58:52.521] malloc(1001) = 0x92ae250
	0x80484f6 one from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x8048548 two from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x80485cf start from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x80485f1 main from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x126bd6 __libc_start_main from /lib/tls/i686/cmov/libc-2.11.1.so
	0x8048421 from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
80. [16:58:52.521] malloc(1001) = 0x92aee20
	0x80484f6 one from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x8048548 two from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x80485cf start from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x80485f1 main from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x126bd6 __libc_start_main from /lib/tls/i686/cmov/libc-2.11.1.so
	0x8048421 from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
63. [16:58:52.521] malloc(1000) = 0x92ada70
	0x80484c6 zero from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x804850b one from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x8048548 two from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x80485cf start from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x80485f1 main from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x126bd6 __libc_start_main from /lib/tls/i686/cmov/libc-2.11.1.so
	0x8048421 from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
72. [16:58:52.521] malloc(1000) = 0x92ae640
	0x80484c6 zero from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x804850b one from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x8048548 two from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x80485cf start from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x80485f1 main from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x126bd6 __libc_start_main from /lib/tls/i686/cmov/libc-2.11.1.so
	0x8048421 from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
81. [16:58:52.521] malloc(1000) = 0x92af210
	0x80484c6 zero from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x804850b one from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x8048548 two from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x80485cf start from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x80485f1 main from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
	0x126bd6 __libc_start_main from /lib/tls/i686/cmov/libc-2.11.1.so
	0x8048421 from /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test
