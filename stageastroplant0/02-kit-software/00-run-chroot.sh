#!/bin/bash -e

su $FIRST_USER_NAME - -c 'python3 -m pip install git+https://github.com/AstroPlant/astroplant-peripheral-device-library@1.0.0b2'
su $FIRST_USER_NAME - -c 'python3 -m pip install git+https://github.com/AstroPlant/astroplant-kit@1.0.0b4'
