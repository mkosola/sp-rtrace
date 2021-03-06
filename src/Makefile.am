AM_CFLAGS = -Wall -Wextra -Wmissing-prototypes -Wstrict-prototypes \
	-Wwrite-strings -Wsign-compare -Wformat-security \
	-Wcast-qual -Wbad-function-cast -Wpointer-arith

# -Wno-unused-function -Wno-missing-field-initializers -Wno-unused-parameter
AM_CXXFLAGS = -Wall -Wextra -Wwrite-strings -Wsign-compare \
	-Wformat-security -Wpointer-arith \
	-Wno-unused-parameter
# -Wno-unused-function -Wno-missing-field-initializers

# needed for executing post-processors and finding modules under install dir
AM_CPPFLAGS = -DBINDIR='"$(bindir)"' -DLIBDIR='"$(libdir)"'

lib_LTLIBRARIES = libsp-rtrace1.la  libsp-rtrace-main.la

module_LTLIBRARIES = \
	libsp-rtrace-memory.la libsp-rtrace-memtransfer.la \
	libsp-rtrace-shmsysv.la libsp-rtrace-file.la libsp-rtrace-gobject.la libsp-rtrace-qobject.la \
	libsp-rtrace-shmposix.la 
moduledir = $(libdir)/sp-rtrace

libsp_rtrace1_la_SOURCES = library/sp_rtrace_context.c library/sp_rtrace_formatter.c \
	library/sp_rtrace_tracker.c library/sp_rtrace_parser.c \
	library/sp_rtrace_filter.c \
	common/dlist.c common/htable.c common/utils.c common/rtrace_data.c common/header.c 
libsp_rtrace1_la_LDFLAGS = $(VERSION_INFO)
libsp_rtrace1_la_LIBADD = $(LIBS_IBERTY) -lrt -lpthread 

libsp_rtrace_main_la_SOURCES = modules/sp_rtrace_main.c rtrace/rtrace_env.c common/utils.c \
	modules/libunwind_support.c modules/sp_context_impl.c
libsp_rtrace_main_la_LDFLAGS = $(VERSION_INFO)
libsp_rtrace_main_la_CFLAGS = -rdynamic $(AM_CFLAGS)
libsp_rtrace_main_la_LIBADD = -lrt -ldl -lpthread -lsp-rtrace1
sp_rtrace_main.$(OBJEXT): libsp-rtrace1.a

libsp_rtrace_memory_la_SOURCES = modules/sp_rtrace_memory.c
libsp_rtrace_memory_la_CFLAGS = -rdynamic $(AM_CFLAGS)
libsp_rtrace_memory_la_LDFLAGS = -avoid-version -module
libsp_rtrace_memory_la_LIBADD = -ldl -lpthread  

libsp_rtrace_memtransfer_la_SOURCES = modules/sp_rtrace_memtransfer.c
libsp_rtrace_memtransfer_la_CFLAGS = -rdynamic $(AM_CFLAGS)
libsp_rtrace_memtransfer_la_LDFLAGS = -avoid-version -module
libsp_rtrace_memtransfer_la_LIBADD = -ldl -lpthread 

libsp_rtrace_shmsysv_la_SOURCES = modules/sp_rtrace_shmsysv.c common/htable.c common/dlist.c
libsp_rtrace_shmsysv_la_CFLAGS = -rdynamic $(AM_CFLAGS)
libsp_rtrace_shmsysv_la_LDFLAGS = -avoid-version -module
libsp_rtrace_shmsysv_la_LIBADD = -ldl -lpthread 

libsp_rtrace_file_la_SOURCES = modules/sp_rtrace_file.c 
libsp_rtrace_file_la_CFLAGS = -rdynamic $(AM_CFLAGS)
libsp_rtrace_file_la_LDFLAGS = -avoid-version -module
libsp_rtrace_file_la_LIBADD = -ldl -lpthread 

libsp_rtrace_gobject_la_SOURCES = modules/sp_rtrace_gobject.c 
libsp_rtrace_gobject_la_CFLAGS = -rdynamic $(GLIB_CFLAGS) $(AM_CFLAGS)
libsp_rtrace_gobject_la_LDFLAGS = -avoid-version -module
libsp_rtrace_gobject_la_LIBADD = -ldl $(GLIB_LIBS) -lpthread 

libsp_rtrace_qobject_la_SOURCES = modules/sp_rtrace_qobject.c 
libsp_rtrace_qobject_la_CFLAGS = -rdynamic $(GLIB_CFLAGS) $(AM_CFLAGS)
libsp_rtrace_qobject_la_LDFLAGS = -avoid-version -module
libsp_rtrace_qobject_la_LIBADD = -ldl -lpthread 

libsp_rtrace_shmposix_la_SOURCES = modules/sp_rtrace_shmposix.c 
libsp_rtrace_shmposix_la_CFLAGS = -rdynamic $(GLIB_CFLAGS) $(AM_CFLAGS)
libsp_rtrace_shmposix_la_LDFLAGS = -avoid-version -module
libsp_rtrace_shmposix_la_LIBADD = -ldl -lpthread 

