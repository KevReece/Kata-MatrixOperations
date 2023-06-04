module MatrixOperations
    import LinearAlgebra

    function add(a::Matrix, b::Matrix)
        a + b
    end
    
    function subtract(a::Matrix, b::Matrix)
        a - b
    end

    function scalar_multiply(matrix::Matrix, scalar::Int)
        matrix * scalar
    end
    
    function transpose(matrix::Matrix)
        LinearAlgebra.transpose(matrix)
    end
    
    function sum(matrix::Matrix)
        Base.sum(matrix)
    end
    
    function multiply(a::Matrix, b::Matrix)
        a * b
    end

    function vector_dot_product(a::Vector, b::Vector)
        LinearAlgebra.dot(a, b)
    end
    
    function vector_cross_product(a::Vector, b::Vector)
        LinearAlgebra.cross(a, b)
    end
    
    function inverse(matrix::Matrix)
        LinearAlgebra.inv(matrix)
    end
end
