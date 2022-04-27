contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = code.data[3593 len 20]
    stor1 = code.data[3625 len 20]
    return code.data[106 len 3475]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
  stop
}

function depositAll() payable {
    require ext_code.size(stor1)
    call stor1.0xd0e30db0 with:
       value msg.value wei
         gas gas_remaining - 9710 wei
    require ext_call.success
}

function withdrawAll() {
    require stor0 == msg.sender
    require ext_code.size(stor1)
    call stor1.tokens(address rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args 0, this.address
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0x2e1a7d4d with:
         gas gas_remaining - 710 wei
        args ext_call.return_data[0]
    require ext_call.success
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) {
    require stor0 == msg.sender
    require ext_code.size(stor1)
    call stor1.testTrade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11, address rg12) with:
         gas gas_remaining - 710 wei
        args 0, 0, uint32(arg2), address(arg3), arg4, arg5, arg6, address(arg7), arg8 << 248, arg9, arg10, arg11, this.address
    require ext_call.success
    if ext_call.return_data[0]:
        call stor1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
             gas gas_remaining - 25710 wei
            args 0, 0, uint32(arg2), address(arg3), arg4, arg5, arg6, address(arg7), arg8 << 248, arg9, arg10, arg11
}

function sub_34afb7e4(?) {
    require arg4
    require ext_code.size(stor1)
    call stor1.availableVolume(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10) with:
         gas gas_remaining - 710 wei
        args 0, 0, arg9, 0, arg10, arg11, arg12, address(arg3), arg18 << 248, arg15, arg16
    require ext_call.success
    if arg8 * arg5 / arg4 > (10^18 * arg8 * arg5 / arg4 / 1003 * 10^15) + (3 * 10^15 * 10^18 * arg8 * arg5 / arg4 / 1003 * 10^15 / 10^18):
        if ext_call.return_data[0] < (10^18 * arg8 * arg5 / arg4 / 1003 * 10^15) + 1:
            return 3
    else:
        if arg8 * arg5 / arg4 >= (10^18 * arg8 * arg5 / arg4 / 1003 * 10^15) + (3 * 10^15 * 10^18 * arg8 * arg5 / arg4 / 1003 * 10^15 / 10^18):
            if ext_call.return_data[0] < 10^18 * arg8 * arg5 / arg4 / 1003 * 10^15:
                return 3
        else:
            if ext_call.return_data[0] < (10^18 * arg8 * arg5 / arg4 / 1003 * 10^15) - 1:
                return 3
    require ext_code.size(stor1)
    call stor1.testTrade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11, address rg12) with:
         gas gas_remaining - 710 wei
        args 0, 0, uint32(arg4), address(arg1), arg5, arg6, arg7, address(arg2), arg17 << 248, arg13, arg14, arg8, this.address
    require ext_call.success
    if ext_call.return_data[0]:
        return 1
    return 2
}

function sub_dfe20171(?) {
    require stor0 == msg.sender
    require arg2
    call stor1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
         gas 130000 wei
        args 0, call.data[100], address(arg1), call.data[132], call.data[164], call.data[196], call.data[36], call.data[516], call.data[388], call.data[420], call.data[228]
    if arg4 * arg3 / arg2 > (10^18 * arg4 * arg3 / arg2 / 1003 * 10^15) + (3 * 10^15 * 10^18 * arg4 * arg3 / arg2 / 1003 * 10^15 / 10^18):
        call stor1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
             gas 130000 wei
            args address(arg1), call.data[260], 0, call.data[292], call.data[324], call.data[356], call.data[68], call.data[548], call.data[452], call.data[484], (10^18 * arg4 * arg3 / arg2 / 1003 * 10^15) + 1
    else:
        if arg4 * arg3 / arg2 >= (10^18 * arg4 * arg3 / arg2 / 1003 * 10^15) + (3 * 10^15 * 10^18 * arg4 * arg3 / arg2 / 1003 * 10^15 / 10^18):
            call stor1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                 gas 130000 wei
                args address(arg1), call.data[260], 0, call.data[292], call.data[324], call.data[356], call.data[68], call.data[548], call.data[452], call.data[484], 10^18 * arg4 * arg3 / arg2 / 1003 * 10^15
        else:
            call stor1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                 gas 130000 wei
                args address(arg1), call.data[260], 0, call.data[292], call.data[324], call.data[356], call.data[68], call.data[548], call.data[452], call.data[484], (10^18 * arg4 * arg3 / arg2 / 1003 * 10^15) - 1
}

