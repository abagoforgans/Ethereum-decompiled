contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 4192]




// =====================  Runtime code  =====================


#
#  - _fallback()
#
function sub_1335cb03(?) payable {
    mem[2304] = 0xf47261b000000000000000000000000000000000000000000000000000000000
    mem[2308] = call.data[324]
    mem[3456] = 0xc75e0a8100000000000000000000000000000000000000000000000000000000
    mem[3460] = 32
    mem[3492] = address(call.data[4])
    mem[3524] = 0
    mem[3556] = address(call.data[36])
    mem[3588] = address(call.data[68])
    mem[3620] = call.data[100]
    mem[3652] = call.data[132]
    mem[3684] = call.data[164]
    mem[3716] = call.data[196]
    mem[3748] = call.data[228]
    mem[3780] = call.data[260]
    mem[3812] = 384
    mem[3876] = 36, None
    mem[3908 len ceil32(36, None)] = mem[2304 len ceil32(36, None)]
    if ceil32(36, None) != 36, None:
        mem[36, None + 3908] = 0
    mem[3844] = ceil32(36, None) + 416
    mem[3972] = 36
    mem[4004 len 64] = 0, call.data[292], mem[1124 len 28]
    mem[ceil32(36, None) + 3976] = 0
    require ext_code.size(0x4f833a24e1f95d70f028921e27040ca56e09ab0b)
    call 0x4f833a24e1f95d70f028921e27040ca56e09ab0b.getOrderInfo(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12) with:
         gas gas_remaining - 710 wei
        args mem[3460 len ceil32(36, None) + 544]
    require ext_call.success
    if ext_call.return_data[31 len 1] != 3:
        return 0
    if ext_call.return_data[64] < call.data[132]:
        if call.data[132] - ext_call.return_data[64] < call.data[452]:
            return 0
    else:
        if 0 < call.data[452]:
            return 0
    return call.data[452], 0
}

