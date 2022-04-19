contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 8299]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function createCloneToken(address arg1, uint256 arg2, string arg3, string arg4) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160 len 7494] = code.data[762 len 7494]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 7846 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 7846] = arg4.length
        mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 7878 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg3.length) + arg4.length + 160 len ceil32(arg4.length) - arg4.length]
        if not arg4.length % 32:
            create contract with 0 wei
                            code: code.data[762 len 7494], address(this.address), address(arg1), arg2, Array(len=arg3.length + 192, data=arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 7846 len arg4.length + arg3.length + -ceil32(arg3.length) + 32])
        else:
            mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + 7878] = mem[floor32(arg4.length) + arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 7910 len arg4.length % 32]
            create contract with 0 wei
                            code: code.data[762 len 7494], address(this.address), address(arg1), arg2, Array(len=arg3.length + 192, data=arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 7846 len floor32(arg4.length) + arg3.length + -ceil32(arg3.length) + 64])
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 7846] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg3.length % 32) + 7878 len arg3.length % 32]
        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 7878] = arg4.length
        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 7910 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg3.length) + arg4.length + 160 len ceil32(arg4.length) - arg4.length]
        if not arg4.length % 32:
            create contract with 0 wei
                            code: code.data[762 len 7494], address(this.address), address(arg1), arg2, Array(len=floor32(arg3.length) + 224, data=arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 7846 len arg4.length + floor32(arg3.length) + -ceil32(arg3.length) + 64])
        else:
            mem[floor32(arg4.length) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + 7910] = mem[floor32(arg4.length) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + -(arg4.length % 32) + 7942 len arg4.length % 32]
            create contract with 0 wei
                            code: code.data[762 len 7494], address(this.address), address(arg1), arg2, Array(len=floor32(arg3.length) + 224, data=arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + ceil32(arg4.length) + 7846 len floor32(arg4.length) + floor32(arg3.length) + -ceil32(arg3.length) + 96])
    require create.new_address
    require ext_code.size(address(create.new_address))
    call address(create.new_address).transferControl(address rg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    return address(create.new_address)
}



}
