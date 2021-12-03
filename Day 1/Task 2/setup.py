from setuptools import setup
from Cython.Build import cythonize
import numpy

setup(
    ext_modules=cythonize("depth_rolling_window.pyx"),
    include_dirs=[numpy.get_include()]
)