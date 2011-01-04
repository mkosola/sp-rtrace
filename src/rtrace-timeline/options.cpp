#include "timeline.h"

#include "options.h"
#include "formatter.h"
#include "terminal.h"
#include "processor.h"
#include "filter_manager.h"
#include "filter.h"

#include "totals_generator.h"
#include "activity_generator.h"
#include "lifetime_generator.h"
#include "histogram_generator.h"


Options::Options()
	: scale_x(100),
	  scale_y(100),
	  slice(200),
	  logscale_size("10")
{
}

void Options::splitRange(const char* range, std::string& min, std::string& max)
{
	min.resize(0);
	max.resize(0);
	const char* ptr = range;

	std::string* str = &min;
	while(*ptr) {
		if (*ptr == '-') {
			str = &max;
			ptr++;
			continue;
		}
		*str += *ptr++;
	}
	if (str == &min) {
		throw std::runtime_error(Formatter() << "Invalid range format: " << range);
	}
}

void Options::updateFilterDesc(const std::string& name, const std::string& value)
{
	if (!filter_desc.empty()) filter_desc += "; ";
	filter_desc += name;
	filter_desc += '=';
	filter_desc += value;
}

void Options::displayUsage()
{
	std::cout <<
		"Usage:\n"
		"  rtrace-timeline <options>\n"
		"  Where <options> are:\n"
		"    -t         generate report of total resource allocations and\n"
		"               non-free resources.\n"
		"    -l         generate report of resource life times.\n"
		"    -a         generate report of resource allocation/deallocation\n"
		"               activity.\n"
		"    -c         generate allocation count per resource size histogram.\n"
		"    -s         generate total allocation size per resource size histogram.\n"
		"    -S <msec>  the time slice for acivity report. By default it's 1/20th\n"
		"               of the total time period (X axis range).\n"
		"    -e         generate postscript (eps) file (png file is generated by\n"
		"               default).\n"
		"    -w         display interactive report window.\n"
		"    -W <dir>   set the working directory. The output directory is used by\n"
		"               default).\n"
		"    -i <file>  input file.\n"
		"    -o <file>  output file.\n"
		"    -L <base>  the logarithmic scaling value of size axis for lifetime reports.\n"
		"\n"
		"    --scale=<value>\n"
		"    --scalex=<value>\n"
		"    --scaley=<value>\n"
		"        Scales the output image by the specified factor. The scale\n"
		"        option affects both axis while scalex and scaley options\n"
		"        affects X and Y axis respectively.\n"
		"\n"
		"    --filter-<type>=[<value1>]-[<value2>]\n"
		"        Sets the event filter where filter type can be:\n"
		"          <size>  - filters events by allocation size. The size parameter\n"
		"                    accepts postfix 'k' or 'm' specifying kilobytes or\n"
		"                    megabytes. Filter examples: \n"
		"                      100-200  : from 100 to 200 bytes\n"
		"                      10k-     : greater than 10 kbytes\n"
		"                      -1m      : less than 1 mbyte\n"
		"          <index> - filters events by their index. \n"
		"          <time>  - filters events by allocation/deallocation timestamp.\n"
		"                    The timestamp format is [+][HH:][MM:][SS][.sss] where\n"
		"                    HH - hours, MM - minutes, SS - seconds, sss - milliseconds\n"
		"                    and '+' specifies relative timestamp. Relative timestamps\n"
		"                    are counted either from the report beginning (the filter\n"
		"                    start value) or from the first event passing previous\n"
		"                    filters (the filter end value). Filter examples:\n"
		"                      10.5-12       : from 10.5 seconds to 12 seconds\n"
		"                      10:00-+30     : from 10 minutes to 10 minutes 30 seconds\n"
		"                      +1:00-+1:00   : from 1 minute since log start to 1 minute\n"
		"                                      duration\n"
		"\n"
		"    Note that it's possible to generate multiple reports at the same time by\n"
		"    specifying more than one report generation option (-t, -l -a). In this\n"
		"    mode output file (-o) should be always specified and the report filenames\n"
		"    will have the follwing format:\n"
		"      <filename>-<totals|activity|lifetime>.<eps|png>\n"
		"         where <filename> is the specified output file.\n"
		;

}

