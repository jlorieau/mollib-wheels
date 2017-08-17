# Define custom utilities
# Test for OSX with [ -n "$IS_OSX" ]

function pre_build {
    cp .pypirc ~
    pip install --only-binary=numpy,scipy numpy scipy pytest
    make install
}

function run_tests {
  echo run_tests
  # The following only tests unit tests. The doctests aren't tested due to
  # name collisions between the installed version and the source code. These
  # are tested separately.
  pytest ../mollib/tests
}