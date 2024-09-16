# d-tfn

## Compile and Run C Source Script

### Note: only use this if you are using unix based os like mac or linux,not for windows

This script compiles a C source file and runs the resulting executable. It ensures that the necessary directories exist and handles errors during compilation.

## Prerequisites

- Ensure you have `gcc` installed on your system.
- The script assumes that you are running it in a directory where you have write permissions.

## Usage

1. **Save the script to a file**: For example, `compile_and_run.sh`.

2. **Make the script executable**:
   ```bash
   chmod +x compile_and_run.sh
   ```
3. **Run script file to compile `.c` source files**

```bash
./compile_and_run.sh <sourcefile.c>
```

4. **Look for output file in `obj/` directory**
   - To run executable file in `obj/` simply run:
     `./<filename>`, for example if filename is lab do `./lab`
