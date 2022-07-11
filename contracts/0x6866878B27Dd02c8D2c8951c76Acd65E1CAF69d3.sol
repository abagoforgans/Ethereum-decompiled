contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function withdraw() {
    require msg.sender == stor0
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function doBet(uint256 arg1) payable {
    require msg.sender == stor0
    call stor1 with:
       value arg1 wei
         gas gas_remaining wei
    require eth.balance(this.address) > eth.balance(this.address)
}



}