function sub_f4b30fa1(?) payable {
    mem[2336] = 0xf47261b000000000000000000000000000000000000000000000000000000000
    mem[2340] = call.data[324]
    mem[3488] = 0
    mem[3520] = 66
    mem[3552] = call.data[356]
    mem[3584] = call.data[388]
    mem[3616] = call.data[420]
    require ext_code.size(address(call.data[292]))
    if address(call.data[292]) == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2:
        call address(call.data[292]).deposit() with:
           value call.data[452] wei
             gas gas_remaining - 9710 wei
        require ext_call.success
        mem[5700] = call.data[452]
        require ext_code.size(address(call.data[292]))
        call address(call.data[292]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining - 710 wei
            args 0x2240dab907db71e64d3e0dba4800c83b5c502d4e, call.data[452]
        require ext_call.success
        require ext_call.return_data[0]
        mem[5664] = 0xb4be83d500000000000000000000000000000000000000000000000000000000
        mem[5668] = 96
        mem[5764] = address(call.data[4])
        mem[5796] = 0
        mem[5828] = address(call.data[36])
        mem[5860] = address(call.data[68])
        mem[5892] = call.data[100]
        mem[5924] = call.data[132]
        mem[5956] = call.data[164]
        mem[5988] = call.data[196]
        mem[6020] = call.data[228]
        mem[6052] = call.data[260]
        mem[6084] = 384
        mem[6148] = 36, None
        mem[6180 len ceil32(36, None)] = mem[2336 len ceil32(36, None)]
        if ceil32(36, None) != 36, None:
            mem[36, None + 6180] = 0
        mem[6116] = ceil32(36, None) + 416
        mem[ceil32(36, None) + 6180] = 36
        mem[ceil32(36, None) + 6212 len 64] = 0, call.data[292], mem[1156 len 28]
        mem[ceil32(36, None) + 6248] = 0
        mem[5700] = call.data[452]
    else:
        call address(call.data[292]).0x70a08231 with:
             gas gas_remaining - 710 wei
            args address(this.address), None
        require ext_call.success
        if call.data[452] >= ext_call.return_data[0]:
            mem[5700] = ext_call.return_data[0]
            require ext_code.size(address(call.data[292]))
            call address(call.data[292]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining - 710 wei
                args 0x2240dab907db71e64d3e0dba4800c83b5c502d4e, ext_call.return_data[0]
            require ext_call.success
            require ext_call.return_data[0]
            mem[5664] = 0xb4be83d500000000000000000000000000000000000000000000000000000000
            mem[5668] = 96
            mem[5764] = address(call.data[4])
            mem[5796] = 0
            mem[5828] = address(call.data[36])
            mem[5860] = address(call.data[68])
            mem[5892] = call.data[100]
            mem[5924] = call.data[132]
            mem[5956] = call.data[164]
            mem[5988] = call.data[196]
            mem[6020] = call.data[228]
            mem[6052] = call.data[260]
            mem[6084] = 384
            mem[6148] = 36, None
            mem[6180 len ceil32(36, None)] = mem[2336 len ceil32(36, None)]
            if ceil32(36, None) != 36, None:
                mem[36, None + 6180] = 0
            mem[6116] = ceil32(36, None) + 416
            mem[ceil32(36, None) + 6180] = 36
            mem[ceil32(36, None) + 6212 len 64] = 0, call.data[292], mem[1156 len 28]
            mem[ceil32(36, None) + 6248] = 0
            mem[5700] = ext_call.return_data[0]
        else:
            mem[5700] = call.data[452]
            require ext_code.size(address(call.data[292]))
            call address(call.data[292]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining - 710 wei
                args 0x2240dab907db71e64d3e0dba4800c83b5c502d4e, call.data[452]
            require ext_call.success
            require ext_call.return_data[0]
            mem[5664] = 0xb4be83d500000000000000000000000000000000000000000000000000000000
            mem[5668] = 96
            mem[5764] = address(call.data[4])
            mem[5796] = 0
            mem[5828] = address(call.data[36])
            mem[5860] = address(call.data[68])
            mem[5892] = call.data[100]
            mem[5924] = call.data[132]
            mem[5956] = call.data[164]
            mem[5988] = call.data[196]
            mem[6020] = call.data[228]
            mem[6052] = call.data[260]
            mem[6084] = 384
            mem[6148] = 36, None
            mem[6180 len ceil32(36, None)] = mem[2336 len ceil32(36, None)]
            if ceil32(36, None) != 36, None:
                mem[36, None + 6180] = 0
            mem[6116] = ceil32(36, None) + 416
            mem[ceil32(36, None) + 6180] = 36
            mem[ceil32(36, None) + 6212 len 64] = 0, call.data[292], mem[1156 len 28]
            mem[ceil32(36, None) + 6248] = 0
            mem[5700] = call.data[452]
    mem[5732] = ceil32(36, None) + 608
    mem[ceil32(36, None) + 6276] = 66, None
    mem[ceil32(36, None) + 6308 len ceil32(66, None)] = mem[3552 len ceil32(66, None)]
    if ceil32(66, None) != 66, None:
        mem[ceil32(36, None) + 66, None + 6308] = 0
    require ext_code.size(0x4f833a24e1f95d70f028921e27040ca56e09ab0b)
    call 0x4f833a24e1f95d70f028921e27040ca56e09ab0b.fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
         gas gas_remaining - 710 wei
        args mem[5668 len ceil32(36, None) + ceil32(66, None) + 640]
    require ext_call.success
    if address(call.data[324]) == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2:
        require ext_code.size(address(call.data[324]))
        call address(call.data[324]).0x70a08231 with:
             gas gas_remaining - 710 wei
            args address(this.address), None
        require ext_call.success
        require ext_code.size(address(call.data[324]))
        call address(call.data[324]).withdraw(uint256 arg1) with:
             gas gas_remaining - 710 wei
            args ext_call.return_data[0], None
        require ext_call.success
}



}
