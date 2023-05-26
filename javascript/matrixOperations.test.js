const matrixOperations = require('./matrixOperations');
const math = require('mathjs');

let matrixA;
let matrixB;
let vectorA;
let vectorB;

beforeEach(() => {
    matrixA = math.matrix([[1,2,3],[4,5,6],[7,8,9]]);
    matrixB = math.matrix([[1,1,1],[1,2,2],[1,2,3]]);
    vectorA = [1,2,3];
    vectorB = [4,5,6];
});

test('adds', () => {
    output = matrixOperations.add(matrixA, matrixB);

    expected =  math.matrix([[2,3,4],[5,7,8],[8,10,12]]);
    expect(output).toEqual(expected);
});

test('subtracts', () => {
    output = matrixOperations.subtract(matrixA, matrixB);

    expected =  math.matrix([[0,1,2],[3,3,4],[6,6,6]]);
    expect(output).toEqual(expected);
});

test('scalar multiplies', () => {
    const scalar = 2;
    output = matrixOperations.scalar_multiply(matrixA, scalar);

    expected =  math.matrix([[2,4,6],[8,10,12],[14,16,18]]);
    expect(output).toEqual(expected);
});

test('transposes', () => {
    output = matrixOperations.transpose(matrixA);

    expected =  math.matrix([[1,4,7],[2,5,8],[3,6,9]]);
    expect(output).toEqual(expected);
});

test('sums', () => {
    output = matrixOperations.sum(matrixA);

    expect(output).toEqual(45);
});

test('multiplies', () => {
    output = matrixOperations.multiply(matrixA, matrixB);

    expected =  math.matrix([
        [1*1+2*1+3*1, 1*1+2*2+3*2, 1*1+2*2+3*3],
        [4*1+5*1+6*1, 4*1+5*2+6*2, 4*1+5*2+6*3],
        [7*1+8*1+9*1, 7*1+8*2+9*2, 7*1+8*2+9*3]]);
    expect(output).toEqual(expected);
});

test('vector dot products', () => {
    output = matrixOperations.vectorDotProduct(vectorA, vectorB);

    expect(output).toEqual(1*4+2*5+3*6);
});

test('vector cross products', () => {
    output = matrixOperations.vectorCrossProduct(vectorA, vectorB);

    expected =  [2*6-3*5, 3*4-1*6, 1*5-2*4]; // [a2*b3 - a3*b2, a3*b1 - a1*b3, a1*b2 - a2*b1]
    expect(output).toEqual(expected);
});

test('inverses', () => {
    output = matrixOperations.inverse(matrixB);

    expected =  math.matrix([[2,-1,0],[-1,2,-1],[0,-1,1]]);
    expect(output).toEqual(expected);
});
