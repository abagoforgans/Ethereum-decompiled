contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() {
    stor0 = code.data[199 len 32]^code.data[231 len 32]
    return code.data[60 len 139]
}



// =====================  Runtime code  =====================


uint256 power;

function getPower() {
    return power
}

function _fallback() payable {
    revert
}



}
