# RPATH in shared library dangers
Example shared library loading inconsistency with RPATH embedded in libraries.
Recommendation:
- Do not relay on LD_LIBRARY_PATH since it has global side effects.
- Use RPATH (or RUNPATH) within executables.
- Strip RPATH (and RUNPATH) from shared libraries.

## CMake users

### To build
```
mkdir build
cd build
cmake ../src
make
```

### Run the example

To show the shared library loading inconsistency with RPATH embedded in libraries:

```
# Within the build directory
cd build # if needed
../src/tests/show_ld_loading.sh
```

## SCons users

### To build
```
scons
```

### Run the example

To show the shared library loading inconsistency with RPATH embedded in libraries:

```
# Within the build/src directory
cd build/src # if needed
../../src/tests/show_ld_loading.sh
```
