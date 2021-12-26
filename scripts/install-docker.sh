#!/bin/bash

 curl -fsSL https://get.docker.com | bash
 sudo groupadd -f docker
 sudo usermod -aG docker $USER
