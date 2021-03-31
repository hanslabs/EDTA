#!/usr/bin/env bash

PWD=`pwd`
PROJECT_ROOT="${PWD}/.."

function usage() {
    echo "bash set_env.sh arg"
    echo "example:"
    echo "bash set_env.sh build : set build env and req"
    echo "bash set_env.sh clean : clean env and file"
}

function set_gtest_env() {
    tar -C ${PROJECT_ROOT}/opensource/ -zxvf ${PROJECT_ROOT}/opensource/googletest-release-1.10.0.tar.gz
    cd ${PROJECT_ROOT}/opensource/googletest-release-1.10.0

    mkdir gbuild
    pushd gbuild
    cmake ..
    make -j 8
    make install
    popd
}

function set_mockcpp_env() {
    # tar -C ${PROJECT_ROOT}/opensource/ -zxvf ${PROJECT_ROOT}/opensource/mockcpp-2.6.tar.gz
    cd ${PROJECT_ROOT}/opensource/mockcpp
    mkdir mbuild
    pushd mbuild
    cmake .. -DMOCKCPP_XUNIT=gtest -DMOCKCPP_XUNIT_HOME=${PROJECT_ROOT}/opensource/googletest-release-1.10.0/googletest
    make -j 8
    make install
    popd
}

function copy_header_files() {
    cp -r ${PROJECT_ROOT}/opensource/googletest-release-1.10.0/googletest/include/gtest ${PROJECT_ROOT}/include
    cp -r ${PROJECT_ROOT}/opensource/googletest-release-1.10.0/googlemock/include/gmock ${PROJECT_ROOT}/include

    cp -r ${PROJECT_ROOT}/opensource/mockcpp/include/mockcpp ${PROJECT_ROOT}/include
    cp -r ${PROJECT_ROOT}/opensource/mockcpp/3rdparty/boost ${PROJECT_ROOT}/include

    cp -r ${PROJECT_ROOT}/opensource/googletest-release-1.10.0/gbuild/lib ${PROJECT_ROOT}/libs
    cp -r ${PROJECT_ROOT}/opensource/mockcpp/mbuild/lib ${PROJECT_ROOT}/libs
}

function build_env() {
    echo "build gtest"
    clean_env
    set_gtest_env
    set_mockcpp_env
    copy_header_files
}

function clean_header_files() {
    rm -rf ${PROJECT_ROOT}/include/gtest
    rm -rf ${PROJECT_ROOT}/include/gmock

    rm -rf ${PROJECT_ROOT}/include/mockcpp
    rm -rf ${PROJECT_ROOT}/include/boost
}

function clean_env() {
    echo "clean gtest and mockcpp"
    rm -rf ${PROJECT_ROOT}/opensource/googletest-release-1.10.0
    # rm -rf ${PROJECT_ROOT}/opensource/mockcpp
    clean_header_files
    echo "clean done"
}

function func_main() {
    case $1 in
    "build")
      build_env
      ;;
    "clean")
      clean_env
      ;;
    *)
      usage
      ;;
    esac
}

function main() {
    case $# in
    0)
      usage
      ;;
    1)
      func_main $1
      ;;
    *)
      usage
      ;;
    esac
}

main $@
