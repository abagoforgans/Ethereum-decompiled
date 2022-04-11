contract main {


// =======================  Init code  ======================


uint128 stor0; offset 160
address stor0;

function _fallback() payable {
    Mask(96, 0, stor0.field_160) = 0
    address(stor0.field_0) = tx.origin
    return code.data[112 len 7037]
}



// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function kill() {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function sub_04ad7aac(?) payable {
    mem[128 len arg5.length] = arg5[all]
    mem[ceil32(arg5.length) + 128] = arg6.length
    mem[ceil32(arg5.length) + 160 len arg6.length] = arg6[all]
    require msg.value > 0
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    mem[ceil32(arg5.length) + ceil32(arg6.length) + 160 len 5763] = code.data[1231 len 5763]
    mem[ceil32(arg5.length) + ceil32(arg6.length) + 6211 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
    if not arg5.length % 32:
        mem[arg5.length + ceil32(arg5.length) + ceil32(arg6.length) + 6211] = arg6.length
        mem[arg5.length + ceil32(arg5.length) + ceil32(arg6.length) + 6243 len ceil32(arg6.length)] = arg6[all], mem[ceil32(arg5.length) + arg6.length + 160 len ceil32(arg6.length) - arg6.length]
        if not arg6.length % 32:
            create contract with 0 wei
                            code: code.data[1231 len 5763], block.timestamp + arg1, block.timestamp + arg2, arg3, address(arg4), Array(len=arg8, data=arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[(2 * ceil32(arg5.length)) + ceil32(arg6.length) + 6211 len arg6.length + arg5.length + -ceil32(arg5.length) + 32]), arg5.length + 288, arg7
        else:
            mem[floor32(arg6.length) + arg5.length + ceil32(arg5.length) + ceil32(arg6.length) + 6243] = mem[floor32(arg6.length) + arg5.length + ceil32(arg5.length) + ceil32(arg6.length) + -(arg6.length % 32) + 6275 len arg6.length % 32]
            create contract with 0 wei
                            code: code.data[1231 len 5763], block.timestamp + arg1, block.timestamp + arg2, arg3, address(arg4), Array(len=arg8, data=arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[(2 * ceil32(arg5.length)) + ceil32(arg6.length) + 6211 len floor32(arg6.length) + arg5.length + -ceil32(arg5.length) + 64]), arg5.length + 288, arg7
    else:
        mem[floor32(arg5.length) + ceil32(arg5.length) + ceil32(arg6.length) + 6211] = mem[floor32(arg5.length) + ceil32(arg5.length) + ceil32(arg6.length) + -(arg5.length % 32) + 6243 len arg5.length % 32]
        mem[floor32(arg5.length) + ceil32(arg5.length) + ceil32(arg6.length) + 6243] = arg6.length
        mem[floor32(arg5.length) + ceil32(arg5.length) + ceil32(arg6.length) + 6275 len ceil32(arg6.length)] = arg6[all], mem[ceil32(arg5.length) + arg6.length + 160 len ceil32(arg6.length) - arg6.length]
        if not arg6.length % 32:
            create contract with 0 wei
                            code: code.data[1231 len 5763], block.timestamp + arg1, block.timestamp + arg2, arg3, address(arg4), Array(len=arg8, data=arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[(2 * ceil32(arg5.length)) + ceil32(arg6.length) + 6211 len arg6.length + floor32(arg5.length) + -ceil32(arg5.length) + 64]), floor32(arg5.length) + 320, arg7
        else:
            mem[floor32(arg6.length) + floor32(arg5.length) + ceil32(arg5.length) + ceil32(arg6.length) + 6275] = mem[floor32(arg6.length) + floor32(arg5.length) + ceil32(arg5.length) + ceil32(arg6.length) + -(arg6.length % 32) + 6307 len arg6.length % 32]
            create contract with 0 wei
                            code: code.data[1231 len 5763], block.timestamp + arg1, block.timestamp + arg2, arg3, address(arg4), Array(len=arg8, data=arg5.length, Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]) << (8 * ceil32(arg5.length)) - 256, mem[(2 * ceil32(arg5.length)) + ceil32(arg6.length) + 6211 len floor32(arg6.length) + floor32(arg5.length) + -ceil32(arg5.length) + 96]), floor32(arg5.length) + 320, arg7
    require create.new_address
    emit Created(address(create.new_address), msg.sender);
    return 1
}



}