function sub_105a02e9(?) {
    require stor0 == msg.sender
    hash = sha256hash(stor1, 0, arg2, arg1, arg3, arg4, arg5) 
    require sha256hash.result
    call stor1.orderFills(address rg1, bytes32 rg2) with:
         gas 30000 wei
        args call.data[36], hash
    if -(ext_call.return_data[0] + arg6 > arg2) + 1:
        require arg2
        call stor1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
             gas 130000 wei
            args 0, call.data[100], address(arg1), call.data[132], call.data[164], call.data[196], call.data[36], call.data[516], call.data[388], call.data[420], call.data[228]
        if arg6 * arg3 / arg2 > (10^18 * arg6 * arg3 / arg2 / 1003 * 10^15) + (3 * 10^15 * 10^18 * arg6 * arg3 / arg2 / 1003 * 10^15 / 10^18):
            call stor1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                 gas 130000 wei
                args address(arg1), call.data[260], 0, call.data[292], call.data[324], call.data[356], call.data[68], call.data[548], call.data[452], call.data[484], (10^18 * arg6 * arg3 / arg2 / 1003 * 10^15) + 1
        else:
            if arg6 * arg3 / arg2 >= (10^18 * arg6 * arg3 / arg2 / 1003 * 10^15) + (3 * 10^15 * 10^18 * arg6 * arg3 / arg2 / 1003 * 10^15 / 10^18):
                call stor1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                     gas 130000 wei
                    args address(arg1), call.data[260], 0, call.data[292], call.data[324], call.data[356], call.data[68], call.data[548], call.data[452], call.data[484], 10^18 * arg6 * arg3 / arg2 / 1003 * 10^15
            else:
                call stor1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                     gas 130000 wei
                    args address(arg1), call.data[260], 0, call.data[292], call.data[324], call.data[356], call.data[68], call.data[548], call.data[452], call.data[484], (10^18 * arg6 * arg3 / arg2 / 1003 * 10^15) - 1
}

function sub_f38b2f00(?) {
    require stor0 == msg.sender
    require arg2
    hash = sha256hash(stor1, 0, arg5, 0, arg6, arg7, arg8) 
    require sha256hash.result
    call stor1.orderFills(address rg1, bytes32 rg2) with:
         gas 30000 wei
        args call.data[68], hash
    if arg4 * arg3 / arg2 > (10^18 * arg4 * arg3 / arg2 / 1003 * 10^15) + (3 * 10^15 * 10^18 * arg4 * arg3 / arg2 / 1003 * 10^15 / 10^18):
        if -(ext_call.return_data[0] + (10^18 * arg4 * arg3 / arg2 / 1003 * 10^15) + 1 > arg5) + 1:
            call stor1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                 gas 130000 wei
                args 0, call.data[100], address(arg1), call.data[132], call.data[164], call.data[196], call.data[36], call.data[516], call.data[388], call.data[420], call.data[228]
            call stor1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                 gas 130000 wei
                args address(arg1), call.data[260], 0, call.data[292], call.data[324], call.data[356], call.data[68], call.data[548], call.data[452], call.data[484], (10^18 * arg4 * arg3 / arg2 / 1003 * 10^15) + 1
    else:
        if arg4 * arg3 / arg2 >= (10^18 * arg4 * arg3 / arg2 / 1003 * 10^15) + (3 * 10^15 * 10^18 * arg4 * arg3 / arg2 / 1003 * 10^15 / 10^18):
            if -(ext_call.return_data[0] + (10^18 * arg4 * arg3 / arg2 / 1003 * 10^15) > arg5) + 1:
                call stor1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                     gas 130000 wei
                    args 0, call.data[100], address(arg1), call.data[132], call.data[164], call.data[196], call.data[36], call.data[516], call.data[388], call.data[420], call.data[228]
                call stor1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                     gas 130000 wei
                    args address(arg1), call.data[260], 0, call.data[292], call.data[324], call.data[356], call.data[68], call.data[548], call.data[452], call.data[484], 10^18 * arg4 * arg3 / arg2 / 1003 * 10^15
        else:
            if -(ext_call.return_data[0] + (10^18 * arg4 * arg3 / arg2 / 1003 * 10^15) - 1 > arg5) + 1:
                call stor1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                     gas 130000 wei
                    args 0, call.data[100], address(arg1), call.data[132], call.data[164], call.data[196], call.data[36], call.data[516], call.data[388], call.data[420], call.data[228]
                call stor1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                     gas 130000 wei
                    args address(arg1), call.data[260], 0, call.data[292], call.data[324], call.data[356], call.data[68], call.data[548], call.data[452], call.data[484], (10^18 * arg4 * arg3 / arg2 / 1003 * 10^15) - 1
}

