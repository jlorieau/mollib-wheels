# Define custom utilities
# Test for OSX with [ -n "$IS_OSX" ]

function pre_build {
    pip install --only-binary=numpy,scipy numpy scipy pytest
    make install
}

function run_tests {
    python --version
#    make develop
    python -c 'import sys; import mollib; sys.exit(yourpackage.test())'
}