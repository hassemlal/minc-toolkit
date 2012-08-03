macro(build_zlib install_prefix staging_prefix)

ExternalProject_Add(ZLIB
  SOURCE_DIR ZLIB
  URL "http://sourceforge.net/projects/libpng/files/zlib/1.2.6/zlib-1.2.6.tar.gz"
  URL_MD5 "618e944d7c7cd6521551e30b32322f4a"
  BUILD_IN_SOURCE 1
  INSTALL_DIR     "${staging_prefix}"
  BUILD_COMMAND   make 
  INSTALL_COMMAND make DESTDIR=${staging_prefix} install
  CONFIGURE_COMMAND CFLAGS=-fPIC ./configure --prefix=${install_prefix} --static  
)


SET(ZLIB_INCLUDE_DIR ${staging_prefix}/${install_prefix}/include )
SET(ZLIB_LIBRARY     ${staging_prefix}/${install_prefix}/lib/libz.a )
SET(ZLIB_FOUND ON)


endmacro(build_zlib)
