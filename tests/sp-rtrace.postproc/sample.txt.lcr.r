version=1.0, arch=i486-linux-gnu, time=2010.9.1 14:56:49, process=../bin/alloc_test, pid=924, 
<1> : memory (memory allocation in bytes)
: /lib/tls/i686/cmov/librt-2.11.1.so => 0x110000-0x117000
: /lib/tls/i686/cmov/libdl-2.11.1.so => 0x119000-0x11b000
: /lib/tls/i686/cmov/libc-2.11.1.so => 0x21e000-0x371000
: /lib/tls/i686/cmov/libpthread-2.11.1.so => 0x61f000-0x634000
: /usr/lib/sp-rtrace/libsp-rtrace-memory.so.1.0.0 => 0xba4000-0xba6000
: /lib/ld-2.11.1.so => 0xc60000-0xc7b000
: /lib/tls/i686/cmov/libm-2.11.1.so => 0xcb8000-0xcdc000
: /lib/libgcc_s.so.1 => 0xe1f000-0xe3c000
: /usr/lib/sp-rtrace/libsp-rtrace-main.so.1.0.0 => 0xedd000-0xee2000
: /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace/tests/bin/alloc_test => 0x8048000-0x8049000
# heap status information:
#   heap bottom 0x88a4000
#   heap top 0x88c5000
#   lowest block 0x88a4008
#   highest block 0x88ab600
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
1. [14:19:41.356] malloc(1003) = 0x88a4008
	0x8048570 (in three at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:62)
	0x80485af (in start at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:73)
	0x80485f1 (in main at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:83)
13. [14:19:41.356] malloc(1003) = 0x88a5390
	0x8048570 (in three at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:62)
	0x80485af (in start at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:73)
	0x80485f1 (in main at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:83)
25. [14:19:41.356] malloc(1003) = 0x88a6350
	0x8048570 (in three at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:62)
	0x80485af (in start at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:73)
	0x80485f1 (in main at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:83)
37. [14:19:41.356] malloc(1003) = 0x88a7310
	0x8048570 (in three at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:62)
	0x80485af (in start at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:73)
	0x80485f1 (in main at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:83)
49. [14:19:41.357] malloc(1003) = 0x88a82d0
	0x8048570 (in three at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:62)
	0x80485af (in start at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:73)
	0x80485f1 (in main at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:83)
2. [14:19:41.356] malloc(1002) = 0x88a47c0
	0x8048533 (in two at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:53)
	0x8048585 (in three at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:65)
	0x80485af (in start at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:73)
	0x80485f1 (in main at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:83)
14. [14:19:41.356] malloc(1002) = 0x88a5780
	0x8048533 (in two at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:53)
	0x8048585 (in three at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:65)
	0x80485af (in start at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:73)
	0x80485f1 (in main at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:83)
26. [14:19:41.356] malloc(1002) = 0x88a6740
	0x8048533 (in two at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:53)
	0x8048585 (in three at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:65)
	0x80485af (in start at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:73)
	0x80485f1 (in main at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:83)
38. [14:19:41.356] malloc(1002) = 0x88a7700
	0x8048533 (in two at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:53)
	0x8048585 (in three at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:65)
	0x80485af (in start at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:73)
	0x80485f1 (in main at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:83)
50. [14:19:41.357] malloc(1002) = 0x88a86c0
	0x8048533 (in two at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:53)
	0x8048585 (in three at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:65)
	0x80485af (in start at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:73)
	0x80485f1 (in main at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:83)
3. [14:19:41.356] malloc(1001) = 0x88a4bb0
	0x80484f6 (in one at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:44)
	0x8048548 (in two at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:56)
	0x8048585 (in three at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:65)
	0x80485af (in start at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:73)
	0x80485f1 (in main at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:83)
15. [14:19:41.356] malloc(1001) = 0x88a5b70
	0x80484f6 (in one at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:44)
	0x8048548 (in two at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:56)
	0x8048585 (in three at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:65)
	0x80485af (in start at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:73)
	0x80485f1 (in main at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:83)
27. [14:19:41.356] malloc(1001) = 0x88a6b30
	0x80484f6 (in one at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:44)
	0x8048548 (in two at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:56)
	0x8048585 (in three at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:65)
	0x80485af (in start at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:73)
	0x80485f1 (in main at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:83)
