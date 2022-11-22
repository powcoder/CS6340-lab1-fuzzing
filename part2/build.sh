https://powcoder.com
代写代考加微信 powcoder
Assignment Project Exam Help
Add WeChat powcoder
https://powcoder.com
代写代考加微信 powcoder
Assignment Project Exam Help
Add WeChat powcoder
#!/bin/bash

rm -f test/sanity.cov
rm -f test/fuzz_output/failure/input*

cd build
cmake ..
make

cd ../test
make

#mkdir fuzz_output
timeout 1 ../build/fuzzer ./sanity fuzz_input fuzz_output MutationC

exit 
