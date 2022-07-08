contract main {




// =====================  Runtime code  =====================


address stor0;

function withdraw() {
    require msg.sender == stor0
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function doBet() payable {
    require msg.sender == stor0
    require eth.balance(this.address) > eth.balance(this.address)
}



}
