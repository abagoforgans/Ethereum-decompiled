contract main {




// =====================  Runtime code  =====================


#
#  - doBet()
#  - sub_81260fb6(?)
#
address stor0;

function withdraw() {
    require msg.sender == stor0
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}



}
