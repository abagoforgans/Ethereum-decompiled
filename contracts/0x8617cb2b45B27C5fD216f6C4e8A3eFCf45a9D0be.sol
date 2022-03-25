contract main {


// =======================  Init code  ======================


function _fallback() payable {
    selfdestruct(msg.sender)
}



// =====================  Runtime code  =====================


#
#  - sub_a2da82ab(?)
#
function _fallback() payable {
  stop
}



}
