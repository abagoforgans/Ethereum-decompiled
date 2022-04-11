contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() {
    stor0 = code.data[239 len 32]
    return code.data[68 len 171]
}



// =====================  Runtime code  =====================


uint256 stor0;

function _fallback() payable {
    revert
}

function multiply(uint256 arg1) {
    return (arg1 * stor0)
}



}
