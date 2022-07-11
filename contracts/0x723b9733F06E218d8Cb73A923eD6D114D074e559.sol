contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 stor2;

function die() {
    require msg.sender == stor0
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function sub_1521249a(?) {
    require msg.sender == stor0
    stor2 = arg1
}

function sub_bf2fdf96(?) {
    require msg.sender == stor0
    stor1 = arg1
}

function withdraw() {
    require msg.sender == stor0
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function bet() payable {
    mem[164 len 64] = unknown_0x3d18fb54(?????), 0, 0, mem[164 len 28]
    mem[196] = mem[224 len 4]
    call this.address.mem[164 len 4] with:
         gas gas_remaining wei
        args mem[168 len 60]
    if not ext_call.success:
        mem[264 len 96] = 0, stor1, 3, mem[264 len 28]
        mem[328] = mem[356 len 4]
        call this.address.mem[264 len 4] with:
             gas gas_remaining wei
            args mem[268 len 92]
}

function sub_3d18fb54(?) payable {
    mem[452 len 0] = None
    mem[516 len 0] = None
    mem[580 len 0] = None
    require ext_code.size(stor1)
    call stor1.doBet(uint256[] arg1, uint256[] arg2, uint256[] arg3, uint256 arg4) with:
       value stor2 wei
         gas gas_remaining wei
        args 128, 192, 256, 1, 1, mem[452], 1, mem[516], 1, mem[580]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require eth.balance(this.address) > eth.balance(this.address)
}



}
