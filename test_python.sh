#!/bin/bash

pip install spotipy

python3 <<END
#this is a test
import time

print("Hello from Python")

for count in range(1:10):
    time.sleep(1)
    print(count)
END
