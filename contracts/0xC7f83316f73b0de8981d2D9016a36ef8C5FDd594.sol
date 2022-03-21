contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor12;

function _fallback() payable {
    stor2 = 0x2c2e3baa2191cf325a28a01ff42340f2ae677572
    stor3 = 10^17
    stor4 = 5 * 10^14
    stor12 = 3
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[102 len 4101]
}



// =====================  Runtime code  =====================


address stor0;
array of uint8 stor1;
array of uint256 stor2;
array of uint256 stor3;
uint256 stor4;
array of struct stor5;
uint256 stor6;
bool stor7;
uint256 stor7; offset 1
uint256 stor7;
uint256 stor8;
uint256 stor9;
array of uint256 stor10;
array of struct stor11;
uint256 stor12;
uint8 stor175B;
uint8 stor175B; offset 160
array of struct stor39249365189697262212649556357205408732595607600233223271220075824908968655314;
uint8 storC65A; offset 160

function _fallback() payable {
  stop
}

function sub_a9d337dd(?) payable {
    if stor0 != msg.sender:
        require uint8(stor1[address(msg.sender)])
    stor12 = arg1
}

function addToWhitelist(address arg1) payable {
    if stor0 != msg.sender:
        require uint8(stor1[address(msg.sender)])
    uint8(stor1[address(arg1)]) = 1
}

function deleteFromWhitelist(address arg1) payable {
    if stor0 != msg.sender:
        require uint8(stor1[address(msg.sender)])
    uint8(stor1[address(arg1)]) = 0
}

function cashOut() payable {
    if stor0 != msg.sender:
        require uint8(stor1[address(msg.sender)])
    call stor0 with:
       value eth.balance(this.address) wei
         gas 0 wei
}

function setNickname(string arg1) payable {
    if stor0 != msg.sender:
        require uint8(stor1[address(msg.sender)])
    call address(stor2.length).0x1c5d9faa with:
         gas gas_remaining - 25050 wei
        args Array(len=arg1.length, data=arg1[all])
    require ext_call.success
}

