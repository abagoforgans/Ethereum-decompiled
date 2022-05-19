contract main {




// =====================  Runtime code  =====================


address stor0;
array of struct user;

function user() {
    return user[0 len user.length].field_0
}

function cancel() {
    require msg.sender == stor0
    selfdestruct(stor0)
}

function _fallback() payable {
    call stor0 with:
       value msg.value / 10 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function refund(address arg1) {
    require msg.sender == stor0
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_11eab55f(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    require msg.sender == stor0
    require arg3 <= eth.balance(this.address)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len 1196] = code.data[1296 len 1196]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 1516] = uint256(user.field_0)
    idx = ceil32(arg1.length) + ceil32(arg2.length) + 1516
    s = 0
    while ceil32(arg1.length) + ceil32(arg2.length) + user.length + 1516 > idx + 32:
        mem[idx + 32] = user[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + ceil32(arg2.length) + user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 1516] = arg1.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 1548 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 1548] = arg2.length
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 1580 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            create contract with ('param', 'arg3') wei
                            code: code.data[1296 len 1196], Array(len=stor0, data=user.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + 1516 len user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 32], Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 1548 len arg2.length + arg1.length + -ceil32(arg1.length) + 32]), user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 160, arg1.length + user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 192
        else:
            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 1580] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + -(arg2.length % 32) + 1612 len arg2.length % 32]
            create contract with ('param', 'arg3') wei
                            code: code.data[1296 len 1196], Array(len=stor0, data=user.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + 1516 len user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 32], Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 1548 len floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 64]), user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 160, arg1.length + user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 192
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 1548] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + -(arg1.length % 32) + 1580 len arg1.length % 32]
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 1580] = arg2.length
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 1612 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            create contract with ('param', 'arg3') wei
                            code: code.data[1296 len 1196], Array(len=stor0, data=user.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + 1516 len user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 32], Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 1548 len arg2.length + floor32(arg1.length) + -ceil32(arg1.length) + 64]), user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 160, floor32(arg1.length) + user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 224
        else:
            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 1612] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + -(arg2.length % 32) + 1644 len arg2.length % 32]
            create contract with ('param', 'arg3') wei
                            code: code.data[1296 len 1196], Array(len=stor0, data=user.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + 1516 len user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 32], Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 1548 len floor32(arg2.length) + floor32(arg1.length) + -ceil32(arg1.length) + 96]), user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 160, floor32(arg1.length) + user.length + (floor32(user.length - 1) + -user.length + 32 % 32) + 224
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x2cea012a: address(create.new_address)
}



}
