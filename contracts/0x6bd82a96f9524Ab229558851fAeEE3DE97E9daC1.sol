contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_dc932e80(?) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    require msg.sender == owner
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len 9467] = code.data[1245 len 9467]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 9819 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 9819] = arg3.length
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 9851 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            create contract with 0 wei
                            code: code.data[1245 len 9467], arg1, Array(len=stor1, data=arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 9819 len arg3.length + arg2.length + -ceil32(arg2.length) + 32]), arg2.length + 192, owner
        else:
            mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 9851] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 9883 len arg3.length % 32]
            create contract with 0 wei
                            code: code.data[1245 len 9467], arg1, Array(len=stor1, data=arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 9819 len floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 64]), arg2.length + 192, owner
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 9819] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 9851 len arg2.length % 32]
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 9851] = arg3.length
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 9883 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            create contract with 0 wei
                            code: code.data[1245 len 9467], arg1, Array(len=stor1, data=arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 9819 len arg3.length + floor32(arg2.length) + -ceil32(arg2.length) + 64]), floor32(arg2.length) + 224, owner
        else:
            mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 9883] = mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 9915 len arg3.length % 32]
            create contract with 0 wei
                            code: code.data[1245 len 9467], arg1, Array(len=stor1, data=arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 9819 len floor32(arg3.length) + floor32(arg2.length) + -ceil32(arg2.length) + 96]), floor32(arg2.length) + 224, owner
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    call stor1.0x4bc57228 with:
         gas gas_remaining wei
        args address(create.new_address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xe4389ab8: address(create.new_address)
}



}
