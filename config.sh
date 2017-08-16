# Define custom utilities
# Test for OSX with [ -n "$IS_OSX" ]

function pre_build {
    pip install --only-binary=numpy,scipy numpy scipy pytest
    make install
}

function run_tests {
    python --version
    python -m pytest
#    python -c 'import sys; import mollib; sys.exit(mollib.test())'
#    ls /io/mollib/mollib
#    cd /io/mollib
#    make develop
#    echo "here"
#    pytest
}