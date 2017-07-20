#!/bin/bash

echo $(cat release.tex | tr '\n' ' ')\($(git describe)\)
