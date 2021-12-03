from setuptools import setup
from Cython.Build import cythonize
import numpy

setup(
    ext_modules=cythonize("where_are_we_going.pyx")
)