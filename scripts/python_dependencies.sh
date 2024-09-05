#!/usr/bin/env bash

sudo chown -R ubuntu:ubuntu ~/testprojects
virtualenv /home/ubuntu/testprojects/venv
source /home/ubuntu/testprojects/venv/bin/activate
pip install -r /home/ubuntu/testprojects/requirements.txt