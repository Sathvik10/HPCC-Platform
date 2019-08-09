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
set(CPACK_BUILD_SOURCE_DIRS "/home/sathvik/hpcc/HPCC-Platform;/home/sathvik/hpcc/HPCC-Platform/plugin_build1")
set(CPACK_CMAKE_GENERATOR "Unix Makefiles")
set(CPACK_COMPONENT_UNSPECIFIED_HIDDEN "TRUE")
set(CPACK_COMPONENT_UNSPECIFIED_REQUIRED "TRUE")
set(CPACK_DEBIAN_PACKAGE_DEPENDS "hpccsystems-platform (= 7.2.2-1)")
set(CPACK_DEBIAN_PACKAGE_SECTION "devel")
set(CPACK_DEBIAN_PACKAGE_SHLIBDEPS "OFF")
set(CPACK_GENERATOR "DEB")
set(CPACK_INSTALL_CMAKE_PROJECTS "/home/sathvik/hpcc/HPCC-Platform/plugin_build1;hpccsystems-platform;ALL;/")
set(CPACK_INSTALL_PREFIX "/opt/HPCCSystems")
set(CPACK_MODULE_PATH "/home/sathvik/hpcc/HPCC-Platform/cmake_modules/")
set(CPACK_NSIS_DISPLAY_NAME "hpccsystems-plugin-octaveembed 7.2.2-1")
set(CPACK_NSIS_INSTALLER_ICON_CODE "")
set(CPACK_NSIS_INSTALLER_MUI_ICON_CODE "")
set(CPACK_NSIS_INSTALL_ROOT "$PROGRAMFILES")
set(CPACK_NSIS_PACKAGE_NAME "hpccsystems-plugin-octaveembed 7.2.2-1")
set(CPACK_OUTPUT_CONFIG_FILE "/home/sathvik/hpcc/HPCC-Platform/plugin_build1/CPackConfig.cmake")
set(CPACK_PACKAGE_CONTACT "HPCCSystems <ossdevelopment@lexisnexis.com>")
set(CPACK_PACKAGE_DEFAULT_LOCATION "/")
set(CPACK_PACKAGE_DESCRIPTION_FILE "/usr/local/share/cmake-3.14/Templates/CPack.GenericDescription.txt")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "hpccsystems-plugin-octaveembed")
set(CPACK_PACKAGE_FILE_NAME "hpccsystems-plugin-octaveembed_7.2.2-1bionic_amd64")
set(CPACK_PACKAGE_INSTALL_DIRECTORY "hpccsystems-plugin-octaveembed 7.2.2-1")
set(CPACK_PACKAGE_INSTALL_REGISTRY_KEY "hpccsystems-plugin-octaveembed 7.2.2-1")
set(CPACK_PACKAGE_NAME "hpccsystems-plugin-octaveembed")
set(CPACK_PACKAGE_RELOCATABLE "true")
set(CPACK_PACKAGE_VENDOR "HPCC Systems®")
set(CPACK_PACKAGE_VENDOR_WITHOUT_TRADEMARK "HPCC Systems")
set(CPACK_PACKAGE_VERSION "7.2.2-1")
set(CPACK_PACKAGE_VERSION_MAJOR "7")
set(CPACK_PACKAGE_VERSION_MINOR "2")
set(CPACK_PACKAGE_VERSION_PATCH "2-1")
set(CPACK_PACKAGING_INSTALL_PREFIX "/opt/HPCCSystems")
set(CPACK_RESOURCE_FILE_LICENSE "/usr/local/share/cmake-3.14/Templates/CPack.GenericLicense.txt")
set(CPACK_RESOURCE_FILE_README "/usr/local/share/cmake-3.14/Templates/CPack.GenericDescription.txt")
set(CPACK_RESOURCE_FILE_WELCOME "/usr/local/share/cmake-3.14/Templates/CPack.GenericWelcome.txt")
set(CPACK_RPM_PACKAGE_ARCHITECTURE "x86_64")
set(CPACK_RPM_PACKAGE_RELEASE "1")
set(CPACK_RPM_PACKAGE_VENDOR "HPCC Systems®")
set(CPACK_RPM_PACKAGE_VERSION "7.2.2")
set(CPACK_SET_DESTDIR "OFF")
set(CPACK_SOURCE_7Z "")
set(CPACK_SOURCE_CYGWIN "")
set(CPACK_SOURCE_GENERATOR "TGZ")
set(CPACK_SOURCE_IGNORE_FILES "~$;\\.cvsignore$;^/home/sathvik/hpcc/HPCC-Platform.*/CVS/;^/home/sathvik/hpcc/HPCC-Platform.*/.svn/;^/home/sathvik/hpcc/HPCC-Platform.*/.git/;^/home/sathvik/hpcc/HPCC-Platform/ln/;^/home/sathvik/hpcc/HPCC-Platform/externals/;^/home/sathvik/hpcc/HPCC-Platform.*/*.mk$;^/home/sathvik/hpcc/HPCC-Platform/makefile$;^/home/sathvik/hpcc/HPCC-Platform/make.common$;^/home/sathvik/hpcc/HPCC-Platform/make.post$;^/home/sathvik/hpcc/HPCC-Platform/build$;^/home/sathvik/hpcc/HPCC-Platform/buildall$;^/home/sathvik/hpcc/HPCC-Platform/lastbuilds$;^/home/sathvik/hpcc/HPCC-Platform/imerge$;^/home/sathvik/hpcc/HPCC-Platform/tmerge$;^/home/sathvik/hpcc/HPCC-Platform/tmerge.bat$;^/home/sathvik/hpcc/HPCC-Platform/tag$;^/home/sathvik/hpcc/HPCC-Platform/tag_build$;^/home/sathvik/hpcc/HPCC-Platform/old_tag$;^/home/sathvik/hpcc/HPCC-Platform/ecl/regress/;^/home/sathvik/hpcc/HPCC-Platform/testing/")
set(CPACK_SOURCE_OUTPUT_CONFIG_FILE "/home/sathvik/hpcc/HPCC-Platform/plugin_build1/CPackSourceConfig.cmake")
set(CPACK_SOURCE_PACKAGE_FILE_NAME "hpccsystems-plugin-octaveembed_7.2.2-1")
set(CPACK_SOURCE_RPM "")
set(CPACK_SOURCE_TBZ2 "")
set(CPACK_SOURCE_TGZ "")
set(CPACK_SOURCE_TXZ "")
set(CPACK_SOURCE_TZ "")
set(CPACK_SOURCE_ZIP "")
set(CPACK_STRIP_FILES "TRUE")
set(CPACK_SYSTEM_NAME "Linux-x86_64")
set(CPACK_TOPLEVEL_TAG "Linux-x86_64")
set(CPACK_WIX_SIZEOF_VOID_P "8")

if(NOT CPACK_PROPERTIES_FILE)
  set(CPACK_PROPERTIES_FILE "/home/sathvik/hpcc/HPCC-Platform/plugin_build1/CPackProperties.cmake")
endif()

if(EXISTS ${CPACK_PROPERTIES_FILE})
  include(${CPACK_PROPERTIES_FILE})
endif()