module_LTLIBRARIES += libsp-rtrace-pagemap.la
libsp_rtrace_pagemap_la_SOURCES = rtrace-pagemap/sp_rtrace_pagemap.c 
libsp_rtrace_pagemap_la_CFLAGS = -rdynamic $(GLIB_CFLAGS) $(AM_CFLAGS)
libsp_rtrace_pagemap_la_LDFLAGS = -avoid-version -module 
libsp_rtrace_pagemap_la_LIBADD =  -lpthread 

bin_PROGRAMS = sp-rtrace sp-rtrace-postproc sp-rtrace-resolve sp-rtrace-allocmap sp-rtrace-timeline

sp_rtrace_SOURCES = rtrace/sp_rtrace.c rtrace/listener.c rtrace/rtrace_env.c common/utils.c \
	common/dlist.c common/rtrace_data.c common/htable.c common/msg.c
sp_rtrace_CFLAGS = $(AM_CFLAGS)
sp_rtrace_LDFLAGS = -Wl,-z,defs
sp_rtrace_LDADD = -ldl

sp_rtrace_postproc_SOURCES = rtrace-postproc/sp_rtrace_postproc.c rtrace-postproc/parse_binary.c \
    rtrace-postproc/parse_text.c rtrace-postproc/leaks_sort.c rtrace-postproc/writer.c rtrace-postproc/filter.c \
    common/rtrace_data.c common/htable.c common/dlist.c common/utils.c common/header.c common/msg.c \
    common/resolve_utils.c
sp_rtrace_postproc_CFLAGS = $(AM_CFLAGS)
sp_rtrace_postproc_LDFLAGS = -Wl,-z,defs
sp_rtrace_postproc_LDADD = -lsp-rtrace1
sp_rtrace_postproc.$(OBJEXT): libsp-rtrace1.a


sp_rtrace_resolve_SOURCES = rtrace-resolve/sp_rtrace_resolve.c common/utils.c common/rtrace_data.c common/dlist.c \
	rtrace-resolve/sarray.c common/htable.c rtrace-resolve/namecache.c rtrace-resolve/resolver.c common/header.c \
	common/msg.c common/resolve_utils.c
	
sp_rtrace_resolve_CFLAGS = $(AM_CFLAGS)
sp_rtrace_resolve_LDFLAGS = -Wl,-z,defs
sp_rtrace_resolve_LDADD = $(LIBS_BFD) -lsp-rtrace1
sp_rtrace_resolve.$(OBJEXT): libsp-rtrace1.a

sp_rtrace_allocmap_SOURCES = rtrace-allocmap/sp_rtrace_allocmap.c
sp_rtrace_allocmap_CFLAGS = $(AM_CFLAGS)
sp_rtrace_allocmap_LDFLAGS = -Wl,-z,defs

BUILT_SOURCES =

if PRECOMP
BUILT_SOURCES += rtrace-timeline/timeline.h.gch
rtrace-timeline/timeline.h.gch: rtrace-timeline/timeline.h
	$(CXX) -c $< $(CXXFLAGS)
endif

sp_rtrace_timeline_SOURCES = /timeline.h rtrace-timeline/timeline.cpp rtrace-timeline/activity_generator.cpp \
	rtrace-timeline/histogram_generator.cpp rtrace-timeline/parser.cpp rtrace-timeline/resource_registry.cpp \
	rtrace-timeline/totals_generator.cpp rtrace-timeline/filter.cpp rtrace-timeline/lifetime_generator.cpp \
	rtrace-timeline/plotter.cpp rtrace-timeline/terminal.cpp rtrace-timeline/filter_manager.cpp \
	rtrace-timeline/options.cpp rtrace-timeline/processor.cpp
sp_rtrace_timeline_CXXFLAGS = $(AM_CXXFLAGS)
sp_rtrace_timeline_LDFLAGS = -Wl,-z,defs
sp_rtrace_timeline_LDADD = -lsp-rtrace1
sp_rtrace_timeline.$(OBJEXT): libsp-rtrace1.a


bin_PROGRAMS += sp-rtrace-pagemap

if PRECOMP
BUILT_SOURCES += rtrace-pagemap/pagemap.h.gch
rtrace-pagemap/pagemap.h.gch: rtrace-pagemap/pagemap.h
	$(CXX) -c $< $(CXXFLAGS)
endif

sp_rtrace_pagemap_SOURCES = rtrace-pagemap/pagemap.h rtrace-pagemap/pagemap.cpp rtrace-pagemap/options.cpp \
	rtrace-pagemap/trace_data.cpp rtrace-pagemap/memory_area.cpp rtrace-pagemap/address_space_report.cpp \
	rtrace-pagemap/pages_report.cpp rtrace-pagemap/density_report.cpp common/header.c \
	rtrace-pagemap/summary_report.cpp rtrace-pagemap/page_types.c rtrace-pagemap/filter.cpp \
	rtrace-pagemap/shared_pages_report.cpp
sp_rtrace_pagemap_CFLAGS = $(AM_CFLAGS)
sp_rtrace_pagemap_CXXFLAGS = $(AM_CXXFLAGS)
sp_rtrace_pagemap_LDFLAGS = -Wl,-z,defs
sp_rtrace_pagemap_LDADD = -lsp-rtrace1
sp_rtrace_pagemap.$(OBJEXT): libsp-rtrace1.a


DISTCLEANFILES = Makefile.in *la 
CLEANFILES = rtrace-timeline/*.h.gch rtrace-pagemap/*.h.gch
