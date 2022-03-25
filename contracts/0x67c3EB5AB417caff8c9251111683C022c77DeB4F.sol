contract main {


// =======================  Init code  ======================


function _fallback() payable {
    selfdestruct(msg.sender)
}



// =====================  Runtime code  =====================


#
#  - l(uint8 arg1)
#
function _fallback() payable {
  stop
}



}
