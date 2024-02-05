# MIT License Copyright (c) 2023-2024 Shangjin Tang <shangjin.tang@gmail.com>
#
# External Dependencies

find_package(fmt QUIET REQUIRED)
find_package(spdlog QUIET REQUIRED)
find_package(armadillo QUIET REQUIRED)
if(BUILD_TESTING)
  find_package(GTest QUIET REQUIRED)
endif()

# ##############################################################################

# common libraries
list(APPEND COMMON_LINKED_LIBRARIES fmt)
list(APPEND COMMON_LINKED_LIBRARIES spdlog::spdlog)
list(APPEND COMMON_LINKED_LIBRARIES armadillo::armadillo)

# test libraries
list(APPEND COMMON_LINKED_TEST_LIBRARIES gtest gtest_main)

# ##############################################################################
