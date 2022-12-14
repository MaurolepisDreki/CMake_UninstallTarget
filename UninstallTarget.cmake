# Implimentation of CMake Uninstall recipie as Module

include_guard( GLOBAL )

# Locate uninstall template and process
foreach( path IN ITEMS "${CMAKE_CURRENT_LIST_DIR}" "/usr/local/share/cmake" "/usr/share/cmake" )
	if( EXISTS "${path}/cmake_uninstall.cmake.in" )
		configure_file( "${path}/cmake_uninstall.cmake.in" "${CMAKE_BINARY_DIR}/cmake_uninstall.cmake" @ONLY )
		break()
	endif()
endforeach()

if( EXISTS "${CMAKE_BINARY_DIR}/cmake_uninstall.cmake" )
	add_custom_target( uninstall
		"${CMAKE_COMMAND}" -P "${CMAKE_BINARY_DIR}/cmake_uninstall.cmake" )
else()
	message( SEND_ERROR "FILE NOT FOUND : cmake_uninstall.cmake.in" )
endif()

