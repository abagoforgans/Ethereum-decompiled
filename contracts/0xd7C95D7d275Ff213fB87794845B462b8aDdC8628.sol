contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 11712]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function createCloneToken(address arg1, uint256 arg2, string arg3, uint8 arg4, string arg5, bool arg6) {
    mem[128 len arg3.length] = arg3[all]
    mem[ceil32(arg3.length) + 128] = arg5.length
    mem[ceil32(arg3.length) + 160 len arg5.length] = arg5[all]
    mem[ceil32(arg3.length) + ceil32(arg5.length) + 160 len 10706] = code.data[963 len 10706]
    mem[ceil32(arg3.length) + ceil32(arg5.length) + 10866] = this.address
    mem[ceil32(arg3.length) + ceil32(arg5.length) + 10898] = arg1
    mem[ceil32(arg3.length) + ceil32(arg5.length) + 10930] = arg2
    mem[ceil32(arg3.length) + ceil32(arg5.length) + 10994] = arg4
    mem[ceil32(arg3.length) + ceil32(arg5.length) + 11058] = arg6
    mem[ceil32(arg3.length) + ceil32(arg5.length) + 10962] = 224
    mem[ceil32(arg3.length) + ceil32(arg5.length) + 11090] = arg3.length
    if not arg3.length:
        if not arg3.length % 32:
            mem[ceil32(arg3.length) + ceil32(arg5.length) + 11026] = arg3.length + 256
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg5.length) + 11122] = arg5.length
            if not arg5.length:
                if not arg5.length % 32:
                    create contract with 0 wei
                                    code: code.data[963 len 10706], address(this.address), address(arg1), arg2, Array(len=arg6, data=arg3.length, mem[ceil32(arg3.length) + ceil32(arg5.length) + 11122 len arg5.length + arg3.length + 32]), arg4 << 248, arg3.length + 256
                else:
                    mem[floor32(arg5.length) + arg3.length + ceil32(arg3.length) + ceil32(arg5.length) + 11154] = mem[floor32(arg5.length) + arg3.length + ceil32(arg3.length) + ceil32(arg5.length) + -(arg5.length % 32) + 11186 len arg5.length % 32]
                    create contract with 0 wei
                                    code: code.data[963 len 10706], address(this.address), address(arg1), arg2, Array(len=arg6, data=arg3.length, mem[ceil32(arg3.length) + ceil32(arg5.length) + 11122 len floor32(arg5.length) + arg3.length + 64]), arg4 << 248, arg3.length + 256
            else:
                mem[arg3.length + ceil32(arg3.length) + ceil32(arg5.length) + 11154] = mem[ceil32(arg3.length) + 160]
                mem[arg3.length + ceil32(arg3.length) + ceil32(arg5.length) + 11186 len floor32(arg5.length - 1)] = mem[ceil32(arg3.length) + 192 len floor32(arg5.length - 1)]
                if not arg5.length % 32:
                    create contract with 0 wei
                                    code: code.data[963 len 10706], address(this.address), address(arg1), arg2, Array(len=arg6, data=arg3.length, mem[ceil32(arg3.length) + ceil32(arg5.length) + 11122 len arg5.length + arg3.length + 32]), arg4 << 248, arg3.length + 256
                else:
                    mem[floor32(arg5.length) + arg3.length + ceil32(arg3.length) + ceil32(arg5.length) + 11154] = mem[floor32(arg5.length) + arg3.length + ceil32(arg3.length) + ceil32(arg5.length) + -(arg5.length % 32) + 11186 len arg5.length % 32]
                    create contract with 0 wei
                                    code: code.data[963 len 10706], address(this.address), address(arg1), arg2, Array(len=arg6, data=arg3.length, mem[ceil32(arg3.length) + ceil32(arg5.length) + 11122 len arg3.length + 32], mem[ceil32(arg3.length) + 160], mem[ceil32(arg3.length) + ceil32(arg5.length) + arg3.length + 11186 len floor32(arg5.length)]), arg4 << 248, arg3.length + 256
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg5.length) + 11122] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg5.length) + -(arg3.length % 32) + 11154 len arg3.length % 32]
            mem[ceil32(arg3.length) + ceil32(arg5.length) + 11026] = floor32(arg3.length) + 288
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg5.length) + 11154] = arg5.length
            if not arg5.length:
                if not arg5.length % 32:
                    create contract with 0 wei
                                    code: code.data[963 len 10706], address(this.address), address(arg1), arg2, Array(len=arg6, data=arg3.length, mem[ceil32(arg3.length) + ceil32(arg5.length) + 11122 len floor32(arg3.length) + 32], arg5.length, mem[ceil32(arg3.length) + ceil32(arg5.length) + floor32(arg3.length) + 11186 len arg5.length]), arg4 << 248, floor32(arg3.length) + 288
                else:
                    mem[floor32(arg5.length) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg5.length) + 11186] = mem[floor32(arg5.length) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg5.length) + -(arg5.length % 32) + 11218 len arg5.length % 32]
                    create contract with 0 wei
                                    code: code.data[963 len 10706], address(this.address), address(arg1), arg2, Array(len=arg6, data=arg3.length, mem[ceil32(arg3.length) + ceil32(arg5.length) + 11122 len floor32(arg3.length) + 32], arg5.length, mem[ceil32(arg3.length) + ceil32(arg5.length) + floor32(arg3.length) + 11186 len floor32(arg5.length) + 32]), arg4 << 248, floor32(arg3.length) + 288
            else:
                mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg5.length) + 11186] = mem[ceil32(arg3.length) + 160]
                mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg5.length) + 11218 len floor32(arg5.length - 1)] = mem[ceil32(arg3.length) + 192 len floor32(arg5.length - 1)]
                if not arg5.length % 32:
                    create contract with 0 wei
                                    code: code.data[963 len 10706], address(this.address), address(arg1), arg2, Array(len=arg6, data=arg3.length, mem[ceil32(arg3.length) + ceil32(arg5.length) + 11122 len floor32(arg3.length) + 32], arg5.length, mem[ceil32(arg3.length) + ceil32(arg5.length) + floor32(arg3.length) + 11186 len arg5.length]), arg4 << 248, floor32(arg3.length) + 288
                else:
                    mem[floor32(arg5.length) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg5.length) + 11186] = mem[floor32(arg5.length) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg5.length) + -(arg5.length % 32) + 11218 len arg5.length % 32]
                    create contract with 0 wei
                                    code: code.data[963 len 10706], address(this.address), address(arg1), arg2, Array(len=arg6, data=arg3.length, mem[ceil32(arg3.length) + ceil32(arg5.length) + 11122 len floor32(arg3.length) + 32], arg5.length, mem[ceil32(arg3.length) + 160], mem[ceil32(arg3.length) + ceil32(arg5.length) + floor32(arg3.length) + 11218 len floor32(arg5.length)]), arg4 << 248, floor32(arg3.length) + 288
    else:
        mem[ceil32(arg3.length) + ceil32(arg5.length) + 11122] = mem[128]
        mem[ceil32(arg3.length) + ceil32(arg5.length) + 11154 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
        if not arg3.length % 32:
            mem[ceil32(arg3.length) + ceil32(arg5.length) + 11026] = arg3.length + 256
            mem[arg3.length + ceil32(arg3.length) + ceil32(arg5.length) + 11122] = arg5.length
            if arg5.length:
                mem[arg3.length + ceil32(arg3.length) + ceil32(arg5.length) + 11154] = mem[ceil32(arg3.length) + 160]
                mem[arg3.length + ceil32(arg3.length) + ceil32(arg5.length) + 11186 len floor32(arg5.length - 1)] = mem[ceil32(arg3.length) + 192 len floor32(arg5.length - 1)]
            if not arg5.length % 32:
                create contract with 0 wei
                                code: code.data[963 len 10706], address(this.address), address(arg1), arg2, Array(len=arg6, data=arg3.length, mem[128], mem[ceil32(arg3.length) + ceil32(arg5.length) + 11154 len arg5.length + arg3.length]), arg4 << 248, arg3.length + 256
            else:
                mem[floor32(arg5.length) + arg3.length + ceil32(arg3.length) + ceil32(arg5.length) + 11154] = mem[floor32(arg5.length) + arg3.length + ceil32(arg3.length) + ceil32(arg5.length) + -(arg5.length % 32) + 11186 len arg5.length % 32]
                create contract with 0 wei
                                code: code.data[963 len 10706], address(this.address), address(arg1), arg2, Array(len=arg6, data=arg3.length, mem[128], mem[ceil32(arg3.length) + ceil32(arg5.length) + 11154 len floor32(arg5.length) + arg3.length + 32]), arg4 << 248, arg3.length + 256
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg5.length) + 11122] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg5.length) + -(arg3.length % 32) + 11154 len arg3.length % 32]
            mem[ceil32(arg3.length) + ceil32(arg5.length) + 11026] = floor32(arg3.length) + 288
            mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg5.length) + 11154] = arg5.length
            if not arg5.length:
                if not arg5.length % 32:
                    create contract with 0 wei
                                    code: code.data[963 len 10706], address(this.address), address(arg1), arg2, Array(len=arg6, data=arg3.length, mem[128], mem[ceil32(arg3.length) + ceil32(arg5.length) + 11154 len arg5.length + floor32(arg3.length) + 32]), arg4 << 248, floor32(arg3.length) + 288
                else:
                    mem[floor32(arg5.length) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg5.length) + 11186] = mem[floor32(arg5.length) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg5.length) + -(arg5.length % 32) + 11218 len arg5.length % 32]
                    create contract with 0 wei
                                    code: code.data[963 len 10706], address(this.address), address(arg1), arg2, Array(len=arg6, data=arg3.length, mem[128], mem[ceil32(arg3.length) + ceil32(arg5.length) + 11154 len floor32(arg5.length) + floor32(arg3.length) + 64]), arg4 << 248, floor32(arg3.length) + 288
            else:
                mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg5.length) + 11186] = mem[ceil32(arg3.length) + 160]
                mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg5.length) + 11218 len floor32(arg5.length - 1)] = mem[ceil32(arg3.length) + 192 len floor32(arg5.length - 1)]
                if not arg5.length % 32:
                    create contract with 0 wei
                                    code: code.data[963 len 10706], address(this.address), address(arg1), arg2, Array(len=arg6, data=arg3.length, mem[128], mem[ceil32(arg3.length) + ceil32(arg5.length) + 11154 len arg5.length + floor32(arg3.length) + 32]), arg4 << 248, floor32(arg3.length) + 288
                else:
                    mem[floor32(arg5.length) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg5.length) + 11186] = mem[floor32(arg5.length) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg5.length) + -(arg5.length % 32) + 11218 len arg5.length % 32]
                    create contract with 0 wei
                                    code: code.data[963 len 10706], address(this.address), address(arg1), arg2, Array(len=arg6, data=arg3.length, mem[128], mem[ceil32(arg3.length) + ceil32(arg5.length) + 11154 len floor32(arg3.length) + 32], mem[ceil32(arg3.length) + 160], mem[ceil32(arg3.length) + ceil32(arg5.length) + floor32(arg3.length) + 11218 len floor32(arg5.length)]), arg4 << 248, floor32(arg3.length) + 288
    require create.new_address
    require ext_code.size(address(create.new_address))
    call address(create.new_address).changeController(address rg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    return address(create.new_address)
}



}
