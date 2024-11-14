cmake_minimum_required( VERSION 3.21 )
project( "CMake Uninstall"
	DESCRIPTION "Common Uninstall Module for CMake"
	VERSION 2024.319
	LANGUAGES NONE )

#set( CMAKE_INSTALL_PREFIX "/usr" )
include( GNUInstallDirs )
list( APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}" )
include( UninstallTarget )


install( FILES "UninstallTarget.cmake"
	DESTINATION "${CMAKE_INSTALL_DATADIR}/cmake/Modules" )

install( FILES "cmake_uninstall.cmake.in"
	DESTINATION "${CMAKE_INSTALL_DATADIR}/cmake/Modules/UninstallTarget" )

