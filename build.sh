#!/bin/bash

# Vars
slndir="$(dirname "${BASH_SOURCE[0]}")/src"

# Restore + Build
dotnet build "$slndir/meru.sln" --nologo || exit

# Test
dotnet test "$slndir/meru.Tests" --nologo --no-build
