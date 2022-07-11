contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 3992]




// =====================  Runtime code  =====================


function sub_176c5b48(?) {
    return 32, 36, 0, arg1, mem[196 len 28], mem[252 len 4]
}

function sub_a5de1118(?) {
    return Array(len=66, data=arg1, arg2, arg3 >> 256, Mask(16, -512, arg1, arg2, arg3) << 512)
}

function sub_1335cb03(?) {
    require ext_code.size(0x4f833a24e1f95d70f028921e27040ca56e09ab0b)
    call 0x4f833a24e1f95d70f028921e27040ca56e09ab0b.getOrderInfo(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12) with:
         gas gas_remaining - 710 wei
        args 576, None
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

function sub_f4b30fa1(?) {
    mem[3552] = call.data[356]
    mem[3584] = call.data[388]
    mem[3616] = call.data[420]
    require ext_code.size(address(call.data[292]))
    if address(call.data[292]) == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2:
        call address(call.data[292]).deposit() with:
           value call.data[452] wei
             gas gas_remaining - 9710 wei
        require ext_call.success
        require ext_code.size(address(call.data[292]))
        call address(call.data[292]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining - 710 wei
            args 0x2240dab907db71e64d3e0dba4800c83b5c502d4e, call.data[452]
        require ext_call.success
        require ext_call.return_data[0]
        mem[5792] = 0
        mem[5664] = 0xb4be83d500000000000000000000000000000000000000000000000000000000
        mem[5668] = 576
        mem[5700] = call.data[452]
        mem[5732] = 96
        mem[5764] = 66, None
        mem[5796 len ceil32(66, None)] = mem[3552 len ceil32(66, None)]
        mem[5860] = mem[5890 len 2]
        require ext_code.size(0x4f833a24e1f95d70f028921e27040ca56e09ab0b)
        call 0x4f833a24e1f95d70f028921e27040ca56e09ab0b.fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
             gas gas_remaining - 710 wei
            args 576, call.data[452], 96, 66, None, 0, mem[5824 len 68]
    else:
        call address(call.data[292]).0x70a08231 with:
             gas gas_remaining - 710 wei
            args address(this.address), None
        require ext_call.success
        require ext_code.size(address(call.data[292]))
        if call.data[452] >= ext_call.return_data[0]:
            call address(call.data[292]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining - 710 wei
                args 0x2240dab907db71e64d3e0dba4800c83b5c502d4e, ext_call.return_data[0]
            require ext_call.success
            require ext_call.return_data[0]
            mem[5792] = 0
            mem[5664] = 0xb4be83d500000000000000000000000000000000000000000000000000000000
            mem[5668] = 576
            mem[5700] = ext_call.return_data[0]
            mem[5732] = 96
            mem[5764] = 66, None
            mem[5796 len ceil32(66, None)] = mem[3552 len ceil32(66, None)]
            mem[5860] = mem[5890 len 2]
            require ext_code.size(0x4f833a24e1f95d70f028921e27040ca56e09ab0b)
            call 0x4f833a24e1f95d70f028921e27040ca56e09ab0b.fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                 gas gas_remaining - 710 wei
                args 576, ext_call.return_data[0], 96, 66, None, 0, mem[5824 len 68]
        else:
            call address(call.data[292]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining - 710 wei
                args 0x2240dab907db71e64d3e0dba4800c83b5c502d4e, call.data[452]
            require ext_call.success
            require ext_call.return_data[0]
            mem[5792] = 0
            mem[5664] = 0xb4be83d500000000000000000000000000000000000000000000000000000000
            mem[5668] = 576
            mem[5700] = call.data[452]
            mem[5732] = 96
            mem[5764] = 66, None
            mem[5796 len ceil32(66, None)] = mem[3552 len ceil32(66, None)]
            mem[5860] = mem[5890 len 2]
            require ext_code.size(0x4f833a24e1f95d70f028921e27040ca56e09ab0b)
            call 0x4f833a24e1f95d70f028921e27040ca56e09ab0b.fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                 gas gas_remaining - 710 wei
                args 576, call.data[452], 96, 66, None, 0, mem[5824 len 68]
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

function _fallback() payable {
    if unknown_0x1335cb03(?????) == uint32(call.func_hash):
        require not msg.value
        require ext_code.size(0x4f833a24e1f95d70f028921e27040ca56e09ab0b)
        call 0x4f833a24e1f95d70f028921e27040ca56e09ab0b.getOrderInfo(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12) with:
             gas gas_remaining - 710 wei
            args 576, None
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
    if unknown_0x176c5b48(?????) == uint32(call.func_hash):
        require not msg.value
        return 32, 36, 0, arg1, mem[196 len 28], mem[252 len 4]
    if unknown_0xa5de1118(?????) == uint32(call.func_hash):
        require not msg.value
        return Array(len=66, data=arg1, arg2, arg3 >> 256, Mask(16, -512, arg1, arg2, arg3) << 512)
    require unknown_0xf4b30fa1(?????) == uint32(call.func_hash)
    require not msg.value
    mem[3552] = call.data[356]
    mem[3584] = call.data[388]
    mem[3616] = call.data[420]
    require ext_code.size(address(call.data[292]))
    if address(call.data[292]) == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2:
        call address(call.data[292]).deposit() with:
           value call.data[452] wei
             gas gas_remaining - 9710 wei
        require ext_call.success
        require ext_code.size(address(call.data[292]))
        call address(call.data[292]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining - 710 wei
            args 0x2240dab907db71e64d3e0dba4800c83b5c502d4e, call.data[452]
        require ext_call.success
        require ext_call.return_data[0]
        mem[5792] = 0
        mem[5664] = 0xb4be83d500000000000000000000000000000000000000000000000000000000
        mem[5668] = 576
        mem[5700] = call.data[452]
        mem[5732] = 96
        mem[5764] = 66, None
        mem[5796 len ceil32(66, None)] = mem[3552 len ceil32(66, None)]
        mem[5860] = mem[5890 len 2]
        require ext_code.size(0x4f833a24e1f95d70f028921e27040ca56e09ab0b)
        call 0x4f833a24e1f95d70f028921e27040ca56e09ab0b.fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
             gas gas_remaining - 710 wei
            args 576, call.data[452], 96, 66, None, 0, mem[5824 len 68]
    else:
        call address(call.data[292]).0x70a08231 with:
             gas gas_remaining - 710 wei
            args address(this.address), None
        require ext_call.success
        require ext_code.size(address(call.data[292]))
        if call.data[452] >= ext_call.return_data[0]:
            call address(call.data[292]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining - 710 wei
                args 0x2240dab907db71e64d3e0dba4800c83b5c502d4e, ext_call.return_data[0]
            require ext_call.success
            require ext_call.return_data[0]
            mem[5792] = 0
            mem[5664] = 0xb4be83d500000000000000000000000000000000000000000000000000000000
            mem[5668] = 576
            mem[5700] = ext_call.return_data[0]
            mem[5732] = 96
            mem[5764] = 66, None
            mem[5796 len ceil32(66, None)] = mem[3552 len ceil32(66, None)]
            mem[5860] = mem[5890 len 2]
            require ext_code.size(0x4f833a24e1f95d70f028921e27040ca56e09ab0b)
            call 0x4f833a24e1f95d70f028921e27040ca56e09ab0b.fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                 gas gas_remaining - 710 wei
                args 576, ext_call.return_data[0], 96, 66, None, 0, mem[5824 len 68]
        else:
            call address(call.data[292]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining - 710 wei
                args 0x2240dab907db71e64d3e0dba4800c83b5c502d4e, call.data[452]
            require ext_call.success
            require ext_call.return_data[0]
            mem[5792] = 0
            mem[5664] = 0xb4be83d500000000000000000000000000000000000000000000000000000000
            mem[5668] = 576
            mem[5700] = call.data[452]
            mem[5732] = 96
            mem[5764] = 66, None
            mem[5796 len ceil32(66, None)] = mem[3552 len ceil32(66, None)]
            mem[5860] = mem[5890 len 2]
            require ext_code.size(0x4f833a24e1f95d70f028921e27040ca56e09ab0b)
            call 0x4f833a24e1f95d70f028921e27040ca56e09ab0b.fillOrder(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, bytes arg11, bytes arg12, uint256 arg13, bytes arg14) with:
                 gas gas_remaining - 710 wei
                args 576, call.data[452], 96, 66, None, 0, mem[5824 len 68]
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
