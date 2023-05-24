using MathNet.Numerics.LinearAlgebra;
using MathNet.Spatial.Euclidean;

namespace MatrixOperations;

public class MatrixOperations
{
    public Matrix<double> Add(Matrix<double> matrixA, Matrix<double> matrixB)
    {
        return matrixA + matrixB;
    }

    public Matrix<double> Subtract(Matrix<double> matrixA, Matrix<double> matrixB)
    {        
        return matrixA - matrixB;
    }

    public Matrix<double> ScalarMultiply(Matrix<double> matrix, int scalar)
    {
        return matrix * scalar;
    }

    public Matrix<double> Transpose(Matrix<double> matrix)
    {
        return matrix.Transpose();
    }

    public double Sum(Matrix<double> matrix)
    {
        return matrix.RowSums().Sum();
    }

    public Matrix<double> Multiply(Matrix<double> matrixA, Matrix<double> matrixB)
    {
        return matrixA * matrixB;
    }

    public double VectorDotProduct(Vector<double> vectorA, Vector<double> vectorB)
    {
        return vectorA.DotProduct(vectorB);
    }

    /// <summary>
    /// Expects MathNet.Spatial.Euclidean.Vector3D for this geometric operation
    /// </summary>
    public Vector3D VectorCrossProduct(Vector3D vectorA, Vector3D vectorB)
    {
        return vectorA.CrossProduct(vectorB);
    }

    public Matrix<double> Inverse(Matrix<double> matrix)
    {
        return matrix.Inverse();
    }
}
