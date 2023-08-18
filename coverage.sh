git apply coverage.patch
forge coverage --report lcov && genhtml lcov.info --branch-coverage --output-dir coverage
git apply coverage.patch --reverse