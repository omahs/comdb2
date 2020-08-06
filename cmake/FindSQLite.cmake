if (CMAKE_VERSION VERSION_LESS 3.14.0)
  find_path(SQLite3_INCLUDE_DIRS NAMES sqlite3.h)
  find_library(SQLite3_LIBRARIES NAMES sqlite3)
  include(FindPackageHandleStandardArgs)
  find_package_handle_standard_args(SQLITE3 DEFAULT_MSG SQLite3_INCLUDE_DIRS)
  find_package_handle_standard_args(libsqlite3 DEFAULT_MSG SQLite3_LIBRARIES)
else()
  find_package(SQLite3)
endif()
