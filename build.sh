#!/bin/bash
# Copyright (C) 2015-2016 UBERROMS - UBERLLVM
#
# Licensed under the Apache License, Version 2.0 (the "License");
#   You may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.

export TOOLCHAIN_ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )";

# Check if the desired version is valid
# if [[ "$1" =~ ^[0-9]+(\.[0-9]+)?$ ]] ; then
    export UBERCLANG_VERSION=$1
# fi;

if [ "$1" == "master" ]; then
    export UBERCLANG_VERSION="master"
fi;

./scripts/uberclang
