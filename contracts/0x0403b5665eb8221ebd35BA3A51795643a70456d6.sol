contract main {


// =======================  Init code  ======================


function _fallback() payable {
    selfdestruct(this.address)
}



// =====================  Runtime code  =====================


#
#  - a(uint8 arg1)
#
function _fallback() payable {
  stop
}



}
