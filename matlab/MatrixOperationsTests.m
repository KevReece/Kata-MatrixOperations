classdef MatrixOperationsTests < matlab.unittest.TestCase
    properties (SetAccess = private)
        matrixA
        matrixB
        vectorA
        vectorB
    end

    methods (TestMethodSetup)
        function resetInputs(testCase)
            testCase.matrixA = [1,2,3; 4,5,6; 7,8,9];
            testCase.matrixB = [1,1,1; 1,2,2; 1,2,3];
            testCase.vectorA = [1,2,3];
            testCase.vectorB = [4,5,6];
        end
    end

    methods (Test)
        function testAdds(testCase)
            output = MatrixOperations.add(testCase.matrixA, testCase.matrixB);

            expected = [2,3,4; 5,7,8; 8,10,12];
            testCase.verifyEqual(output, expected);
        end
        
        function testSubtracts(testCase)
            output = MatrixOperations.subtract(testCase.matrixA, testCase.matrixB);

            expected = [0,1,2; 3,3,4; 6,6,6];
            testCase.verifyEqual(output, expected);
        end
        
        function testScalarMultiplies(testCase)
            scalar = 2;
            output = MatrixOperations.scalarMultiply(testCase.matrixA, scalar);

            expected = [2,4,6; 8,10,12; 14,16,18];
            testCase.verifyEqual(output, expected);
        end
        
        function testTransposes(testCase)
            output = MatrixOperations.transpose(testCase.matrixA);

            expected = [1,4,7; 2,5,8; 3,6,9];
            testCase.verifyEqual(output, expected);
        end
        
        function testSums(testCase)
            output = MatrixOperations.sum(testCase.matrixA);

            testCase.verifyEqual(output, 45);
        end
        
        function testMultiplies(testCase)
            output = MatrixOperations.multiply(testCase.matrixA, testCase.matrixB);

            expected = [1*1+2*1+3*1, 1*1+2*2+3*2, 1*1+2*2+3*3;
                        4*1+5*1+6*1, 4*1+5*2+6*2, 4*1+5*2+6*3;
                        7*1+8*1+9*1, 7*1+8*2+9*2, 7*1+8*2+9*3];
            testCase.verifyEqual(output, expected);
        end
        
        function testVectorDotProducts(testCase)
            output = MatrixOperations.vectorDotProduct(testCase.vectorA, testCase.vectorB);

            testCase.verifyEqual(output, 1*4+2*5+3*6);
        end
        
        function testVectorCrossProducts(testCase)
            output = MatrixOperations.vectorCrossProduct(testCase.vectorA, testCase.vectorB);

            expected = [2*6-3*5, 3*4-1*6, 1*5-2*4] % [a2*b3 - a3*b2, a3*b1 - a1*b3, a1*b2 - a2*b1]
            testCase.verifyEqual(output, expected);
        end
        
        function testInverses(testCase)
            output = MatrixOperations.inverse(testCase.matrixB);

            expected = [2,-1,0; -1,2,-1; 0,-1,1];
            testCase.verifyEqual(output, expected);
        end
    end
end