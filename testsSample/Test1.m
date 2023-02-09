classdef Test1 < matlab.unittest.TestCase

    % Copyright 2022 The MathWorks, Inc.

    methods (Test)

        function testMultiplication(testCase)
            num = 2;
            mat = [1, 2, 3];

            resultExpected = arrayProduct(num, mat);

            resultActual = [2, 4, 6];

            testCase.verifyEqual(resultActual,resultExpected)
        end
        
    end

end