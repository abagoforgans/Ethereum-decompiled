contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[54 len 51]
}



// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}



}
