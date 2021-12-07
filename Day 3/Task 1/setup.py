from setuptools import setup
from Cython.Build import cythonize
import numpy

setup(
    ext_modules=cythonize("binary_diagnostic.pyx"),
    include_dirs=[numpy.get_include()]
)