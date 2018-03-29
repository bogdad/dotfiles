#!/usr/bin/env bash
git clone https://github.com/opendtrace/toolkit.git $HOME/dtracetoolkit
git -C $HOME/dtracetoolkit fetch 
git -C $HOME/dtracetoolkit branch macos
