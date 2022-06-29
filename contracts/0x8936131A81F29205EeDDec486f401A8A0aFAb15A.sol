contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function createDestructibleCloneToken(address arg1, uint256 arg2, string arg3, uint8 arg4, string arg5, bool arg6) {
    require calldata.size - 4 >= 192
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[64] = ceil32(arg3.length) + ceil32(arg5.length) + 160
    mem[ceil32(arg3.length) + 128] = arg5.length
    mem[ceil32(arg3.length) + 160 len arg5.length] = arg5[all]
    mem[ceil32(arg3.length) + arg5.length + 160] = 0
    mem[ceil32(arg3.length) + ceil32(arg5.length) + 160 len 7652] = code.data[970 len 7652]
    mem[ceil32(arg3.length) + ceil32(arg5.length) + 7812] = this.address
    mem[ceil32(arg3.length) + ceil32(arg5.length) + 7844] = arg1
    mem[ceil32(arg3.length) + ceil32(arg5.length) + 7876] = arg2
    mem[ceil32(arg3.length) + ceil32(arg5.length) + 7940] = arg4
    mem[ceil32(arg3.length) + ceil32(arg5.length) + 8004] = arg6
    mem[ceil32(arg3.length) + ceil32(arg5.length) + 8036] = msg.sender
    mem[ceil32(arg3.length) + ceil32(arg5.length) + 7908] = 256
    mem[ceil32(arg3.length) + ceil32(arg5.length) + 8068] = arg3.length
    mem[ceil32(arg3.length) + ceil32(arg5.length) + 8100 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        mem[ceil32(arg3.length) + ceil32(arg5.length) + 7972] = arg3.length + 288
        mem[arg3.length + ceil32(arg3.length) + ceil32(arg5.length) + 8100] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
        mem[arg3.length + ceil32(arg3.length) + ceil32(arg5.length) + 8132 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
        if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
            create contract with 0 wei
                            code: mem[ceil32(arg3.length) + ceil32(arg5.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + arg3.length + 7972]
        else:
            mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg5.length) + 8132] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + ceil32(arg3.length) + ceil32(arg5.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 8164 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
            create contract with 0 wei
                            code: mem[ceil32(arg3.length) + ceil32(arg5.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + arg3.length + 8004]
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg5.length) + 8100] = mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg5.length) + -(arg3.length % 32) + 8132 len arg3.length % 32]
        mem[ceil32(arg3.length) + ceil32(arg5.length) + 7972] = floor32(arg3.length) + 320
        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg5.length) + 8132] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
        mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg5.length) + 8164 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg3.length) + 160 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)])]
        if not Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32:
            create contract with 0 wei
                            code: mem[ceil32(arg3.length) + ceil32(arg5.length) + 160 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] + floor32(arg3.length) + 8004]
        else:
            mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg5.length) + 8164] = mem[floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + ceil32(arg3.length) + ceil32(arg5.length) + -(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32) + 8196 len Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)] % 32]
            create contract with 0 wei
                            code: mem[ceil32(arg3.length) + ceil32(arg5.length) + 160 len floor32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]) + floor32(arg3.length) + 8036]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).changeController(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 0, uint128(create.new_address) << 96
}



}
