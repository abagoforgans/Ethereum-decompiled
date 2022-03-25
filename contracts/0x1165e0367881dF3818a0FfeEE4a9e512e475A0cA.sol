contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = 4
    return code.data[21 len 8]
}



// =====================  Runtime code  =====================


function _fallback() payable {
    revert 
}



}
