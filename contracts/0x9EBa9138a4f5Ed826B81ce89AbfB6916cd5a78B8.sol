contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() {
    stor0 = 1000
    return code.data[36 len 51]
}



// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}



}
