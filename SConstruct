# -*- Python -*-

#SConscript('src/SConscript', variant_dir='build')
env = Environment()

VariantDir('build', '.', duplicate=0)

env.SConscript('build/src/SConscript', exports='env')
