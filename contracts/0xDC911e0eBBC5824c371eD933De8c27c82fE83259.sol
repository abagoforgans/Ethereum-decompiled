contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() {
    stor0 = 42
    return code.data[28 len 9]
}



// =====================  Runtime code  =====================


function _fallback() payable {
    revert 
}



}
