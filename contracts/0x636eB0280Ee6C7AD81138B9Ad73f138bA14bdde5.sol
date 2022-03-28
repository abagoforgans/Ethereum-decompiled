contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[57 len 3323]
}



// =====================  Runtime code  =====================


address sub_4e458aefAddress;

function sub_4e458aef(?) {
    return sub_4e458aefAddress
}

function _fallback() payable {
    revert
}

function sub_285b5ec9(?) {
    require sub_4e458aefAddress == msg.sender
    sub_4e458aefAddress = arg1
}

function sub_d17f3b1a(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len 2430] = code.data[850 len 2430]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 2654] = arg3
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 2686] = arg4
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 2718] = arg5
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 2590] = 160
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 2750] = arg1.length
    if not arg1.length:
        if not arg1.length % 32:
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 2622] = arg1.length + 192
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 2782] = arg2.length
            if not arg2.length:
                if not arg2.length % 32:
                    create contract with 0 wei
                                    code: code.data[850 len 2430], Array(len=address(arg5), data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + 2782 len arg2.length + arg1.length + 32]), arg1.length + 192, arg3, arg4
                else:
                    mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 2814] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 2846 len arg2.length % 32]
                    create contract with 0 wei
                                    code: code.data[850 len 2430], Array(len=address(arg5), data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + 2782 len floor32(arg2.length) + arg1.length + 64]), arg1.length + 192, arg3, arg4
            else:
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 2814] = mem[ceil32(arg1.length) + 160]
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 2846 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
                if not arg2.length % 32:
                    create contract with 0 wei
                                    code: code.data[850 len 2430], Array(len=address(arg5), data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + 2782 len arg2.length + arg1.length + 32]), arg1.length + 192, arg3, arg4
                else:
                    mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 2814] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 2846 len arg2.length % 32]
                    create contract with 0 wei
                                    code: code.data[850 len 2430], Array(len=address(arg5), data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + 2782 len arg1.length + 32], mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 2846 len floor32(arg2.length)]), arg1.length + 192, arg3, arg4
        else:
            mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 2782] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 2814 len arg1.length % 32]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 2622] = floor32(arg1.length) + 224
            mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 2814] = arg2.length
            if not arg2.length:
                if not arg2.length % 32:
                    create contract with 0 wei
                                    code: code.data[850 len 2430], Array(len=address(arg5), data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + 2782 len floor32(arg1.length) + 32], arg2.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 2846 len arg2.length]), floor32(arg1.length) + 224, arg3, arg4
                else:
                    mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 2846] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 2878 len arg2.length % 32]
                    create contract with 0 wei
                                    code: code.data[850 len 2430], Array(len=address(arg5), data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + 2782 len floor32(arg1.length) + 32], arg2.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 2846 len floor32(arg2.length) + 32]), floor32(arg1.length) + 224, arg3, arg4
            else:
                mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 2846] = mem[ceil32(arg1.length) + 160]
                mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 2878 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
                if not arg2.length % 32:
                    create contract with 0 wei
                                    code: code.data[850 len 2430], Array(len=address(arg5), data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + 2782 len floor32(arg1.length) + 32], arg2.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 2846 len arg2.length]), floor32(arg1.length) + 224, arg3, arg4
                else:
                    mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 2846] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 2878 len arg2.length % 32]
                    create contract with 0 wei
                                    code: code.data[850 len 2430], Array(len=address(arg5), data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + 2782 len floor32(arg1.length) + 32], arg2.length, mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 2878 len floor32(arg2.length)]), floor32(arg1.length) + 224, arg3, arg4
    else:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 2782] = mem[128]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 2814 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
        if not arg1.length % 32:
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 2622] = arg1.length + 192
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 2782] = arg2.length
            if arg2.length:
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 2814] = mem[ceil32(arg1.length) + 160]
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 2846 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
            if not arg2.length % 32:
                create contract with 0 wei
                                code: code.data[850 len 2430], Array(len=address(arg5), data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 2814 len arg2.length + arg1.length]), arg1.length + 192, arg3, arg4
            else:
                mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 2814] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 2846 len arg2.length % 32]
                create contract with 0 wei
                                code: code.data[850 len 2430], Array(len=address(arg5), data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 2814 len floor32(arg2.length) + arg1.length + 32]), arg1.length + 192, arg3, arg4
        else:
            mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 2782] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 2814 len arg1.length % 32]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 2622] = floor32(arg1.length) + 224
            mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 2814] = arg2.length
            if not arg2.length:
                if not arg2.length % 32:
                    create contract with 0 wei
                                    code: code.data[850 len 2430], Array(len=address(arg5), data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 2814 len arg2.length + floor32(arg1.length) + 32]), floor32(arg1.length) + 224, arg3, arg4
                else:
                    mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 2846] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 2878 len arg2.length % 32]
                    create contract with 0 wei
                                    code: code.data[850 len 2430], Array(len=address(arg5), data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 2814 len floor32(arg2.length) + floor32(arg1.length) + 64]), floor32(arg1.length) + 224, arg3, arg4
            else:
                mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 2846] = mem[ceil32(arg1.length) + 160]
                mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 2878 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
                if not arg2.length % 32:
                    create contract with 0 wei
                                    code: code.data[850 len 2430], Array(len=address(arg5), data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 2814 len arg2.length + floor32(arg1.length) + 32]), floor32(arg1.length) + 224, arg3, arg4
                else:
                    mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 2846] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 2878 len arg2.length % 32]
                    create contract with 0 wei
                                    code: code.data[850 len 2430], Array(len=address(arg5), data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 2814 len floor32(arg1.length) + 32], mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 2878 len floor32(arg2.length)]), floor32(arg1.length) + 224, arg3, arg4
    require create.new_address
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x285b5ec9 with:
         gas gas_remaining - 50 wei
        args sub_4e458aefAddress
    require ext_call.success
    return address(create.new_address)
}



}
