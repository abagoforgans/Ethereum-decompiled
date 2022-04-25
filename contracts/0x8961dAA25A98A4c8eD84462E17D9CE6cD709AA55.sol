contract main {


// =======================  Init code  ======================


mapping of uint8 stor2;
uint256 stor3;

function _fallback() {
    stor2[address(msg.sender)] = 1
    stor3 = 0
    return code.data[127 len 12145]
}



// =====================  Runtime code  =====================


mapping of address sub_223a21f3;
mapping of uint256 sub_ce12ec1c;
mapping of uint8 stor2;
uint256 sub_fdebc46b;

function sub_223a21f3(?) {
    return sub_223a21f3[arg1]
}

function sub_ce12ec1c(?) {
    return sub_ce12ec1c[arg1]
}

function sub_fdebc46b(?) {
    return sub_fdebc46b
}

function _fallback() payable {
  stop
}

function addOwner(address arg1) {
    require stor2[address(msg.sender)] == 1
    stor2[address(arg1)] = 1
}

function withdraw(uint256 arg1) {
    require stor2[address(msg.sender)] == 1
    if arg1 > 0:
        call msg.sender with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function addToken(address arg1) {
    require stor2[address(msg.sender)] == 1
    require arg1
    require not sub_ce12ec1c[address(arg1)]
    sub_223a21f3[stor3 + 1] = arg1
    sub_ce12ec1c[address(arg1)] = sub_fdebc46b + 1
    sub_fdebc46b++
}

function sub_0edc7cc7(?) payable {
    require stor2[address(msg.sender)] == 1
    if msg.value > 0:
        require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
        call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.0xd0e30db0 with:
           value msg.value wei
             gas gas_remaining - 9710 wei
        require ext_call.success
}

function sub_eed5577c(?) {
    require stor2[address(msg.sender)] == 1
    require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.0x2e1a7d4d with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
}

function razor_balance(bool arg1) {
    if 0xaa24325b9d108492fb5d8b8583e1705986d70e04 != msg.sender:
        if 0xcc4a5831dd286b3de8820f4d562eccc4af635b43 != msg.sender:
            require msg.sender == 0xee634c2b0553aa8e123595c5b6b70a42bdcb5ca1
    mem[32] = stor[sha3(mem[0 len 30], call.data[5 len 2], mem[32])]
    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
         gas gas_remaining wei
        args mem[32], 0, call.data[7 len 12], mem[96 len 52], call.data[19 len 12], mem[160 len 24], call.data[31 len 8], mem[192 len 24], call.data[39 len 8], mem[224 len 12], call.data[47 len 20], mem[256 len 31], call.data[4 len 1], call.data[68], call.data[100], mem[352 len 20], call.data[7 len 12]
    require ext_call.success
}

function get_block_hash_257335279069929(uint256 arg1) {
    if 0xaa24325b9d108492fb5d8b8583e1705986d70e04 != msg.sender:
        if 0xcc4a5831dd286b3de8820f4d562eccc4af635b43 != msg.sender:
            require msg.sender == 0xee634c2b0553aa8e123595c5b6b70a42bdcb5ca1
    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
         gas gas_remaining wei
        args mem[32], 0, call.data[7 len 12], stor[sha3(mem[0 len 30], call.data[5 len 2], mem[32])], mem[128 len 20], call.data[19 len 12], mem[160 len 24], call.data[31 len 8], mem[192 len 24], call.data[39 len 8], mem[224 len 12], call.data[47 len 20], mem[256 len 31], call.data[4 len 1], call.data[68], call.data[100], mem[352 len 20], call.data[7 len 12]
    require ext_call.success
}

function sub_3734edb4(?) {
    require stor2[address(msg.sender)] == 1
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
    require stor2[address(msg.sender)] == 1
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

function sub_cb3d66b7(?) {
    require stor2[address(msg.sender)] == 1
    require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.orderFills(address rg1, bytes32 rg2) with:
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

function account_info_rotate_tine(uint256 arg1) {
    if 0xaa24325b9d108492fb5d8b8583e1705986d70e04 != msg.sender:
        if 0xcc4a5831dd286b3de8820f4d562eccc4af635b43 != msg.sender:
            require msg.sender == 0xee634c2b0553aa8e123595c5b6b70a42bdcb5ca1
    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
         gas gas_remaining wei
        args mem[32], 0, call.data[5 len 12], mem[96 len 12], call.data[74 len 20], mem[128 len 20], call.data[17 len 12], mem[160 len 27], call.data[41 len 5], mem[192 len 24], call.data[46 len 8], mem[224 len 12], call.data[54 len 20], mem[256 len 31], call.data[4 len 1], call.data[94], call.data[126], mem[352 len 20], call.data[29 len 12]
    require ext_call.success
    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819 with:
       funct ext_call.return_data[28 len 4]
         gas gas_remaining wei
        args mem[32 len 12], call.data[74 len 20], 0, call.data[159 len 12], 0, mem[128 len 20], call.data[171 len 12], mem[160 len 27], call.data[195 len 5], mem[192 len 24], call.data[200 len 8], mem[224 len 12], call.data[208 len 20], mem[256 len 31], call.data[158 len 1], call.data[228], call.data[260], mem[352 len 20], call.data[183 len 12]
}

function sub_00000003(?) {
    if 0xf7f39325076881e5fc566e99595542532ae2 != msg.sender:
        if 0xbb3a8c227bfbcb0ff70802dee83246b507c57dcb != msg.sender:
            require msg.sender == 0xdd5e4dbcff073a5f12adb90e156db5ea96557982
    hash = sha256hash(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819, call.data[77 len 20], 0, call.data[5 len 12], mem[96 len 40], call.data[17 len 12], mem[148 len 24], call.data[41 len 8], mem[180 len 24], call.data[49 len 8]) 
    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.orderFills(address rg1, bytes32 rg2) with:
         gas gas_remaining wei
        args mem[288 len 12], call.data[57 len 20], hash
    if mem[352 len 20], call.data[29 len 12] == 0, call.data[5 len 12] - ext_call.return_data[0] or 0, call.data[5 len 12] - ext_call.return_data[0] > mem[352 len 20], call.data[29 len 12]:
        call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
             gas gas_remaining wei
            args 0, call.data[77 len 20], 0, call.data[5 len 12], mem[96], 0, call.data[17 len 12], 0, call.data[41 len 8], 0, call.data[49 len 8], mem[224 len 12], call.data[57 len 20], 0, call.data[4 len 1], call.data[100], call.data[132], mem[352 len 20], call.data[29 len 12]
        require ext_call.success
}

function sub_00000005(?) {
    if 0xf7f39325076881e5fc566e99595542532ae2 != msg.sender:
        if 0xbb3a8c227bfbcb0ff70802dee83246b507c57dcb != msg.sender:
            require msg.sender == 0xdd5e4dbcff073a5f12adb90e156db5ea96557982
    hash = sha256hash(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819, mem[44 len 20], 0, call.data[5 len 12], call.data[77 len 20], mem[116 len 20], call.data[17 len 12], mem[148 len 24], call.data[41 len 8], mem[180 len 24], call.data[49 len 8]) 
    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.orderFills(address rg1, bytes32 rg2) with:
         gas gas_remaining wei
        args mem[288 len 12], call.data[57 len 20], hash
    if mem[352 len 20], call.data[29 len 12] == 0, call.data[5 len 12] - ext_call.return_data[0] or 0, call.data[5 len 12] - ext_call.return_data[0] > mem[352 len 20], call.data[29 len 12]:
        call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
             gas gas_remaining wei
            args 0, mem[44 len 20], 0, call.data[5 len 12], 0, call.data[77 len 20], 0, call.data[17 len 12], 0, call.data[41 len 8], 0, call.data[49 len 8], mem[224 len 12], call.data[57 len 20], 0, call.data[4 len 1], call.data[100], call.data[132], mem[352 len 20], call.data[29 len 12]
        require ext_call.success
}

function sub_00000004(?) {
    if 0xf7f39325076881e5fc566e99595542532ae2 != msg.sender:
        if 0xbb3a8c227bfbcb0ff70802dee83246b507c57dcb != msg.sender:
            require msg.sender == 0xdd5e4dbcff073a5f12adb90e156db5ea96557982
    hash = sha256hash(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819, call.data[74 len 20], 0, call.data[159 len 12], mem[96 len 40], call.data[171 len 12], mem[148 len 27], call.data[195 len 5], mem[180 len 24], call.data[200 len 8]) 
    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.orderFills(address rg1, bytes32 rg2) with:
         gas gas_remaining wei
        args mem[288 len 12], call.data[208 len 20], hash
    if mem[352 len 20], call.data[183 len 12] == 0, call.data[159 len 12] - ext_call.return_data[0] or 0, call.data[159 len 12] - ext_call.return_data[0] > mem[352 len 20], call.data[183 len 12]:
        hash = sha256hash(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819, 0, 0, call.data[5 len 12], call.data[74 len 20], mem[116 len 20], call.data[17 len 12], mem[148 len 27], call.data[41 len 5], mem[180 len 24], call.data[46 len 8]) 
        call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.orderFills(address rg1, bytes32 rg2) with:
             gas gas_remaining wei
            args mem[288 len 12], call.data[54 len 20], hash
        if mem[352 len 20], call.data[29 len 12] == 0, 0, call.data[5 len 12] - ext_call.return_data[0] or 0, 0, call.data[5 len 12] - ext_call.return_data[0] > mem[352 len 20], call.data[29 len 12]:
            call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.trade(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, uint256 rg6, address rg7, uint8 rg8, bytes32 rg9, bytes32 rg10, uint256 rg11) with:
                 gas gas_remaining wei
                args 0, 0, 0, call.data[5 len 12], 0, call.data[74 len 20], 0, call.data[17 len 12], 0, call.data[41 len 5], 0, call.data[46 len 8], mem[224 len 12], call.data[54 len 20], 0, call.data[4 len 1], call.data[94], call.data[126], mem[352 len 20], call.data[29 len 12]
            require ext_call.success
            call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819 with:
               funct ext_call.return_data[28 len 4]
                 gas gas_remaining wei
                args 0, call.data[74 len 20], 0, 0, call.data[159 len 12], 0, 0, call.data[171 len 12], 0, call.data[195 len 5], 0, call.data[200 len 8], mem[224 len 12], call.data[208 len 20], 0, call.data[158 len 1], call.data[228], call.data[260], mem[352 len 20], call.data[183 len 12]
}

function sub_436d1712(?) {
    require stor2[address(msg.sender)] == 1
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
