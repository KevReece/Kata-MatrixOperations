require_relative "matrix_operations"
require "test/unit"
require "matrix"

class TestMatrixOperations < Test::Unit::TestCase
    def setup
        @matrix_a = Matrix[[1,2,3],[4,5,6],[7,8,9]]
        @matrix_b = Matrix[[1,1,1],[1,2,2],[1,2,3]]
        @vector_a = Vector[1,2,3]
        @vector_b = Vector[4,5,6]
        @matrix_operations = MatrixOperations.new()
    end

    def test_adds
        output = @matrix_operations.add(@matrix_a, @matrix_b)

        expected = Matrix[[2,3,4],[5,7,8],[8,10,12]]
        assert_equal(expected, output)
    end
    
    def test_subtracts
        output = @matrix_operations.subtract(@matrix_a, @matrix_b)

        expected = Matrix[[0,1,2],[3,3,4],[6,6,6]]
        assert_equal(expected, output)
    end
    
    def test_scalar_multiplies
        scalar = 2
        output = @matrix_operations.scalar_multiply(@matrix_a, scalar)

        expected = Matrix[[2,4,6],[8,10,12],[14,16,18]]
        assert_equal(expected, output)
    end
    
    def test_transposes
        output = @matrix_operations.transpose(@matrix_a)

        expected = Matrix[[1,4,7],[2,5,8],[3,6,9]]
        assert_equal(expected, output)
    end
    
    def test_sums
        output = @matrix_operations.sum(@matrix_a)

        assert_equal(45, output)
    end
    
    def test_multiplies
        output = @matrix_operations.multiply(@matrix_a, @matrix_b)

        expected = Matrix[[1*1+2*1+3*1, 1*1+2*2+3*2, 1*1+2*2+3*3],
                [4*1+5*1+6*1, 4*1+5*2+6*2, 4*1+5*2+6*3],
                [7*1+8*1+9*1, 7*1+8*2+9*2, 7*1+8*2+9*3]]
        assert_equal(expected, output)
    end
    
    def test_vector_dot_products
        output = @matrix_operations.vector_dot_product(@vector_a, @vector_b)

        assert_equal(1*4+2*5+3*6, output)
    end
    
    def test_vector_cross_products
        output = @matrix_operations.vector_cross_product(@vector_a, @vector_b)

        expected = Vector[2*6-3*5, 3*4-1*6, 1*5-2*4] # [a2*b3 - a3*b2, a3*b1 - a1*b3, a1*b2 - a2*b1]
        assert_equal(expected, output) 
    end
    
    def test_inverses
        output = @matrix_operations.inverse(@matrix_b)

        expected = Matrix[[2,-1,0],[-1,2,-1],[0,-1,1]]
        assert_equal(expected, output)
    end
end
