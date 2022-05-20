contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() {
    stor0 = code.data[204 len 32]
    return code.data[53 len 151]
}



// =====================  Runtime code  =====================


uint256 hash;

function getHash() {
    return hash
}

function _fallback() payable {
    revert
}



}
