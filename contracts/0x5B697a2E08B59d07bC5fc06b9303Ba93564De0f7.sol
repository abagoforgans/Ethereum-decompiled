contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor1 = 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819
    require not msg.value
    stor0 = msg.sender
    return code.data[179 len 4286]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;

function withdraw(uint256 arg1) {
    require msg.sender == stor0
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) {
    require msg.sender == stor0
    require ext_code.size(stor1)
    call stor1.availableVolume(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10) with:
         gas gas_remaining - 710 wei
        args 0, 0, uint32(arg2), address(arg3), arg4, arg5, arg6, address(arg7), arg8 << 248, arg9, arg10
    require ext_call.success
    if ext_call.return_data[0] > 0:
        require ext_code.size(stor1)
        call stor1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
             gas gas_remaining - 710 wei
            args 0, 0, uint32(arg2), address(arg3), arg4, arg5, arg6, address(arg7), arg8 << 248, arg9, arg10, ext_call.return_data[0]
        require ext_call.success
}

function sub_4c91c785(?) {
    require msg.sender == stor0
    require ext_code.size(stor1)
    call stor1.availableVolume(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10) with:
         gas gas_remaining - 710 wei
        args address(call.data[4]), call.data[68], address(call.data[132]), call.data[196], call.data[260], call.data[324], address(call.data[388]), call.data[452] << 248, call.data[516], call.data[580]
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.availableVolume(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10) with:
         gas gas_remaining - 710 wei
        args address(call.data[36]), call.data[100], address(call.data[164]), call.data[228], call.data[292], call.data[356], address(call.data[420]), call.data[484] << 248, call.data[548], call.data[612]
    require ext_call.success
    if ext_call.return_data[0] > 0:
        require ext_code.size(stor1)
        call stor1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
             gas gas_remaining - 710 wei
            args address(call.data[4]), call.data[68], address(call.data[132]), call.data[196], call.data[260], call.data[324], address(call.data[388]), call.data[452] << 248, call.data[516], call.data[580], ext_call.return_data[0]
        require ext_call.success
        require ext_code.size(stor1)
        call stor1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
             gas gas_remaining - 710 wei
            args address(call.data[36]), call.data[100], address(call.data[164]), call.data[228], call.data[292], call.data[356], address(call.data[420]), call.data[484] << 248, call.data[548], call.data[612], ext_call.return_data[0]
        require ext_call.success
}

function _fallback() payable {
    if trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) == uint32(call.func_hash):
        require not msg.value
        require msg.sender == stor0
        require ext_code.size(stor1)
        call stor1.availableVolume(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10) with:
             gas gas_remaining - 710 wei
            args 0, 0, arg2, address(arg3), arg4, arg5, arg6, address(arg7), arg8 << 248, arg9, arg10
        require ext_call.success
        if ext_call.return_data[0] > 0:
            require ext_code.size(stor1)
            call stor1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                 gas gas_remaining - 710 wei
                args 0, 0, arg2, address(arg3), arg4, arg5, arg6, address(arg7), arg8 << 248, arg9, arg10, ext_call.return_data[0]
            require ext_call.success
    else:
        if unknown_0x2e1a7d4d(?????) == uint32(call.func_hash):
            require not msg.value
            require msg.sender == stor0
            call msg.sender with:
               value arg1 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        else:
            require unknown_0x4c91c785(?????) == uint32(call.func_hash)
            require not msg.value
            require msg.sender == stor0
            require ext_code.size(stor1)
            call stor1.availableVolume(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10) with:
                 gas gas_remaining - 710 wei
                args address(call.data[4]), call.data[68], address(call.data[132]), call.data[196], call.data[260], call.data[324], address(call.data[388]), call.data[452] << 248, call.data[516], call.data[580]
            require ext_call.success
            require ext_code.size(stor1)
            call stor1.availableVolume(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10) with:
                 gas gas_remaining - 710 wei
                args address(call.data[36]), call.data[100], address(call.data[164]), call.data[228], call.data[292], call.data[356], address(call.data[420]), call.data[484] << 248, call.data[548], call.data[612]
            require ext_call.success
            if ext_call.return_data[0] > 0:
                require ext_code.size(stor1)
                call stor1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                     gas gas_remaining - 710 wei
                    args address(call.data[4]), call.data[68], address(call.data[132]), call.data[196], call.data[260], call.data[324], address(call.data[388]), call.data[452] << 248, call.data[516], call.data[580], ext_call.return_data[0]
                require ext_call.success
                require ext_code.size(stor1)
                call stor1.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                     gas gas_remaining - 710 wei
                    args address(call.data[36]), call.data[100], address(call.data[164]), call.data[228], call.data[292], call.data[356], address(call.data[420]), call.data[484] << 248, call.data[548], call.data[612], ext_call.return_data[0]
                require ext_call.success
}



}
