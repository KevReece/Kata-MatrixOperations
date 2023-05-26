const math = require('mathjs');

function add(matrixA, matrixB) {
    return math.add(matrixA, matrixB);
}

function subtract(matrixA, matrixB) {
    return math.subtract(matrixA, matrixB);
}

function scalar_multiply(matrix, scalar) {
    return math.multiply(matrix, scalar);
}

function transpose(matrix) {
    return math.transpose(matrix);
}

function sum(matrix) {
    return math.sum(matrix);
}

function multiply(matrixA, matrixB) {
    return math.multiply(matrixA, matrixB);
}

function vectorDotProduct(vectorA, vectorB) {
    return math.dot(vectorA, vectorB);
}

function vectorCrossProduct(vectorA, vectorB) {
    return math.cross(vectorA, vectorB);
}

function inverse(matrix) {
    return math.inv(matrix);
}

module.exports = { 
    add,
    subtract,
    scalar_multiply,
    transpose,
    sum,
    multiply,
    vectorDotProduct,
    vectorCrossProduct,
    inverse
};
