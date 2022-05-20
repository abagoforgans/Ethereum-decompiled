contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function createToken(string arg1, string arg2, uint8 arg3) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len 7113] = code.data[725 len 7113]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 7433 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 7433] = arg2.length
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 7465 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            create contract with 0 wei
                            code: code.data[725 len 7113], Array(len=msg.sender, data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 7433 len arg2.length + arg1.length + -ceil32(arg1.length) + 32]), arg1.length + 160, arg3 << 248
        else:
            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 7465] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 7497 len arg2.length % 32]
            create contract with 0 wei
                            code: code.data[725 len 7113], Array(len=msg.sender, data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 7433 len floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 64]), arg1.length + 160, arg3 << 248
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 7433] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 7465 len arg1.length % 32]
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 7465] = arg2.length
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 7497 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            create contract with 0 wei
                            code: code.data[725 len 7113], Array(len=msg.sender, data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 7433 len arg2.length + floor32(arg1.length) + -ceil32(arg1.length) + 64]), floor32(arg1.length) + 192, arg3 << 248
        else:
            mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 7497] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 7529 len arg2.length % 32]
            create contract with 0 wei
                            code: code.data[725 len 7113], Array(len=msg.sender, data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 7433 len floor32(arg2.length) + floor32(arg1.length) + -ceil32(arg1.length) + 96]), floor32(arg1.length) + 192, arg3 << 248
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    emit TokenCreated(address(create.new_address), msg.sender);
}



}
