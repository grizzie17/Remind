#include <ansi_prefix.mac.h>
#if __option( cplusplus )
#	if __option( sym )
#		include "pp_debugprefix.h"
#		include <UDebugging.h>
#		include <UException.h>
#		define DEBUG_NEW	2
#		include "debugnew.h"
#		define new NEW
#	else
#		include <PP_MacHeaders.h>
#	endif
#endif
//#pragma once off
//#define TRACE_INCLUDE_NEST 1