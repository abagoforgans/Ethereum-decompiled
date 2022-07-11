contract main {




// =====================  Runtime code  =====================


address stor0;

function die() {
    require msg.sender == stor0
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function withdraw() {
    require msg.sender == stor0
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function bet(address arg1) payable {
    mem[132] = 0, mem[132 len 28]
    mem[132] = mem[160 len 4]
    call this.address.mem[132 len 4] with:
         gas gas_remaining wei
        args mem[136 len 28], address(arg1), 1, 10^16, 1
    if not ext_call.success:
        call this.address with:
             gas gas_remaining wei
            args 0, 1, 10^16, 1, 1874919424, 3
}

function sub_72580778(?) payable {
    mem[452 len 0] = None
    mem[516 len 0] = None
    mem[580 len 0] = None
    require ext_code.size(arg1)
    call arg1.doBet(uint256[] arg1, uint256[] arg2, uint256[] arg3, uint256 arg4) with:
       value arg2 wei
         gas gas_remaining wei
        args 128, 192, 256, 1, 1, mem[452], 1, mem[516], 1, mem[580]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require eth.balance(this.address) > eth.balance(this.address)
    return 0
}



}
