contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;

function _fallback() {
    stor0[tx.origin] = 10000
    return code.data[99 len 54]
}



// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}



}
