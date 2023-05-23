class MatrixOperations
    def add(a, b)
        a + b
    end
    
    def subtract(a, b)
        a - b
    end
    
    def scalar_multiply(matrix, scalar)
        matrix * scalar
    end

    def transpose(matrix)
        matrix.transpose
    end
    
    def sum(matrix)
        matrix.sum
    end
    
    def multiply(a, b)
        a * b
    end
    
    def vector_dot_product(a, b)
        a.dot(b)
    end
    
    def vector_cross_product(a, b)
        a.cross(b)
    end
    
    def inverse(matrix)
        matrix.inverse
    end
end
