version=1.0, arch=i486-linux-gnu, time=2010.8.25 11:37:35, process=, pid=17030, 
<1> : memory (memory allocation in bytes)
: /usr/lib/sp-rtrace/libsp-rtrace-memory.so.1.0.0 => 0x110000-0x112000
: /lib/tls/i686/cmov/libm-2.11.1.so => 0x214000-0x238000
: /lib/tls/i686/cmov/libc-2.11.1.so => 0x23a000-0x38d000
: /lib/libgcc_s.so.1 => 0x394000-0x3b1000
: /lib/tls/i686/cmov/libpthread-2.11.1.so => 0x4f2000-0x507000
: /lib/tls/i686/cmov/librt-2.11.1.so => 0xac4000-0xacb000
: /lib/tls/i686/cmov/libdl-2.11.1.so => 0xb25000-0xb27000
: /lib/ld-2.11.1.so => 0xb48000-0xb63000
: /usr/lib/sp-rtrace/libsp-rtrace-main.so.1.0.0 => 0xe0b000-0xe10000
: /scratchbox/users/wiper/home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/bin/alloc_test => 0x8048000-0x8049000
# heap status information:
#   heap bottom 0x8bcf000
#   heap top 0x8bf0000
#   lowest block 0x8bcf008
#   highest block 0x8bd6600
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
1. [00:28:54.604] malloc(1003) = 0x8bcf008
	0x8048570 (in three at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:62)
	0x80485af (in start at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:73)
	0x80485f1 (in main at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:83)
13. [00:28:54.604] malloc(1003) = 0x8bd0390
	0x8048570 (in three at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:62)
	0x80485af (in start at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:73)
	0x80485f1 (in main at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:83)
25. [00:28:54.604] malloc(1003) = 0x8bd1350
	0x8048570 (in three at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:62)
	0x80485af (in start at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:73)
	0x80485f1 (in main at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:83)
37. [00:28:54.604] malloc(1003) = 0x8bd2310
	0x8048570 (in three at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:62)
	0x80485af (in start at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:73)
	0x80485f1 (in main at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:83)
49. [00:28:54.605] malloc(1003) = 0x8bd32d0
	0x8048570 (in three at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:62)
	0x80485af (in start at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:73)
	0x80485f1 (in main at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:83)
2. [00:28:54.604] malloc(1002) = 0x8bcf7c0
	0x8048533 (in two at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:53)
	0x8048585 (in three at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:65)
	0x80485af (in start at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:73)
	0x80485f1 (in main at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:83)
14. [00:28:54.604] malloc(1002) = 0x8bd0780
	0x8048533 (in two at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:53)
	0x8048585 (in three at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:65)
	0x80485af (in start at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:73)
	0x80485f1 (in main at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:83)
26. [00:28:54.604] malloc(1002) = 0x8bd1740
	0x8048533 (in two at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:53)
	0x8048585 (in three at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:65)
	0x80485af (in start at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:73)
	0x80485f1 (in main at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:83)
38. [00:28:54.604] malloc(1002) = 0x8bd2700
	0x8048533 (in two at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:53)
	0x8048585 (in three at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:65)
	0x80485af (in start at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:73)
	0x80485f1 (in main at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:83)
50. [00:28:54.605] malloc(1002) = 0x8bd36c0
	0x8048533 (in two at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:53)
	0x8048585 (in three at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:65)
	0x80485af (in start at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:73)
	0x80485f1 (in main at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:83)
3. [00:28:54.604] malloc(1001) = 0x8bcfbb0
	0x80484f6 (in one at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:44)
	0x8048548 (in two at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:56)
	0x8048585 (in three at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:65)
	0x80485af (in start at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:73)
	0x80485f1 (in main at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:83)
15. [00:28:54.604] malloc(1001) = 0x8bd0b70
	0x80484f6 (in one at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:44)
	0x8048548 (in two at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:56)
	0x8048585 (in three at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:65)
	0x80485af (in start at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:73)
	0x80485f1 (in main at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:83)
27. [00:28:54.604] malloc(1001) = 0x8bd1b30
	0x80484f6 (in one at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:44)
	0x8048548 (in two at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:56)
	0x8048585 (in three at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:65)
	0x80485af (in start at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:73)
	0x80485f1 (in main at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:83)
