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

function doBet() payable {
    require msg.sender == stor0
    call stor1 with:
       value 125 * 10^15 wei
         gas 80000 wei
    require eth.balance(this.address) > eth.balance(this.address)
}



}
