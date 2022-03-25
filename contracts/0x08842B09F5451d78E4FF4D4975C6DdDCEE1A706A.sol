contract main {


// =======================  Init code  ======================


function _fallback() payable {
    selfdestruct(msg.sender)
}



// =====================  Runtime code  =====================




}
