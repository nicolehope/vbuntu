#!/usr/bin/python
import os.path, subprocess

packages = [
'platformio-ide-terminal',
'vim-mode-plus',
]

for package in packages:
    package_dir = os.path.join(os.path.expanduser('~'), '.atom', 'packages', package)
    if not os.path.exists(package_dir):
        subprocess.call(["apm", "install", package])
    else:
        print package + " is already installed"
