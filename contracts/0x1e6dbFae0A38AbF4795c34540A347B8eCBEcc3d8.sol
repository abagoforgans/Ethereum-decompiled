contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
  stop
}

function sub_427ad402(?) {
    require msg.sender == stor0
    stor1 = arg1
}

function setVal(uint256 arg1) {
    require msg.sender == stor0
    stor2 = arg1
}

function setGas(uint256 arg1) {
    require msg.sender == stor0
    stor3 = arg1
}

function sub_bc594899(?) {
    require this.address == msg.sender
    call stor1 with:
       value stor2 wei
         gas stor3 wei
    require eth.balance(this.address) > eth.balance(this.address)
}

function bet() payable {
    require msg.sender == stor0
    mem[132] = 0, mem[132 len 28]
    mem[132] = mem[160 len 4]
    call this.address.mem[132 len 4] with:
         gas gas_remaining wei
        args mem[136 len 28]
}

function withdraw() {
    require msg.sender == stor0
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
