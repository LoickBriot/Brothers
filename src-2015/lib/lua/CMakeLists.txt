CMAKE_MINIMUM_REQUIRED(VERSION 2.6)
PROJECT(lua)

SET(LIBLUA_SOURCES 
src/lapi.c
src/lauxlib.c
src/lbaselib.c
src/lcode.c
src/ldblib.c
src/ldebug.c
src/ldo.c
src/ldump.c
src/lfunc.c
src/lgc.c
src/linit.c
src/liolib.c
src/llex.c
src/lmathlib.c
src/lmem.c
src/loadlib.c
src/lobject.c
src/lopcodes.c
src/loslib.c
src/lparser.c
src/lstate.c
src/lstring.c
src/lstrlib.c
src/ltable.c
src/ltablib.c
src/ltm.c
# src/lua.c
# src/luac.c
src/lundump.c
src/lvm.c
src/lzio.c
src/print.c
)
		
SET(LIBLUA_HEADERS 
src/lapi.h
src/lauxlib.h
src/lcode.h
src/ldebug.h
src/ldo.h
src/lfunc.h
src/lgc.h
src/llex.h
src/llimits.h
src/lmem.h
src/lobject.h
src/lopcodes.h
src/lparser.h
src/lstate.h
src/lstring.h
src/ltable.h
src/ltm.h
src/lua.h
src/luaconf.h
src/lualib.h
src/lundump.h
src/lvm.h
src/lzio.h
)
		
ADD_DEFINITIONS( -DLUA_COMPAT_ALL -D_CRT_SECURE_NO_WARNINGS )
	
ADD_LIBRARY(lua STATIC ${LIBLUA_SOURCES} ${LIBLUA_HEADERS})

SET_TARGET_PROPERTIES(lua PROPERTIES DEBUG_POSTFIX "-d")

INSTALL(TARGETS lua
  RUNTIME DESTINATION ${CMAKE_SOURCE_DIR}/bin/
  LIBRARY DESTINATION ${CMAKE_SOURCE_DIR}/lib/
  ARCHIVE DESTINATION ${CMAKE_SOURCE_DIR}/lib/
)

