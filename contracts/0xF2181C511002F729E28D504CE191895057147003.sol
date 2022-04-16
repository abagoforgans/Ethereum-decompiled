contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    require not msg.value
    return code.data[91 len 53]
}



// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}



}
