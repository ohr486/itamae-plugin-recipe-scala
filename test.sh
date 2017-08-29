#!/bin/bash

#bundle exec itamae ssh --host=10.132.11.57 --node-yaml=recipes/node.yml recipes/install.rb
TARGET_HOST=10.132.11.57 bundle exec rake spec
