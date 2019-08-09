# This file will be configured to contain variables for CPack. These variables
# should be set in the CMake list file of the project before CPack module is
# included. The list of available CPACK_xxx variables and their associated
# documentation may be obtained using
#  cpack --help-variable-list
#
# Some variables are common to all generators (e.g. CPACK_PACKAGE_NAME)
# and some are specific to a generator
# (e.g. CPACK_NSIS_EXTRA_INSTALL_COMMANDS). The generator specific variables
# usually begin with CPACK_<GENNAME>_xxxx.


set(CPACK_BINARY_7Z "")
set(CPACK_BINARY_BUNDLE "")
set(CPACK_BINARY_CYGWIN "")
set(CPACK_BINARY_DEB "")
set(CPACK_BINARY_DRAGNDROP "")
set(CPACK_BINARY_FREEBSD "")
set(CPACK_BINARY_IFW "")
set(CPACK_BINARY_NSIS "")
set(CPACK_BINARY_NUGET "")
set(CPACK_BINARY_OSXX11 "")
set(CPACK_BINARY_PACKAGEMAKER "")
set(CPACK_BINARY_PRODUCTBUILD "")
set(CPACK_BINARY_RPM "")
set(CPACK_BINARY_STGZ "")
set(CPACK_BINARY_TBZ2 "")
set(CPACK_BINARY_TGZ "")
set(CPACK_BINARY_TXZ "")
set(CPACK_BINARY_TZ "")
set(CPACK_BINARY_WIX "")
set(CPACK_BINARY_ZIP "")
set(CPACK_BUILD_SOURCE_DIRS "/home/sathvik/hpcc/HPCC-Platform;/home/sathvik/hpcc/HPCC-Platform/build")
set(CPACK_CMAKE_GENERATOR "Unix Makefiles")
set(CPACK_COMPONENTS_ALL "Runtime;Systemd;Unspecified")
set(CPACK_COMPONENT_UNSPECIFIED_HIDDEN "TRUE")
set(CPACK_COMPONENT_UNSPECIFIED_REQUIRED "TRUE")
set(CPACK_DEBIAN_PACKAGE_CONTROL_EXTRA "/home/sathvik/hpcc/HPCC-Platform/build/initfiles/bash/sbin/deb/postinst;/home/sathvik/hpcc/HPCC-Platform/build/initfiles/sbin/prerm;/home/sathvik/hpcc/HPCC-Platform/build/initfiles/bash/sbin/deb/postrm")
set(CPACK_DEBIAN_PACKAGE_DEPENDS "xterm, g++, openssh-client, openssh-server, expect, rsync, libapr1, python, psmisc, curl")
set(CPACK_DEBIAN_PACKAGE_SECTION "devel")
set(CPACK_DEBIAN_PACKAGE_SHLIBDEPS "OFF")
set(CPACK_GENERATOR "TGZ")
set(CPACK_IGNORE_FILES "~$;\\.cvsignore$;^/home/sathvik/hpcc/HPCC-Platform.*/CVS/;^/home/sathvik/hpcc/HPCC-Platform.*/.svn/;^/home/sathvik/hpcc/HPCC-Platform.*/.git/;^/home/sathvik/hpcc/HPCC-Platform/ln/;^/home/sathvik/hpcc/HPCC-Platform/externals/;^/home/sathvik/hpcc/HPCC-Platform.*/*.mk$;^/home/sathvik/hpcc/HPCC-Platform/makefile$;^/home/sathvik/hpcc/HPCC-Platform/make.common$;^/home/sathvik/hpcc/HPCC-Platform/make.post$;^/home/sathvik/hpcc/HPCC-Platform/build$;^/home/sathvik/hpcc/HPCC-Platform/buildall$;^/home/sathvik/hpcc/HPCC-Platform/lastbuilds$;^/home/sathvik/hpcc/HPCC-Platform/imerge$;^/home/sathvik/hpcc/HPCC-Platform/tmerge$;^/home/sathvik/hpcc/HPCC-Platform/tmerge.bat$;^/home/sathvik/hpcc/HPCC-Platform/tag$;^/home/sathvik/hpcc/HPCC-Platform/tag_build$;^/home/sathvik/hpcc/HPCC-Platform/old_tag$;^/home/sathvik/hpcc/HPCC-Platform/ecl/regress/;^/home/sathvik/hpcc/HPCC-Platform/testing/")
set(CPACK_INSTALLED_DIRECTORIES "/home/sathvik/hpcc/HPCC-Platform;/")
set(CPACK_INSTALL_CMAKE_PROJECTS "")
set(CPACK_INSTALL_PREFIX "/opt/HPCCSystems")
set(CPACK_MODULE_PATH "/home/sathvik/hpcc/HPCC-Platform/cmake_modules/")
set(CPACK_NSIS_DISPLAY_NAME "hpccsystems-platform 7.2.2-1Debug")
set(CPACK_NSIS_INSTALLER_ICON_CODE "")
set(CPACK_NSIS_INSTALLER_MUI_ICON_CODE "")
set(CPACK_NSIS_INSTALL_ROOT "$PROGRAMFILES")
set(CPACK_NSIS_PACKAGE_NAME "hpccsystems-platform 7.2.2-1Debug")
set(CPACK_OUTPUT_CONFIG_FILE "/home/sathvik/hpcc/HPCC-Platform/build/CPackConfig.cmake")
set(CPACK_PACKAGE_CONTACT "HPCCSystems <ossdevelopment@lexisnexis.com>")
set(CPACK_PACKAGE_DEFAULT_LOCATION "/")
set(CPACK_PACKAGE_DESCRIPTION_FILE "/usr/local/share/cmake-3.14/Templates/CPack.GenericDescription.txt")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "hpccsystems-platform-community")
set(CPACK_PACKAGE_FILE_NAME "hpccsystems-platform-community_7.2.2-1Debug")
set(CPACK_PACKAGE_INSTALL_DIRECTORY "hpccsystems-platform 7.2.2-1Debug")
set(CPACK_PACKAGE_INSTALL_REGISTRY_KEY "hpccsystems-platform 7.2.2-1Debug")
set(CPACK_PACKAGE_NAME "hpccsystems-platform")
set(CPACK_PACKAGE_RELOCATABLE "true")
set(CPACK_PACKAGE_VENDOR "HPCC Systems®")
set(CPACK_PACKAGE_VENDOR_WITHOUT_TRADEMARK "HPCC Systems")
set(CPACK_PACKAGE_VERSION "7.2.2-1Debug")
set(CPACK_PACKAGE_VERSION_MAJOR "7")
set(CPACK_PACKAGE_VERSION_MINOR "2")
set(CPACK_PACKAGE_VERSION_PATCH "2-1Debug")
set(CPACK_PACKAGING_INSTALL_PREFIX "/opt/HPCCSystems")
set(CPACK_RESOURCE_FILE_LICENSE "/usr/local/share/cmake-3.14/Templates/CPack.GenericLicense.txt")
set(CPACK_RESOURCE_FILE_README "/usr/local/share/cmake-3.14/Templates/CPack.GenericDescription.txt")
set(CPACK_RESOURCE_FILE_WELCOME "/usr/local/share/cmake-3.14/Templates/CPack.GenericWelcome.txt")
set(CPACK_RPM_PACKAGE_ARCHITECTURE "x86_64")
set(CPACK_RPM_PACKAGE_RELEASE "1Debug")
set(CPACK_RPM_PACKAGE_SOURCES "ON")
set(CPACK_RPM_PACKAGE_VENDOR "HPCC Systems®")
set(CPACK_RPM_PACKAGE_VERSION "7.2.2")
set(CPACK_SET_DESTDIR "OFF")
set(CPACK_SOURCE_7Z "")
set(CPACK_SOURCE_CYGWIN "")
set(CPACK_SOURCE_GENERATOR "TGZ")
set(CPACK_SOURCE_IGNORE_FILES "~$;\\.cvsignore$;^/home/sathvik/hpcc/HPCC-Platform.*/CVS/;^/home/sathvik/hpcc/HPCC-Platform.*/.svn/;^/home/sathvik/hpcc/HPCC-Platform.*/.git/;^/home/sathvik/hpcc/HPCC-Platform/ln/;^/home/sathvik/hpcc/HPCC-Platform/externals/;^/home/sathvik/hpcc/HPCC-Platform.*/*.mk$;^/home/sathvik/hpcc/HPCC-Platform/makefile$;^/home/sathvik/hpcc/HPCC-Platform/make.common$;^/home/sathvik/hpcc/HPCC-Platform/make.post$;^/home/sathvik/hpcc/HPCC-Platform/build$;^/home/sathvik/hpcc/HPCC-Platform/buildall$;^/home/sathvik/hpcc/HPCC-Platform/lastbuilds$;^/home/sathvik/hpcc/HPCC-Platform/imerge$;^/home/sathvik/hpcc/HPCC-Platform/tmerge$;^/home/sathvik/hpcc/HPCC-Platform/tmerge.bat$;^/home/sathvik/hpcc/HPCC-Platform/tag$;^/home/sathvik/hpcc/HPCC-Platform/tag_build$;^/home/sathvik/hpcc/HPCC-Platform/old_tag$;^/home/sathvik/hpcc/HPCC-Platform/ecl/regress/;^/home/sathvik/hpcc/HPCC-Platform/testing/")
set(CPACK_SOURCE_INSTALLED_DIRECTORIES "/home/sathvik/hpcc/HPCC-Platform;/")
set(CPACK_SOURCE_OUTPUT_CONFIG_FILE "/home/sathvik/hpcc/HPCC-Platform/build/CPackSourceConfig.cmake")
set(CPACK_SOURCE_PACKAGE_FILE_NAME "hpccsystems-platform-community_7.2.2-1Debug")
set(CPACK_SOURCE_RPM "OFF")
set(CPACK_SOURCE_TBZ2 "ON")
set(CPACK_SOURCE_TGZ "ON")
set(CPACK_SOURCE_TOPLEVEL_TAG "Linux-x86_64-Source")
set(CPACK_SOURCE_TXZ "ON")
set(CPACK_SOURCE_TZ "ON")
set(CPACK_SOURCE_ZIP "OFF")
set(CPACK_STRIP_FILES "")
set(CPACK_SYSTEM_NAME "Linux-x86_64")
set(CPACK_TOPLEVEL_TAG "Linux-x86_64-Source")
set(CPACK_WIX_SIZEOF_VOID_P "8")

if(NOT CPACK_PROPERTIES_FILE)
  set(CPACK_PROPERTIES_FILE "/home/sathvik/hpcc/HPCC-Platform/build/CPackProperties.cmake")
endif()

if(EXISTS ${CPACK_PROPERTIES_FILE})
  include(${CPACK_PROPERTIES_FILE})
endif()
