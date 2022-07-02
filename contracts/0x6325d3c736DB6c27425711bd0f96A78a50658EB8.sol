contract main {




// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function _fallback() payable {
  stop
}

function cashOut() payable {
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c3b80730(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    call arg1.0xf50ab247 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function Activate(address arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    call arg1.0x3afdbd83 with:
         gas gas_remaining wei
        args 0, uint32(arg2), 96, 160, 0, mem[228], 0, mem[292]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_0d097e29(?) {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require ext_code.size(arg1)
    call arg1.0x3e3ee859 with:
         gas gas_remaining wei
        args Array(len=arg2.length, data=arg2[all]), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
