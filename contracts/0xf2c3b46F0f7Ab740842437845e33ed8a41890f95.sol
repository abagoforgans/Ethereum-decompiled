contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[54 len 3339]
}



// =====================  Runtime code  =====================


address sub_7bcb7773Address;

function sub_7bcb7773(?) {
    return sub_7bcb7773Address
}

function _fallback() payable {
    revert 
}

function sub_285b5ec9(?) {
    require sub_7bcb7773Address == msg.sender
    sub_7bcb7773Address = arg1
}

function sub_d17f3b1a(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len 2472] = code.data[824 len 2472]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 2696] = arg3
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 2728] = arg4
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 2760] = arg5
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 2632] = 160
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 2792] = arg1.length
    if not arg1.length:
        if not arg1.length % 32:
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 2664] = arg1.length + 192
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 2824] = arg2.length
            if not arg2.length:
                if not arg2.length % 32:
                    create contract with 0 wei
                                    code: code.data[824 len 2472], Array(len=address(arg5), data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + 2824 len arg2.length + arg1.length + 32]), arg1.length + 192, arg3, arg4
                else:
                    mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 2856] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 2888 len arg2.length % 32]
                    create contract with 0 wei
                                    code: code.data[824 len 2472], Array(len=address(arg5), data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + 2824 len floor32(arg2.length) + arg1.length + 64]), arg1.length + 192, arg3, arg4
            else:
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 2856] = mem[ceil32(arg1.length) + 160]
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 2888 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
                if not arg2.length % 32:
                    create contract with 0 wei
                                    code: code.data[824 len 2472], Array(len=address(arg5), data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + 2824 len arg2.length + arg1.length + 32]), arg1.length + 192, arg3, arg4
                else:
                    mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 2856] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 2888 len arg2.length % 32]
                    create contract with 0 wei
                                    code: code.data[824 len 2472], Array(len=address(arg5), data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + 2824 len arg1.length + 32], mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 2888 len floor32(arg2.length)]), arg1.length + 192, arg3, arg4
        else:
            mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 2824] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 2856 len arg1.length % 32]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 2664] = floor32(arg1.length) + 224
            mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 2856] = arg2.length
            if not arg2.length:
                if not arg2.length % 32:
                    create contract with 0 wei
                                    code: code.data[824 len 2472], Array(len=address(arg5), data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + 2824 len floor32(arg1.length) + 32], arg2.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 2888 len arg2.length]), floor32(arg1.length) + 224, arg3, arg4
                else:
                    mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 2888] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 2920 len arg2.length % 32]
                    create contract with 0 wei
                                    code: code.data[824 len 2472], Array(len=address(arg5), data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + 2824 len floor32(arg1.length) + 32], arg2.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 2888 len floor32(arg2.length) + 32]), floor32(arg1.length) + 224, arg3, arg4
            else:
                mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 2888] = mem[ceil32(arg1.length) + 160]
                mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 2920 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
                if not arg2.length % 32:
                    create contract with 0 wei
                                    code: code.data[824 len 2472], Array(len=address(arg5), data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + 2824 len floor32(arg1.length) + 32], arg2.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 2888 len arg2.length]), floor32(arg1.length) + 224, arg3, arg4
                else:
                    mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 2888] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 2920 len arg2.length % 32]
                    create contract with 0 wei
                                    code: code.data[824 len 2472], Array(len=address(arg5), data=arg1.length, mem[ceil32(arg1.length) + ceil32(arg2.length) + 2824 len floor32(arg1.length) + 32], arg2.length, mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 2920 len floor32(arg2.length)]), floor32(arg1.length) + 224, arg3, arg4
    else:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 2824] = mem[128]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 2856 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
        if not arg1.length % 32:
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 2664] = arg1.length + 192
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 2824] = arg2.length
            if arg2.length:
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 2856] = mem[ceil32(arg1.length) + 160]
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 2888 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
            if not arg2.length % 32:
                create contract with 0 wei
                                code: code.data[824 len 2472], Array(len=address(arg5), data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 2856 len arg2.length + arg1.length]), arg1.length + 192, arg3, arg4
            else:
                mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 2856] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 2888 len arg2.length % 32]
                create contract with 0 wei
                                code: code.data[824 len 2472], Array(len=address(arg5), data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 2856 len floor32(arg2.length) + arg1.length + 32]), arg1.length + 192, arg3, arg4
        else:
            mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 2824] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 2856 len arg1.length % 32]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 2664] = floor32(arg1.length) + 224
            mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 2856] = arg2.length
            if not arg2.length:
                if not arg2.length % 32:
                    create contract with 0 wei
                                    code: code.data[824 len 2472], Array(len=address(arg5), data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 2856 len arg2.length + floor32(arg1.length) + 32]), floor32(arg1.length) + 224, arg3, arg4
                else:
                    mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 2888] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 2920 len arg2.length % 32]
                    create contract with 0 wei
                                    code: code.data[824 len 2472], Array(len=address(arg5), data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 2856 len floor32(arg2.length) + floor32(arg1.length) + 64]), floor32(arg1.length) + 224, arg3, arg4
            else:
                mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 2888] = mem[ceil32(arg1.length) + 160]
                mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 2920 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
                if not arg2.length % 32:
                    create contract with 0 wei
                                    code: code.data[824 len 2472], Array(len=address(arg5), data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 2856 len arg2.length + floor32(arg1.length) + 32]), floor32(arg1.length) + 224, arg3, arg4
                else:
                    mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 2888] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 2920 len arg2.length % 32]
                    create contract with 0 wei
                                    code: code.data[824 len 2472], Array(len=address(arg5), data=arg1.length, mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 2856 len floor32(arg1.length) + 32], mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 2920 len floor32(arg2.length)]), floor32(arg1.length) + 224, arg3, arg4
    require create.new_address
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x285b5ec9 with:
         gas gas_remaining - 50 wei
        args sub_7bcb7773Address
    require ext_call.success
    return address(create.new_address)
}



}
