contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() {
    stor0 = code.data[208 len 32]
    return code.data[53 len 155]
}



// =====================  Runtime code  =====================


uint256 stor0;

function _fallback() payable {
    revert
}

function multiply(uint256 arg1) {
    return (stor0 * arg1)
}



}
