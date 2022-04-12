contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 279]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function multiply(uint256 arg1, uint256 arg2) {
    return (arg1 * arg2)
}

function arithmetics(uint256 arg1, uint256 arg2) {
    return arg1 + arg2, arg1 * arg2
}



}
