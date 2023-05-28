classdef MatrixOperations
    methods(Static)
        function result = add(matrixA,matrixB)
            result = matrixA + matrixB;
        end
        
        function result = subtract(matrixA,matrixB)
            result = matrixA - matrixB;
        end
        
        function result = scalarMultiply(matrix,scalar)
            result = matrix * scalar;
        end
        
        function result = transpose(matrix)
            result = transpose(matrix);
        end
        
        function result = sum(matrix)
            result = sum(sum(matrix));
        end
        
        function result = multiply(matrixA,matrixB)
            result = matrixA * matrixB;
        end
        
        function result = vectorDotProduct(vectorA,vectorB)
            result = dot(vectorA, vectorB);
        end
        
        function result = vectorCrossProduct(vectorA,vectorB)
            result = cross(vectorA, vectorB);
        end
        
        function result = inverse(matrix)
            result = inv(matrix);
        end
    end
end