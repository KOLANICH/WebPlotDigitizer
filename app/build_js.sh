#!/bin/bash

cat javascript/*.js > combined.js
cat javascript/core/*.js >> combined.js
cat javascript/core/curve_detection/*.js >> combined.js
cat javascript/core/axes/*.js >> combined.js
cat javascript/widgets/*.js >> combined.js
cat javascript/tools/*.js >> combined.js
cat javascript/services/*.js >> combined.js
cat javascript/controllers/*.js >> combined.js

# compile using closure compiler
java -jar thirdparty/closure-compiler/compiler.jar --js combined.js --js_output_file combined-compiled.js --language_in ECMASCRIPT6_TYPED --language_out ECMASCRIPT5 --use_types_for_optimization --new_type_inf --rewrite_polyfills=false
