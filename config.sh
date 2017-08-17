# Define custom utilities
# Test for OSX with [ -n "$IS_OSX" ]

function pre_build {
    pip install --only-binary=numpy,scipy numpy scipy pytest
    make install
}

function run_tests {
  echo run_tests
  pytest ../mollib/tests
  find /venv/lib/python3.6/site-packages/mollib/
}