using MathNet.Numerics.LinearAlgebra;
using MathNet.Spatial.Euclidean;

namespace MatrixOperations;

public static class MatrixOperations
{
    public static Matrix<double> Add(Matrix<double> matrixA, Matrix<double> matrixB)
    {
        return matrixA + matrixB;
    }

    public static Matrix<double> Subtract(Matrix<double> matrixA, Matrix<double> matrixB)
    {        
        return matrixA - matrixB;
    }

    public static Matrix<double> ScalarMultiply(Matrix<double> matrix, int scalar)
    {
        return matrix * scalar;
    }

    public static Matrix<double> Transpose(Matrix<double> matrix)
    {
        return matrix.Transpose();
    }

    public static double Sum(Matrix<double> matrix)
    {
        return matrix.RowSums().Sum();
    }

    public static Matrix<double> Multiply(Matrix<double> matrixA, Matrix<double> matrixB)
    {
        return matrixA * matrixB;
    }

    public static double VectorDotProduct(Vector<double> vectorA, Vector<double> vectorB)
    {
        return vectorA.DotProduct(vectorB);
    }

    /// <summary>
    /// Expects MathNet.Spatial.Euclidean.Vector3D for this geometric operation
    /// </summary>
    public static Vector3D VectorCrossProduct(Vector3D vectorA, Vector3D vectorB)
    {
        return vectorA.CrossProduct(vectorB);
    }

    public static Matrix<double> Inverse(Matrix<double> matrix)
    {
        return matrix.Inverse();
    }
}
