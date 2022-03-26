contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[87 len 1451]
}



// =====================  Runtime code  =====================


#
#  - sub_a1566509(?)
#
address stor0;

function destroy() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}



}
