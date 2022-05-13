contract main {




// =====================  Runtime code  =====================


address owner;
address pendingOwner;
address sub_294a70e4Address;

function sub_294a70e4(?) {
    return sub_294a70e4Address
}

function owner() {
    return owner
}

function pendingOwner() {
    return pendingOwner
}

function _fallback() payable {
    revert
}

function sub_0db81c35(?) {
    require owner == msg.sender
    sub_294a70e4Address = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    pendingOwner = arg1
}

function claimOwnership() {
    require pendingOwner == msg.sender
    emit OwnershipTransferred(owner, pendingOwner);
    owner = pendingOwner
    pendingOwner = 0
}

function sub_b5976d26(?) payable {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = arg7.length
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len arg7.length] = arg7[all]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg7.length) + 192] = 0x281c0fcb00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg7.length) + 260 len ceil32(arg7.length)] = arg7[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg7.length + 192 len ceil32(arg7.length) - arg7.length]
    require ext_code.size(sub_294a70e4Address)
    call sub_294a70e4Address.0x281c0fcb with:
       value msg.value wei
         gas gas_remaining wei
        args Array(len=arg7.length, data=arg7[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg7.length) + 4102 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg7.length) + 4102] = arg3.length
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg7.length) + 4134 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        create contract with 0 wei
                        code: code.data[1619 len 3718], Array(len=address(arg6), data=arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg7.length) + 4102 len arg3.length + arg2.length + -ceil32(arg2.length) + 32]), arg2.length + 192, arg4 << 248, arg5
    else:
        mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg7.length) + 4134] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg7.length) + -(arg3.length % 32) + 4166 len arg3.length % 32]
        create contract with 0 wei
                        code: code.data[1619 len 3718], Array(len=address(arg6), data=arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + ceil32(arg7.length) + 4102 len floor32(arg3.length) + arg2.length + -ceil32(arg2.length) + 64]), arg2.length + 192, arg4 << 248, arg5
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x4a8c2025: arg1, Array(len=arg2.length, data=arg2[all]), address(create.new_address)
    return address(create.new_address)
}



}
