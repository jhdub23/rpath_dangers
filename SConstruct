# -*- Python -*-

VariantDir('build', '.', duplicate=0)

env = Environment()
env.SetDefault(CPPPATH = '#')

env.SConscript('build/src/SConscript', exports='env')

Alias('all', ['bins', 'libs'])
Default('all')
