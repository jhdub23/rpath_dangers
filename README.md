# RPATH in shared library dangers
Example shared library loading inconsistency with RPATH embedded in libraries.
Recommendation:
- Do not rely on LD_LIBRARY_PATH since it has global side effects.
- Use RPATH (or RUNPATH) within executables.
- Strip RPATH (and RUNPATH) from shared libraries.

## To build

### CMake users
```
mkdir build
pushd build
cmake ..
make
popd
```

### SCons users
```
scons
```

## Run the example

To show the shared library loading inconsistency with RPATH embedded in libraries:

```
# Within the build/src directory
pushd build/src
../../src/tests/show_ld_loading.sh
popd
```

## Clean
```
rm -rf build
```
