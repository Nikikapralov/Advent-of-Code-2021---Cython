from setuptools import setup
from Cython.Build import cythonize

setup(
    ext_modules = cythonize("Check_the_depth.pyx")
)