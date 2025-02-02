# Shell Script Globbing Bug

This repository demonstrates a subtle bug related to globbing in a bash shell script. The script aims to process all `.txt` and `.bak` files within a specified directory.  However, due to how the globbing pattern is handled, it does not correctly expand to all files as expected. The solution demonstrates the correct method to accomplish this.

## Bug

The bug lies in the `for` loop's file expansion.  The original script attempts to process all files ending in `.txt` and then all files ending in `.bak` separately. This is not the intended behavior. The corrected script shows the proper way to handle multiple patterns for glob expansion to cover all files.