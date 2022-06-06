contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = 24
    require not msg.value
    return code.data[30 len 51]
}



// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}



}