function sub_c8c506a8(?) {
    require stor0 == msg.sender
    require arg2
    hash = sha256hash(stor1, 0, arg7, 0, arg8, arg9, arg10) 
    require sha256hash.result
    call stor1.orderFills(address rg1, bytes32 rg2) with:
         gas 30000 wei
        args call.data[68], hash
    if arg6 * arg3 / arg2 > (10^18 * arg6 * arg3 / arg2 / 1003 * 10^15) + (3 * 10^15 * 10^18 * arg6 * arg3 / arg2 / 1003 * 10^15 / 10^18):
        if -(ext_call.return_data[0] + (10^18 * arg6 * arg3 / arg2 / 1003 * 10^15) + 1 > arg7) + 1:
            hash = sha256hash(stor1, 0, uint64(arg2), arg1, arg3, arg4, arg5) 
            require sha256hash.result
            call stor1.orderFills(address rg1, bytes32 rg2) with:
                 gas 30000 wei
                args call.data[36], hash
            if -(ext_call.return_data[0] + arg6 > arg2) + 1:
                call stor1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                     gas 130000 wei
                    args 0, call.data[100], address(arg1), call.data[132], call.data[164], call.data[196], call.data[36], call.data[516], call.data[388], call.data[420], call.data[228]
                call stor1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                     gas 130000 wei
                    args address(arg1), call.data[260], 0, call.data[292], call.data[324], call.data[356], call.data[68], call.data[548], call.data[452], call.data[484], (10^18 * arg6 * arg3 / arg2 / 1003 * 10^15) + 1
    else:
        if arg6 * arg3 / arg2 >= (10^18 * arg6 * arg3 / arg2 / 1003 * 10^15) + (3 * 10^15 * 10^18 * arg6 * arg3 / arg2 / 1003 * 10^15 / 10^18):
            if -(ext_call.return_data[0] + (10^18 * arg6 * arg3 / arg2 / 1003 * 10^15) > arg7) + 1:
                hash = sha256hash(stor1, 0, uint64(arg2), arg1, arg3, arg4, arg5) 
                require sha256hash.result
                call stor1.orderFills(address rg1, bytes32 rg2) with:
                     gas 30000 wei
                    args call.data[36], hash
                if -(ext_call.return_data[0] + arg6 > arg2) + 1:
                    call stor1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                         gas 130000 wei
                        args 0, call.data[100], address(arg1), call.data[132], call.data[164], call.data[196], call.data[36], call.data[516], call.data[388], call.data[420], call.data[228]
                    call stor1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                         gas 130000 wei
                        args address(arg1), call.data[260], 0, call.data[292], call.data[324], call.data[356], call.data[68], call.data[548], call.data[452], call.data[484], 10^18 * arg6 * arg3 / arg2 / 1003 * 10^15
        else:
            if -(ext_call.return_data[0] + (10^18 * arg6 * arg3 / arg2 / 1003 * 10^15) - 1 > arg7) + 1:
                hash = sha256hash(stor1, 0, uint64(arg2), arg1, arg3, arg4, arg5) 
                require sha256hash.result
                call stor1.orderFills(address rg1, bytes32 rg2) with:
                     gas 30000 wei
                    args call.data[36], hash
                if -(ext_call.return_data[0] + arg6 > arg2) + 1:
                    call stor1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                         gas 130000 wei
                        args 0, call.data[100], address(arg1), call.data[132], call.data[164], call.data[196], call.data[36], call.data[516], call.data[388], call.data[420], call.data[228]
                    call stor1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                         gas 130000 wei
                        args address(arg1), call.data[260], 0, call.data[292], call.data[324], call.data[356], call.data[68], call.data[548], call.data[452], call.data[484], (10^18 * arg6 * arg3 / arg2 / 1003 * 10^15) - 1
}



}
