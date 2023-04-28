#!/bin/bash

echo "**** Case 1: RPATH deleted from libraries.  Executable has full control over what libraries are loaded (../lib)"
install_dir=install1
mkdir -p $install_dir/bin
mkdir -p $install_dir/lib
mkdir -p $install_dir/lib_cache
cp bins/top $install_dir/bin
cp libs/*.so $install_dir/lib_cache
chrpath -r '$ORIGIN/../lib' $install_dir/bin/top > /dev/null
chrpath --delete $install_dir/lib_cache/*.so
pushd $install_dir/lib
ln -s ../lib_cache/libmylib_level1.so .
ln -s ../lib_cache/libmylib_level2_v1.so libmylib_level2.so
popd
$install_dir/bin/top

echo
echo "**** Case 2: RPATH embedded in libraries.  Note the library loading change from Case 1.  Unknown what secondary libraries get loaded without tracing the dependency chain.  Many things can affect the library loading order and subsequent secondary dependencies."
install_dir=install2
mkdir -p $install_dir/bin
mkdir -p $install_dir/lib
mkdir -p $install_dir/lib_cache
cp bins/top $install_dir/bin
cp libs/*.so $install_dir/lib_cache
chrpath -r '$ORIGIN/../lib' $install_dir/bin/top > /dev/null
chrpath -r '$ORIGIN/../lib_cache' $install_dir/lib_cache/*.so > /dev/null
pushd $install_dir/lib
ln -s ../lib_cache/libmylib_level1.so .
ln -s ../lib_cache/libmylib_level2_v1.so libmylib_level2.so
popd
$install_dir/bin/top

echo
echo "**** Case 3: RPATH embedded in libraries.  Simulate a code change in 'top' where top now requires a function in mylib_level2.  Note the library loading change from Case 2"
install_dir=install3
mkdir -p $install_dir/bin
mkdir -p $install_dir/lib
mkdir -p $install_dir/lib_cache
cp bins/top2 $install_dir/bin
cp libs/*.so $install_dir/lib_cache
chrpath -r '$ORIGIN/../lib' $install_dir/bin/top2 > /dev/null
chrpath -r '$ORIGIN/../lib_cache' $install_dir/lib_cache/*.so > /dev/null
pushd $install_dir/lib
ln -s ../lib_cache/libmylib_level1.so .
ln -s ../lib_cache/libmylib_level2_v1.so libmylib_level2.so
popd
$install_dir/bin/top2
