contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_38b91fd9(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len 3282] = code.data[1186 len 3282]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 3538 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 3538] = arg2.length
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 3570 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        create contract with 0 wei
                        code: code.data[1186 len 3282], Array(len=arg1.length + 96, data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 3538 len arg2.length + arg1.length + -ceil32(arg1.length) + 32])
    else:
        mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 3570] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 3602 len arg2.length % 32]
        create contract with 0 wei
                        code: code.data[1186 len 3282], Array(len=arg1.length + 96, data=arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 3538 len floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 64])
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len 6547] = code.data[4468 len 6547]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 6707] = arg4
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 6739] = arg5
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 6771] = arg3
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 6803] = address(create.new_address)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 6835] = arg6
    create contract with 0 wei
                    code: code.data[4468 len 6547], arg4, arg5, arg3, address(create.new_address), arg6
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x983b2d56 with:
         gas gas_remaining wei
        args address(create.new_address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 256
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 448 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 448] = arg2.length
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 480 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        emit 0x70b6d1f6: Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 448 len arg2.length + arg1.length + -ceil32(arg1.length) + 32]), arg1.length + 288, arg3, arg4, arg5, address(arg6), address(create.new_address), address(create.new_address), msg.sender
    else:
        mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 480] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 512 len arg2.length % 32]
        emit 0x70b6d1f6: Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 448 len floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 64]), arg1.length + 288, arg3, arg4, arg5, address(arg6), address(create.new_address), address(create.new_address), msg.sender
    return address(create.new_address), address(create.new_address)
}



}
