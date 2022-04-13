contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() {
    stor0 = 27
    return code.data[35 len 54]
}



// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}



}
