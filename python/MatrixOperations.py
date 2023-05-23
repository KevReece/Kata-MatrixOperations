import numpy as np

class MatrixOperations():
    def add(a: np.ndarray, b: np.ndarray):
        return a + b
    
    def subtract(a: np.ndarray, b: np.ndarray):
        return a - b
    
    def scalar_multiply(matrix: np.ndarray, scalar: int):
        return matrix * scalar
    
    def transpose(matrix: np.ndarray):
        return np.transpose(matrix)
    
    def sum(matrix: np.ndarray):
        return np.sum(matrix)
    
    def multiply(a: np.ndarray, b: np.ndarray):
        return np.matmul(a, b)
    
    def vector_dot_product(a: np.ndarray, b: np.ndarray):
        return np.matmul(a, b)
    
    def vector_cross_product(a: np.ndarray, b: np.ndarray):
        return np.cross(a, b)
    
    def inverse(matrix: np.ndarray):
        return np.linalg.inv(matrix)