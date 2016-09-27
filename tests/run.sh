#! /bin/bash
# Test script for BVM
# Works by parsing a Here Document that contains a list of tests.
# Each line describes a test in the form:
#    Test name,Program,Test input,Expected result

echo Running BVM Tests...

# Function to receive Here Document
runTests() {

	# Running totals
	TESTS_TOTAL=0
	TESTS_PASS=0
	TESTS_FAIL=0

	# Read each line and split using :
	while IFS='^' read -ra test
	do
		TESTNAME=${test[0]}				# Human readable test name
		PROGRAM=${test[1]}				# Program to execute for test
		INPUT=${test[2]}				# Input to send into program
		EXPECTED=$(printf "${test[3]}")	# Expected output from program

		# Scipt comments and blank lines
		if [[ "$TESTNAME" != "" && "$TESTNAME" != \#* ]]; then
			TESTS_TOTAL=$((TESTS_TOTAL + 1))

			# Print out the test we're about to run
			echo -n "$TESTS_TOTAL: $TESTNAME... "

			# Execute the test and store the output
			ACTUAL=`echo $INPUT | bin/bvm $PROGRAM 2>&1`

			if [[ "$EXPECTED" == "$ACTUAL" ]]
			then
				TESTS_PASS=$((TESTS_PASS + 1))
				echo "[OK]"
			else
				# Failed, log what happened
				TESTS_FAIL=$((TESTS_FAIL + 1))
				echo "[FAILED]"
				echo "    Expected: $EXPECTED"
				echo "    Actual: $ACTUAL"
			fi
		fi
	done

	# Print out final summary
	echo "Total = $TESTS_TOTAL, Passed = $TESTS_PASS, Failed = $TESTS_FAIL"

	# Exit with a non-zero code if any tests failed
	if [ $TESTS_FAIL -ne 0 ]
	then
		exit 1
	fi
}


# List of tests
runTests <<TESTSCRIPT_EOF
# Command Line Arguments Tests
Args - Invalid File Name^INVALID.bf^^VM EXCEPTION!\nUnable to open INVALID.bf
Args - Debug Char At Start of Mem^-D @ tests/args/debugchar_startofmem.bf^^pindex = 43\nmindex = 0\n<1>, 2, 3, 4, 5, 6, 
Args - Debug Char Near Start of Mem^-D # tests/args/debugchar_nearstartofmem.bf^^pindex = 64\nmindex = 2\n1, 2, <3>, 4, 5, 6, 7, 8, 
Args - Debug Char Middle of Mem^-D # tests/args/debugchar_middleofmem.bf^^pindex = 103\nmindex = 5\n1, 2, 3, 4, 5, <6>, 7, 8, 9, 10, 11, 
Args - Debug Char Near End of Mem^-D X -m 8 tests/args/debugchar_nearendofmem.bf^^pindex = 61\nmindex = 5\n1, 2, 3, 4, 5, <6>, 7, 8, 
Args - Debug Char End of Mem^-D Y -m 6 tests/args/debugchar_endofmem.bf^^pindex = 38\nmindex = 5\n1, 2, 3, 4, 5, <6>, 
Args - Debug Char Tiny Mem^-D # -m 3 tests/args/debugchar_tinymem.bf^^pindex = 18\nmindex = 1\n3, <5>, 7, 

# FastVM
Args - Debug Char At Start of Mem (FastVM)^-fast -D @ tests/args/debugchar_startofmem.bf^^pindex = 12\nmindex = 0\n<1>, 2, 3, 4, 5, 6, 
Args - Debug Char Near Start of Mem (FastVM)^-fast -D # tests/args/debugchar_nearstartofmem.bf^^pindex = 16\nmindex = 2\n1, 2, <3>, 4, 5, 6, 7, 8, 
Args - Debug Char Middle of Mem (FastVM)^-fast -D # tests/args/debugchar_middleofmem.bf^^pindex = 22\nmindex = 5\n1, 2, 3, 4, 5, <6>, 7, 8, 9, 10, 11, 
Args - Debug Char Near End of Mem (FastVM)^-fast -D X -m 8 tests/args/debugchar_nearendofmem.bf^^pindex = 16\nmindex = 5\n1, 2, 3, 4, 5, <6>, 7, 8, 
Args - Debug Char End of Mem (FastVM)^-fast -D Y -m 6 tests/args/debugchar_endofmem.bf^^pindex = 11\nmindex = 5\n1, 2, 3, 4, 5, <6>, 
Args - Debug Char Tiny Mem (FastVM)^-fast -D # -m 3 tests/args/debugchar_tinymem.bf^^pindex = 6\nmindex = 1\n3, <5>, 7, 

# Basic Tests
Output^tests/basic/output.bf^^ABC
Loops - Start Loop - No Iteration^tests/basic/loops_start_noiteration.bf^^
Loops - Nested^tests/basic/loops_nested.bf^^@8
Loops - Beyond Start^tests/basic/loops_beyond_start.bf^^VM EXCEPTION!\nLooped back beyond program start.\npindex = 1\nmindex = 0\n<1>, 0, 0, 0, 0, 0, 
Loops - Beyond End^tests/basic/loops_beyond_end.bf^^VM EXCEPTION!\nLooped beyond program end.\npindex = 0\nmindex = 0\n<0>, 0, 0, 0, 0, 0, 
Index - Beyond Start^tests/basic/index_beyond_start.bf^^VM EXCEPTION!\nIndex moved beyond memory start.\npindex = 0\nmindex = 0\n<0>, 0, 0, 0, 0, 0, 
Index - Beyond End^tests/basic/index_beyond_end.bf^^VM EXCEPTION!\nIndex moved beyond memory end.\npindex = 2\nmindex = 29999\n1, 1, 1, 1, 1, <1>, 
Input - EOF -1^-m 1 -D # tests/basic/input_EOF-1.bf^^pindex = 2\nmindex = 0\n<-1>, 
Input - EOF 0^-e0 -m 1 -D # tests/basic/input_EOF0.bf^^pindex = 2\nmindex = 0\n<0>, 
Input - EOF No Change^-eX -m 1 -D # tests/basic/input_EOFnochange.bf^^pindex = 8\nmindex = 0\n<3>, 

# FastVM
Output (FastVM)^-fast tests/basic/output.bf^^ABC
Loops - Start Loop - No Iteration (FastVM)^-fast tests/basic/loops_start_noiteration.bf^^
Loops - Nested (FastVM)^-fast tests/basic/loops_nested.bf^^@8
Loops - Beyond Start (FastVM)^-fast tests/basic/loops_beyond_start.bf^^VM EXCEPTION!\nLoop beyond program start at pindex 1.
Loops - Beyond End (FastVM)^-fast tests/basic/loops_beyond_end.bf^^VM EXCEPTION!\nLoop beyond program end at pindex 0.
Index - Beyond Start (FastVM)^-fast tests/basic/index_beyond_start.bf^^VM EXCEPTION!\nIndex moved beyond memory start.\npindex = 0\nmindex = 0\n<0>, 0, 0, 0, 0, 0, 
Index - Beyond End (FastVM)^-fast tests/basic/index_beyond_end.bf^^VM EXCEPTION!\nIndex moved beyond memory end.\npindex = 2\nmindex = 29999\n1, 1, 1, 1, 1, <1>, 
Input - EOF -1 (FastVM)^-fast -m 1 -D # tests/basic/input_EOF-1.bf^^pindex = 2\nmindex = 0\n<-1>, 
Input - EOF 0 (FastVM)^-fast -e0 -m 1 -D # tests/basic/input_EOF0.bf^^pindex = 2\nmindex = 0\n<0>, 
Input - EOF No Change (FastVM)^-fast -eX -m 1 -D # tests/basic/input_EOFnochange.bf^^pindex = 3\nmindex = 0\n<3>, 

# Construct Tests (Tests of optimisations in FastVM)
Construct - Zero Cell (FastVM)^-fast tests/constructs/zerocell.bf^z^z!

# Samples
Sample - Hello World^samples/hello.bf^^Hello World!
Sample - Echo^samples/echo.bf^Test 1 2 3^Test 1 2 3
Sample - Pi 8-bit^samples/pi.bf^^3.14070455282885
Sample - Pi 16-bit^-16 samples/pi.bf^^3.14159265358979

# FastVM
Sample - Hello World (FastVM)^samples/hello.bf^^Hello World!
Sample - Echo (FastVM)^samples/echo.bf^Test 1 2 3^Test 1 2 3
Sample - Pi 8-bit (FastVM)^samples/pi.bf^^3.14070455282885
Sample - Pi 16-bit (FastVM)^-16 samples/pi.bf^^3.14159265358979
TESTSCRIPT_EOF