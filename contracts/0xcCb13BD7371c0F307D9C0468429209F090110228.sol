contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() {
    stor0 = 1
    return code.data[33 len 138]
}



// =====================  Runtime code  =====================


uint256 test;

function test() {
    return test
}

function _fallback() payable {
    revert
}



}
