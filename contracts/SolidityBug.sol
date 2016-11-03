pragma solidity ^0.4.2;
contract SolidityBug {

    uint[] public A = [1];
    uint[] public idx = [0];

    function shouldReturn_1() public constant returns (uint){
        // line_A: next line returns 0 if line_B is uncommented
        return A[idx[0]];
    }

    function NEVER_USED_FUNCTION()  {
        // line_B: if next line is uncommented, line_A will return 0
        var unused = shouldReturn_1();
    }

}
