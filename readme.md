Matrix operations in multiple languages (using standard matrix frameworks), with tests per language, for side-by-side comparison.

Operations
---
- Add
- Subtract
- Scalar Multiplication
- Transpose
- Sum
- Multiplication
- Vector Dot Product
- Vector Cross Product
- Inverse

Languages
---
- Python
- Ruby
- C#
- Javascript
- Matlab
- Julia
- Rust
- C++
- C
- Java
- Scala
- R

Run tests
---

### Python

Prerequisites: Python

`python python/MatrixOperations_test.py`

### Ruby

Prerequisites: Ruby

`ruby ruby/test_matrix_operations.rb`

### C#.Net

Prerequisites: dotnet

`dotnet test csharp`

### JavaScript

Prerequisites: npm 

`npm --prefix ./javascript test`

### Matlab

Prerequisites: matlab 

`matlab -nodesktop -r "cd matlab; run(MatrixOperationsTests)"`

or 

Prerequisites: Matlab online account (https://matlab.mathworks.com/)

1. 'Open MATLAB online' (https://matlab.mathworks.com/)
2. In `Files` context: Upload the 'matlab' subfolder
3. in `Command Window`: `cd matlab; run(MatrixOperationsTests)`
