contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() {
    stor0 = 42
    return code.data[29 len 53]
}



// =====================  Runtime code  =====================


function _fallback() payable {
    revert 
}



}
