contract main {




// =====================  Runtime code  =====================


address contractOwner;
array of uint256 stor2;
address sub_87cc6596Address;
address stor4;

function sub_87cc6596(?) {
    require msg.sender == contractOwner
    return sub_87cc6596Address
}

function contractOwner() {
    return contractOwner
}

function sub_0ce62df4(?) {
    require msg.sender == contractOwner
    selfdestruct(arg1)
}

function _fallback() payable {
    revert
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
  stop
}

function sub_dba7da13(?) {
    require msg.sender == contractOwner
    sub_87cc6596Address = arg1
    stor4 = arg1
}

function transfer(address arg1, uint256 arg2, string arg3) {
    mem[64] = ceil32(arg3.length) + 128
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    require msg.sender == contractOwner
    mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32] = mem[floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
    _36 = sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 128 len arg3.length % 32])
    mem[0] = 2
    mem[ceil32(arg3.length) + 128] = stor2
    idx = mem[64]
    s = 0
    while ceil32(arg3.length) + stor2.length + 128 > idx + 32:
        mem[idx + 32] = stor[s + sha3(mem[0]) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    require sha3(mem[mem[64] len ceil32(arg3.length) + stor2.length + -mem[64] + 128]) == _36
    require ext_code.size(stor4)
    call stor4.getTokenAddress() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}



}
