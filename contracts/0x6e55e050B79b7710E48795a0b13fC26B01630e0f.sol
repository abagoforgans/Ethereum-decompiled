contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() {
    stor0 = 123
    return code.data[33 len 113]
}



// =====================  Runtime code  =====================


uint256 value;

function value() {
    return value
}

function _fallback() payable {
    revert
}



}
