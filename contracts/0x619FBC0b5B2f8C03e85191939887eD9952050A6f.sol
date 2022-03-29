contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() {
    stor0 = code.data[172 len 32]
    return code.data[51 len 121]
}



// =====================  Runtime code  =====================


uint256 stor0;

function _fallback() payable {
    revert
}

function multiply(int256 arg1) {
    return (arg1 * stor0)
}



}
