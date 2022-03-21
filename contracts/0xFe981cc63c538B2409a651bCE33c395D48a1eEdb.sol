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
    return code.data[102 len 3509]
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
uint256 stor10;
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
        idx = 0
        s = 0
        s = 0
        while idx < bool(stor7.field_0):
            call address(stor2.length).getMatchers_by_index(uint256 rg1) with:
                 gas gas_remaining - 25050 wei
                args idx
            require ext_call.success
            _322 = mem[64]
            mem[64] = mem[64] + 64
            mem[_322] = ext_call.return_data[0]
            mem[_322 + 32] = ext_call.return_data[32]
            require idx < stor10
            mem[0] = 10
            address(stor56C6[idx].field_0) = address(ext_call.return_data[0])
            Mask(96, 0, stor56C6[idx].field_160) = Mask(96, 0, ext_call.return_data[32])
            Mask(88, 0, stor56C6[idx].field_168) = Mask(88, 168, ext_call.return_data[0]) >> 168
            call address(stor2.length).getContrarians_by_index(uint256 rg1) with:
                 gas gas_remaining - 25050 wei
                args idx
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            require ext_call.success
            _346 = mem[64]
            mem[64] = mem[64] + 64
            mem[_346] = ext_call.return_data[0]
            mem[_346 + 32] = ext_call.return_data[32]
            require idx < stor11.length
            mem[0] = 11
            address(stor[code.data[3477 len 32] + idx].field_0) = address(ext_call.return_data[0])
            Mask(96, 0, stor[code.data[3477 len 32] + idx].field_160) = Mask(96, 0, ext_call.return_data[32])
            Mask(88, 0, stor[code.data[3477 len 32] + idx].field_168) = Mask(88, 168, ext_call.return_data[0]) >> 168
            idx = idx + 1
            s = ext_call.return_data[32]
            s = ext_call.return_data[0]
            continue 
        if ext_call.return_data[96]:
            _320 = mem[64]
            mem[64] = mem[64] + 192
            mem[_320] = 0
            mem[_320 + 32] = 0
            mem[_320 + 64] = 0
            stor5.length = 0
            idx = 0
            while 4 * stor5.length > idx:
                Mask(168, 0, stor5[idx].field_0) = 0
                uint256(stor5[idx].field_256) = 0
                Mask(168, 0, stor5[idx].field_512) = 0
                uint256(stor5[idx].field_768) = 0
                idx = idx + 1
                continue 
            s = _320
            s = 0
            s = 0
            s = 0
            s = 0
            idx = 0
            s = 0
            while uint8(idx) < uint255(stor7.field_1):
                if (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) >= uint255(stor7.field_1):
                    _824 = mem[64]
                    mem[64] = mem[64] + 192
                    require idx < stor10
                    mem[0] = 10
                    mem[_824] = address(stor56C6[idx].field_0)
                    mem[_824 + 32] = uint8(stor56C6[idx].field_160)
                    mem[_824 + 64] = 2 * stor3.length - (stor4 * uint8(idx))
                    require (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1) < stor11.length
                    mem[_824 + 96] = address(stor[code.data[3477 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)].field_0)
                    mem[_824 + 128] = uint8(stor[code.data[3477 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)].field_160)
                    mem[_824 + 160] = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4) + (uint255(stor7.field_1) * stor4)
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
                    address(stor5[stor5.length].field_512) = address(stor[code.data[3477 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)].field_0)
                    Mask(96, 0, stor5[stor5.length].field_672) = uint8(stor[code.data[3477 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)].field_160)
                    Mask(88, 0, stor5[stor5.length].field_680) = 0
                    bool(stor5[stor5.length].field_768) = 0
                    uint255(stor5[stor5.length].field_769) = uint255(stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4) + (uint255(stor7.field_1) * stor4))
                    require (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1) < stor11.length
                    require idx < stor10
                    if uint8(stor56C6[idx].field_160) != uint8(stor[code.data[3477 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)].field_160):
                        require (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1) < stor11.length
                        mem[0] = address(stor[(('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1) + code.data[3477 len 32]].field_0)
                        mem[32] = 1
                        if not uint8(stor1[address(stor[(('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1) + code.data[3477 len 32]].field_0)]):
                            s = _824
                            s = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4) + (uint255(stor7.field_1) * stor4)
                            s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) + (uint8(idx) * stor4) - (uint255(stor7.field_1) * stor4)
                            s = 2 * stor3.length - (stor4 * uint8(idx))
                            s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)
                            idx = idx + 1
                            s = 0
                            continue 
                    else:
                        require idx < stor10
                        mem[0] = address(stor56C6[idx].field_0)
                        mem[32] = 1
                        if not uint8(stor1[address(stor56C6[idx].field_0)]):
                            s = _824
                            s = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4) + (uint255(stor7.field_1) * stor4)
                            s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) + (uint8(idx) * stor4) - (uint255(stor7.field_1) * stor4)
                            s = 2 * stor3.length - (stor4 * uint8(idx))
                            s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)
                            idx = idx + 1
                            s = 0
                            continue 
                    s = _824
                    s = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4) + (uint255(stor7.field_1) * stor4)
                    s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) + (uint8(idx) * stor4) - (uint255(stor7.field_1) * stor4)
                    s = 2 * stor3.length - (stor4 * uint8(idx))
                    s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)
                    idx = idx + 1
                    s = 1
                    continue 
                _825 = mem[64]
                mem[64] = mem[64] + 192
                require idx < stor10
                mem[0] = 10
                mem[_825] = address(stor56C6[idx].field_0)
                mem[_825 + 32] = uint8(stor56C6[idx].field_160)
                mem[_825 + 64] = 2 * stor3.length - (stor4 * uint8(idx))
                require (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) < stor11.length
                mem[_825 + 96] = address(stor[code.data[3477 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx)].field_0)
                mem[_825 + 128] = uint8(stor[code.data[3477 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx)].field_160)
                mem[_825 + 160] = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4)
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
                address(stor5[stor5.length].field_512) = address(stor[code.data[3477 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx)].field_0)
                Mask(96, 0, stor5[stor5.length].field_672) = uint8(stor[code.data[3477 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx)].field_160)
                Mask(88, 0, stor5[stor5.length].field_680) = 0
                bool(stor5[stor5.length].field_768) = 0
                uint255(stor5[stor5.length].field_769) = uint255(stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4))
                require (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) < stor11.length
                require idx < stor10
                if uint8(stor56C6[idx].field_160) != uint8(stor[code.data[3477 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx)].field_160):
                    require (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) < stor11.length
                    mem[0] = address(stor[(('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) + code.data[3477 len 32]].field_0)
                    mem[32] = 1
                    if not uint8(stor1[address(stor[(('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) + code.data[3477 len 32]].field_0)]):
                        s = _825
                        s = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4)
                        s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) + (uint8(idx) * stor4)
                        s = 2 * stor3.length - (stor4 * uint8(idx))
                        s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx)
                        idx = idx + 1
                        s = 0
                        continue 
                else:
                    require idx < stor10
                    mem[0] = address(stor56C6[idx].field_0)
                    mem[32] = 1
                    if not uint8(stor1[address(stor56C6[idx].field_0)]):
                        s = _825
                        s = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4)
                        s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) + (uint8(idx) * stor4)
                        s = 2 * stor3.length - (stor4 * uint8(idx))
                        s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx)
                        idx = idx + 1
                        s = 0
                        continue 
                s = _825
                s = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4)
                s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) + (uint8(idx) * stor4)
                s = 2 * stor3.length - (stor4 * uint8(idx))
                s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx)
                idx = idx + 1
                s = 1
                continue 
            uint256(stor7.field_0) = 0
            stor10 = 0
            idx = 0x56c65a7bb8d6351c1cf70c95a316cc6a92839c986682d98bc35f958f4883f9d2
            while stor10 + 0x56c65a7bb8d6351c1cf70c95a316cc6a92839c986682d98bc35f958f4883f9d2 > idx:
                Mask(168, 0, stor[idx].field_0) = 0
                idx = idx + 1
                continue 
            stor11.length = 0
            idx = code.data[3477 len 32]
            while code.data[3477 len 32] + stor11.length > idx:
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
                    args uint8(stor[code.data[3477 len 32]].field_0)
                require ext_call.success
            else:
                if 4 == uint256(stor7.field_0):
                    require 0 < stor11.length
                    require 1 < stor11.length
                    if uint8(stor175B.field_160) == uint8(stor[code.data[3477 len 32]].field_160):
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
                        require 2 < stor10
                        address(stor11[stor11.length].field_0) = msg.sender
                        Mask(96, 0, stor11[stor11.length].field_160) = Mask(96, 0, not storC65A)
                        Mask(88, 0, stor11[stor11.length].field_168) = Mask(88, 168, msg.sender) >> 168
                        stor6++
                        uint256(stor7.field_0)++
                        if uint256(stor7.field_0) != stor9:
                            require 1 == (sha3(block.hash(block.number - 1), stor6) % (stor9 - uint256(stor7.field_0) / 2) + 1) + 1
                        require 2 < stor10
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
        idx = 0
        s = 0
        s = 0
        while idx < bool(stor7.field_0):
            call address(stor2.length).getMatchers_by_index(uint256 rg1) with:
                 gas gas_remaining - 25050 wei
                args idx
            require ext_call.success
            _327 = mem[64]
            mem[64] = mem[64] + 64
            mem[_327] = ext_call.return_data[0]
            mem[_327 + 32] = ext_call.return_data[32]
            require idx < stor10
            mem[0] = 10
            address(stor56C6[idx].field_0) = address(ext_call.return_data[0])
            Mask(96, 0, stor56C6[idx].field_160) = Mask(96, 0, ext_call.return_data[32])
            Mask(88, 0, stor56C6[idx].field_168) = Mask(88, 168, ext_call.return_data[0]) >> 168
            call address(stor2.length).getContrarians_by_index(uint256 rg1) with:
                 gas gas_remaining - 25050 wei
                args idx
            mem[mem[64] len 64] = ext_call.return_data[0 len 64]
            require ext_call.success
            _353 = mem[64]
            mem[64] = mem[64] + 64
            mem[_353] = ext_call.return_data[0]
            mem[_353 + 32] = ext_call.return_data[32]
            require idx < stor11.length
            mem[0] = 11
            address(stor[code.data[3477 len 32] + idx].field_0) = address(ext_call.return_data[0])
            Mask(96, 0, stor[code.data[3477 len 32] + idx].field_160) = Mask(96, 0, ext_call.return_data[32])
            Mask(88, 0, stor[code.data[3477 len 32] + idx].field_168) = Mask(88, 168, ext_call.return_data[0]) >> 168
            idx = idx + 1
            s = ext_call.return_data[32]
            s = ext_call.return_data[0]
            continue 
        if ext_call.return_data[96]:
            _325 = mem[64]
            mem[64] = mem[64] + 192
            mem[_325] = 0
            mem[_325 + 32] = 0
            mem[_325 + 64] = 0
            stor5.length = 0
            idx = 0
            while 4 * stor5.length > idx:
                Mask(168, 0, stor5[idx].field_0) = 0
                uint256(stor5[idx].field_256) = 0
                Mask(168, 0, stor5[idx].field_512) = 0
                uint256(stor5[idx].field_768) = 0
                idx = idx + 1
                continue 
            s = _325
            s = 0
            s = 0
            s = 0
            s = 0
            idx = 0
            s = 0
            while uint8(idx) < uint255(stor7.field_1):
                if (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) >= uint255(stor7.field_1):
                    _826 = mem[64]
                    mem[64] = mem[64] + 192
                    require idx < stor10
                    mem[0] = 10
                    mem[_826] = address(stor56C6[idx].field_0)
                    mem[_826 + 32] = uint8(stor56C6[idx].field_160)
                    mem[_826 + 64] = 2 * stor3.length - (stor4 * uint8(idx))
                    require (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1) < stor11.length
                    mem[_826 + 96] = address(stor[code.data[3477 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)].field_0)
                    mem[_826 + 128] = uint8(stor[code.data[3477 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)].field_160)
                    mem[_826 + 160] = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4) + (uint255(stor7.field_1) * stor4)
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
                    address(stor5[stor5.length].field_512) = address(stor[code.data[3477 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)].field_0)
                    Mask(96, 0, stor5[stor5.length].field_672) = uint8(stor[code.data[3477 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)].field_160)
                    Mask(88, 0, stor5[stor5.length].field_680) = 0
                    bool(stor5[stor5.length].field_768) = 0
                    uint255(stor5[stor5.length].field_769) = uint255(stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4) + (uint255(stor7.field_1) * stor4))
                    require (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1) < stor11.length
                    require idx < stor10
                    if uint8(stor56C6[idx].field_160) != uint8(stor[code.data[3477 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)].field_160):
                        require (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1) < stor11.length
                        mem[0] = address(stor[(('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1) + code.data[3477 len 32]].field_0)
                        mem[32] = 1
                        if not uint8(stor1[address(stor[(('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1) + code.data[3477 len 32]].field_0)]):
                            s = _826
                            s = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4) + (uint255(stor7.field_1) * stor4)
                            s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) + (uint8(idx) * stor4) - (uint255(stor7.field_1) * stor4)
                            s = 2 * stor3.length - (stor4 * uint8(idx))
                            s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)
                            idx = idx + 1
                            s = 0
                            continue 
                    else:
                        require idx < stor10
                        mem[0] = address(stor56C6[idx].field_0)
                        mem[32] = 1
                        if not uint8(stor1[address(stor56C6[idx].field_0)]):
                            s = _826
                            s = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4) + (uint255(stor7.field_1) * stor4)
                            s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) + (uint8(idx) * stor4) - (uint255(stor7.field_1) * stor4)
                            s = 2 * stor3.length - (stor4 * uint8(idx))
                            s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)
                            idx = idx + 1
                            s = 0
                            continue 
                    s = _826
                    s = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4) + (uint255(stor7.field_1) * stor4)
                    s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) + (uint8(idx) * stor4) - (uint255(stor7.field_1) * stor4)
                    s = 2 * stor3.length - (stor4 * uint8(idx))
                    s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) - uint255(stor7.field_1)
                    idx = idx + 1
                    s = 1
                    continue 
                _827 = mem[64]
                mem[64] = mem[64] + 192
                require idx < stor10
                mem[0] = 10
                mem[_827] = address(stor56C6[idx].field_0)
                mem[_827 + 32] = uint8(stor56C6[idx].field_160)
                mem[_827 + 64] = 2 * stor3.length - (stor4 * uint8(idx))
                require (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) < stor11.length
                mem[_827 + 96] = address(stor[code.data[3477 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx)].field_0)
                mem[_827 + 128] = uint8(stor[code.data[3477 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx)].field_160)
                mem[_827 + 160] = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4)
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
                address(stor5[stor5.length].field_512) = address(stor[code.data[3477 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx)].field_0)
                Mask(96, 0, stor5[stor5.length].field_672) = uint8(stor[code.data[3477 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx)].field_160)
                Mask(88, 0, stor5[stor5.length].field_680) = 0
                bool(stor5[stor5.length].field_768) = 0
                uint255(stor5[stor5.length].field_769) = uint255(stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4))
                require (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) < stor11.length
                require idx < stor10
                if uint8(stor56C6[idx].field_160) != uint8(stor[code.data[3477 len 32] + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx)].field_160):
                    require (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx) < stor11.length
                    mem[0] = address(stor[(('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) + code.data[3477 len 32]].field_0)
                    mem[32] = 1
                    if not uint8(stor1[address(stor[(('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor6', 6))) % uint255(stor7.field_1)) + uint8(idx) + code.data[3477 len 32]].field_0)]):
                        s = _827
                        s = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4)
                        s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) + (uint8(idx) * stor4)
                        s = 2 * stor3.length - (stor4 * uint8(idx))
                        s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx)
                        idx = idx + 1
                        s = 0
                        continue 
                else:
                    require idx < stor10
                    mem[0] = address(stor56C6[idx].field_0)
                    mem[32] = 1
                    if not uint8(stor1[address(stor56C6[idx].field_0)]):
                        s = _827
                        s = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4)
                        s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) + (uint8(idx) * stor4)
                        s = 2 * stor3.length - (stor4 * uint8(idx))
                        s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx)
                        idx = idx + 1
                        s = 0
                        continue 
                s = _827
                s = 2 * stor3.length - (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) - (uint8(idx) * stor4)
                s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1) * stor4) + (uint8(idx) * stor4)
                s = 2 * stor3.length - (stor4 * uint8(idx))
                s = (sha3(block.hash(block.number - 1), stor6) % uint255(stor7.field_1)) + uint8(idx)
                idx = idx + 1
                s = 1
                continue 
            uint256(stor7.field_0) = 0
            stor10 = 0
            idx = 0x56c65a7bb8d6351c1cf70c95a316cc6a92839c986682d98bc35f958f4883f9d2
            while stor10 + 0x56c65a7bb8d6351c1cf70c95a316cc6a92839c986682d98bc35f958f4883f9d2 > idx:
                Mask(168, 0, stor[idx].field_0) = 0
                idx = idx + 1
                continue 
            stor11.length = 0
            idx = code.data[3477 len 32]
            while code.data[3477 len 32] + stor11.length > idx:
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
                    args uint8(stor[code.data[3477 len 32]].field_0)
                require ext_call.success
            else:
                if 4 == uint256(stor7.field_0):
                    require 0 < stor11.length
                    require 1 < stor11.length
                    if uint8(stor175B.field_160) == uint8(stor[code.data[3477 len 32]].field_160):
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
                        require 2 < stor10
                        address(stor11[stor11.length].field_0) = msg.sender
                        Mask(96, 0, stor11[stor11.length].field_160) = Mask(96, 0, not storC65A)
                        Mask(88, 0, stor11[stor11.length].field_168) = Mask(88, 168, msg.sender) >> 168
                        stor6++
                        uint256(stor7.field_0)++
                        if uint256(stor7.field_0) != stor9:
                            require 1 == (sha3(block.hash(block.number - 1), stor6) % (stor9 - uint256(stor7.field_0) / 2) + 1) + 1
                        require 2 < stor10
                        call address(stor2.length).Play(bool rg1) with:
                           value stor3.length wei
                             gas gas_remaining - 34050 wei
                            args not storC65A
                        require ext_call.success
}



}
