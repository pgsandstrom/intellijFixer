#!/bin/bash
set -e
set -u

# To use with intellij:
# 1. Create an external tool pointing to this file.
# 2. Set parameters to: "$FilePath$" "$ModuleFileDir$"
# 3. Set working directory to: $ProjectFileDir$

# If it doesn't work, make sure that the folder containing node_modules is set as a module.
# Simpy go to "Project Structure -> Modules" and add it!

filePath=${1}
ModuleFileDir=${2}

prettier --write ${filePath}
${ModuleFileDir}/node_modules/eslint/bin/eslint.js --fix ${filePath}