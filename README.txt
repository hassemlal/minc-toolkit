MINC - TOOLKIT

Medical Imaging NetCDF Toolkit

Introduction
------------
This metaproject is designed to bundle together various related MINC-based packages which historically have been developed in a semi-independent way.

Here is a list of bundled packages:
 * minc - base Medical Imaging NetCDF package, file IO library, low-level image manipulation tools
 * bicpl - BIC programming library, adds supports for 3D objects in terms of io-library and low-level tools
 * EBTKS - Everything but the kitchen sink library, higher level C++ library for image manipulation
 * arguments - helper library for parsin command line arguments 
 * oobicpl - Object Oriented BIC programming library, provides higher level C++ interface to bicpl, and some higher level object manipulation tools
 * conglomerate - conglomerate of low-level volume and object manipilation tools
 * inormalize - intensity normalization tools
 * N3 - non-parametric method for correction of intensity non-uniformity in MRI data (http://en.wikibooks.org/wiki/MINC/Tools/N3)
 * classify - Tissue classification tools
 * mni_autoreg - MNI Automated Registration Package, supports both linear and non-linear registration, implements ANIMAL algorithm
 * ray_trace - 3D visualisation tool 
 * EZminc -  Eazy MINC - higher level C++ interface to minc, includes distortion correction tool, non-local means filter, markov random field tissue classification tool, modified diffeomorphic demons non-linear registration tool


Installation
------------
Installing from github, need CMake > 2.6 , preferably > 2.8.3 

  git clone git://github.com/vfonov/minc-toolkit.git minc-toolkit
  cd minc-toolkit
  git submodule init
  git submodule update --recursive
  cd Display
  git submodule init 
  git submodule update --recursive
  cd ../Register
  git submodule init 
  git submodule update --recursive
  cd ../..
  mkdir minc-toolkit-build
  cd minc-toolkit-build
  ccmake ../minc-toolkit
  .....enter location of all dependencies, if not detected automatically ...
  make 
  make install


Dependencies
------------
Following packages are needed to compile all tools:
 * zlib - http://zlib.net/                                  http://zlib.net/zlib-1.2.6.tar.gz
 * NETCDF - http://www.unidata.ucar.edu/software/netcdf/    ftp://ftp.unidata.ucar.edu/pub/netcdf/netcdf-4.0.1.tar.gz
 * HDF5 - http://www.hdfgroup.org/HDF5/                     http://www.hdfgroup.org/ftp/HDF5/releases/hdf5-1.8.7/src/hdf5-1.8.7.tar.gz
 * Perl - http://www.perl.org/
 * BISON - http://www.gnu.org/software/bison/
 * FLEX -  http://flex.sf.net/
 * NETPBM - http://netpbm.alioth.debian.org                 http://downloads.sourceforge.net/project/netpbm/super_stable/10.35.84/netpbm-10.35.84.tgz
 * PCRE  -  http://www.pcre.org/                            http://downloads.sourceforge.net/project/pcre/pcre/8.12/pcre-8.12.tar.gz
 * PCRE++ - http://www.daemon.de/PCRE                       http://www.daemon.de/idisk/Apps/pcre++/pcre++-0.9.5.tar.gz
 * GSL    - http://www.gnu.org/software/gsl/
 * FFTW3  - http://www.fftw.org/
 * ITK    - http://www.itk.org/                            (optional)
 * GLUT   - http://freeglut.sourceforge.net/
 * libxi  - 
 * libxmu 
 
Installing Dependencies on Ubuntu 10.04
------------

sudo apt-get install \
 build-essential g++ \
 cmake cmake-curses-gui \
 bison flex \
 freeglut3 freeglut3-dev \
 libxi6 libxi-dev libxmu6 libxmu-dev libxmu-headers

 
