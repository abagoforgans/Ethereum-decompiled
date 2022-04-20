contract main {


// =======================  Init code  ======================


mapping of uint8 stor0;

function _fallback() {
    stor0[address(msg.sender)] = 1
    return code.data[118 len 9985]
}



// =====================  Runtime code  =====================


mapping of uint8 stor0;

function kill() {
    require stor0[address(msg.sender)] == 1
    selfdestruct(msg.sender)
}

function _fallback() payable {
  stop
}

function addOwner(address arg1) {
    require stor0[address(msg.sender)] == 1
    stor0[address(arg1)] = 1
}

function withdraw(uint256 arg1) {
    require stor0[address(msg.sender)] == 1
    if arg1 > 0:
        call msg.sender with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function sub_0edc7cc7(?) payable {
    require stor0[address(msg.sender)] == 1
    if msg.value > 0:
        require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
        call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.0xd0e30db0 with:
           value msg.value wei
             gas gas_remaining - 9710 wei
        require ext_call.success
}

function sub_eed5577c(?) {
    require stor0[address(msg.sender)] == 1
    require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.0x2e1a7d4d with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
}

function sub_3734edb4(?) {
    require stor0[address(msg.sender)] == 1
    require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
         gas gas_remaining - 710 wei
        args 0, call.data[452], address(call.data[68]), call.data[484], call.data[516], call.data[548], address(call.data[4]), arg1 << 248, call.data[164], call.data[196], call.data[580]
    require ext_call.success
    require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
         gas gas_remaining - 710 wei
        args address(call.data[68]), call.data[292], 0, call.data[324], call.data[356], call.data[388], address(call.data[36]), arg2 << 248, call.data[228], call.data[260], call.data[420]
    require ext_call.success
}

function sub_0dbf1f17(?) {
    require stor0[address(msg.sender)] == 1
    require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.0x19774d43 with:
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

function sub_cb3d66b7(?) {
    require stor0[address(msg.sender)] == 1
    require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.0x19774d43 with:
         gas gas_remaining - 710 wei
        args Mask(160, 96, address(arg6) xor 0x909190803560ff16906020019091908035600019000000000000000000000000), arg11 xor 0x909190803560ff16906020019091908035600019169060200190919080356803
    require ext_call.success
    if (arg1 / 2) - ext_call.return_data[0] >= arg10 / 2:
        require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
        call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
             gas gas_remaining - 710 wei
            args 0, 0, Mask(31, 1, arg1), address(arg2), Mask(255, 1, arg3), arg4 / 2, Mask(255, 1, arg5), Mask(160, 96, address(arg6) xor 0x909190803560ff16906020019091908035600019000000000000000000000000), arg7 << 248, arg8 xor 0x909190803560ff16906020019091908035600019169060200190919080356803, arg9 xor 0x909190803560ff16906020019091908035600019169060200190919080356803, arg10 / 2
        require ext_call.success
}

function sub_615f1ef5(?) {
    require stor0[address(msg.sender)] == 1
    require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.0xfb6e155f with:
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
    require stor0[address(msg.sender)] == 1
    require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.0x19774d43 with:
         gas gas_remaining - 710 wei
        args Mask(160, 96, address(call.data[68]) xor 0x909190803560ff16906020019091908035600019000000000000000000000000), call.data[4] xor 0x909190803560ff16906020019091908035600019169060200190919080356803
    require ext_call.success
    if (call.data[516] / 2) - ext_call.return_data[0] >= call.data[644] / 2:
        require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
        call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.0x19774d43 with:
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
