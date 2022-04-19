contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 7592]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function createCloneToken(address arg1, uint256 arg2, string arg3, uint8 arg4, string arg5, bool arg6) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = arg5.length
    mem[ceil32(arg3.length) + 160 len arg5.length] = arg5[all]
    mem[ceil32(arg3.length) + ceil32(arg5.length) + 160 len 6745] = code.data[804 len 6745]
    mem[ceil32(arg3.length) + ceil32(arg5.length) + 7161 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        mem[arg3.length + ceil32(arg3.length) + ceil32(arg5.length) + 7161] = arg5.length
        mem[arg3.length + ceil32(arg3.length) + ceil32(arg5.length) + 7193 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg3.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
        if not arg5.length % 32:
            create contract with 0 wei
                            code: code.data[804 len 6745], address(this.address), address(arg1), arg2, Array(len=arg6, data=arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg5.length) + 7161 len arg5.length + arg3.length + -ceil32(arg3.length) + 32]), arg4 << 248, arg3.length + 256
        else:
            mem[floor32(arg5.length) + arg3.length + ceil32(arg3.length) + ceil32(arg5.length) + 7193] = mem[floor32(arg5.length) + arg3.length + ceil32(arg3.length) + ceil32(arg5.length) + -(arg5.length % 32) + 7225 len arg5.length % 32]
            create contract with 0 wei
                            code: code.data[804 len 6745], address(this.address), address(arg1), arg2, Array(len=arg6, data=arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg5.length) + 7161 len floor32(arg5.length) + arg3.length + -ceil32(arg3.length) + 64]), arg4 << 248, arg3.length + 256
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg5.length) + 7161] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg5.length) + -(arg3.length % 32) + 7193 len arg3.length % 32]
        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg5.length) + 7193] = arg5.length
        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg5.length) + 7225 len ceil32(arg5.length)] = arg5[all], mem[ceil32(arg3.length) + arg5.length + 160 len ceil32(arg5.length) - arg5.length]
        if not arg5.length % 32:
            create contract with 0 wei
                            code: code.data[804 len 6745], address(this.address), address(arg1), arg2, Array(len=arg6, data=arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg5.length) + 7161 len arg5.length + floor32(arg3.length) + -ceil32(arg3.length) + 64]), arg4 << 248, floor32(arg3.length) + 288
        else:
            mem[floor32(arg5.length) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg5.length) + 7225] = mem[floor32(arg5.length) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg5.length) + -(arg5.length % 32) + 7257 len arg5.length % 32]
            create contract with 0 wei
                            code: code.data[804 len 6745], address(this.address), address(arg1), arg2, Array(len=arg6, data=arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg5.length) + 7161 len floor32(arg5.length) + floor32(arg3.length) + -ceil32(arg3.length) + 96]), arg4 << 248, floor32(arg3.length) + 288
    require create.new_address
    require ext_code.size(address(create.new_address))
    call address(create.new_address).changeController(address rg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    return address(create.new_address)
}



}
