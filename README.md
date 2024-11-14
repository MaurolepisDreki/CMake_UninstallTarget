# USAGE
`include( UninstallTarget )`

## Troubleshooting
Files are installed to default cmake module directory for convenience, either:
 - `/usr/share/cmake/Modules`
or
 - `/usr/local/share/cmake/Modules`
depending on the value of `${CMAKE_INSTALL_DATADIR}` as defined by the
`GNUInstallDirs` module.

One or both of these directories may or not be searched, and may need to be
added manually prior to being included by such as
 - `list( APPEND CMAKE_MODULE_PATH "/usr/local/share/cmake/Modules" )`

*This basic recipe has been floating around the community for years.  This simply formalizes it.*