void Options::parseCommandLine(int argc, char* const argv[], Processor* processor)
{
	// command line options
	struct option long_options[] = {
			 {"totals", 0, 0, 't'},
			 {"lifetime", 0, 0, 'l'},
			 {"activity", 0, 0, 'a'},
			 {"histogram-count", 0, 0, 'c'},
			 {"histogram-size", 0, 0, 's'},
			 {"in", 1, 0, 'i'},
			 {"out", 1, 0, 'o'},
			 {"slice", 1, 0, 'S'},
			 {"eps", 0, 0, 'e'},
			 {"wxt", 0, 0, 'w'},
			 {"scale", 1, 0, 'z'},
			 {"scalex", 1, 0, 'x'},
			 {"scaley", 1, 0, 'y'},
			 {"filter-size", 1, 0, 'A'},
			 {"filter-time", 1, 0, 'T'},
			 {"filter-index", 1, 0, 'I'},
			 {"filter-context", 1, 0, 'C'},
			 {"filter-resource", 1, 0, 'R'},
			 {"working-dir", 1, 0, 'W'},
			 {"help", 0, 0, 'h'},
			 {"logscale-size", 1, 0, 'L'},
			 {0, 0, 0, 0},
	};

	// parse command line
	bool is_terminal_set = false;
	int opt;
	opterr = 0;
	while ( (opt = getopt_long(argc, argv, "tlacsi:o:S:ewhdW:L:", long_options, NULL)) != -1) {
		switch (opt) {
			case 'h': {
				displayUsage();
				exit(0);
			}

			case 't': {
				processor->addGenerator(new TotalsGenerator());
				break;
			}

			case 'a': {
				processor->addGenerator(new ActivityGenerator());
				break;
			}

			case 'l': {
				processor->addGenerator(new LifetimeGenerator());
				break;
			}

			case 's': {
				processor->addGenerator(new SizeHistogramGenerator());
				break;
			}

			case 'c': {
				processor->addGenerator(new CountHistogramGenerator());
				break;
			}

			case 'i': {
				in_filename = optarg;
				break;
			}

			case 'o': {
				out_template = optarg;
				break;
			}

			case 'S': {
				slice = atoi(optarg);
				break;
			}

			case 'W': {
				working_dir = optarg;
				break;
			}

			case 'L': {
				logscale_size = optarg;
				break;
			}

			case 'e': {
				out_extension = ".eps";
				terminal.setHeader(dynamic_cast<TerminalWriter*>(new EpsTerminalHeader()));
				is_terminal_set = true;
				break;
			}

			case 'w': {
				terminal.setHeader(dynamic_cast<TerminalWriter*>(new WxtTerminalHeader()));
				terminal.setFooter(dynamic_cast<TerminalWriter*>(new WxtTerminalFooter()));
				is_terminal_set = true;
				break;
			}

			case 'z': {
				int scale = atoi(optarg);
				if (scale == 0) throw std::runtime_error(Formatter() << "Invalid scaling factor: " << optarg);
				scale_x = scale_y = scale;
				break;
			}

			case 'x': {
				int scale = atoi(optarg);
				if (scale == 0) throw std::runtime_error(Formatter() << "Invalid scaling factor: " << optarg);
				scale_x = scale;
				break;
			}

			case 'y': {
				int scale = atoi(optarg);
				if (scale == 0) throw std::runtime_error(Formatter() << "Invalid scaling factor: " << optarg);
				scale_y = scale;
				break;
			}

			case 'A' : {
				std::string min, max;
				splitRange(optarg, min,max);
				if (!min.empty()) FilterManager::getInstance()->addFilter(new MinSizeFilter(min));
				if (!max.empty()) FilterManager::getInstance()->addFilter(new MaxSizeFilter(max));
				updateFilterDesc("size", optarg);
				break;
			}

			case 'I' : {
				std::string min, max;
				splitRange(optarg, min,max);
				if (!min.empty()) FilterManager::getInstance()->addFilter(new MinIndexFilter(min));
				if (!max.empty()) FilterManager::getInstance()->addFilter(new MaxIndexFilter(max));
				updateFilterDesc("index", optarg);
				break;
			}

			case 'T' : {
				std::string min, max;
				splitRange(optarg, min,max);
				if (!min.empty()) {
					Filter* filter;
					if (min[0] == '+') filter = dynamic_cast<Filter*>(new MinTimeOffsetFilter(min));
					else filter = dynamic_cast<Filter*>(new MinTimeFilter(min));
					FilterManager::getInstance()->addFilter(filter);
				}
				if (!max.empty()) {
					Filter* filter;
					if (max[0] == '+') filter = dynamic_cast<Filter*>(new MaxTimeOffsetFilter(max));
					filter = dynamic_cast<Filter*>(new MaxTimeFilter(max));
					FilterManager::getInstance()->addFilter(filter);
				}
				updateFilterDesc("time", optarg);
				break;
			}

			case 'C' : {
				FilterManager::getInstance()->addFilter(new ContextFilter(optarg));
				updateFilterDesc("context", optarg);
				break;
			}

			case 'R' : {
				resource_filter = optarg;
				updateFilterDesc("resource", optarg);
				break;
			}

			case '?': {
				throw std::runtime_error(Formatter() << "Unknown option: " << (char*)argv[optind - 1]);
			}
		}
	}
	if (working_dir.empty()) {
		unsigned int pos = out_template.rfind("/");
		if (pos != std::string::npos) {
			working_dir = out_template.substr(0, pos);
		}
		else working_dir = ".";
	}
	if (in_filename.empty()) {
		throw std::runtime_error(Formatter() << "No input file specified");
	}
	if (out_template.empty()) {
		throw std::runtime_error(Formatter() << "No output file specified");
	}
	if (!is_terminal_set) {
		out_extension = ".png";
		terminal.setHeader(dynamic_cast<TerminalWriter*>(new PngTerminalHeader()));
	}
}
