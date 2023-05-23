import unittest
import numpy as np
from MatrixOperations import MatrixOperations

class TestMatrixOperations(unittest.TestCase):

    def setUp(self):
        self.matrix_a = np.array([[1,2,3],[4,5,6],[7,8,9]])
        self.matrix_b = np.array([[1,1,1],[1,2,2],[1,2,3]])
        self.vector_a = np.array([1,2,3])
        self.vector_b = np.array([4,5,6])

    def test_adds(self):
        output = MatrixOperations.add(self.matrix_a, self.matrix_b)
        
        expected = np.array([[2,3,4],[5,7,8],[8,10,12]])
        np.testing.assert_array_equal(output, expected)

    def test_subtracts(self):
        output = MatrixOperations.subtract(self.matrix_a, self.matrix_b)
        
        expected = np.array([[0,1,2],[3,3,4],[6,6,6]])
        np.testing.assert_array_equal(output, expected)

    def test_scalar_multiplies(self):
        scalar = 2

        output = MatrixOperations.scalar_multiply(self.matrix_a, scalar)

        expected = np.array([[2,4,6],[8,10,12],[14,16,18]])
        np.testing.assert_array_equal(output, expected)
        
    def test_transposes(self):
        output = MatrixOperations.transpose(self.matrix_a)

        expected = np.array([[1,4,7],[2,5,8],[3,6,9]])
        np.testing.assert_array_equal(output, expected)

    def test_sums(self):
        output = MatrixOperations.sum(self.matrix_a)

        self.assertEqual(output, 45)

    def test_multiplies(self):
        output = MatrixOperations.multiply(self.matrix_a, self.matrix_b)

        expected = np.array([[1*1+2*1+3*1, 1*1+2*2+3*2, 1*1+2*2+3*3],
                             [4*1+5*1+6*1, 4*1+5*2+6*2, 4*1+5*2+6*3],
                             [7*1+8*1+9*1, 7*1+8*2+9*2, 7*1+8*2+9*3]])
        np.testing.assert_array_equal(output, expected)

    def test_vector_dot_products(self):
        output = MatrixOperations.vector_dot_product(self.vector_a, self.vector_b)

        self.assertEqual(output, 1*4+2*5+3*6)
        
    def test_vector_cross_products(self):
        output = MatrixOperations.vector_cross_product(self.vector_a, self.vector_b)

        expected = np.array([2*6-3*5, 3*4-1*6, 1*5-2*4]) # [a2*b3 - a3*b2, a3*b1 - a1*b3, a1*b2 - a2*b1]
        np.testing.assert_array_equal(output, expected)

    def test_inverses(self):
        output = MatrixOperations.inverse(self.matrix_b)

        expected = np.array([[2,-1,0],[-1,2,-1],[0,-1,1]])
        np.testing.assert_array_equal(output, expected)

if __name__ == '__main__':
    unittest.main()