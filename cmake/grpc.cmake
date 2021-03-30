# Forked from https://github.com/grpc/grpc/blob/master/examples/cpp/cmake/common.cmake

# Copyright 2018 gRPC authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# cmake build file for C++ route_guide example.
# Assumes protobuf and gRPC have been installed using cmake.
# See cmake_externalproject/CMakeLists.txt for all-in-one cmake build
# that automatically builds all the dependencies before building route_guide.

include(FetchContent)

set(FETCHCONTENT_BASE_DIR ${EXTERNALDIR})
set(FETCHCONTENT_UPDATES_DISCONNECTED ON)

FetchContent_Declare(
  grpc
  GIT_REPOSITORY https://github.com/grpc/grpc.git
  GIT_TAG        v1.36.4
)

set(CMAKE_BUILD_TYPE Release)  # required to compile libprotobuf.a
# FetchContent_MakeAvailable(grpc)
FetchContent_GetProperties(grpc)
if(NOT grpc_POPULATED)
    FetchContent_Populate(grpc)
endif()
include_directories(${grpc_SOURCE_DIR}/include
        ${grpc_SOURCE_DIR}/third_party/protobuf/src)

set(_PROTOBUF_LIBPROTOBUF ${grpc_BINARY_DIR}/third_party/protobuf/libprotobuf.a)
set(_REFLECTION ${grpc_BINARY_DIR}/libgrpc++_reflection.a)
set(_PROTOBUF_PROTOC ${grpc_BINARY_DIR}/third_party/protobuf/protoc)
set(_GRPC_GRPCPP ${grpc_BINARY_DIR}/libgrpc++.a)
set(_GRPC_CPP_PLUGIN_EXECUTABLE ${grpc_BINARY_DIR}/grpc_cpp_plugin)