function sub_59f6d3af(?) payable {
    mem[64] = 96
    if stor0 == msg.sender:
        call address(stor2.length).gameStats() with:
             gas gas_remaining - 25050 wei
        require ext_call.success
        stor6 = ext_call.return_data[32]
        uint256(stor7.field_0) = ext_call.return_data[0]
        call address(stor2.length).gameSettings() with:
             gas gas_remaining - 25050 wei
        stor9 = ext_call.return_data[96]
        stor8 = ext_call.return_data[64]
        stor3.length = ext_call.return_data[0]
        stor10.length = 0
        if not stor10.length > 0:
            stor11.length = 0
            if not stor11.length > 0:
                idx = 0
                s = 0
                s = 0
                while idx < bool(stor7.field_0):
                    call address(stor2.length).getMatchers_by_index(uint256 rg1) with:
                         gas gas_remaining - 25050 wei
                        args idx
                    require ext_call.success
                    stor10.length = idx + 1
                    if not stor10.length > idx + 1:
                        _1480 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1480] = ext_call.return_data[0]
                        mem[_1480 + 32] = ext_call.return_data[32]
                        require idx < stor10.length
                        mem[0] = 10
                        address(stor56C6[idx].field_0) = address(ext_call.return_data[0])
                        Mask(96, 0, stor56C6[idx].field_160) = Mask(96, 0, ext_call.return_data[32])
                        Mask(88, 0, stor56C6[idx].field_168) = Mask(88, 168, ext_call.return_data[0]) >> 168
                        call address(stor2.length).getContrarians_by_index(uint256 rg1) with:
                             gas gas_remaining - 25050 wei
                            args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        require ext_call.success
                        stor11.length = idx + 1
                        if not stor11.length > idx + 1:
                            _1544 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1544] = ext_call.return_data[0]
                            mem[_1544 + 32] = ext_call.return_data[32]
                        else:
                            mem[0] = 11
                            s = idx + code.data[4069 len 32] + 1
                            while code.data[4069 len 32] + stor11.length > s:
                                Mask(168, 0, stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            _2912 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2912] = ext_call.return_data[0]
                            mem[_2912 + 32] = ext_call.return_data[32]
                    else:
                        mem[0] = 10
                        s = idx + 0x56c65a7bb8d6351c1cf70c95a316cc6a92839c986682d98bc35f958f4883f9d3
                        while stor10.length + 0x56c65a7bb8d6351c1cf70c95a316cc6a92839c986682d98bc35f958f4883f9d2 > s:
                            Mask(168, 0, stor[s].field_0) = 0
                            s = s + 1
                            continue 
                        _2913 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2913] = ext_call.return_data[0]
                        mem[_2913 + 32] = ext_call.return_data[32]
                        require idx < stor10.length
                        mem[0] = 10
                        address(stor56C6[idx].field_0) = address(ext_call.return_data[0])
                        Mask(96, 0, stor56C6[idx].field_160) = Mask(96, 0, ext_call.return_data[32])
                        Mask(88, 0, stor56C6[idx].field_168) = Mask(88, 168, ext_call.return_data[0]) >> 168
                        call address(stor2.length).getContrarians_by_index(uint256 rg1) with:
                             gas gas_remaining - 25050 wei
                            args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        require ext_call.success
                        stor11.length = idx + 1
                        if not stor11.length > idx + 1:
                            _3033 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3033] = ext_call.return_data[0]
                            mem[_3033 + 32] = ext_call.return_data[32]
                        else:
                            mem[0] = 11
                            s = idx + code.data[4069 len 32] + 1
                            while code.data[4069 len 32] + stor11.length > s:
                                Mask(168, 0, stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            _4250 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4250] = ext_call.return_data[0]
                            mem[_4250 + 32] = ext_call.return_data[32]
                    require idx < stor11.length
                    mem[0] = 11
                    address(stor[code.data[4069 len 32] + idx].field_0) = address(ext_call.return_data[0])
                    Mask(96, 0, stor[code.data[4069 len 32] + idx].field_160) = Mask(96, 0, ext_call.return_data[32])
                    Mask(88, 0, stor[code.data[4069 len 32] + idx].field_168) = Mask(88, 168, ext_call.return_data[0]) >> 168
                    idx = idx + 1
                    s = ext_call.return_data[32]
                    s = ext_call.return_data[0]
                    continue 
                if ext_call.return_data[96]:
                    _1470 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_1470] = 0
                    mem[_1470 + 32] = 0
                    mem[_1470 + 64] = 0
                    stor5.length = 0
                    idx = 0
                    while 4 * stor5.length > idx:
                        Mask(168, 0, stor5[idx].field_0) = 0
                        uint256(stor5[idx].field_256) = 0
                        Mask(168, 0, stor5[idx].field_512) = 0
                        uint256(stor5[idx].field_768) = 0
                        idx = idx + 1
                        continue 
                    s = _1470
                    s = 0
                    s = 0
                    s = 0
                    s = 0
                    idx = 0
                    s = 0
                    while uint8(idx) < uint255(stor7.field_1):
                        if (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) >= uint255(stor7.field_1):
                            _4278 = mem[64]
                            mem[64] = mem[64] + 192
                            require idx < stor10.length
                            mem[0] = 10
                            mem[_4278] = address(stor56C6[idx].field_0)
                            mem[_4278 + 32] = uint8(stor56C6[idx].field_160)
                            mem[_4278 + 64] = 2 * stor3.length - (stor4 * uint8(idx))
                            require (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1) < stor11.length
                            mem[_4278 + 96] = address(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)].field_0)
                            mem[_4278 + 128] = uint8(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)].field_160)
                            mem[_4278 + 160] = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4) + (uint255(stor7.field_1) * stor4)
                            stor5.length++
                            if not stor5.length <= stor5.length + 1:
                                s = (4 * stor5.length + 1) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0
                                while (4 * stor5.length) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0 > s:
                                    Mask(168, 0, stor[s].field_0) = 0
                                    uint256(stor1[s]) = 0
                                    Mask(168, 0, stor2[s]) = 0
                                    stor3[s] = 0
                                    s = s + 1
                                    continue 
                            address(stor5[stor5.length].field_0) = address(stor56C6[idx].field_0)
                            Mask(96, 0, stor5[stor5.length].field_160) = uint8(stor56C6[idx].field_160)
                            Mask(88, 0, stor5[stor5.length].field_168) = 0
                            bool(stor5[stor5.length].field_256) = 0
                            uint255(stor5[stor5.length].field_257) = uint255(stor3.length - (stor4 * uint8(idx)))
                            address(stor5[stor5.length].field_512) = address(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)].field_0)
                            Mask(96, 0, stor5[stor5.length].field_672) = uint8(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)].field_160)
                            Mask(88, 0, stor5[stor5.length].field_680) = 0
                            bool(stor5[stor5.length].field_768) = 0
                            uint255(stor5[stor5.length].field_769) = uint255(stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4) + (uint255(stor7.field_1) * stor4))
                            require (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1) < stor11.length
                            require idx < stor10.length
                            if uint8(stor56C6[idx].field_160) != uint8(stor[(('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1) + code.data[4069 len 32]].field_160):
                                require (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1) < stor11.length
                                mem[0] = address(stor[(('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1) + code.data[4069 len 32]].field_0)
                                mem[32] = 1
                                if not uint8(stor1[address(stor[(('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1) + code.data[4069 len 32]].field_0)]):
                                    s = _4278
                                    s = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4) + (uint255(stor7.field_1) * stor4)
                                    s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) + (uint8(idx) * stor4) - (uint255(stor7.field_1) * stor4)
                                    s = 2 * stor3.length - (stor4 * uint8(idx))
                                    s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)
                                    idx = idx + 1
                                    s = 0
                                    continue 
                            else:
                                require idx < stor10.length
                                mem[0] = address(stor56C6[idx].field_0)
                                mem[32] = 1
                                if not uint8(stor1[address(stor56C6[idx].field_0)]):
                                    s = _4278
                                    s = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4) + (uint255(stor7.field_1) * stor4)
                                    s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) + (uint8(idx) * stor4) - (uint255(stor7.field_1) * stor4)
                                    s = 2 * stor3.length - (stor4 * uint8(idx))
                                    s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)
                                    idx = idx + 1
                                    s = 0
                                    continue 
                            s = _4278
                            s = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4) + (uint255(stor7.field_1) * stor4)
                            s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) + (uint8(idx) * stor4) - (uint255(stor7.field_1) * stor4)
                            s = 2 * stor3.length - (stor4 * uint8(idx))
                            s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)
                            idx = idx + 1
                            s = 1
                            continue 
                        _4279 = mem[64]
                        mem[64] = mem[64] + 192
                        require idx < stor10.length
                        mem[0] = 10
                        mem[_4279] = address(stor56C6[idx].field_0)
                        mem[_4279 + 32] = uint8(stor56C6[idx].field_160)
                        mem[_4279 + 64] = 2 * stor3.length - (stor4 * uint8(idx))
                        require (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) < stor11.length
                        mem[_4279 + 96] = address(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx)].field_0)
                        mem[_4279 + 128] = uint8(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx)].field_160)
                        mem[_4279 + 160] = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4)
                        stor5.length++
                        if not stor5.length <= stor5.length + 1:
                            s = (4 * stor5.length + 1) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0
                            while (4 * stor5.length) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0 > s:
                                Mask(168, 0, stor[s].field_0) = 0
                                uint256(stor1[s]) = 0
                                Mask(168, 0, stor2[s]) = 0
                                stor3[s] = 0
                                s = s + 1
                                continue 
                        address(stor5[stor5.length].field_0) = address(stor56C6[idx].field_0)
                        Mask(96, 0, stor5[stor5.length].field_160) = uint8(stor56C6[idx].field_160)
                        Mask(88, 0, stor5[stor5.length].field_168) = 0
                        bool(stor5[stor5.length].field_256) = 0
                        uint255(stor5[stor5.length].field_257) = uint255(stor3.length - (stor4 * uint8(idx)))
                        address(stor5[stor5.length].field_512) = address(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx)].field_0)
                        Mask(96, 0, stor5[stor5.length].field_672) = uint8(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx)].field_160)
                        Mask(88, 0, stor5[stor5.length].field_680) = 0
                        bool(stor5[stor5.length].field_768) = 0
                        uint255(stor5[stor5.length].field_769) = uint255(stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4))
                        require (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) < stor11.length
                        require idx < stor10.length
                        if uint8(stor56C6[idx].field_160) != uint8(stor[(('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) + code.data[4069 len 32]].field_160):
                            require (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) < stor11.length
                            mem[0] = address(stor[(('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) + code.data[4069 len 32]].field_0)
                            mem[32] = 1
                            if not uint8(stor1[address(stor[(('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) + code.data[4069 len 32]].field_0)]):
                                s = _4279
                                s = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4)
                                s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) + (uint8(idx) * stor4)
                                s = 2 * stor3.length - (stor4 * uint8(idx))
                                s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx)
                                idx = idx + 1
                                s = 0
                                continue 
                        else:
                            require idx < stor10.length
                            mem[0] = address(stor56C6[idx].field_0)
                            mem[32] = 1
                            if not uint8(stor1[address(stor56C6[idx].field_0)]):
                                s = _4279
                                s = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4)
                                s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) + (uint8(idx) * stor4)
                                s = 2 * stor3.length - (stor4 * uint8(idx))
                                s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx)
                                idx = idx + 1
                                s = 0
                                continue 
                        s = _4279
                        s = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4)
                        s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) + (uint8(idx) * stor4)
                        s = 2 * stor3.length - (stor4 * uint8(idx))
                        s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx)
                        idx = idx + 1
                        s = 1
                        continue 
                    uint256(stor7.field_0) = 0
                    stor10.length = 0
                    idx = 0x56c65a7bb8d6351c1cf70c95a316cc6a92839c986682d98bc35f958f4883f9d2
                    while stor10.length + 0x56c65a7bb8d6351c1cf70c95a316cc6a92839c986682d98bc35f958f4883f9d2 > idx:
                        Mask(168, 0, stor[idx].field_0) = 0
                        idx = idx + 1
                        continue 
                    stor11.length = 0
                    idx = code.data[4069 len 32]
                    while code.data[4069 len 32] + stor11.length > idx:
                        Mask(168, 0, stor[idx].field_0) = 0
                        idx = idx + 1
                        continue 
                    require s >= stor12
                    call address(stor2.length).Play(bool rg1) with:
                       value stor3.length wei
                         gas gas_remaining - 34050 wei
                        args 0
                    require ext_call.success
                else:
                    if 2 == uint256(stor7.field_0):
                        require 0 < stor11.length
                        call address(stor2.length).Play(bool rg1) with:
                           value stor3.length wei
                             gas gas_remaining - 34050 wei
                            args uint8(stor[code.data[4069 len 32]].field_0)
                        require ext_call.success
                    else:
                        if 4 == uint256(stor7.field_0):
                            require 0 < stor11.length
                            require 1 < stor11.length
                            if uint8(stor175B.field_160) == uint8(stor[code.data[4069 len 32]].field_160):
                                require 1 < stor11.length
                                call address(stor2.length).Play(bool rg1) with:
                                   value stor3.length wei
                                     gas gas_remaining - 34050 wei
                                    args uint8(stor175B.field_0)
                                require ext_call.success
                        else:
                            if 5 == uint256(stor7.field_0):
                                stor11.length++
                                if not stor11.length <= stor11.length + 1:
                                    idx = stor11.length + 1
                                    while stor11.length > idx:
                                        Mask(168, 0, stor11[idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                require 2 < stor10.length
                                address(stor11[stor11.length].field_0) = msg.sender
                                Mask(96, 0, stor11[stor11.length].field_160) = Mask(96, 0, not storC65A)
                                Mask(88, 0, stor11[stor11.length].field_168) = Mask(88, 168, msg.sender) >> 168
                                stor6++
                                uint256(stor7.field_0)++
                                if uint256(stor7.field_0) != stor9:
                                    require 1 == (sha3(block.hash(block.number - 1), stor6) % (stor9 - uint256(stor7.field_0) / 2) + 1) + 1
                                require 2 < stor10.length
                                call address(stor2.length).Play(bool rg1) with:
                                   value stor3.length wei
                                     gas gas_remaining - 34050 wei
                                    args not storC65A
                                require ext_call.success
            else:
                mem[0] = 11
                idx = code.data[4069 len 32]
                while code.data[4069 len 32] + stor11.length > idx:
                    Mask(168, 0, stor[idx].field_0) = 0
                    idx = idx + 1
                    continue 
                idx = 0
                s = 0
                s = 0
                while idx < bool(stor7.field_0):
                    call address(stor2.length).getMatchers_by_index(uint256 rg1) with:
                         gas gas_remaining - 25050 wei
                        args idx
                    require ext_call.success
                    stor10.length = idx + 1
                    if not stor10.length > idx + 1:
                        _2953 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2953] = ext_call.return_data[0]
                        mem[_2953 + 32] = ext_call.return_data[32]
                        require idx < stor10.length
                        mem[0] = 10
                        address(stor56C6[idx].field_0) = address(ext_call.return_data[0])
                        Mask(96, 0, stor56C6[idx].field_160) = Mask(96, 0, ext_call.return_data[32])
                        Mask(88, 0, stor56C6[idx].field_168) = Mask(88, 168, ext_call.return_data[0]) >> 168
                        call address(stor2.length).getContrarians_by_index(uint256 rg1) with:
                             gas gas_remaining - 25050 wei
                            args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        require ext_call.success
                        stor11.length = idx + 1
                        if not stor11.length > idx + 1:
                            _3084 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3084] = ext_call.return_data[0]
                            mem[_3084 + 32] = ext_call.return_data[32]
                        else:
                            mem[0] = 11
                            s = idx + code.data[4069 len 32] + 1
                            while code.data[4069 len 32] + stor11.length > s:
                                Mask(168, 0, stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            _4253 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4253] = ext_call.return_data[0]
                            mem[_4253 + 32] = ext_call.return_data[32]
                    else:
                        mem[0] = 10
                        s = idx + 0x56c65a7bb8d6351c1cf70c95a316cc6a92839c986682d98bc35f958f4883f9d3
                        while stor10.length + 0x56c65a7bb8d6351c1cf70c95a316cc6a92839c986682d98bc35f958f4883f9d2 > s:
                            Mask(168, 0, stor[s].field_0) = 0
                            s = s + 1
                            continue 
                        _4254 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4254] = ext_call.return_data[0]
                        mem[_4254 + 32] = ext_call.return_data[32]
                        require idx < stor10.length
                        mem[0] = 10
                        address(stor56C6[idx].field_0) = address(ext_call.return_data[0])
                        Mask(96, 0, stor56C6[idx].field_160) = Mask(96, 0, ext_call.return_data[32])
                        Mask(88, 0, stor56C6[idx].field_168) = Mask(88, 168, ext_call.return_data[0]) >> 168
                        call address(stor2.length).getContrarians_by_index(uint256 rg1) with:
                             gas gas_remaining - 25050 wei
                            args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        require ext_call.success
                        stor11.length = idx + 1
                        if not stor11.length > idx + 1:
                            _4407 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4407] = ext_call.return_data[0]
                            mem[_4407 + 32] = ext_call.return_data[32]
                        else:
                            mem[0] = 11
                            s = idx + code.data[4069 len 32] + 1
                            while code.data[4069 len 32] + stor11.length > s:
                                Mask(168, 0, stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            _5350 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5350] = ext_call.return_data[0]
                            mem[_5350 + 32] = ext_call.return_data[32]
                    require idx < stor11.length
                    mem[0] = 11
                    address(stor[code.data[4069 len 32] + idx].field_0) = address(ext_call.return_data[0])
                    Mask(96, 0, stor[code.data[4069 len 32] + idx].field_160) = Mask(96, 0, ext_call.return_data[32])
                    Mask(88, 0, stor[code.data[4069 len 32] + idx].field_168) = Mask(88, 168, ext_call.return_data[0]) >> 168
                    idx = idx + 1
                    s = ext_call.return_data[32]
                    s = ext_call.return_data[0]
                    continue 
                if ext_call.return_data[96]:
                    _2914 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_2914] = 0
                    mem[_2914 + 32] = 0
                    mem[_2914 + 64] = 0
                    stor5.length = 0
                    idx = 0
                    while 4 * stor5.length > idx:
                        Mask(168, 0, stor5[idx].field_0) = 0
                        uint256(stor5[idx].field_256) = 0
                        Mask(168, 0, stor5[idx].field_512) = 0
                        uint256(stor5[idx].field_768) = 0
                        idx = idx + 1
                        continue 
                    s = _2914
                    s = 0
                    s = 0
                    s = 0
                    s = 0
                    idx = 0
                    s = 0
                    while uint8(idx) < uint255(stor7.field_1):
                        if (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) >= uint255(stor7.field_1):
                            _5382 = mem[64]
                            mem[64] = mem[64] + 192
                            require idx < stor10.length
                            mem[0] = 10
                            mem[_5382] = address(stor56C6[idx].field_0)
                            mem[_5382 + 32] = uint8(stor56C6[idx].field_160)
                            mem[_5382 + 64] = 2 * stor3.length - (stor4 * uint8(idx))
                            require (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1) < stor11.length
                            mem[_5382 + 96] = address(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)].field_0)
                            mem[_5382 + 128] = uint8(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)].field_160)
                            mem[_5382 + 160] = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4) + (uint255(stor7.field_1) * stor4)
                            stor5.length++
                            if not stor5.length <= stor5.length + 1:
                                s = (4 * stor5.length + 1) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0
                                while (4 * stor5.length) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0 > s:
                                    Mask(168, 0, stor[s].field_0) = 0
                                    uint256(stor1[s]) = 0
                                    Mask(168, 0, stor2[s]) = 0
                                    stor3[s] = 0
                                    s = s + 1
                                    continue 
                            address(stor5[stor5.length].field_0) = address(stor56C6[idx].field_0)
                            Mask(96, 0, stor5[stor5.length].field_160) = uint8(stor56C6[idx].field_160)
                            Mask(88, 0, stor5[stor5.length].field_168) = 0
                            bool(stor5[stor5.length].field_256) = 0
                            uint255(stor5[stor5.length].field_257) = uint255(stor3.length - (stor4 * uint8(idx)))
                            address(stor5[stor5.length].field_512) = address(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)].field_0)
                            Mask(96, 0, stor5[stor5.length].field_672) = uint8(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)].field_160)
                            Mask(88, 0, stor5[stor5.length].field_680) = 0
                            bool(stor5[stor5.length].field_768) = 0
                            uint255(stor5[stor5.length].field_769) = uint255(stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4) + (uint255(stor7.field_1) * stor4))
                            require (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1) < stor11.length
                            require idx < stor10.length
                            if uint8(stor56C6[idx].field_160) != uint8(stor[(('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1) + code.data[4069 len 32]].field_160):
                                require (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1) < stor11.length
                                mem[0] = address(stor[(('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1) + code.data[4069 len 32]].field_0)
                                mem[32] = 1
                                if not uint8(stor1[address(stor[(('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1) + code.data[4069 len 32]].field_0)]):
                                    s = _5382
                                    s = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4) + (uint255(stor7.field_1) * stor4)
                                    s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) + (uint8(idx) * stor4) - (uint255(stor7.field_1) * stor4)
                                    s = 2 * stor3.length - (stor4 * uint8(idx))
                                    s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)
                                    idx = idx + 1
                                    s = 0
                                    continue 
                            else:
                                require idx < stor10.length
                                mem[0] = address(stor56C6[idx].field_0)
                                mem[32] = 1
                                if not uint8(stor1[address(stor56C6[idx].field_0)]):
                                    s = _5382
                                    s = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4) + (uint255(stor7.field_1) * stor4)
                                    s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) + (uint8(idx) * stor4) - (uint255(stor7.field_1) * stor4)
                                    s = 2 * stor3.length - (stor4 * uint8(idx))
                                    s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)
                                    idx = idx + 1
                                    s = 0
                                    continue 
                            s = _5382
                            s = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4) + (uint255(stor7.field_1) * stor4)
                            s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) + (uint8(idx) * stor4) - (uint255(stor7.field_1) * stor4)
                            s = 2 * stor3.length - (stor4 * uint8(idx))
                            s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)
                            idx = idx + 1
                            s = 1
                            continue 
                        _5383 = mem[64]
                        mem[64] = mem[64] + 192
                        require idx < stor10.length
                        mem[0] = 10
                        mem[_5383] = address(stor56C6[idx].field_0)
                        mem[_5383 + 32] = uint8(stor56C6[idx].field_160)
                        mem[_5383 + 64] = 2 * stor3.length - (stor4 * uint8(idx))
                        require (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) < stor11.length
                        mem[_5383 + 96] = address(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx)].field_0)
                        mem[_5383 + 128] = uint8(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx)].field_160)
                        mem[_5383 + 160] = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4)
                        stor5.length++
                        if not stor5.length <= stor5.length + 1:
                            s = (4 * stor5.length + 1) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0
                            while (4 * stor5.length) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0 > s:
                                Mask(168, 0, stor[s].field_0) = 0
                                uint256(stor1[s]) = 0
                                Mask(168, 0, stor2[s]) = 0
                                stor3[s] = 0
                                s = s + 1
                                continue 
                        address(stor5[stor5.length].field_0) = address(stor56C6[idx].field_0)
                        Mask(96, 0, stor5[stor5.length].field_160) = uint8(stor56C6[idx].field_160)
                        Mask(88, 0, stor5[stor5.length].field_168) = 0
                        bool(stor5[stor5.length].field_256) = 0
                        uint255(stor5[stor5.length].field_257) = uint255(stor3.length - (stor4 * uint8(idx)))
                        address(stor5[stor5.length].field_512) = address(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx)].field_0)
                        Mask(96, 0, stor5[stor5.length].field_672) = uint8(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx)].field_160)
                        Mask(88, 0, stor5[stor5.length].field_680) = 0
                        bool(stor5[stor5.length].field_768) = 0
                        uint255(stor5[stor5.length].field_769) = uint255(stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4))
                        require (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) < stor11.length
                        require idx < stor10.length
                        if uint8(stor56C6[idx].field_160) != uint8(stor[(('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) + code.data[4069 len 32]].field_160):
                            require (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) < stor11.length
                            mem[0] = address(stor[(('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) + code.data[4069 len 32]].field_0)
                            mem[32] = 1
                            if not uint8(stor1[address(stor[(('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) + code.data[4069 len 32]].field_0)]):
                                s = _5383
                                s = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4)
                                s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) + (uint8(idx) * stor4)
                                s = 2 * stor3.length - (stor4 * uint8(idx))
                                s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx)
                                idx = idx + 1
                                s = 0
                                continue 
                        else:
                            require idx < stor10.length
                            mem[0] = address(stor56C6[idx].field_0)
                            mem[32] = 1
                            if not uint8(stor1[address(stor56C6[idx].field_0)]):
                                s = _5383
                                s = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4)
                                s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) + (uint8(idx) * stor4)
                                s = 2 * stor3.length - (stor4 * uint8(idx))
                                s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx)
                                idx = idx + 1
                                s = 0
                                continue 
                        s = _5383
                        s = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4)
                        s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) + (uint8(idx) * stor4)
                        s = 2 * stor3.length - (stor4 * uint8(idx))
                        s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx)
                        idx = idx + 1
                        s = 1
                        continue 
                    uint256(stor7.field_0) = 0
                    stor10.length = 0
                    idx = 0x56c65a7bb8d6351c1cf70c95a316cc6a92839c986682d98bc35f958f4883f9d2
                    while stor10.length + 0x56c65a7bb8d6351c1cf70c95a316cc6a92839c986682d98bc35f958f4883f9d2 > idx:
                        Mask(168, 0, stor[idx].field_0) = 0
                        idx = idx + 1
                        continue 
                    stor11.length = 0
                    idx = code.data[4069 len 32]
                    while code.data[4069 len 32] + stor11.length > idx:
                        Mask(168, 0, stor[idx].field_0) = 0
                        idx = idx + 1
                        continue 
                    require s >= stor12
                    call address(stor2.length).Play(bool rg1) with:
                       value stor3.length wei
                         gas gas_remaining - 34050 wei
                        args 0
                    require ext_call.success
                else:
                    if 2 == uint256(stor7.field_0):
                        require 0 < stor11.length
                        call address(stor2.length).Play(bool rg1) with:
                           value stor3.length wei
                             gas gas_remaining - 34050 wei
                            args uint8(stor[code.data[4069 len 32]].field_0)
                        require ext_call.success
                    else:
                        if 4 == uint256(stor7.field_0):
                            require 0 < stor11.length
                            require 1 < stor11.length
                            if uint8(stor175B.field_160) == uint8(stor[code.data[4069 len 32]].field_160):
                                require 1 < stor11.length
                                call address(stor2.length).Play(bool rg1) with:
                                   value stor3.length wei
                                     gas gas_remaining - 34050 wei
                                    args uint8(stor175B.field_0)
                                require ext_call.success
                        else:
                            if 5 == uint256(stor7.field_0):
                                stor11.length++
                                if not stor11.length <= stor11.length + 1:
                                    idx = stor11.length + 1
                                    while stor11.length > idx:
                                        Mask(168, 0, stor11[idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                require 2 < stor10.length
                                address(stor11[stor11.length].field_0) = msg.sender
                                Mask(96, 0, stor11[stor11.length].field_160) = Mask(96, 0, not storC65A)
                                Mask(88, 0, stor11[stor11.length].field_168) = Mask(88, 168, msg.sender) >> 168
                                stor6++
                                uint256(stor7.field_0)++
                                if uint256(stor7.field_0) != stor9:
                                    require 1 == (sha3(block.hash(block.number - 1), stor6) % (stor9 - uint256(stor7.field_0) / 2) + 1) + 1
                                require 2 < stor10.length
                                call address(stor2.length).Play(bool rg1) with:
                                   value stor3.length wei
                                     gas gas_remaining - 34050 wei
                                    args not storC65A
                                require ext_call.success
        else:
            mem[0] = 10
            idx = 0
            while stor10.length > idx:
                stor10[idx] = 0
                idx = idx + 1
                continue 
            stor11.length = 0
            if not stor11.length > 0:
                idx = 0
                s = 0
                s = 0
                while idx < bool(stor7.field_0):
                    call address(stor2.length).getMatchers_by_index(uint256 rg1) with:
                         gas gas_remaining - 25050 wei
                        args idx
                    require ext_call.success
                    stor10.length = idx + 1
                    if not stor10.length > idx + 1:
                        _2956 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2956] = ext_call.return_data[0]
                        mem[_2956 + 32] = ext_call.return_data[32]
                        require idx < stor10.length
                        mem[0] = 10
                        address(stor56C6[idx].field_0) = address(ext_call.return_data[0])
                        Mask(96, 0, stor56C6[idx].field_160) = Mask(96, 0, ext_call.return_data[32])
                        Mask(88, 0, stor56C6[idx].field_168) = Mask(88, 168, ext_call.return_data[0]) >> 168
                        call address(stor2.length).getContrarians_by_index(uint256 rg1) with:
                             gas gas_remaining - 25050 wei
                            args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        require ext_call.success
                        stor11.length = idx + 1
                        if not stor11.length > idx + 1:
                            _3094 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3094] = ext_call.return_data[0]
                            mem[_3094 + 32] = ext_call.return_data[32]
                        else:
                            mem[0] = 11
                            s = idx + code.data[4069 len 32] + 1
                            while code.data[4069 len 32] + stor11.length > s:
                                Mask(168, 0, stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            _4257 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4257] = ext_call.return_data[0]
                            mem[_4257 + 32] = ext_call.return_data[32]
                    else:
                        mem[0] = 10
                        s = idx + 0x56c65a7bb8d6351c1cf70c95a316cc6a92839c986682d98bc35f958f4883f9d3
                        while stor10.length + 0x56c65a7bb8d6351c1cf70c95a316cc6a92839c986682d98bc35f958f4883f9d2 > s:
                            Mask(168, 0, stor[s].field_0) = 0
                            s = s + 1
                            continue 
                        _4258 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4258] = ext_call.return_data[0]
                        mem[_4258 + 32] = ext_call.return_data[32]
                        require idx < stor10.length
                        mem[0] = 10
                        address(stor56C6[idx].field_0) = address(ext_call.return_data[0])
                        Mask(96, 0, stor56C6[idx].field_160) = Mask(96, 0, ext_call.return_data[32])
                        Mask(88, 0, stor56C6[idx].field_168) = Mask(88, 168, ext_call.return_data[0]) >> 168
                        call address(stor2.length).getContrarians_by_index(uint256 rg1) with:
                             gas gas_remaining - 25050 wei
                            args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        require ext_call.success
                        stor11.length = idx + 1
                        if not stor11.length > idx + 1:
                            _4413 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4413] = ext_call.return_data[0]
                            mem[_4413 + 32] = ext_call.return_data[32]
                        else:
                            mem[0] = 11
                            s = idx + code.data[4069 len 32] + 1
                            while code.data[4069 len 32] + stor11.length > s:
                                Mask(168, 0, stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            _5351 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5351] = ext_call.return_data[0]
                            mem[_5351 + 32] = ext_call.return_data[32]
                    require idx < stor11.length
                    mem[0] = 11
                    address(stor[code.data[4069 len 32] + idx].field_0) = address(ext_call.return_data[0])
                    Mask(96, 0, stor[code.data[4069 len 32] + idx].field_160) = Mask(96, 0, ext_call.return_data[32])
                    Mask(88, 0, stor[code.data[4069 len 32] + idx].field_168) = Mask(88, 168, ext_call.return_data[0]) >> 168
                    idx = idx + 1
                    s = ext_call.return_data[32]
                    s = ext_call.return_data[0]
                    continue 
                if ext_call.return_data[96]:
                    _2919 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_2919] = 0
                    mem[_2919 + 32] = 0
                    mem[_2919 + 64] = 0
                    stor5.length = 0
                    idx = 0
                    while 4 * stor5.length > idx:
                        Mask(168, 0, stor5[idx].field_0) = 0
                        uint256(stor5[idx].field_256) = 0
                        Mask(168, 0, stor5[idx].field_512) = 0
                        uint256(stor5[idx].field_768) = 0
                        idx = idx + 1
                        continue 
                    s = _2919
                    s = 0
                    s = 0
                    s = 0
                    s = 0
                    idx = 0
                    s = 0
                    while uint8(idx) < uint255(stor7.field_1):
                        if (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) >= uint255(stor7.field_1):
                            _5388 = mem[64]
                            mem[64] = mem[64] + 192
                            require idx < stor10.length
                            mem[0] = 10
                            mem[_5388] = address(stor56C6[idx].field_0)
                            mem[_5388 + 32] = uint8(stor56C6[idx].field_160)
                            mem[_5388 + 64] = 2 * stor3.length - (stor4 * uint8(idx))
                            require (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1) < stor11.length
                            mem[_5388 + 96] = address(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)].field_0)
                            mem[_5388 + 128] = uint8(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)].field_160)
                            mem[_5388 + 160] = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4) + (uint255(stor7.field_1) * stor4)
                            stor5.length++
                            if not stor5.length <= stor5.length + 1:
                                s = (4 * stor5.length + 1) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0
                                while (4 * stor5.length) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0 > s:
                                    Mask(168, 0, stor[s].field_0) = 0
                                    uint256(stor1[s]) = 0
                                    Mask(168, 0, stor2[s]) = 0
                                    stor3[s] = 0
                                    s = s + 1
                                    continue 
                            address(stor5[stor5.length].field_0) = address(stor56C6[idx].field_0)
                            Mask(96, 0, stor5[stor5.length].field_160) = uint8(stor56C6[idx].field_160)
                            Mask(88, 0, stor5[stor5.length].field_168) = 0
                            bool(stor5[stor5.length].field_256) = 0
                            uint255(stor5[stor5.length].field_257) = uint255(stor3.length - (stor4 * uint8(idx)))
                            address(stor5[stor5.length].field_512) = address(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)].field_0)
                            Mask(96, 0, stor5[stor5.length].field_672) = uint8(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)].field_160)
                            Mask(88, 0, stor5[stor5.length].field_680) = 0
                            bool(stor5[stor5.length].field_768) = 0
                            uint255(stor5[stor5.length].field_769) = uint255(stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4) + (uint255(stor7.field_1) * stor4))
                            require (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1) < stor11.length
                            require idx < stor10.length
                            if uint8(stor56C6[idx].field_160) != uint8(stor[(('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1) + code.data[4069 len 32]].field_160):
                                require (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1) < stor11.length
                                mem[0] = address(stor[(('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1) + code.data[4069 len 32]].field_0)
                                mem[32] = 1
                                if not uint8(stor1[address(stor[(('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1) + code.data[4069 len 32]].field_0)]):
                                    s = _5388
                                    s = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4) + (uint255(stor7.field_1) * stor4)
                                    s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) + (uint8(idx) * stor4) - (uint255(stor7.field_1) * stor4)
                                    s = 2 * stor3.length - (stor4 * uint8(idx))
                                    s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)
                                    idx = idx + 1
                                    s = 0
                                    continue 
                            else:
                                require idx < stor10.length
                                mem[0] = address(stor56C6[idx].field_0)
                                mem[32] = 1
                                if not uint8(stor1[address(stor56C6[idx].field_0)]):
                                    s = _5388
                                    s = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4) + (uint255(stor7.field_1) * stor4)
                                    s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) + (uint8(idx) * stor4) - (uint255(stor7.field_1) * stor4)
                                    s = 2 * stor3.length - (stor4 * uint8(idx))
                                    s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)
                                    idx = idx + 1
                                    s = 0
                                    continue 
                            s = _5388
                            s = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4) + (uint255(stor7.field_1) * stor4)
                            s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) + (uint8(idx) * stor4) - (uint255(stor7.field_1) * stor4)
                            s = 2 * stor3.length - (stor4 * uint8(idx))
                            s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)
                            idx = idx + 1
                            s = 1
                            continue 
                        _5389 = mem[64]
                        mem[64] = mem[64] + 192
                        require idx < stor10.length
                        mem[0] = 10
                        mem[_5389] = address(stor56C6[idx].field_0)
                        mem[_5389 + 32] = uint8(stor56C6[idx].field_160)
                        mem[_5389 + 64] = 2 * stor3.length - (stor4 * uint8(idx))
                        require (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) < stor11.length
                        mem[_5389 + 96] = address(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx)].field_0)
                        mem[_5389 + 128] = uint8(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx)].field_160)
                        mem[_5389 + 160] = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4)
                        stor5.length++
                        if not stor5.length <= stor5.length + 1:
                            s = (4 * stor5.length + 1) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0
                            while (4 * stor5.length) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0 > s:
                                Mask(168, 0, stor[s].field_0) = 0
                                uint256(stor1[s]) = 0
                                Mask(168, 0, stor2[s]) = 0
                                stor3[s] = 0
                                s = s + 1
                                continue 
                        address(stor5[stor5.length].field_0) = address(stor56C6[idx].field_0)
                        Mask(96, 0, stor5[stor5.length].field_160) = uint8(stor56C6[idx].field_160)
                        Mask(88, 0, stor5[stor5.length].field_168) = 0
                        bool(stor5[stor5.length].field_256) = 0
                        uint255(stor5[stor5.length].field_257) = uint255(stor3.length - (stor4 * uint8(idx)))
                        address(stor5[stor5.length].field_512) = address(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx)].field_0)
                        Mask(96, 0, stor5[stor5.length].field_672) = uint8(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx)].field_160)
                        Mask(88, 0, stor5[stor5.length].field_680) = 0
                        bool(stor5[stor5.length].field_768) = 0
                        uint255(stor5[stor5.length].field_769) = uint255(stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4))
                        require (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) < stor11.length
                        require idx < stor10.length
                        if uint8(stor56C6[idx].field_160) != uint8(stor[(('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) + code.data[4069 len 32]].field_160):
                            require (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) < stor11.length
                            mem[0] = address(stor[(('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) + code.data[4069 len 32]].field_0)
                            mem[32] = 1
                            if not uint8(stor1[address(stor[(('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) + code.data[4069 len 32]].field_0)]):
                                s = _5389
                                s = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4)
                                s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) + (uint8(idx) * stor4)
                                s = 2 * stor3.length - (stor4 * uint8(idx))
                                s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx)
                                idx = idx + 1
                                s = 0
                                continue 
                        else:
                            require idx < stor10.length
                            mem[0] = address(stor56C6[idx].field_0)
                            mem[32] = 1
                            if not uint8(stor1[address(stor56C6[idx].field_0)]):
                                s = _5389
                                s = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4)
                                s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) + (uint8(idx) * stor4)
                                s = 2 * stor3.length - (stor4 * uint8(idx))
                                s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx)
                                idx = idx + 1
                                s = 0
                                continue 
                        s = _5389
                        s = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4)
                        s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) + (uint8(idx) * stor4)
                        s = 2 * stor3.length - (stor4 * uint8(idx))
                        s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx)
                        idx = idx + 1
                        s = 1
                        continue 
                    uint256(stor7.field_0) = 0
                    stor10.length = 0
                    idx = 0x56c65a7bb8d6351c1cf70c95a316cc6a92839c986682d98bc35f958f4883f9d2
                    while stor10.length + 0x56c65a7bb8d6351c1cf70c95a316cc6a92839c986682d98bc35f958f4883f9d2 > idx:
                        Mask(168, 0, stor[idx].field_0) = 0
                        idx = idx + 1
                        continue 
                    stor11.length = 0
                    idx = code.data[4069 len 32]
                    while code.data[4069 len 32] + stor11.length > idx:
                        Mask(168, 0, stor[idx].field_0) = 0
                        idx = idx + 1
                        continue 
                    require s >= stor12
                    call address(stor2.length).Play(bool rg1) with:
                       value stor3.length wei
                         gas gas_remaining - 34050 wei
                        args 0
                    require ext_call.success
                else:
                    if 2 == uint256(stor7.field_0):
                        require 0 < stor11.length
                        call address(stor2.length).Play(bool rg1) with:
                           value stor3.length wei
                             gas gas_remaining - 34050 wei
                            args uint8(stor[code.data[4069 len 32]].field_0)
                        require ext_call.success
                    else:
                        if 4 == uint256(stor7.field_0):
                            require 0 < stor11.length
                            require 1 < stor11.length
                            if uint8(stor175B.field_160) == uint8(stor[code.data[4069 len 32]].field_160):
                                require 1 < stor11.length
                                call address(stor2.length).Play(bool rg1) with:
                                   value stor3.length wei
                                     gas gas_remaining - 34050 wei
                                    args uint8(stor175B.field_0)
                                require ext_call.success
                        else:
                            if 5 == uint256(stor7.field_0):
                                stor11.length++
                                if not stor11.length <= stor11.length + 1:
                                    idx = stor11.length + 1
                                    while stor11.length > idx:
                                        Mask(168, 0, stor11[idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                require 2 < stor10.length
                                address(stor11[stor11.length].field_0) = msg.sender
                                Mask(96, 0, stor11[stor11.length].field_160) = Mask(96, 0, not storC65A)
                                Mask(88, 0, stor11[stor11.length].field_168) = Mask(88, 168, msg.sender) >> 168
                                stor6++
                                uint256(stor7.field_0)++
                                if uint256(stor7.field_0) != stor9:
                                    require 1 == (sha3(block.hash(block.number - 1), stor6) % (stor9 - uint256(stor7.field_0) / 2) + 1) + 1
                                require 2 < stor10.length
                                call address(stor2.length).Play(bool rg1) with:
                                   value stor3.length wei
                                     gas gas_remaining - 34050 wei
                                    args not storC65A
                                require ext_call.success
            else:
                mem[0] = 11
                idx = code.data[4069 len 32]
                while code.data[4069 len 32] + stor11.length > idx:
                    Mask(168, 0, stor[idx].field_0) = 0
                    idx = idx + 1
                    continue 
                idx = 0
                s = 0
                s = 0
                while idx < bool(stor7.field_0):
                    call address(stor2.length).getMatchers_by_index(uint256 rg1) with:
                         gas gas_remaining - 25050 wei
                        args idx
                    require ext_call.success
                    stor10.length = idx + 1
                    if not stor10.length > idx + 1:
                        _4314 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4314] = ext_call.return_data[0]
                        mem[_4314 + 32] = ext_call.return_data[32]
                        require idx < stor10.length
                        mem[0] = 10
                        address(stor56C6[idx].field_0) = address(ext_call.return_data[0])
                        Mask(96, 0, stor56C6[idx].field_160) = Mask(96, 0, ext_call.return_data[32])
                        Mask(88, 0, stor56C6[idx].field_168) = Mask(88, 168, ext_call.return_data[0]) >> 168
                        call address(stor2.length).getContrarians_by_index(uint256 rg1) with:
                             gas gas_remaining - 25050 wei
                            args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        require ext_call.success
                        stor11.length = idx + 1
                        if not stor11.length > idx + 1:
                            _4464 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4464] = ext_call.return_data[0]
                            mem[_4464 + 32] = ext_call.return_data[32]
                        else:
                            mem[0] = 11
                            s = idx + code.data[4069 len 32] + 1
                            while code.data[4069 len 32] + stor11.length > s:
                                Mask(168, 0, stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            _5354 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5354] = ext_call.return_data[0]
                            mem[_5354 + 32] = ext_call.return_data[32]
                    else:
                        mem[0] = 10
                        s = idx + 0x56c65a7bb8d6351c1cf70c95a316cc6a92839c986682d98bc35f958f4883f9d3
                        while stor10.length + 0x56c65a7bb8d6351c1cf70c95a316cc6a92839c986682d98bc35f958f4883f9d2 > s:
                            Mask(168, 0, stor[s].field_0) = 0
                            s = s + 1
                            continue 
                        _5355 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5355] = ext_call.return_data[0]
                        mem[_5355 + 32] = ext_call.return_data[32]
                        require idx < stor10.length
                        mem[0] = 10
                        address(stor56C6[idx].field_0) = address(ext_call.return_data[0])
                        Mask(96, 0, stor56C6[idx].field_160) = Mask(96, 0, ext_call.return_data[32])
                        Mask(88, 0, stor56C6[idx].field_168) = Mask(88, 168, ext_call.return_data[0]) >> 168
                        call address(stor2.length).getContrarians_by_index(uint256 rg1) with:
                             gas gas_remaining - 25050 wei
                            args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        require ext_call.success
                        stor11.length = idx + 1
                        if not stor11.length > idx + 1:
                            _5489 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5489] = ext_call.return_data[0]
                            mem[_5489 + 32] = ext_call.return_data[32]
                        else:
                            mem[0] = 11
                            s = idx + code.data[4069 len 32] + 1
                            while code.data[4069 len 32] + stor11.length > s:
                                Mask(168, 0, stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            _6092 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6092] = ext_call.return_data[0]
                            mem[_6092 + 32] = ext_call.return_data[32]
                    require idx < stor11.length
                    mem[0] = 11
                    address(stor[code.data[4069 len 32] + idx].field_0) = address(ext_call.return_data[0])
                    Mask(96, 0, stor[code.data[4069 len 32] + idx].field_160) = Mask(96, 0, ext_call.return_data[32])
                    Mask(88, 0, stor[code.data[4069 len 32] + idx].field_168) = Mask(88, 168, ext_call.return_data[0]) >> 168
                    idx = idx + 1
                    s = ext_call.return_data[32]
                    s = ext_call.return_data[0]
                    continue 
                if ext_call.return_data[96]:
                    _4259 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_4259] = 0
                    mem[_4259 + 32] = 0
                    mem[_4259 + 64] = 0
                    stor5.length = 0
                    idx = 0
                    while 4 * stor5.length > idx:
                        Mask(168, 0, stor5[idx].field_0) = 0
                        uint256(stor5[idx].field_256) = 0
                        Mask(168, 0, stor5[idx].field_512) = 0
                        uint256(stor5[idx].field_768) = 0
                        idx = idx + 1
                        continue 
                    s = _4259
                    s = 0
                    s = 0
                    s = 0
                    s = 0
                    idx = 0
                    s = 0
                    while uint8(idx) < uint255(stor7.field_1):
                        if (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) >= uint255(stor7.field_1):
                            _6134 = mem[64]
                            mem[64] = mem[64] + 192
                            require idx < stor10.length
                            mem[0] = 10
                            mem[_6134] = address(stor56C6[idx].field_0)
                            mem[_6134 + 32] = uint8(stor56C6[idx].field_160)
                            mem[_6134 + 64] = 2 * stor3.length - (stor4 * uint8(idx))
                            require (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1) < stor11.length
                            mem[_6134 + 96] = address(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)].field_0)
                            mem[_6134 + 128] = uint8(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)].field_160)
                            mem[_6134 + 160] = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4) + (uint255(stor7.field_1) * stor4)
                            stor5.length++
                            if not stor5.length <= stor5.length + 1:
                                s = (4 * stor5.length + 1) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0
                                while (4 * stor5.length) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0 > s:
                                    Mask(168, 0, stor[s].field_0) = 0
                                    uint256(stor1[s]) = 0
                                    Mask(168, 0, stor2[s]) = 0
                                    stor3[s] = 0
                                    s = s + 1
                                    continue 
                            address(stor5[stor5.length].field_0) = address(stor56C6[idx].field_0)
                            Mask(96, 0, stor5[stor5.length].field_160) = uint8(stor56C6[idx].field_160)
                            Mask(88, 0, stor5[stor5.length].field_168) = 0
                            bool(stor5[stor5.length].field_256) = 0
                            uint255(stor5[stor5.length].field_257) = uint255(stor3.length - (stor4 * uint8(idx)))
                            address(stor5[stor5.length].field_512) = address(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)].field_0)
                            Mask(96, 0, stor5[stor5.length].field_672) = uint8(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)].field_160)
                            Mask(88, 0, stor5[stor5.length].field_680) = 0
                            bool(stor5[stor5.length].field_768) = 0
                            uint255(stor5[stor5.length].field_769) = uint255(stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4) + (uint255(stor7.field_1) * stor4))
                            require (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1) < stor11.length
                            require idx < stor10.length
                            if uint8(stor56C6[idx].field_160) != uint8(stor[(('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1) + code.data[4069 len 32]].field_160):
                                require (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1) < stor11.length
                                mem[0] = address(stor[(('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1) + code.data[4069 len 32]].field_0)
                                mem[32] = 1
                                if not uint8(stor1[address(stor[(('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1) + code.data[4069 len 32]].field_0)]):
                                    s = _6134
                                    s = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4) + (uint255(stor7.field_1) * stor4)
                                    s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) + (uint8(idx) * stor4) - (uint255(stor7.field_1) * stor4)
                                    s = 2 * stor3.length - (stor4 * uint8(idx))
                                    s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)
                                    idx = idx + 1
                                    s = 0
                                    continue 
                            else:
                                require idx < stor10.length
                                mem[0] = address(stor56C6[idx].field_0)
                                mem[32] = 1
                                if not uint8(stor1[address(stor56C6[idx].field_0)]):
                                    s = _6134
                                    s = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4) + (uint255(stor7.field_1) * stor4)
                                    s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) + (uint8(idx) * stor4) - (uint255(stor7.field_1) * stor4)
                                    s = 2 * stor3.length - (stor4 * uint8(idx))
                                    s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)
                                    idx = idx + 1
                                    s = 0
                                    continue 
                            s = _6134
                            s = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4) + (uint255(stor7.field_1) * stor4)
                            s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) + (uint8(idx) * stor4) - (uint255(stor7.field_1) * stor4)
                            s = 2 * stor3.length - (stor4 * uint8(idx))
                            s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)
                            idx = idx + 1
                            s = 1
                            continue 
                        _6135 = mem[64]
                        mem[64] = mem[64] + 192
                        require idx < stor10.length
                        mem[0] = 10
                        mem[_6135] = address(stor56C6[idx].field_0)
                        mem[_6135 + 32] = uint8(stor56C6[idx].field_160)
                        mem[_6135 + 64] = 2 * stor3.length - (stor4 * uint8(idx))
                        require (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) < stor11.length
                        mem[_6135 + 96] = address(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx)].field_0)
                        mem[_6135 + 128] = uint8(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx)].field_160)
                        mem[_6135 + 160] = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4)
                        stor5.length++
                        if not stor5.length <= stor5.length + 1:
                            s = (4 * stor5.length + 1) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0
                            while (4 * stor5.length) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0 > s:
                                Mask(168, 0, stor[s].field_0) = 0
                                uint256(stor1[s]) = 0
                                Mask(168, 0, stor2[s]) = 0
                                stor3[s] = 0
                                s = s + 1
                                continue 
                        address(stor5[stor5.length].field_0) = address(stor56C6[idx].field_0)
                        Mask(96, 0, stor5[stor5.length].field_160) = uint8(stor56C6[idx].field_160)
                        Mask(88, 0, stor5[stor5.length].field_168) = 0
                        bool(stor5[stor5.length].field_256) = 0
                        uint255(stor5[stor5.length].field_257) = uint255(stor3.length - (stor4 * uint8(idx)))
                        address(stor5[stor5.length].field_512) = address(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx)].field_0)
                        Mask(96, 0, stor5[stor5.length].field_672) = uint8(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx)].field_160)
                        Mask(88, 0, stor5[stor5.length].field_680) = 0
                        bool(stor5[stor5.length].field_768) = 0
                        uint255(stor5[stor5.length].field_769) = uint255(stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4))
                        require (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) < stor11.length
                        require idx < stor10.length
                        if uint8(stor56C6[idx].field_160) != uint8(stor[(('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) + code.data[4069 len 32]].field_160):
                            require (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) < stor11.length
                            mem[0] = address(stor[(('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) + code.data[4069 len 32]].field_0)
                            mem[32] = 1
                            if not uint8(stor1[address(stor[(('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) + code.data[4069 len 32]].field_0)]):
                                s = _6135
                                s = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4)
                                s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) + (uint8(idx) * stor4)
                                s = 2 * stor3.length - (stor4 * uint8(idx))
                                s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx)
                                idx = idx + 1
                                s = 0
                                continue 
                        else:
                            require idx < stor10.length
                            mem[0] = address(stor56C6[idx].field_0)
                            mem[32] = 1
                            if not uint8(stor1[address(stor56C6[idx].field_0)]):
                                s = _6135
                                s = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4)
                                s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) + (uint8(idx) * stor4)
                                s = 2 * stor3.length - (stor4 * uint8(idx))
                                s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx)
                                idx = idx + 1
                                s = 0
                                continue 
                        s = _6135
                        s = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4)
                        s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) + (uint8(idx) * stor4)
                        s = 2 * stor3.length - (stor4 * uint8(idx))
                        s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx)
                        idx = idx + 1
                        s = 1
                        continue 
                    uint256(stor7.field_0) = 0
                    stor10.length = 0
                    idx = 0x56c65a7bb8d6351c1cf70c95a316cc6a92839c986682d98bc35f958f4883f9d2
                    while stor10.length + 0x56c65a7bb8d6351c1cf70c95a316cc6a92839c986682d98bc35f958f4883f9d2 > idx:
                        Mask(168, 0, stor[idx].field_0) = 0
                        idx = idx + 1
                        continue 
                    stor11.length = 0
                    idx = code.data[4069 len 32]
                    while code.data[4069 len 32] + stor11.length > idx:
                        Mask(168, 0, stor[idx].field_0) = 0
                        idx = idx + 1
                        continue 
                    require s >= stor12
                    call address(stor2.length).Play(bool rg1) with:
                       value stor3.length wei
                         gas gas_remaining - 34050 wei
                        args 0
                    require ext_call.success
                else:
                    if 2 == uint256(stor7.field_0):
                        require 0 < stor11.length
                        call address(stor2.length).Play(bool rg1) with:
                           value stor3.length wei
                             gas gas_remaining - 34050 wei
                            args uint8(stor[code.data[4069 len 32]].field_0)
                        require ext_call.success
                    else:
                        if 4 == uint256(stor7.field_0):
                            require 0 < stor11.length
                            require 1 < stor11.length
                            if uint8(stor175B.field_160) == uint8(stor[code.data[4069 len 32]].field_160):
                                require 1 < stor11.length
                                call address(stor2.length).Play(bool rg1) with:
                                   value stor3.length wei
                                     gas gas_remaining - 34050 wei
                                    args uint8(stor175B.field_0)
                                require ext_call.success
                        else:
                            if 5 == uint256(stor7.field_0):
                                stor11.length++
                                if not stor11.length <= stor11.length + 1:
                                    idx = stor11.length + 1
                                    while stor11.length > idx:
                                        Mask(168, 0, stor11[idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                require 2 < stor10.length
                                address(stor11[stor11.length].field_0) = msg.sender
                                Mask(96, 0, stor11[stor11.length].field_160) = Mask(96, 0, not storC65A)
                                Mask(88, 0, stor11[stor11.length].field_168) = Mask(88, 168, msg.sender) >> 168
                                stor6++
                                uint256(stor7.field_0)++
                                if uint256(stor7.field_0) != stor9:
                                    require 1 == (sha3(block.hash(block.number - 1), stor6) % (stor9 - uint256(stor7.field_0) / 2) + 1) + 1
                                require 2 < stor10.length
                                call address(stor2.length).Play(bool rg1) with:
                                   value stor3.length wei
                                     gas gas_remaining - 34050 wei
                                    args not storC65A
                                require ext_call.success
    else:
        mem[0] = msg.sender
        mem[32] = 1
        require uint8(stor1[address(msg.sender)])
        call address(stor2.length).gameStats() with:
             gas gas_remaining - 25050 wei
        require ext_call.success
        stor6 = ext_call.return_data[32]
        uint256(stor7.field_0) = ext_call.return_data[0]
        call address(stor2.length).gameSettings() with:
             gas gas_remaining - 25050 wei
        stor9 = ext_call.return_data[96]
        stor8 = ext_call.return_data[64]
        stor3.length = ext_call.return_data[0]
        stor10.length = 0
        if not stor10.length > 0:
            stor11.length = 0
            if not stor11.length > 0:
                idx = 0
                s = 0
                s = 0
                while idx < bool(stor7.field_0):
                    call address(stor2.length).getMatchers_by_index(uint256 rg1) with:
                         gas gas_remaining - 25050 wei
                        args idx
                    require ext_call.success
                    stor10.length = idx + 1
                    if not stor10.length > idx + 1:
                        _1485 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1485] = ext_call.return_data[0]
                        mem[_1485 + 32] = ext_call.return_data[32]
                        require idx < stor10.length
                        mem[0] = 10
                        address(stor56C6[idx].field_0) = address(ext_call.return_data[0])
                        Mask(96, 0, stor56C6[idx].field_160) = Mask(96, 0, ext_call.return_data[32])
                        Mask(88, 0, stor56C6[idx].field_168) = Mask(88, 168, ext_call.return_data[0]) >> 168
                        call address(stor2.length).getContrarians_by_index(uint256 rg1) with:
                             gas gas_remaining - 25050 wei
                            args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        require ext_call.success
                        stor11.length = idx + 1
                        if not stor11.length > idx + 1:
                            _1562 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1562] = ext_call.return_data[0]
                            mem[_1562 + 32] = ext_call.return_data[32]
                        else:
                            mem[0] = 11
                            s = idx + code.data[4069 len 32] + 1
                            while code.data[4069 len 32] + stor11.length > s:
                                Mask(168, 0, stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            _2926 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2926] = ext_call.return_data[0]
                            mem[_2926 + 32] = ext_call.return_data[32]
                    else:
                        mem[0] = 10
                        s = idx + 0x56c65a7bb8d6351c1cf70c95a316cc6a92839c986682d98bc35f958f4883f9d3
                        while stor10.length + 0x56c65a7bb8d6351c1cf70c95a316cc6a92839c986682d98bc35f958f4883f9d2 > s:
                            Mask(168, 0, stor[s].field_0) = 0
                            s = s + 1
                            continue 
                        _2927 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2927] = ext_call.return_data[0]
                        mem[_2927 + 32] = ext_call.return_data[32]
                        require idx < stor10.length
                        mem[0] = 10
                        address(stor56C6[idx].field_0) = address(ext_call.return_data[0])
                        Mask(96, 0, stor56C6[idx].field_160) = Mask(96, 0, ext_call.return_data[32])
                        Mask(88, 0, stor56C6[idx].field_168) = Mask(88, 168, ext_call.return_data[0]) >> 168
                        call address(stor2.length).getContrarians_by_index(uint256 rg1) with:
                             gas gas_remaining - 25050 wei
                            args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        require ext_call.success
                        stor11.length = idx + 1
                        if not stor11.length > idx + 1:
                            _3054 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3054] = ext_call.return_data[0]
                            mem[_3054 + 32] = ext_call.return_data[32]
                        else:
                            mem[0] = 11
                            s = idx + code.data[4069 len 32] + 1
                            while code.data[4069 len 32] + stor11.length > s:
                                Mask(168, 0, stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            _4264 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4264] = ext_call.return_data[0]
                            mem[_4264 + 32] = ext_call.return_data[32]
                    require idx < stor11.length
                    mem[0] = 11
                    address(stor[code.data[4069 len 32] + idx].field_0) = address(ext_call.return_data[0])
                    Mask(96, 0, stor[code.data[4069 len 32] + idx].field_160) = Mask(96, 0, ext_call.return_data[32])
                    Mask(88, 0, stor[code.data[4069 len 32] + idx].field_168) = Mask(88, 168, ext_call.return_data[0]) >> 168
                    idx = idx + 1
                    s = ext_call.return_data[32]
                    s = ext_call.return_data[0]
                    continue 
                if ext_call.return_data[96]:
                    _1475 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_1475] = 0
                    mem[_1475 + 32] = 0
                    mem[_1475 + 64] = 0
                    stor5.length = 0
                    idx = 0
                    while 4 * stor5.length > idx:
                        Mask(168, 0, stor5[idx].field_0) = 0
                        uint256(stor5[idx].field_256) = 0
                        Mask(168, 0, stor5[idx].field_512) = 0
                        uint256(stor5[idx].field_768) = 0
                        idx = idx + 1
                        continue 
                    s = _1475
                    s = 0
                    s = 0
                    s = 0
                    s = 0
                    idx = 0
                    s = 0
                    while uint8(idx) < uint255(stor7.field_1):
                        if (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) >= uint255(stor7.field_1):
                            _4317 = mem[64]
                            mem[64] = mem[64] + 192
                            require idx < stor10.length
                            mem[0] = 10
                            mem[_4317] = address(stor56C6[idx].field_0)
                            mem[_4317 + 32] = uint8(stor56C6[idx].field_160)
                            mem[_4317 + 64] = 2 * stor3.length - (stor4 * uint8(idx))
                            require (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1) < stor11.length
                            mem[_4317 + 96] = address(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)].field_0)
                            mem[_4317 + 128] = uint8(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)].field_160)
                            mem[_4317 + 160] = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4) + (uint255(stor7.field_1) * stor4)
                            stor5.length++
                            if not stor5.length <= stor5.length + 1:
                                s = (4 * stor5.length + 1) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0
                                while (4 * stor5.length) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0 > s:
                                    Mask(168, 0, stor[s].field_0) = 0
                                    uint256(stor1[s]) = 0
                                    Mask(168, 0, stor2[s]) = 0
                                    stor3[s] = 0
                                    s = s + 1
                                    continue 
                            address(stor5[stor5.length].field_0) = address(stor56C6[idx].field_0)
                            Mask(96, 0, stor5[stor5.length].field_160) = uint8(stor56C6[idx].field_160)
                            Mask(88, 0, stor5[stor5.length].field_168) = 0
                            bool(stor5[stor5.length].field_256) = 0
                            uint255(stor5[stor5.length].field_257) = uint255(stor3.length - (stor4 * uint8(idx)))
                            address(stor5[stor5.length].field_512) = address(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)].field_0)
                            Mask(96, 0, stor5[stor5.length].field_672) = uint8(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)].field_160)
                            Mask(88, 0, stor5[stor5.length].field_680) = 0
                            bool(stor5[stor5.length].field_768) = 0
                            uint255(stor5[stor5.length].field_769) = uint255(stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4) + (uint255(stor7.field_1) * stor4))
                            require (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1) < stor11.length
                            require idx < stor10.length
                            if uint8(stor56C6[idx].field_160) != uint8(stor[(('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1) + code.data[4069 len 32]].field_160):
                                require (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1) < stor11.length
                                mem[0] = address(stor[(('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1) + code.data[4069 len 32]].field_0)
                                mem[32] = 1
                                if not uint8(stor1[address(stor[(('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1) + code.data[4069 len 32]].field_0)]):
                                    s = _4317
                                    s = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4) + (uint255(stor7.field_1) * stor4)
                                    s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) + (uint8(idx) * stor4) - (uint255(stor7.field_1) * stor4)
                                    s = 2 * stor3.length - (stor4 * uint8(idx))
                                    s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)
                                    idx = idx + 1
                                    s = 0
                                    continue 
                            else:
                                require idx < stor10.length
                                mem[0] = address(stor56C6[idx].field_0)
                                mem[32] = 1
                                if not uint8(stor1[address(stor56C6[idx].field_0)]):
                                    s = _4317
                                    s = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4) + (uint255(stor7.field_1) * stor4)
                                    s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) + (uint8(idx) * stor4) - (uint255(stor7.field_1) * stor4)
                                    s = 2 * stor3.length - (stor4 * uint8(idx))
                                    s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)
                                    idx = idx + 1
                                    s = 0
                                    continue 
                            s = _4317
                            s = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4) + (uint255(stor7.field_1) * stor4)
                            s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) + (uint8(idx) * stor4) - (uint255(stor7.field_1) * stor4)
                            s = 2 * stor3.length - (stor4 * uint8(idx))
                            s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)
                            idx = idx + 1
                            s = 1
                            continue 
                        _4318 = mem[64]
                        mem[64] = mem[64] + 192
                        require idx < stor10.length
                        mem[0] = 10
                        mem[_4318] = address(stor56C6[idx].field_0)
                        mem[_4318 + 32] = uint8(stor56C6[idx].field_160)
                        mem[_4318 + 64] = 2 * stor3.length - (stor4 * uint8(idx))
                        require (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) < stor11.length
                        mem[_4318 + 96] = address(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx)].field_0)
                        mem[_4318 + 128] = uint8(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx)].field_160)
                        mem[_4318 + 160] = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4)
                        stor5.length++
                        if not stor5.length <= stor5.length + 1:
                            s = (4 * stor5.length + 1) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0
                            while (4 * stor5.length) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0 > s:
                                Mask(168, 0, stor[s].field_0) = 0
                                uint256(stor1[s]) = 0
                                Mask(168, 0, stor2[s]) = 0
                                stor3[s] = 0
                                s = s + 1
                                continue 
                        address(stor5[stor5.length].field_0) = address(stor56C6[idx].field_0)
                        Mask(96, 0, stor5[stor5.length].field_160) = uint8(stor56C6[idx].field_160)
                        Mask(88, 0, stor5[stor5.length].field_168) = 0
                        bool(stor5[stor5.length].field_256) = 0
                        uint255(stor5[stor5.length].field_257) = uint255(stor3.length - (stor4 * uint8(idx)))
                        address(stor5[stor5.length].field_512) = address(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx)].field_0)
                        Mask(96, 0, stor5[stor5.length].field_672) = uint8(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx)].field_160)
                        Mask(88, 0, stor5[stor5.length].field_680) = 0
                        bool(stor5[stor5.length].field_768) = 0
                        uint255(stor5[stor5.length].field_769) = uint255(stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4))
                        require (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) < stor11.length
                        require idx < stor10.length
                        if uint8(stor56C6[idx].field_160) != uint8(stor[(('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) + code.data[4069 len 32]].field_160):
                            require (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) < stor11.length
                            mem[0] = address(stor[(('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) + code.data[4069 len 32]].field_0)
                            mem[32] = 1
                            if not uint8(stor1[address(stor[(('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) + code.data[4069 len 32]].field_0)]):
                                s = _4318
                                s = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4)
                                s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) + (uint8(idx) * stor4)
                                s = 2 * stor3.length - (stor4 * uint8(idx))
                                s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx)
                                idx = idx + 1
                                s = 0
                                continue 
                        else:
                            require idx < stor10.length
                            mem[0] = address(stor56C6[idx].field_0)
                            mem[32] = 1
                            if not uint8(stor1[address(stor56C6[idx].field_0)]):
                                s = _4318
                                s = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4)
                                s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) + (uint8(idx) * stor4)
                                s = 2 * stor3.length - (stor4 * uint8(idx))
                                s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx)
                                idx = idx + 1
                                s = 0
                                continue 
                        s = _4318
                        s = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4)
                        s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) + (uint8(idx) * stor4)
                        s = 2 * stor3.length - (stor4 * uint8(idx))
                        s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx)
                        idx = idx + 1
                        s = 1
                        continue 
                    uint256(stor7.field_0) = 0
                    stor10.length = 0
                    idx = 0x56c65a7bb8d6351c1cf70c95a316cc6a92839c986682d98bc35f958f4883f9d2
                    while stor10.length + 0x56c65a7bb8d6351c1cf70c95a316cc6a92839c986682d98bc35f958f4883f9d2 > idx:
                        Mask(168, 0, stor[idx].field_0) = 0
                        idx = idx + 1
                        continue 
                    stor11.length = 0
                    idx = code.data[4069 len 32]
                    while code.data[4069 len 32] + stor11.length > idx:
                        Mask(168, 0, stor[idx].field_0) = 0
                        idx = idx + 1
                        continue 
                    require s >= stor12
                    call address(stor2.length).Play(bool rg1) with:
                       value stor3.length wei
                         gas gas_remaining - 34050 wei
                        args 0
                    require ext_call.success
                else:
                    if 2 == uint256(stor7.field_0):
                        require 0 < stor11.length
                        call address(stor2.length).Play(bool rg1) with:
                           value stor3.length wei
                             gas gas_remaining - 34050 wei
                            args uint8(stor[code.data[4069 len 32]].field_0)
                        require ext_call.success
                    else:
                        if 4 == uint256(stor7.field_0):
                            require 0 < stor11.length
                            require 1 < stor11.length
                            if uint8(stor175B.field_160) == uint8(stor[code.data[4069 len 32]].field_160):
                                require 1 < stor11.length
                                call address(stor2.length).Play(bool rg1) with:
                                   value stor3.length wei
                                     gas gas_remaining - 34050 wei
                                    args uint8(stor175B.field_0)
                                require ext_call.success
                        else:
                            if 5 == uint256(stor7.field_0):
                                stor11.length++
                                if not stor11.length <= stor11.length + 1:
                                    idx = stor11.length + 1
                                    while stor11.length > idx:
                                        Mask(168, 0, stor11[idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                require 2 < stor10.length
                                address(stor11[stor11.length].field_0) = msg.sender
                                Mask(96, 0, stor11[stor11.length].field_160) = Mask(96, 0, not storC65A)
                                Mask(88, 0, stor11[stor11.length].field_168) = Mask(88, 168, msg.sender) >> 168
                                stor6++
                                uint256(stor7.field_0)++
                                if uint256(stor7.field_0) != stor9:
                                    require 1 == (sha3(block.hash(block.number - 1), stor6) % (stor9 - uint256(stor7.field_0) / 2) + 1) + 1
                                require 2 < stor10.length
                                call address(stor2.length).Play(bool rg1) with:
                                   value stor3.length wei
                                     gas gas_remaining - 34050 wei
                                    args not storC65A
                                require ext_call.success
            else:
                mem[0] = 11
                idx = code.data[4069 len 32]
                while code.data[4069 len 32] + stor11.length > idx:
                    Mask(168, 0, stor[idx].field_0) = 0
                    idx = idx + 1
                    continue 
                idx = 0
                s = 0
                s = 0
                while idx < bool(stor7.field_0):
                    call address(stor2.length).getMatchers_by_index(uint256 rg1) with:
                         gas gas_remaining - 25050 wei
                        args idx
                    require ext_call.success
                    stor10.length = idx + 1
                    if not stor10.length > idx + 1:
                        _2974 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2974] = ext_call.return_data[0]
                        mem[_2974 + 32] = ext_call.return_data[32]
                        require idx < stor10.length
                        mem[0] = 10
                        address(stor56C6[idx].field_0) = address(ext_call.return_data[0])
                        Mask(96, 0, stor56C6[idx].field_160) = Mask(96, 0, ext_call.return_data[32])
                        Mask(88, 0, stor56C6[idx].field_168) = Mask(88, 168, ext_call.return_data[0]) >> 168
                        call address(stor2.length).getContrarians_by_index(uint256 rg1) with:
                             gas gas_remaining - 25050 wei
                            args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        require ext_call.success
                        stor11.length = idx + 1
                        if not stor11.length > idx + 1:
                            _3113 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3113] = ext_call.return_data[0]
                            mem[_3113 + 32] = ext_call.return_data[32]
                        else:
                            mem[0] = 11
                            s = idx + code.data[4069 len 32] + 1
                            while code.data[4069 len 32] + stor11.length > s:
                                Mask(168, 0, stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            _4267 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4267] = ext_call.return_data[0]
                            mem[_4267 + 32] = ext_call.return_data[32]
                    else:
                        mem[0] = 10
                        s = idx + 0x56c65a7bb8d6351c1cf70c95a316cc6a92839c986682d98bc35f958f4883f9d3
                        while stor10.length + 0x56c65a7bb8d6351c1cf70c95a316cc6a92839c986682d98bc35f958f4883f9d2 > s:
                            Mask(168, 0, stor[s].field_0) = 0
                            s = s + 1
                            continue 
                        _4268 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4268] = ext_call.return_data[0]
                        mem[_4268 + 32] = ext_call.return_data[32]
                        require idx < stor10.length
                        mem[0] = 10
                        address(stor56C6[idx].field_0) = address(ext_call.return_data[0])
                        Mask(96, 0, stor56C6[idx].field_160) = Mask(96, 0, ext_call.return_data[32])
                        Mask(88, 0, stor56C6[idx].field_168) = Mask(88, 168, ext_call.return_data[0]) >> 168
                        call address(stor2.length).getContrarians_by_index(uint256 rg1) with:
                             gas gas_remaining - 25050 wei
                            args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        require ext_call.success
                        stor11.length = idx + 1
                        if not stor11.length > idx + 1:
                            _4428 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4428] = ext_call.return_data[0]
                            mem[_4428 + 32] = ext_call.return_data[32]
                        else:
                            mem[0] = 11
                            s = idx + code.data[4069 len 32] + 1
                            while code.data[4069 len 32] + stor11.length > s:
                                Mask(168, 0, stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            _5372 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5372] = ext_call.return_data[0]
                            mem[_5372 + 32] = ext_call.return_data[32]
                    require idx < stor11.length
                    mem[0] = 11
                    address(stor[code.data[4069 len 32] + idx].field_0) = address(ext_call.return_data[0])
                    Mask(96, 0, stor[code.data[4069 len 32] + idx].field_160) = Mask(96, 0, ext_call.return_data[32])
                    Mask(88, 0, stor[code.data[4069 len 32] + idx].field_168) = Mask(88, 168, ext_call.return_data[0]) >> 168
                    idx = idx + 1
                    s = ext_call.return_data[32]
                    s = ext_call.return_data[0]
                    continue 
                if ext_call.return_data[96]:
                    _2928 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_2928] = 0
                    mem[_2928 + 32] = 0
                    mem[_2928 + 64] = 0
                    stor5.length = 0
                    idx = 0
                    while 4 * stor5.length > idx:
                        Mask(168, 0, stor5[idx].field_0) = 0
                        uint256(stor5[idx].field_256) = 0
                        Mask(168, 0, stor5[idx].field_512) = 0
                        uint256(stor5[idx].field_768) = 0
                        idx = idx + 1
                        continue 
                    s = _2928
                    s = 0
                    s = 0
                    s = 0
                    s = 0
                    idx = 0
                    s = 0
                    while uint8(idx) < uint255(stor7.field_1):
                        if (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) >= uint255(stor7.field_1):
                            _5413 = mem[64]
                            mem[64] = mem[64] + 192
                            require idx < stor10.length
                            mem[0] = 10
                            mem[_5413] = address(stor56C6[idx].field_0)
                            mem[_5413 + 32] = uint8(stor56C6[idx].field_160)
                            mem[_5413 + 64] = 2 * stor3.length - (stor4 * uint8(idx))
                            require (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1) < stor11.length
                            mem[_5413 + 96] = address(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)].field_0)
                            mem[_5413 + 128] = uint8(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)].field_160)
                            mem[_5413 + 160] = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4) + (uint255(stor7.field_1) * stor4)
                            stor5.length++
                            if not stor5.length <= stor5.length + 1:
                                s = (4 * stor5.length + 1) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0
                                while (4 * stor5.length) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0 > s:
                                    Mask(168, 0, stor[s].field_0) = 0
                                    uint256(stor1[s]) = 0
                                    Mask(168, 0, stor2[s]) = 0
                                    stor3[s] = 0
                                    s = s + 1
                                    continue 
                            address(stor5[stor5.length].field_0) = address(stor56C6[idx].field_0)
                            Mask(96, 0, stor5[stor5.length].field_160) = uint8(stor56C6[idx].field_160)
                            Mask(88, 0, stor5[stor5.length].field_168) = 0
                            bool(stor5[stor5.length].field_256) = 0
                            uint255(stor5[stor5.length].field_257) = uint255(stor3.length - (stor4 * uint8(idx)))
                            address(stor5[stor5.length].field_512) = address(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)].field_0)
                            Mask(96, 0, stor5[stor5.length].field_672) = uint8(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)].field_160)
                            Mask(88, 0, stor5[stor5.length].field_680) = 0
                            bool(stor5[stor5.length].field_768) = 0
                            uint255(stor5[stor5.length].field_769) = uint255(stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4) + (uint255(stor7.field_1) * stor4))
                            require (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1) < stor11.length
                            require idx < stor10.length
                            if uint8(stor56C6[idx].field_160) != uint8(stor[(('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1) + code.data[4069 len 32]].field_160):
                                require (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1) < stor11.length
                                mem[0] = address(stor[(('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1) + code.data[4069 len 32]].field_0)
                                mem[32] = 1
                                if not uint8(stor1[address(stor[(('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1) + code.data[4069 len 32]].field_0)]):
                                    s = _5413
                                    s = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4) + (uint255(stor7.field_1) * stor4)
                                    s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) + (uint8(idx) * stor4) - (uint255(stor7.field_1) * stor4)
                                    s = 2 * stor3.length - (stor4 * uint8(idx))
                                    s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)
                                    idx = idx + 1
                                    s = 0
                                    continue 
                            else:
                                require idx < stor10.length
                                mem[0] = address(stor56C6[idx].field_0)
                                mem[32] = 1
                                if not uint8(stor1[address(stor56C6[idx].field_0)]):
                                    s = _5413
                                    s = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4) + (uint255(stor7.field_1) * stor4)
                                    s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) + (uint8(idx) * stor4) - (uint255(stor7.field_1) * stor4)
                                    s = 2 * stor3.length - (stor4 * uint8(idx))
                                    s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)
                                    idx = idx + 1
                                    s = 0
                                    continue 
                            s = _5413
                            s = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4) + (uint255(stor7.field_1) * stor4)
                            s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) + (uint8(idx) * stor4) - (uint255(stor7.field_1) * stor4)
                            s = 2 * stor3.length - (stor4 * uint8(idx))
                            s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)
                            idx = idx + 1
                            s = 1
                            continue 
                        _5414 = mem[64]
                        mem[64] = mem[64] + 192
                        require idx < stor10.length
                        mem[0] = 10
                        mem[_5414] = address(stor56C6[idx].field_0)
                        mem[_5414 + 32] = uint8(stor56C6[idx].field_160)
                        mem[_5414 + 64] = 2 * stor3.length - (stor4 * uint8(idx))
                        require (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) < stor11.length
                        mem[_5414 + 96] = address(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx)].field_0)
                        mem[_5414 + 128] = uint8(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx)].field_160)
                        mem[_5414 + 160] = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4)
                        stor5.length++
                        if not stor5.length <= stor5.length + 1:
                            s = (4 * stor5.length + 1) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0
                            while (4 * stor5.length) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0 > s:
                                Mask(168, 0, stor[s].field_0) = 0
                                uint256(stor1[s]) = 0
                                Mask(168, 0, stor2[s]) = 0
                                stor3[s] = 0
                                s = s + 1
                                continue 
                        address(stor5[stor5.length].field_0) = address(stor56C6[idx].field_0)
                        Mask(96, 0, stor5[stor5.length].field_160) = uint8(stor56C6[idx].field_160)
                        Mask(88, 0, stor5[stor5.length].field_168) = 0
                        bool(stor5[stor5.length].field_256) = 0
                        uint255(stor5[stor5.length].field_257) = uint255(stor3.length - (stor4 * uint8(idx)))
                        address(stor5[stor5.length].field_512) = address(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx)].field_0)
                        Mask(96, 0, stor5[stor5.length].field_672) = uint8(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx)].field_160)
                        Mask(88, 0, stor5[stor5.length].field_680) = 0
                        bool(stor5[stor5.length].field_768) = 0
                        uint255(stor5[stor5.length].field_769) = uint255(stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4))
                        require (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) < stor11.length
                        require idx < stor10.length
                        if uint8(stor56C6[idx].field_160) != uint8(stor[(('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) + code.data[4069 len 32]].field_160):
                            require (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) < stor11.length
                            mem[0] = address(stor[(('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) + code.data[4069 len 32]].field_0)
                            mem[32] = 1
                            if not uint8(stor1[address(stor[(('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) + code.data[4069 len 32]].field_0)]):
                                s = _5414
                                s = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4)
                                s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) + (uint8(idx) * stor4)
                                s = 2 * stor3.length - (stor4 * uint8(idx))
                                s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx)
                                idx = idx + 1
                                s = 0
                                continue 
                        else:
                            require idx < stor10.length
                            mem[0] = address(stor56C6[idx].field_0)
                            mem[32] = 1
                            if not uint8(stor1[address(stor56C6[idx].field_0)]):
                                s = _5414
                                s = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4)
                                s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) + (uint8(idx) * stor4)
                                s = 2 * stor3.length - (stor4 * uint8(idx))
                                s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx)
                                idx = idx + 1
                                s = 0
                                continue 
                        s = _5414
                        s = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4)
                        s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) + (uint8(idx) * stor4)
                        s = 2 * stor3.length - (stor4 * uint8(idx))
                        s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx)
                        idx = idx + 1
                        s = 1
                        continue 
                    uint256(stor7.field_0) = 0
                    stor10.length = 0
                    idx = 0x56c65a7bb8d6351c1cf70c95a316cc6a92839c986682d98bc35f958f4883f9d2
                    while stor10.length + 0x56c65a7bb8d6351c1cf70c95a316cc6a92839c986682d98bc35f958f4883f9d2 > idx:
                        Mask(168, 0, stor[idx].field_0) = 0
                        idx = idx + 1
                        continue 
                    stor11.length = 0
                    idx = code.data[4069 len 32]
                    while code.data[4069 len 32] + stor11.length > idx:
                        Mask(168, 0, stor[idx].field_0) = 0
                        idx = idx + 1
                        continue 
                    require s >= stor12
                    call address(stor2.length).Play(bool rg1) with:
                       value stor3.length wei
                         gas gas_remaining - 34050 wei
                        args 0
                    require ext_call.success
                else:
                    if 2 == uint256(stor7.field_0):
                        require 0 < stor11.length
                        call address(stor2.length).Play(bool rg1) with:
                           value stor3.length wei
                             gas gas_remaining - 34050 wei
                            args uint8(stor[code.data[4069 len 32]].field_0)
                        require ext_call.success
                    else:
                        if 4 == uint256(stor7.field_0):
                            require 0 < stor11.length
                            require 1 < stor11.length
                            if uint8(stor175B.field_160) == uint8(stor[code.data[4069 len 32]].field_160):
                                require 1 < stor11.length
                                call address(stor2.length).Play(bool rg1) with:
                                   value stor3.length wei
                                     gas gas_remaining - 34050 wei
                                    args uint8(stor175B.field_0)
                                require ext_call.success
                        else:
                            if 5 == uint256(stor7.field_0):
                                stor11.length++
                                if not stor11.length <= stor11.length + 1:
                                    idx = stor11.length + 1
                                    while stor11.length > idx:
                                        Mask(168, 0, stor11[idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                require 2 < stor10.length
                                address(stor11[stor11.length].field_0) = msg.sender
                                Mask(96, 0, stor11[stor11.length].field_160) = Mask(96, 0, not storC65A)
                                Mask(88, 0, stor11[stor11.length].field_168) = Mask(88, 168, msg.sender) >> 168
                                stor6++
                                uint256(stor7.field_0)++
                                if uint256(stor7.field_0) != stor9:
                                    require 1 == (sha3(block.hash(block.number - 1), stor6) % (stor9 - uint256(stor7.field_0) / 2) + 1) + 1
                                require 2 < stor10.length
                                call address(stor2.length).Play(bool rg1) with:
                                   value stor3.length wei
                                     gas gas_remaining - 34050 wei
                                    args not storC65A
                                require ext_call.success
        else:
            mem[0] = 10
            idx = 0
            while stor10.length > idx:
                stor10[idx] = 0
                idx = idx + 1
                continue 
            stor11.length = 0
            if not stor11.length > 0:
                idx = 0
                s = 0
                s = 0
                while idx < bool(stor7.field_0):
                    call address(stor2.length).getMatchers_by_index(uint256 rg1) with:
                         gas gas_remaining - 25050 wei
                        args idx
                    require ext_call.success
                    stor10.length = idx + 1
                    if not stor10.length > idx + 1:
                        _2977 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2977] = ext_call.return_data[0]
                        mem[_2977 + 32] = ext_call.return_data[32]
                        require idx < stor10.length
                        mem[0] = 10
                        address(stor56C6[idx].field_0) = address(ext_call.return_data[0])
                        Mask(96, 0, stor56C6[idx].field_160) = Mask(96, 0, ext_call.return_data[32])
                        Mask(88, 0, stor56C6[idx].field_168) = Mask(88, 168, ext_call.return_data[0]) >> 168
                        call address(stor2.length).getContrarians_by_index(uint256 rg1) with:
                             gas gas_remaining - 25050 wei
                            args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        require ext_call.success
                        stor11.length = idx + 1
                        if not stor11.length > idx + 1:
                            _3123 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3123] = ext_call.return_data[0]
                            mem[_3123 + 32] = ext_call.return_data[32]
                        else:
                            mem[0] = 11
                            s = idx + code.data[4069 len 32] + 1
                            while code.data[4069 len 32] + stor11.length > s:
                                Mask(168, 0, stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            _4271 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4271] = ext_call.return_data[0]
                            mem[_4271 + 32] = ext_call.return_data[32]
                    else:
                        mem[0] = 10
                        s = idx + 0x56c65a7bb8d6351c1cf70c95a316cc6a92839c986682d98bc35f958f4883f9d3
                        while stor10.length + 0x56c65a7bb8d6351c1cf70c95a316cc6a92839c986682d98bc35f958f4883f9d2 > s:
                            Mask(168, 0, stor[s].field_0) = 0
                            s = s + 1
                            continue 
                        _4272 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4272] = ext_call.return_data[0]
                        mem[_4272 + 32] = ext_call.return_data[32]
                        require idx < stor10.length
                        mem[0] = 10
                        address(stor56C6[idx].field_0) = address(ext_call.return_data[0])
                        Mask(96, 0, stor56C6[idx].field_160) = Mask(96, 0, ext_call.return_data[32])
                        Mask(88, 0, stor56C6[idx].field_168) = Mask(88, 168, ext_call.return_data[0]) >> 168
                        call address(stor2.length).getContrarians_by_index(uint256 rg1) with:
                             gas gas_remaining - 25050 wei
                            args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        require ext_call.success
                        stor11.length = idx + 1
                        if not stor11.length > idx + 1:
                            _4434 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4434] = ext_call.return_data[0]
                            mem[_4434 + 32] = ext_call.return_data[32]
                        else:
                            mem[0] = 11
                            s = idx + code.data[4069 len 32] + 1
                            while code.data[4069 len 32] + stor11.length > s:
                                Mask(168, 0, stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            _5373 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5373] = ext_call.return_data[0]
                            mem[_5373 + 32] = ext_call.return_data[32]
                    require idx < stor11.length
                    mem[0] = 11
                    address(stor[code.data[4069 len 32] + idx].field_0) = address(ext_call.return_data[0])
                    Mask(96, 0, stor[code.data[4069 len 32] + idx].field_160) = Mask(96, 0, ext_call.return_data[32])
                    Mask(88, 0, stor[code.data[4069 len 32] + idx].field_168) = Mask(88, 168, ext_call.return_data[0]) >> 168
                    idx = idx + 1
                    s = ext_call.return_data[32]
                    s = ext_call.return_data[0]
                    continue 
                if ext_call.return_data[96]:
                    _2933 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_2933] = 0
                    mem[_2933 + 32] = 0
                    mem[_2933 + 64] = 0
                    stor5.length = 0
                    idx = 0
                    while 4 * stor5.length > idx:
                        Mask(168, 0, stor5[idx].field_0) = 0
                        uint256(stor5[idx].field_256) = 0
                        Mask(168, 0, stor5[idx].field_512) = 0
                        uint256(stor5[idx].field_768) = 0
                        idx = idx + 1
                        continue 
                    s = _2933
                    s = 0
                    s = 0
                    s = 0
                    s = 0
                    idx = 0
                    s = 0
                    while uint8(idx) < uint255(stor7.field_1):
                        if (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) >= uint255(stor7.field_1):
                            _5419 = mem[64]
                            mem[64] = mem[64] + 192
                            require idx < stor10.length
                            mem[0] = 10
                            mem[_5419] = address(stor56C6[idx].field_0)
                            mem[_5419 + 32] = uint8(stor56C6[idx].field_160)
                            mem[_5419 + 64] = 2 * stor3.length - (stor4 * uint8(idx))
                            require (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1) < stor11.length
                            mem[_5419 + 96] = address(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)].field_0)
                            mem[_5419 + 128] = uint8(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)].field_160)
                            mem[_5419 + 160] = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4) + (uint255(stor7.field_1) * stor4)
                            stor5.length++
                            if not stor5.length <= stor5.length + 1:
                                s = (4 * stor5.length + 1) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0
                                while (4 * stor5.length) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0 > s:
                                    Mask(168, 0, stor[s].field_0) = 0
                                    uint256(stor1[s]) = 0
                                    Mask(168, 0, stor2[s]) = 0
                                    stor3[s] = 0
                                    s = s + 1
                                    continue 
                            address(stor5[stor5.length].field_0) = address(stor56C6[idx].field_0)
                            Mask(96, 0, stor5[stor5.length].field_160) = uint8(stor56C6[idx].field_160)
                            Mask(88, 0, stor5[stor5.length].field_168) = 0
                            bool(stor5[stor5.length].field_256) = 0
                            uint255(stor5[stor5.length].field_257) = uint255(stor3.length - (stor4 * uint8(idx)))
                            address(stor5[stor5.length].field_512) = address(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)].field_0)
                            Mask(96, 0, stor5[stor5.length].field_672) = uint8(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)].field_160)
                            Mask(88, 0, stor5[stor5.length].field_680) = 0
                            bool(stor5[stor5.length].field_768) = 0
                            uint255(stor5[stor5.length].field_769) = uint255(stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4) + (uint255(stor7.field_1) * stor4))
                            require (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1) < stor11.length
                            require idx < stor10.length
                            if uint8(stor56C6[idx].field_160) != uint8(stor[(('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1) + code.data[4069 len 32]].field_160):
                                require (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1) < stor11.length
                                mem[0] = address(stor[(('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1) + code.data[4069 len 32]].field_0)
                                mem[32] = 1
                                if not uint8(stor1[address(stor[(('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1) + code.data[4069 len 32]].field_0)]):
                                    s = _5419
                                    s = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4) + (uint255(stor7.field_1) * stor4)
                                    s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) + (uint8(idx) * stor4) - (uint255(stor7.field_1) * stor4)
                                    s = 2 * stor3.length - (stor4 * uint8(idx))
                                    s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)
                                    idx = idx + 1
                                    s = 0
                                    continue 
                            else:
                                require idx < stor10.length
                                mem[0] = address(stor56C6[idx].field_0)
                                mem[32] = 1
                                if not uint8(stor1[address(stor56C6[idx].field_0)]):
                                    s = _5419
                                    s = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4) + (uint255(stor7.field_1) * stor4)
                                    s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) + (uint8(idx) * stor4) - (uint255(stor7.field_1) * stor4)
                                    s = 2 * stor3.length - (stor4 * uint8(idx))
                                    s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)
                                    idx = idx + 1
                                    s = 0
                                    continue 
                            s = _5419
                            s = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4) + (uint255(stor7.field_1) * stor4)
                            s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) + (uint8(idx) * stor4) - (uint255(stor7.field_1) * stor4)
                            s = 2 * stor3.length - (stor4 * uint8(idx))
                            s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)
                            idx = idx + 1
                            s = 1
                            continue 
                        _5420 = mem[64]
                        mem[64] = mem[64] + 192
                        require idx < stor10.length
                        mem[0] = 10
                        mem[_5420] = address(stor56C6[idx].field_0)
                        mem[_5420 + 32] = uint8(stor56C6[idx].field_160)
                        mem[_5420 + 64] = 2 * stor3.length - (stor4 * uint8(idx))
                        require (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) < stor11.length
                        mem[_5420 + 96] = address(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx)].field_0)
                        mem[_5420 + 128] = uint8(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx)].field_160)
                        mem[_5420 + 160] = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4)
                        stor5.length++
                        if not stor5.length <= stor5.length + 1:
                            s = (4 * stor5.length + 1) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0
                            while (4 * stor5.length) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0 > s:
                                Mask(168, 0, stor[s].field_0) = 0
                                uint256(stor1[s]) = 0
                                Mask(168, 0, stor2[s]) = 0
                                stor3[s] = 0
                                s = s + 1
                                continue 
                        address(stor5[stor5.length].field_0) = address(stor56C6[idx].field_0)
                        Mask(96, 0, stor5[stor5.length].field_160) = uint8(stor56C6[idx].field_160)
                        Mask(88, 0, stor5[stor5.length].field_168) = 0
                        bool(stor5[stor5.length].field_256) = 0
                        uint255(stor5[stor5.length].field_257) = uint255(stor3.length - (stor4 * uint8(idx)))
                        address(stor5[stor5.length].field_512) = address(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx)].field_0)
                        Mask(96, 0, stor5[stor5.length].field_672) = uint8(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx)].field_160)
                        Mask(88, 0, stor5[stor5.length].field_680) = 0
                        bool(stor5[stor5.length].field_768) = 0
                        uint255(stor5[stor5.length].field_769) = uint255(stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4))
                        require (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) < stor11.length
                        require idx < stor10.length
                        if uint8(stor56C6[idx].field_160) != uint8(stor[(('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) + code.data[4069 len 32]].field_160):
                            require (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) < stor11.length
                            mem[0] = address(stor[(('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) + code.data[4069 len 32]].field_0)
                            mem[32] = 1
                            if not uint8(stor1[address(stor[(('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) + code.data[4069 len 32]].field_0)]):
                                s = _5420
                                s = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4)
                                s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) + (uint8(idx) * stor4)
                                s = 2 * stor3.length - (stor4 * uint8(idx))
                                s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx)
                                idx = idx + 1
                                s = 0
                                continue 
                        else:
                            require idx < stor10.length
                            mem[0] = address(stor56C6[idx].field_0)
                            mem[32] = 1
                            if not uint8(stor1[address(stor56C6[idx].field_0)]):
                                s = _5420
                                s = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4)
                                s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) + (uint8(idx) * stor4)
                                s = 2 * stor3.length - (stor4 * uint8(idx))
                                s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx)
                                idx = idx + 1
                                s = 0
                                continue 
                        s = _5420
                        s = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4)
                        s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) + (uint8(idx) * stor4)
                        s = 2 * stor3.length - (stor4 * uint8(idx))
                        s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx)
                        idx = idx + 1
                        s = 1
                        continue 
                    uint256(stor7.field_0) = 0
                    stor10.length = 0
                    idx = 0x56c65a7bb8d6351c1cf70c95a316cc6a92839c986682d98bc35f958f4883f9d2
                    while stor10.length + 0x56c65a7bb8d6351c1cf70c95a316cc6a92839c986682d98bc35f958f4883f9d2 > idx:
                        Mask(168, 0, stor[idx].field_0) = 0
                        idx = idx + 1
                        continue 
                    stor11.length = 0
                    idx = code.data[4069 len 32]
                    while code.data[4069 len 32] + stor11.length > idx:
                        Mask(168, 0, stor[idx].field_0) = 0
                        idx = idx + 1
                        continue 
                    require s >= stor12
                    call address(stor2.length).Play(bool rg1) with:
                       value stor3.length wei
                         gas gas_remaining - 34050 wei
                        args 0
                    require ext_call.success
                else:
                    if 2 == uint256(stor7.field_0):
                        require 0 < stor11.length
                        call address(stor2.length).Play(bool rg1) with:
                           value stor3.length wei
                             gas gas_remaining - 34050 wei
                            args uint8(stor[code.data[4069 len 32]].field_0)
                        require ext_call.success
                    else:
                        if 4 == uint256(stor7.field_0):
                            require 0 < stor11.length
                            require 1 < stor11.length
                            if uint8(stor175B.field_160) == uint8(stor[code.data[4069 len 32]].field_160):
                                require 1 < stor11.length
                                call address(stor2.length).Play(bool rg1) with:
                                   value stor3.length wei
                                     gas gas_remaining - 34050 wei
                                    args uint8(stor175B.field_0)
                                require ext_call.success
                        else:
                            if 5 == uint256(stor7.field_0):
                                stor11.length++
                                if not stor11.length <= stor11.length + 1:
                                    idx = stor11.length + 1
                                    while stor11.length > idx:
                                        Mask(168, 0, stor11[idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                require 2 < stor10.length
                                address(stor11[stor11.length].field_0) = msg.sender
                                Mask(96, 0, stor11[stor11.length].field_160) = Mask(96, 0, not storC65A)
                                Mask(88, 0, stor11[stor11.length].field_168) = Mask(88, 168, msg.sender) >> 168
                                stor6++
                                uint256(stor7.field_0)++
                                if uint256(stor7.field_0) != stor9:
                                    require 1 == (sha3(block.hash(block.number - 1), stor6) % (stor9 - uint256(stor7.field_0) / 2) + 1) + 1
                                require 2 < stor10.length
                                call address(stor2.length).Play(bool rg1) with:
                                   value stor3.length wei
                                     gas gas_remaining - 34050 wei
                                    args not storC65A
                                require ext_call.success
            else:
                mem[0] = 11
                idx = code.data[4069 len 32]
                while code.data[4069 len 32] + stor11.length > idx:
                    Mask(168, 0, stor[idx].field_0) = 0
                    idx = idx + 1
                    continue 
                idx = 0
                s = 0
                s = 0
                while idx < bool(stor7.field_0):
                    call address(stor2.length).getMatchers_by_index(uint256 rg1) with:
                         gas gas_remaining - 25050 wei
                        args idx
                    require ext_call.success
                    stor10.length = idx + 1
                    if not stor10.length > idx + 1:
                        _4353 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4353] = ext_call.return_data[0]
                        mem[_4353 + 32] = ext_call.return_data[32]
                        require idx < stor10.length
                        mem[0] = 10
                        address(stor56C6[idx].field_0) = address(ext_call.return_data[0])
                        Mask(96, 0, stor56C6[idx].field_160) = Mask(96, 0, ext_call.return_data[32])
                        Mask(88, 0, stor56C6[idx].field_168) = Mask(88, 168, ext_call.return_data[0]) >> 168
                        call address(stor2.length).getContrarians_by_index(uint256 rg1) with:
                             gas gas_remaining - 25050 wei
                            args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        require ext_call.success
                        stor11.length = idx + 1
                        if not stor11.length > idx + 1:
                            _4490 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4490] = ext_call.return_data[0]
                            mem[_4490 + 32] = ext_call.return_data[32]
                        else:
                            mem[0] = 11
                            s = idx + code.data[4069 len 32] + 1
                            while code.data[4069 len 32] + stor11.length > s:
                                Mask(168, 0, stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            _5376 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5376] = ext_call.return_data[0]
                            mem[_5376 + 32] = ext_call.return_data[32]
                    else:
                        mem[0] = 10
                        s = idx + 0x56c65a7bb8d6351c1cf70c95a316cc6a92839c986682d98bc35f958f4883f9d3
                        while stor10.length + 0x56c65a7bb8d6351c1cf70c95a316cc6a92839c986682d98bc35f958f4883f9d2 > s:
                            Mask(168, 0, stor[s].field_0) = 0
                            s = s + 1
                            continue 
                        _5377 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5377] = ext_call.return_data[0]
                        mem[_5377 + 32] = ext_call.return_data[32]
                        require idx < stor10.length
                        mem[0] = 10
                        address(stor56C6[idx].field_0) = address(ext_call.return_data[0])
                        Mask(96, 0, stor56C6[idx].field_160) = Mask(96, 0, ext_call.return_data[32])
                        Mask(88, 0, stor56C6[idx].field_168) = Mask(88, 168, ext_call.return_data[0]) >> 168
                        call address(stor2.length).getContrarians_by_index(uint256 rg1) with:
                             gas gas_remaining - 25050 wei
                            args idx
                        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
                        require ext_call.success
                        stor11.length = idx + 1
                        if not stor11.length > idx + 1:
                            _5503 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5503] = ext_call.return_data[0]
                            mem[_5503 + 32] = ext_call.return_data[32]
                        else:
                            mem[0] = 11
                            s = idx + code.data[4069 len 32] + 1
                            while code.data[4069 len 32] + stor11.length > s:
                                Mask(168, 0, stor[s].field_0) = 0
                                s = s + 1
                                continue 
                            _6125 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6125] = ext_call.return_data[0]
                            mem[_6125 + 32] = ext_call.return_data[32]
                    require idx < stor11.length
                    mem[0] = 11
                    address(stor[code.data[4069 len 32] + idx].field_0) = address(ext_call.return_data[0])
                    Mask(96, 0, stor[code.data[4069 len 32] + idx].field_160) = Mask(96, 0, ext_call.return_data[32])
                    Mask(88, 0, stor[code.data[4069 len 32] + idx].field_168) = Mask(88, 168, ext_call.return_data[0]) >> 168
                    idx = idx + 1
                    s = ext_call.return_data[32]
                    s = ext_call.return_data[0]
                    continue 
                if ext_call.return_data[96]:
                    _4273 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_4273] = 0
                    mem[_4273 + 32] = 0
                    mem[_4273 + 64] = 0
                    stor5.length = 0
                    idx = 0
                    while 4 * stor5.length > idx:
                        Mask(168, 0, stor5[idx].field_0) = 0
                        uint256(stor5[idx].field_256) = 0
                        Mask(168, 0, stor5[idx].field_512) = 0
                        uint256(stor5[idx].field_768) = 0
                        idx = idx + 1
                        continue 
                    s = _4273
                    s = 0
                    s = 0
                    s = 0
                    s = 0
                    idx = 0
                    s = 0
                    while uint8(idx) < uint255(stor7.field_1):
                        if (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) >= uint255(stor7.field_1):
                            _6148 = mem[64]
                            mem[64] = mem[64] + 192
                            require idx < stor10.length
                            mem[0] = 10
                            mem[_6148] = address(stor56C6[idx].field_0)
                            mem[_6148 + 32] = uint8(stor56C6[idx].field_160)
                            mem[_6148 + 64] = 2 * stor3.length - (stor4 * uint8(idx))
                            require (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1) < stor11.length
                            mem[_6148 + 96] = address(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)].field_0)
                            mem[_6148 + 128] = uint8(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)].field_160)
                            mem[_6148 + 160] = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4) + (uint255(stor7.field_1) * stor4)
                            stor5.length++
                            if not stor5.length <= stor5.length + 1:
                                s = (4 * stor5.length + 1) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0
                                while (4 * stor5.length) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0 > s:
                                    Mask(168, 0, stor[s].field_0) = 0
                                    uint256(stor1[s]) = 0
                                    Mask(168, 0, stor2[s]) = 0
                                    stor3[s] = 0
                                    s = s + 1
                                    continue 
                            address(stor5[stor5.length].field_0) = address(stor56C6[idx].field_0)
                            Mask(96, 0, stor5[stor5.length].field_160) = uint8(stor56C6[idx].field_160)
                            Mask(88, 0, stor5[stor5.length].field_168) = 0
                            bool(stor5[stor5.length].field_256) = 0
                            uint255(stor5[stor5.length].field_257) = uint255(stor3.length - (stor4 * uint8(idx)))
                            address(stor5[stor5.length].field_512) = address(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)].field_0)
                            Mask(96, 0, stor5[stor5.length].field_672) = uint8(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)].field_160)
                            Mask(88, 0, stor5[stor5.length].field_680) = 0
                            bool(stor5[stor5.length].field_768) = 0
                            uint255(stor5[stor5.length].field_769) = uint255(stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4) + (uint255(stor7.field_1) * stor4))
                            require (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1) < stor11.length
                            require idx < stor10.length
                            if uint8(stor56C6[idx].field_160) != uint8(stor[(('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1) + code.data[4069 len 32]].field_160):
                                require (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1) < stor11.length
                                mem[0] = address(stor[(('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1) + code.data[4069 len 32]].field_0)
                                mem[32] = 1
                                if not uint8(stor1[address(stor[(('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1) + code.data[4069 len 32]].field_0)]):
                                    s = _6148
                                    s = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4) + (uint255(stor7.field_1) * stor4)
                                    s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) + (uint8(idx) * stor4) - (uint255(stor7.field_1) * stor4)
                                    s = 2 * stor3.length - (stor4 * uint8(idx))
                                    s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)
                                    idx = idx + 1
                                    s = 0
                                    continue 
                            else:
                                require idx < stor10.length
                                mem[0] = address(stor56C6[idx].field_0)
                                mem[32] = 1
                                if not uint8(stor1[address(stor56C6[idx].field_0)]):
                                    s = _6148
                                    s = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4) + (uint255(stor7.field_1) * stor4)
                                    s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) + (uint8(idx) * stor4) - (uint255(stor7.field_1) * stor4)
                                    s = 2 * stor3.length - (stor4 * uint8(idx))
                                    s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)
                                    idx = idx + 1
                                    s = 0
                                    continue 
                            s = _6148
                            s = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4) + (uint255(stor7.field_1) * stor4)
                            s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) + (uint8(idx) * stor4) - (uint255(stor7.field_1) * stor4)
                            s = 2 * stor3.length - (stor4 * uint8(idx))
                            s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)
                            idx = idx + 1
                            s = 1
                            continue 
                        _6149 = mem[64]
                        mem[64] = mem[64] + 192
                        require idx < stor10.length
                        mem[0] = 10
                        mem[_6149] = address(stor56C6[idx].field_0)
                        mem[_6149 + 32] = uint8(stor56C6[idx].field_160)
                        mem[_6149 + 64] = 2 * stor3.length - (stor4 * uint8(idx))
                        require (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) < stor11.length
                        mem[_6149 + 96] = address(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx)].field_0)
                        mem[_6149 + 128] = uint8(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx)].field_160)
                        mem[_6149 + 160] = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4)
                        stor5.length++
                        if not stor5.length <= stor5.length + 1:
                            s = (4 * stor5.length + 1) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0
                            while (4 * stor5.length) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0 > s:
                                Mask(168, 0, stor[s].field_0) = 0
                                uint256(stor1[s]) = 0
                                Mask(168, 0, stor2[s]) = 0
                                stor3[s] = 0
                                s = s + 1
                                continue 
                        address(stor5[stor5.length].field_0) = address(stor56C6[idx].field_0)
                        Mask(96, 0, stor5[stor5.length].field_160) = uint8(stor56C6[idx].field_160)
                        Mask(88, 0, stor5[stor5.length].field_168) = 0
                        bool(stor5[stor5.length].field_256) = 0
                        uint255(stor5[stor5.length].field_257) = uint255(stor3.length - (stor4 * uint8(idx)))
                        address(stor5[stor5.length].field_512) = address(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx)].field_0)
                        Mask(96, 0, stor5[stor5.length].field_672) = uint8(stor[code.data[4069 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx)].field_160)
                        Mask(88, 0, stor5[stor5.length].field_680) = 0
                        bool(stor5[stor5.length].field_768) = 0
                        uint255(stor5[stor5.length].field_769) = uint255(stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4))
                        require (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) < stor11.length
                        require idx < stor10.length
                        if uint8(stor56C6[idx].field_160) != uint8(stor[(('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) + code.data[4069 len 32]].field_160):
                            require (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) < stor11.length
                            mem[0] = address(stor[(('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) + code.data[4069 len 32]].field_0)
                            mem[32] = 1
                            if not uint8(stor1[address(stor[(('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) + code.data[4069 len 32]].field_0)]):
                                s = _6149
                                s = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4)
                                s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) + (uint8(idx) * stor4)
                                s = 2 * stor3.length - (stor4 * uint8(idx))
                                s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx)
                                idx = idx + 1
                                s = 0
                                continue 
                        else:
                            require idx < stor10.length
                            mem[0] = address(stor56C6[idx].field_0)
                            mem[32] = 1
                            if not uint8(stor1[address(stor56C6[idx].field_0)]):
                                s = _6149
                                s = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4)
                                s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) + (uint8(idx) * stor4)
                                s = 2 * stor3.length - (stor4 * uint8(idx))
                                s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx)
                                idx = idx + 1
                                s = 0
                                continue 
                        s = _6149
                        s = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4)
                        s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) + (uint8(idx) * stor4)
                        s = 2 * stor3.length - (stor4 * uint8(idx))
                        s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx)
                        idx = idx + 1
                        s = 1
                        continue 
                    uint256(stor7.field_0) = 0
                    stor10.length = 0
                    idx = 0x56c65a7bb8d6351c1cf70c95a316cc6a92839c986682d98bc35f958f4883f9d2
                    while stor10.length + 0x56c65a7bb8d6351c1cf70c95a316cc6a92839c986682d98bc35f958f4883f9d2 > idx:
                        Mask(168, 0, stor[idx].field_0) = 0
                        idx = idx + 1
                        continue 
                    stor11.length = 0
                    idx = code.data[4069 len 32]
                    while code.data[4069 len 32] + stor11.length > idx:
                        Mask(168, 0, stor[idx].field_0) = 0
                        idx = idx + 1
                        continue 
                    require s >= stor12
                    call address(stor2.length).Play(bool rg1) with:
                       value stor3.length wei
                         gas gas_remaining - 34050 wei
                        args 0
                    require ext_call.success
                else:
                    if 2 == uint256(stor7.field_0):
                        require 0 < stor11.length
                        call address(stor2.length).Play(bool rg1) with:
                           value stor3.length wei
                             gas gas_remaining - 34050 wei
                            args uint8(stor[code.data[4069 len 32]].field_0)
                        require ext_call.success
                    else:
                        if 4 == uint256(stor7.field_0):
                            require 0 < stor11.length
                            require 1 < stor11.length
                            if uint8(stor175B.field_160) == uint8(stor[code.data[4069 len 32]].field_160):
                                require 1 < stor11.length
                                call address(stor2.length).Play(bool rg1) with:
                                   value stor3.length wei
                                     gas gas_remaining - 34050 wei
                                    args uint8(stor175B.field_0)
                                require ext_call.success
                        else:
                            if 5 == uint256(stor7.field_0):
                                stor11.length++
                                if not stor11.length <= stor11.length + 1:
                                    idx = stor11.length + 1
                                    while stor11.length > idx:
                                        Mask(168, 0, stor11[idx].field_0) = 0
                                        idx = idx + 1
                                        continue 
                                require 2 < stor10.length
                                address(stor11[stor11.length].field_0) = msg.sender
                                Mask(96, 0, stor11[stor11.length].field_160) = Mask(96, 0, not storC65A)
                                Mask(88, 0, stor11[stor11.length].field_168) = Mask(88, 168, msg.sender) >> 168
                                stor6++
                                uint256(stor7.field_0)++
                                if uint256(stor7.field_0) != stor9:
                                    require 1 == (sha3(block.hash(block.number - 1), stor6) % (stor9 - uint256(stor7.field_0) / 2) + 1) + 1
                                require 2 < stor10.length
                                call address(stor2.length).Play(bool rg1) with:
                                   value stor3.length wei
                                     gas gas_remaining - 34050 wei
                                    args not storC65A
                                require ext_call.success
}



}
