.PHONY: compile lint

# Closure Compiler http://code.google.com/closure/compiler
# SIMPLE_OPTIMIZATIONS and  ADVANCED_OPTIMIZATIONS are not available becouse of using eval(...local_variable_name..) in code
# see also http://docs.jquery.com/Frequently_Asked_Questions#How_do_I_compress_my_code.3F
compile:
	java -jar ../compiler.jar --compilation_level WHITESPACE_ONLY --js smart.js --js_output_file smart.min.js

# http://www.JavaScriptLint.com
lint:
	../jsl-0.3.0/jsl conf ../jsl-0.3.0/jsl.default.conf -process smart.js