39. [00:28:54.605] malloc(1001) = 0x8bd2af0
	0x80484f6 (in one at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:44)
	0x8048548 (in two at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:56)
	0x8048585 (in three at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:65)
	0x80485af (in start at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:73)
	0x80485f1 (in main at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:83)
51. [00:28:54.605] malloc(1001) = 0x8bd3ab0
	0x80484f6 (in one at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:44)
	0x8048548 (in two at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:56)
	0x8048585 (in three at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:65)
	0x80485af (in start at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:73)
	0x80485f1 (in main at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:83)
4. [00:28:54.604] malloc(1000) = 0x8bcffa0
	0x80484c6 (in zero at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:36)
	0x804850b (in one at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:47)
	0x8048548 (in two at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:56)
	0x8048585 (in three at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:65)
	0x80485af (in start at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:73)
	0x80485f1 (in main at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:83)
16. [00:28:54.604] malloc(1000) = 0x8bd0f60
	0x80484c6 (in zero at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:36)
	0x804850b (in one at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:47)
	0x8048548 (in two at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:56)
	0x8048585 (in three at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:65)
	0x80485af (in start at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:73)
	0x80485f1 (in main at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:83)
28. [00:28:54.604] malloc(1000) = 0x8bd1f20
	0x80484c6 (in zero at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:36)
	0x804850b (in one at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:47)
	0x8048548 (in two at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:56)
	0x8048585 (in three at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:65)
	0x80485af (in start at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:73)
	0x80485f1 (in main at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:83)
40. [00:28:54.605] malloc(1000) = 0x8bd2ee0
	0x80484c6 (in zero at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:36)
	0x804850b (in one at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:47)
	0x8048548 (in two at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:56)
	0x8048585 (in three at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:65)
	0x80485af (in start at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:73)
	0x80485f1 (in main at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:83)
52. [00:28:54.605] malloc(1000) = 0x8bd3ea0
	0x80484c6 (in zero at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:36)
	0x804850b (in one at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:47)
	0x8048548 (in two at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:56)
	0x8048585 (in three at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:65)
	0x80485af (in start at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:73)
	0x80485f1 (in main at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:83)
61. [00:28:54.605] malloc(1002) = 0x8bd4290
	0x8048533 (in two at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:53)
	0x80485cf (in start at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:76)
	0x80485f1 (in main at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:83)
70. [00:28:54.605] malloc(1002) = 0x8bd4e60
	0x8048533 (in two at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:53)
	0x80485cf (in start at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:76)
	0x80485f1 (in main at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:83)
79. [00:28:54.605] malloc(1002) = 0x8bd5a30
	0x8048533 (in two at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:53)
	0x80485cf (in start at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:76)
	0x80485f1 (in main at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:83)
62. [00:28:54.605] malloc(1001) = 0x8bd4680
	0x80484f6 (in one at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:44)
	0x8048548 (in two at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:56)
	0x80485cf (in start at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:76)
	0x80485f1 (in main at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:83)
71. [00:28:54.605] malloc(1001) = 0x8bd5250
	0x80484f6 (in one at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:44)
	0x8048548 (in two at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:56)
	0x80485cf (in start at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:76)
	0x80485f1 (in main at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:83)
80. [00:28:54.605] malloc(1001) = 0x8bd5e20
	0x80484f6 (in one at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:44)
	0x8048548 (in two at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:56)
	0x80485cf (in start at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:76)
	0x80485f1 (in main at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:83)
63. [00:28:54.605] malloc(1000) = 0x8bd4a70
	0x80484c6 (in zero at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:36)
	0x804850b (in one at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:47)
	0x8048548 (in two at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:56)
	0x80485cf (in start at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:76)
	0x80485f1 (in main at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:83)
72. [00:28:54.605] malloc(1000) = 0x8bd5640
	0x80484c6 (in zero at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:36)
	0x804850b (in one at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:47)
	0x8048548 (in two at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:56)
	0x80485cf (in start at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:76)
	0x80485f1 (in main at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:83)
81. [00:28:54.605] malloc(1000) = 0x8bd6210
	0x80484c6 (in zero at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:36)
	0x804850b (in one at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:47)
	0x8048548 (in two at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:56)
	0x80485cf (in start at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:76)
	0x80485f1 (in main at /home/wiper/bugs/rtrace/sp-rtrace-1.0/tests/sp-rtrace.postproc/alloc_test.c:83)
