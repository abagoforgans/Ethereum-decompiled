contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = 0
    return code.data[160 len 7393]
}



// =====================  Runtime code  =====================


address stor0;

function kill() {
    require msg.sender == stor0
    selfdestruct(msg.sender)
}

function _fallback() payable {
  stop
}

function sub_bb53b183(?) {
    return (arg1 / 2)
}

function sub_25946c2a(?) {
    return (arg1 xor 0x909190803560ff16906020019091908035600019169060200190919080356803)
}

function sub_a696e37d(?) {
    return (Mask(160, 96, address(arg1) xor 0x909190803560ff16906020019091908035600019000000000000000000000000) >> 96)
}

function withdraw(uint256 arg1) {
    require msg.sender == stor0
    if arg1 > 0:
        call msg.sender with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function sub_0edc7cc7(?) payable {
    require msg.sender == stor0
    if msg.value > 0:
        require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
        call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.0xd0e30db0 with:
           value msg.value wei
             gas gas_remaining - 9710 wei
        require ext_call.success
}

function sub_eed5577c(?) {
    require msg.sender == stor0
    require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.0x2e1a7d4d with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
}

function sub_0dbf1f17(?) {
    require msg.sender == stor0
    require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.orderFills(address rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args Mask(160, 96, address(arg5) xor 0x909190803560ff16906020019091908035600019000000000000000000000000), arg10 xor 0x909190803560ff16906020019091908035600019169060200190919080356803
    require ext_call.success
    if (arg1 / 2) - ext_call.return_data[0] >= arg9 / 2:
        require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
        call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
             gas gas_remaining - 710 wei
            args 0, 0, Mask(31, 1, arg1), 0, Mask(255, 1, arg2), arg3 / 2, Mask(255, 1, arg4), Mask(160, 96, address(arg5) xor 0x909190803560ff16906020019091908035600019000000000000000000000000), arg6 << 248, arg7 xor 0x909190803560ff16906020019091908035600019169060200190919080356803, arg8 xor 0x909190803560ff16906020019091908035600019169060200190919080356803, arg9 / 2
        require ext_call.success
}

function sub_615f1ef5(?) {
    require msg.sender == stor0
    require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.availableVolume(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10) with:
         gas gas_remaining - 710 wei
        args 0, 0, Mask(31, 1, arg1), address(arg2), Mask(255, 1, arg3), arg4 / 2, Mask(255, 1, arg5), Mask(160, 96, address(arg6) xor 0x909190803560ff16906020019091908035600019000000000000000000000000), arg7 << 248, arg8 xor 0x909190803560ff16906020019091908035600019169060200190919080356803, arg9 xor 0x909190803560ff16906020019091908035600019169060200190919080356803
    require ext_call.success
    if ext_call.return_data[0] < arg10 / 2:
        return 0
    require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
         gas gas_remaining - 710 wei
        args 0, 0, Mask(31, 1, arg1), address(arg2), Mask(255, 1, arg3), arg4 / 2, Mask(255, 1, arg5), Mask(160, 96, address(arg6) xor 0x909190803560ff16906020019091908035600019000000000000000000000000), arg7 << 248, arg8 xor 0x909190803560ff16906020019091908035600019169060200190919080356803, arg9 xor 0x909190803560ff16906020019091908035600019169060200190919080356803, arg10 / 2
    require ext_call.success
    return 1
}

function sub_436d1712(?) {
    require msg.sender == stor0
    require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.orderFills(address rg1, bytes32 rg2) with:
         gas gas_remaining - 710 wei
        args Mask(160, 96, address(call.data[68]) xor 0x909190803560ff16906020019091908035600019000000000000000000000000), call.data[4] xor 0x909190803560ff16906020019091908035600019169060200190919080356803
    require ext_call.success
    if (call.data[516] / 2) - ext_call.return_data[0] >= call.data[644] / 2:
        require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
        call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.orderFills(address rg1, bytes32 rg2) with:
             gas gas_remaining - 710 wei
            args Mask(160, 96, address(call.data[100]) xor 0x909190803560ff16906020019091908035600019000000000000000000000000), call.data[36] xor 0x909190803560ff16906020019091908035600019169060200190919080356803
        require ext_call.success
        if (call.data[356] / 2) - ext_call.return_data[0] >= call.data[484] / 2:
            require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
            call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                 gas gas_remaining - 710 wei
                args 0, Mask(255, 1, call.data[516]), address(call.data[132]), Mask(255, 1, call.data[548]), Mask(255, 1, call.data[580]), Mask(255, 1, call.data[612]), Mask(160, 96, address(call.data[68]) xor 0x909190803560ff16906020019091908035600019000000000000000000000000), arg1 << 248, call.data[228] xor 0x909190803560ff16906020019091908035600019169060200190919080356803, call.data[260] xor 0x909190803560ff16906020019091908035600019169060200190919080356803, call.data[644] / 2
            require ext_call.success
            require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
            call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                 gas gas_remaining - 710 wei
                args address(call.data[132]), Mask(255, 1, call.data[356]), 0, Mask(255, 1, call.data[388]), Mask(255, 1, call.data[420]), Mask(255, 1, call.data[452]), Mask(160, 96, address(call.data[100]) xor 0x909190803560ff16906020019091908035600019000000000000000000000000), arg2 << 248, call.data[292] xor 0x909190803560ff16906020019091908035600019169060200190919080356803, call.data[324] xor 0x909190803560ff16906020019091908035600019169060200190919080356803, call.data[484] / 2
            require ext_call.success
}



}
