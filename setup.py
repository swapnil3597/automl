"""
    Package dependencies and versions
"""
import setuptools
import os

os.system('pip3 install git+https://github.com/cocodataset/cocoapi.git#subdirectory=PythonAPI')


NAME = 'trainer'
VERSION = '1.0'
REQUIRED_PACKAGES = [
    'absl-py>=0.7.1',
    'matplotlib>=3.0.3',
    'numpy>=1.16.4',
    'Pillow>=6.0.0',
    'PyYAML>=5.1',
    'six>=1.12.0',
    'tensorflow-gpu>=2.1.0',
    'tensorflow-addons>=0.9.1',
    'tensorflow-probability>=0.9.0'
]

setuptools.setup(
    name=NAME,
    version=VERSION,
    packages=setuptools.find_packages(),
    install_requires=REQUIRED_PACKAGES,
    include_package_data=True,
    description='EfficientDet training application package')
