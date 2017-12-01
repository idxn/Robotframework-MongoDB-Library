#!/usr/bin/env python


"""Setup script for Robot's MongoDB Library distributions"""

from setuptools import setup

import sys, os
sys.path.insert(0, os.path.join('src','MongoDBLibrary'))

from version import VERSION

requirements = [
    'pymongo>=3.5.1',
]

def main():
    setup(name         = 'robotframework-mongodblibrary',
          version      = VERSION,
          description  = 'Mongo Database utility library for Robot Framework',
          author       = 'Jerry Schneider',
          author_email = 'jerry@cyverse.org',
          url          = 'https://github.com/iPlantCollaborativeOpenSource/Robotframework-MongoDB-Library',
          package_dir  = { '' : 'src'},
          packages     = ['MongoDBLibrary'],
          install_requires=requirements
          )
        

if __name__ == "__main__":
    main()
