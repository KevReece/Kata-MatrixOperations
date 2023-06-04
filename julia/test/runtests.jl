import MatrixOperations
using Test

@testset "MatrixOperations tests" begin
    matrix_a() = [1 2 3; 4 5 6; 7 8 9]
    matrix_b() = [1 1 1; 1 2 2; 1 2 3]
    vector_a() = [1; 2; 3]
    vector_b() = [4; 5; 6]

    @test MatrixOperations.add(matrix_a(), matrix_b()) == [2 3 4; 5 7 8; 8 10 12]

    @test MatrixOperations.subtract(matrix_a(), matrix_b()) == [0 1 2; 3 3 4; 6 6 6]
    
    @test MatrixOperations.scalar_multiply(matrix_a(), 2) == [2 4 6; 8 10 12; 14 16 18]
    
    @test MatrixOperations.transpose(matrix_a()) == [1 4 7; 2 5 8; 3 6 9]
    
    @test MatrixOperations.sum(matrix_a()) == 45
    
    @test MatrixOperations.multiply(matrix_a(), matrix_b()) == 
        [1*1+2*1+3*1 1*1+2*2+3*2 1*1+2*2+3*3;
        4*1+5*1+6*1 4*1+5*2+6*2 4*1+5*2+6*3;
        7*1+8*1+9*1 7*1+8*2+9*2 7*1+8*2+9*3]
    
    @test MatrixOperations.vector_dot_product(vector_a(), vector_b()) == 1*4+2*5+3*6
    
    @test MatrixOperations.vector_cross_product(vector_a(), vector_b()) == 
        [2*6-3*5; 3*4-1*6; 1*5-2*4] # [a2*b3 - a3*b2, a3*b1 - a1*b3, a1*b2 - a2*b1]
   
    @test MatrixOperations.inverse(matrix_b()) == [2 -1 0; -1 2 -1; 0 -1 1]
end