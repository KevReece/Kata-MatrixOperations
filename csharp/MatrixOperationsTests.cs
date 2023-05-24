using Microsoft.VisualStudio.TestTools.UnitTesting;
using MathNet.Numerics.LinearAlgebra;
using MathNet.Spatial.Euclidean;

namespace MatrixOperations;

[TestClass]
public class MatrixOperationsTests
{
    static MatrixBuilder<double> MatrixBuilder = Matrix<double>.Build;
    static VectorBuilder<double> VectorBuilder = Vector<double>.Build;

    MatrixOperations matrixOperations;
    Matrix<double> matrixA;
    Matrix<double> matrixB;
    Vector<double> vectorA;
    Vector<double> vectorB;

    public MatrixOperationsTests()
    {
        matrixOperations = new MatrixOperations();
        matrixA = MatrixBuilder.DenseOfArray(new double[,] {{1,2,3}, {4,5,6}, {7,8,9}});
        matrixB = MatrixBuilder.DenseOfArray(new double[,] {{1,1,1}, {1,2,2}, {1,2,3}});
        vectorA = VectorBuilder.DenseOfArray(new double[] {1,2,3});
        vectorB = VectorBuilder.DenseOfArray(new double[] {4,5,6});
    }

    [TestMethod]
    public void Adds()
    {
        var output = matrixOperations.Add(matrixA, matrixB);

        var expected = MatrixBuilder.DenseOfArray(new double[,] {{2,3,4}, {5,7,8}, {8,10,12}});
        Assert.AreEqual(expected, output);
    }

    [TestMethod]
    public void Subtracts()
    {
        var output = matrixOperations.Subtract(matrixA, matrixB);

        var expected = MatrixBuilder.DenseOfArray(new double[,] {{0,1,2}, {3,3,4}, {6,6,6}});
        Assert.AreEqual(expected, output);
    }

    [TestMethod]
    public void ScalarMultiplies()
    {
        var output = matrixOperations.ScalarMultiply(matrixA, scalar: 2);

        var expected = MatrixBuilder.DenseOfArray(new double[,] {{2,4,6}, {8,10,12}, {14,16,18}});
        Assert.AreEqual(expected, output);
    }

    [TestMethod]
    public void Transposes()
    {
        var output = matrixOperations.Transpose(matrixA);

        var expected = MatrixBuilder.DenseOfArray(new double[,] {{1,4,7}, {2,5,8}, {3,6,9}});
        Assert.AreEqual(expected, output);
    }

    [TestMethod]
    public void Sums()
    {
        var output = matrixOperations.Sum(matrixA);

        Assert.AreEqual(45, output);
    }

    [TestMethod]
    public void Multiplies()
    {
        var output = matrixOperations.Multiply(matrixA, matrixB);

        var expected = MatrixBuilder.DenseOfArray(new double[,] 
        {
            {1*1+2*1+3*1, 1*1+2*2+3*2, 1*1+2*2+3*3},
            {4*1+5*1+6*1, 4*1+5*2+6*2, 4*1+5*2+6*3},
            {7*1+8*1+9*1, 7*1+8*2+9*2, 7*1+8*2+9*3}
        });
        Assert.AreEqual(expected, output);
    }

    [TestMethod]
    public void VectorDotProducts()
    {
        var output = matrixOperations.VectorDotProduct(vectorA, vectorB);

        Assert.AreEqual(1*4+2*5+3*6, output);
    }

    [TestMethod]
    public void VectorCrossProducts()
    {
        var output = matrixOperations.VectorCrossProduct(Vector3D.OfVector(vectorA), Vector3D.OfVector(vectorB));

        var expected = VectorBuilder.DenseOfArray(new double[] {2*6-3*5, 3*4-1*6, 1*5-2*4}); // [a2*b3 - a3*b2, a3*b1 - a1*b3, a1*b2 - a2*b1]
        Assert.AreEqual(expected, output.ToVector());
    }

    [TestMethod]
    public void Inverses()
    {
        var output = matrixOperations.Inverse(matrixB);

        var expected = MatrixBuilder.DenseOfArray(new double[,] {{2,-1,0}, {-1,2,-1}, {0,-1,1}});
        Assert.AreEqual(expected, output);
    }
}