contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() {
    stor0 = 10
    return code.data[33 len 143]
}



// =====================  Runtime code  =====================


uint256 stor0;

function _fallback() payable {
    revert
}

function call() {
    stor0 = 100
    return 100
}



}
