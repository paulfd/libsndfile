
include (CMake/functions.cmake)


mn_check_include_file (alsa/asoundlib.h	HAVE_ALSA_ASOUNDLIB_H)
mn_check_include_file (byteswap.h		HAVE_BYTESWAP_H)
mn_check_include_file (dlfcn.h			HAVE_DLFCN_H)
mn_check_include_file (endian.h			HAVE_ENDIAN_H)
mn_check_include_file (inttypes.h		HAVE_INTTYPES_H)
mn_check_include_file (locale.h			HAVE_LOCALE_H)
mn_check_include_file (memory.h			HAVE_MEMORY_H)
mn_check_include_file (sndio.h			HAVE_SNDIO_H)
mn_check_include_file (stdint.h			HAVE_STDINT_H)
mn_check_include_file (stdlib.h			HAVE_STDLIB_H)
mn_check_include_file (string.h			HAVE_STRING_H)
mn_check_include_file (strings.h		HAVE_STRINGS_H)
mn_check_include_file (sys/stat.h		HAVE_SYS_STAT_H)
mn_check_include_file (sys/time.h		HAVE_SYS_TIME_H)
mn_check_include_file (sys/types.h		HAVE_SYS_TYPES_H)
mn_check_include_file (sys/wait.h		HAVE_SYS_WAIT_H)
mn_check_include_file (unistd.h			HAVE_UNISTD_H)


mn_check_type_size (double 			SIZEOF_DOUBLE)
mn_check_type_size (float 			SIZEOF_FLOAT)
mn_check_type_size (int 			SIZEOF_INT)
mn_check_type_size (int64_t 		SIZEOF_INT64_T)
mn_check_type_size (loff_t 			SIZEOF_LOFF_T)
mn_check_type_size (long 			SIZEOF_LONG)
mn_check_type_size (long\ long 		SIZEOF_LONG_LONG)
mn_check_type_size (offt64_t 		SIZEOF_OFF64_T)
mn_check_type_size (off_t 			SIZEOF_OFF_T)
mn_check_type_size (short 			SIZEOF_SHORT)
mn_check_type_size (size_t 			SIZEOF_SIZE_T)
mn_check_type_size (ssize_t 		SIZEOF_SSIZE_T)
mn_check_type_size (void* 			SIZEOF_VOIDP)
mn_check_type_size (xxwchar_t 		SIZEOF_WCHAR_T)

set (SIZEOF_SF_COUNT_T ${SIZEOF_INT64_T})
set (TYPEOF_SF_COUNT_T int64_t)

mn_try_compile_c_result (CMake/compiler_is_gcc.c COMPILER_IS_GCC 1 0)

TEST_BIG_ENDIAN (BIGENDIAN)
if (${BIGENDIAN})
	set (WORDS_BIGENDIAN 1)
	set (CPU_IS_BIG_ENDIAN 1)
	set (CPU_IS_LITTLE_ENDIAN 0)
else (${BIGENDIAN})
	set (WORDS_BIGENDIAN 0)
	set (CPU_IS_LITTLE_ENDIAN 1)
	set (CPU_IS_BIG_ENDIAN 0)
	endif (${BIGENDIAN})
