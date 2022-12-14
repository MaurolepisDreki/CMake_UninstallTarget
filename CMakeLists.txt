cmake_minimum_required( VERSION 3.21 )
project( "CMake Uninstall"
	DESCRIPTION "Common Uninstall Module for CMake"
	VERSION 2022.347
	LANGUAGES NONE )

include( GNUInstallDirs )
list( APPEND CMAKE_MODULE_PATH "." )
include( UninstallTarget )


install( FILES "UninstallTarget.cmake"
	DESTINATION "${CMAKE_INSTALL_LIBEXECDIR}/cmake" )

install( FILES "cmake_uninstall.cmake.in"
	DESTINATION "${CMAKE_INSTALL_DATADIR}/cmake" )

