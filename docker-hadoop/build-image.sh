#!/bin/bash

echo ""

echo -e "\nbuild docker hadoop image\n"
sudo docker build -t wguo32/compiled-hadoop:latest .

echo ""