39. [14:19:41.356] malloc(1001) = 0x88a7af0
	0x80484f6 (in one at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:44)
	0x8048548 (in two at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:56)
	0x8048585 (in three at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:65)
	0x80485af (in start at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:73)
	0x80485f1 (in main at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:83)
51. [14:19:41.357] malloc(1001) = 0x88a8ab0
	0x80484f6 (in one at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:44)
	0x8048548 (in two at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:56)
	0x8048585 (in three at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:65)
	0x80485af (in start at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:73)
	0x80485f1 (in main at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:83)
4. [14:19:41.356] malloc(1000) = 0x88a4fa0
	0x80484c6 (in zero at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:36)
	0x804850b (in one at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:47)
	0x8048548 (in two at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:56)
	0x8048585 (in three at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:65)
	0x80485af (in start at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:73)
	0x80485f1 (in main at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:83)
16. [14:19:41.356] malloc(1000) = 0x88a5f60
	0x80484c6 (in zero at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:36)
	0x804850b (in one at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:47)
	0x8048548 (in two at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:56)
	0x8048585 (in three at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:65)
	0x80485af (in start at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:73)
	0x80485f1 (in main at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:83)
28. [14:19:41.356] malloc(1000) = 0x88a6f20
	0x80484c6 (in zero at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:36)
	0x804850b (in one at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:47)
	0x8048548 (in two at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:56)
	0x8048585 (in three at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:65)
	0x80485af (in start at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:73)
	0x80485f1 (in main at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:83)
40. [14:19:41.357] malloc(1000) = 0x88a7ee0
	0x80484c6 (in zero at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:36)
	0x804850b (in one at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:47)
	0x8048548 (in two at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:56)
	0x8048585 (in three at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:65)
	0x80485af (in start at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:73)
	0x80485f1 (in main at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:83)
52. [14:19:41.357] malloc(1000) = 0x88a8ea0
	0x80484c6 (in zero at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:36)
	0x804850b (in one at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:47)
	0x8048548 (in two at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:56)
	0x8048585 (in three at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:65)
	0x80485af (in start at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:73)
	0x80485f1 (in main at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:83)
61. [14:19:41.357] malloc(1002) = 0x88a9290
	0x8048533 (in two at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:53)
	0x80485cf (in start at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:76)
	0x80485f1 (in main at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:83)
70. [14:19:41.357] malloc(1002) = 0x88a9e60
	0x8048533 (in two at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:53)
	0x80485cf (in start at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:76)
	0x80485f1 (in main at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:83)
79. [14:19:41.357] malloc(1002) = 0x88aaa30
	0x8048533 (in two at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:53)
	0x80485cf (in start at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:76)
	0x80485f1 (in main at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:83)
62. [14:19:41.357] malloc(1001) = 0x88a9680
	0x80484f6 (in one at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:44)
	0x8048548 (in two at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:56)
	0x80485cf (in start at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:76)
	0x80485f1 (in main at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:83)
71. [14:19:41.357] malloc(1001) = 0x88aa250
	0x80484f6 (in one at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:44)
	0x8048548 (in two at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:56)
	0x80485cf (in start at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:76)
	0x80485f1 (in main at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:83)
80. [14:19:41.357] malloc(1001) = 0x88aae20
	0x80484f6 (in one at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:44)
	0x8048548 (in two at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:56)
	0x80485cf (in start at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:76)
	0x80485f1 (in main at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:83)
63. [14:19:41.357] malloc(1000) = 0x88a9a70
	0x80484c6 (in zero at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:36)
	0x804850b (in one at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:47)
	0x8048548 (in two at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:56)
	0x80485cf (in start at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:76)
	0x80485f1 (in main at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:83)
72. [14:19:41.357] malloc(1000) = 0x88aa640
	0x80484c6 (in zero at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:36)
	0x804850b (in one at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:47)
	0x8048548 (in two at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:56)
	0x80485cf (in start at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:76)
	0x80485f1 (in main at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:83)
81. [14:19:41.357] malloc(1000) = 0x88ab210
	0x80484c6 (in zero at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:36)
	0x804850b (in one at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:47)
	0x8048548 (in two at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:56)
	0x80485cf (in start at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:76)
	0x80485f1 (in main at /home/wiper/bugs/rtrace/sp-rtrace/tests/sp-rtrace.postproc/alloc_test.c:83)
