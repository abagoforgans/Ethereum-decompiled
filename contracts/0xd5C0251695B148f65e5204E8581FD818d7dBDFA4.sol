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
    require ext_code.size(stor1)
    call stor1.play(uint256 arg1) with:
       value 10^17 wei
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require eth.balance(this.address) > eth.balance(this.address)
}



}
