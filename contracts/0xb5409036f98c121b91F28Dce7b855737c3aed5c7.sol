contract main {


// =======================  Init code  ======================


uint8 stor10;
uint8 stor17;

function _fallback() payable {
    stor10 = 0
    stor17 = 0
    return code.data[68 len 7736]
}



// =====================  Runtime code  =====================


uint8 state;
array of uint256 stor1;
array of struct stor2;
array of uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
bool stor9;
uint256 stor9; offset 1
uint256 stor9;
uint8 stor10;
uint256 stor11;
array of struct matchers_by_index;
array of struct contrarians_by_index;
array of struct lastRoundResults_by_index;
mapping of uint256 historyPayout;
mapping of uint256 historyTimesPlayed;
uint8 stor17;
array of uint256 nickname;

function getContrarians_by_index(uint256 arg1) payable {
    require msg.value <= 0
    require arg1 < contrarians_by_index.length
    return address(contrarians_by_index[arg1].field_0), uint8(contrarians_by_index[arg1].field_160)
}

function getLastRoundResults_by_index(uint256 arg1) payable {
    require msg.value <= 0
    require arg1 < lastRoundResults_by_index.length
    return address(lastRoundResults_by_index[arg1].field_0), 
           address(lastRoundResults_by_index[arg1].field_512),
           uint8(lastRoundResults_by_index[arg1].field_0),
           uint8(lastRoundResults_by_index[arg1].field_512),
           uint256(lastRoundResults_by_index[arg1].field_256),
           uint256(lastRoundResults_by_index[arg1].field_768)
}

function historyPayout(address arg1) payable {
    require msg.value <= 0
    return historyPayout[address(arg1)]
}

function getNickname(address arg1) payable {
    return nickname[address(arg1)][0 len nickname[address(arg1)].length]
}

function state() payable {
    return state
}

function historyTimesPlayed(address arg1) payable {
    require msg.value <= 0
    return historyTimesPlayed[address(arg1)]
}

function getMatchers_by_index(uint256 arg1) payable {
    require msg.value <= 0
    require arg1 < matchers_by_index.length
    return address(matchers_by_index[arg1].field_0), uint8(matchers_by_index[arg1].field_160)
}

function gameSettings() payable {
    require msg.value <= 0
    return stor3.length, stor4, stor6, stor5
}

function deactivate() payable {
    require msg.sender == address(stor2.length)
    require msg.value <= 0
    stor17 = 1
}

function reactivate() payable {
    require msg.sender == address(stor2.length)
    require msg.value <= 0
    state = 0
    stor17 = 0
}

function gameStats() payable {
    require msg.value <= 0
    return uint256(stor9.field_0), stor7, stor8, stor10, stor11, stor1.length, state, stor17
}

function Matching_Ethers() payable {
    stor2.length = msg.sender or Mask(96, 160, stor2.length)
    stor6 = 16
    stor5 = 20
    stor4 = 5 * 10^14
    stor3.length = 10^17
}

function changeOwner(address arg1) payable {
    require msg.sender == address(stor2.length)
    require msg.value <= 0
    stor2.length = arg1 or Mask(96, 160, stor2.length)
}

function setNickname(string arg1) payable {
    require msg.value <= 0
    if arg1.length >= 2:
        if arg1.length <= 16:
            nickname[address(msg.sender)][] = Array(len=arg1.length, data=arg1[all])
}

function config(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require msg.sender == address(stor2.length)
    require state == 1
    require msg.value <= 0
    require arg1 >= arg2
    require arg3 <= arg4 / 100
    stor5 = arg1
    stor6 = arg2
    stor4 = arg3
    stor3.length = arg4
}

function Play(bool arg1) payable {
    mem[64] = 96
    require msg.value >= stor3.length
    if msg.value <= stor3.length:
        require not state
        stor1.length = block.number + 1
        if stor10:
            if stor1.length == stor11:
                if stor10:
                    require stor1.length != stor11
            else:
                lastRoundResults_by_index.length = 0
                idx = 0
                while 4 * lastRoundResults_by_index.length > idx:
                    address(lastRoundResults_by_index[idx].field_0) = 0
                    uint8(lastRoundResults_by_index[idx].field_160) = 0
                    uint256(lastRoundResults_by_index[idx].field_256) = 0
                    address(lastRoundResults_by_index[idx].field_512) = 0
                    uint8(lastRoundResults_by_index[idx].field_672) = 0
                    uint256(lastRoundResults_by_index[idx].field_768) = 0
                    idx = idx + 4
                    continue 
                s = 0
                s = 0
                s = 0
                s = 0
                idx = 0
                s = 0
                while uint8(idx) < uint255(stor9.field_1):
                    lastRoundResults_by_index.length++
                    if uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) >= uint255(stor9.field_1):
                        if not lastRoundResults_by_index.length > lastRoundResults_by_index.length + 1:
                            _1012 = mem[64]
                            mem[64] = mem[64] + 192
                            require uint8(idx) < matchers_by_index.length
                            mem[0] = 12
                            mem[_1012] = address(matchers_by_index[uint8(idx)].field_0)
                            mem[_1012 + 32] = uint8(matchers_by_index[uint8(idx)].field_160)
                            mem[_1012 + 64] = 2 * stor3.length - (stor4 * uint8(idx))
                            require uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) - uint255(stor9.field_1) < contrarians_by_index.length
                            mem[_1012 + 96] = address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_0)
                            mem[_1012 + 128] = uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_160)
                            mem[_1012 + 160] = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4)
                        else:
                            t = sha3(14) + (4 * lastRoundResults_by_index.length + 1)
                            while sha3(14) + (4 * lastRoundResults_by_index.length) > t:
                                address(stor[t].field_0) = 0
                                uint8(stor[t].field_160) = 0
                                stor1[t] = 0
                                address(stor2[t].field_0) = 0
                                uint8(stor2[t].field_160) = 0
                                stor3[t] = 0
                                t = t + 4
                                continue 
                            _1343 = mem[64]
                            mem[64] = mem[64] + 192
                            require uint8(idx) < matchers_by_index.length
                            mem[0] = 12
                            mem[_1343] = address(matchers_by_index[uint8(idx)].field_0)
                            mem[_1343 + 32] = uint8(matchers_by_index[uint8(idx)].field_160)
                            mem[_1343 + 64] = 2 * stor3.length - (stor4 * uint8(idx))
                            require uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) - uint255(stor9.field_1) < contrarians_by_index.length
                            mem[_1343 + 96] = address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_0)
                            mem[_1343 + 128] = uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_160)
                            mem[_1343 + 160] = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4)
                        address(lastRoundResults_by_index[lastRoundResults_by_index.length].field_0) = address(matchers_by_index[uint8(idx)].field_0)
                        Mask(96, 0, lastRoundResults_by_index[lastRoundResults_by_index.length].field_160) = uint8(matchers_by_index[uint8(idx)].field_160)
                        bool(lastRoundResults_by_index[lastRoundResults_by_index.length].field_256) = 0
                        uint255(lastRoundResults_by_index[lastRoundResults_by_index.length].field_257) = uint255(stor3.length - (stor4 * uint8(idx)))
                        address(lastRoundResults_by_index[lastRoundResults_by_index.length].field_512) = address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_0)
                        Mask(96, 0, lastRoundResults_by_index[lastRoundResults_by_index.length].field_672) = uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_160)
                        bool(lastRoundResults_by_index[lastRoundResults_by_index.length].field_768) = 0
                        uint255(lastRoundResults_by_index[lastRoundResults_by_index.length].field_769) = uint255(stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4))
                        require uint8(idx) < matchers_by_index.length
                        if uint8(matchers_by_index[uint8(idx)].field_160) == uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_160):
                            require uint8(idx) < matchers_by_index.length
                            call address(matchers_by_index[uint8(idx)].field_0) with:
                               value 2 * stor3.length - (stor4 * uint8(idx)) wei
                                 gas 0 wei
                            mem[0] = address(matchers_by_index[uint8(idx)].field_0)
                            mem[32] = 15
                            historyPayout[address(stor12[uint8(idx)].field_0)] += 2 * stor3.length - (stor4 * uint8(idx))
                            s = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4)
                            s = (uint8(idx) * stor4) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) - (uint255(stor9.field_1) * stor4)
                            s = 2 * stor3.length - (stor4 * uint8(idx))
                            s = uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) - uint255(stor9.field_1)
                            idx = idx + 1
                            s = s + (2 * stor3.length - (stor4 * uint8(idx)))
                            continue 
                        require uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) - uint255(stor9.field_1) < contrarians_by_index.length
                        call address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_0) with:
                           value 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4) wei
                             gas 0 wei
                        require uint8(idx) < contrarians_by_index.length
                        mem[0] = address(contrarians_by_index[uint8(idx)].field_0)
                        mem[32] = 15
                        historyPayout[address(stor13[uint8(idx)].field_0)] += 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4)
                        s = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4)
                        s = (uint8(idx) * stor4) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) - (uint255(stor9.field_1) * stor4)
                        s = 2 * stor3.length - (stor4 * uint8(idx))
                        s = uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) - uint255(stor9.field_1)
                        idx = idx + 1
                        s = s + (2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4))
                        continue 
                    if not lastRoundResults_by_index.length > lastRoundResults_by_index.length + 1:
                        _1013 = mem[64]
                        mem[64] = mem[64] + 192
                        require uint8(idx) < matchers_by_index.length
                        mem[0] = 12
                        mem[_1013] = address(matchers_by_index[uint8(idx)].field_0)
                        mem[_1013 + 32] = uint8(matchers_by_index[uint8(idx)].field_160)
                        mem[_1013 + 64] = 2 * stor3.length - (stor4 * uint8(idx))
                        require uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) < contrarians_by_index.length
                        mem[_1013 + 96] = address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_0)
                        mem[_1013 + 128] = uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_160)
                        mem[_1013 + 160] = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                    else:
                        t = sha3(14) + (4 * lastRoundResults_by_index.length + 1)
                        while sha3(14) + (4 * lastRoundResults_by_index.length) > t:
                            address(stor[t].field_0) = 0
                            uint8(stor[t].field_160) = 0
                            stor1[t] = 0
                            address(stor2[t].field_0) = 0
                            uint8(stor2[t].field_160) = 0
                            stor3[t] = 0
                            t = t + 4
                            continue 
                        _1344 = mem[64]
                        mem[64] = mem[64] + 192
                        require uint8(idx) < matchers_by_index.length
                        mem[0] = 12
                        mem[_1344] = address(matchers_by_index[uint8(idx)].field_0)
                        mem[_1344 + 32] = uint8(matchers_by_index[uint8(idx)].field_160)
                        mem[_1344 + 64] = 2 * stor3.length - (stor4 * uint8(idx))
                        require uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) < contrarians_by_index.length
                        mem[_1344 + 96] = address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_0)
                        mem[_1344 + 128] = uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_160)
                        mem[_1344 + 160] = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                    address(lastRoundResults_by_index[lastRoundResults_by_index.length].field_0) = address(matchers_by_index[uint8(idx)].field_0)
                    Mask(96, 0, lastRoundResults_by_index[lastRoundResults_by_index.length].field_160) = uint8(matchers_by_index[uint8(idx)].field_160)
                    bool(lastRoundResults_by_index[lastRoundResults_by_index.length].field_256) = 0
                    uint255(lastRoundResults_by_index[lastRoundResults_by_index.length].field_257) = uint255(stor3.length - (stor4 * uint8(idx)))
                    address(lastRoundResults_by_index[lastRoundResults_by_index.length].field_512) = address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_0)
                    Mask(96, 0, lastRoundResults_by_index[lastRoundResults_by_index.length].field_672) = uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_160)
                    bool(lastRoundResults_by_index[lastRoundResults_by_index.length].field_768) = 0
                    uint255(lastRoundResults_by_index[lastRoundResults_by_index.length].field_769) = uint255(stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4))
                    require uint8(idx) < matchers_by_index.length
                    if uint8(matchers_by_index[uint8(idx)].field_160) == uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_160):
                        require uint8(idx) < matchers_by_index.length
                        call address(matchers_by_index[uint8(idx)].field_0) with:
                           value 2 * stor3.length - (stor4 * uint8(idx)) wei
                             gas 0 wei
                        mem[0] = address(matchers_by_index[uint8(idx)].field_0)
                        mem[32] = 15
                        historyPayout[address(stor12[uint8(idx)].field_0)] += 2 * stor3.length - (stor4 * uint8(idx))
                        s = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                        s = (uint8(idx) * stor4) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                        s = 2 * stor3.length - (stor4 * uint8(idx))
                        s = uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1))
                        idx = idx + 1
                        s = s + (2 * stor3.length - (stor4 * uint8(idx)))
                        continue 
                    require uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) < contrarians_by_index.length
                    call address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_0) with:
                       value 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) wei
                         gas 0 wei
                    require uint8(idx) < contrarians_by_index.length
                    mem[0] = address(contrarians_by_index[uint8(idx)].field_0)
                    mem[32] = 15
                    historyPayout[address(stor13[uint8(idx)].field_0)] += 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                    s = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                    s = (uint8(idx) * stor4) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                    s = 2 * stor3.length - (stor4 * uint8(idx))
                    s = uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1))
                    idx = idx + 1
                    s = s + (2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4))
                    continue 
                stor8++
                call address(stor2.length) with:
                   value (uint256(stor9.field_0) * stor3.length) - s wei
                     gas 0 wei
                uint256(stor9.field_0) = 0
                matchers_by_index.length = 0
                idx = 0
                while matchers_by_index.length > idx:
                    address(matchers_by_index[idx].field_0) = 0
                    uint8(matchers_by_index[idx].field_160) = 0
                    idx = idx + 1
                    continue 
                contrarians_by_index.length = 0
                idx = 0
                while contrarians_by_index.length > idx:
                    address(contrarians_by_index[idx].field_0) = 0
                    uint8(contrarians_by_index[idx].field_160) = 0
                    idx = idx + 1
                    continue 
                stor10 = 0
                if stor17 == 1:
                    state = 1
    else:
        call msg.sender with:
           value msg.value - stor3.length wei
             gas 0 wei
        require not state
        stor1.length = block.number + 1
        if stor10:
            if stor1.length == stor11:
                if stor10:
                    require stor1.length != stor11
            else:
                lastRoundResults_by_index.length = 0
                idx = 0
                while 4 * lastRoundResults_by_index.length > idx:
                    address(lastRoundResults_by_index[idx].field_0) = 0
                    uint8(lastRoundResults_by_index[idx].field_160) = 0
                    uint256(lastRoundResults_by_index[idx].field_256) = 0
                    address(lastRoundResults_by_index[idx].field_512) = 0
                    uint8(lastRoundResults_by_index[idx].field_672) = 0
                    uint256(lastRoundResults_by_index[idx].field_768) = 0
                    idx = idx + 4
                    continue 
                s = 0
                s = 0
                s = 0
                s = 0
                idx = 0
                s = 0
                while uint8(idx) < uint255(stor9.field_1):
                    lastRoundResults_by_index.length++
                    if uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) >= uint255(stor9.field_1):
                        if not lastRoundResults_by_index.length > lastRoundResults_by_index.length + 1:
                            _1015 = mem[64]
                            mem[64] = mem[64] + 192
                            require uint8(idx) < matchers_by_index.length
                            mem[0] = 12
                            mem[_1015] = address(matchers_by_index[uint8(idx)].field_0)
                            mem[_1015 + 32] = uint8(matchers_by_index[uint8(idx)].field_160)
                            mem[_1015 + 64] = 2 * stor3.length - (stor4 * uint8(idx))
                            require uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) - uint255(stor9.field_1) < contrarians_by_index.length
                            mem[_1015 + 96] = address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_0)
                            mem[_1015 + 128] = uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_160)
                            mem[_1015 + 160] = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4)
                        else:
                            t = sha3(14) + (4 * lastRoundResults_by_index.length + 1)
                            while sha3(14) + (4 * lastRoundResults_by_index.length) > t:
                                address(stor[t].field_0) = 0
                                uint8(stor[t].field_160) = 0
                                stor1[t] = 0
                                address(stor2[t].field_0) = 0
                                uint8(stor2[t].field_160) = 0
                                stor3[t] = 0
                                t = t + 4
                                continue 
                            _1345 = mem[64]
                            mem[64] = mem[64] + 192
                            require uint8(idx) < matchers_by_index.length
                            mem[0] = 12
                            mem[_1345] = address(matchers_by_index[uint8(idx)].field_0)
                            mem[_1345 + 32] = uint8(matchers_by_index[uint8(idx)].field_160)
                            mem[_1345 + 64] = 2 * stor3.length - (stor4 * uint8(idx))
                            require uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) - uint255(stor9.field_1) < contrarians_by_index.length
                            mem[_1345 + 96] = address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_0)
                            mem[_1345 + 128] = uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_160)
                            mem[_1345 + 160] = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4)
                        address(lastRoundResults_by_index[lastRoundResults_by_index.length].field_0) = address(matchers_by_index[uint8(idx)].field_0)
                        Mask(96, 0, lastRoundResults_by_index[lastRoundResults_by_index.length].field_160) = uint8(matchers_by_index[uint8(idx)].field_160)
                        bool(lastRoundResults_by_index[lastRoundResults_by_index.length].field_256) = 0
                        uint255(lastRoundResults_by_index[lastRoundResults_by_index.length].field_257) = uint255(stor3.length - (stor4 * uint8(idx)))
                        address(lastRoundResults_by_index[lastRoundResults_by_index.length].field_512) = address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_0)
                        Mask(96, 0, lastRoundResults_by_index[lastRoundResults_by_index.length].field_672) = uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_160)
                        bool(lastRoundResults_by_index[lastRoundResults_by_index.length].field_768) = 0
                        uint255(lastRoundResults_by_index[lastRoundResults_by_index.length].field_769) = uint255(stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4))
                        require uint8(idx) < matchers_by_index.length
                        if uint8(matchers_by_index[uint8(idx)].field_160) == uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_160):
                            require uint8(idx) < matchers_by_index.length
                            call address(matchers_by_index[uint8(idx)].field_0) with:
                               value 2 * stor3.length - (stor4 * uint8(idx)) wei
                                 gas 0 wei
                            mem[0] = address(matchers_by_index[uint8(idx)].field_0)
                            mem[32] = 15
                            historyPayout[address(stor12[uint8(idx)].field_0)] += 2 * stor3.length - (stor4 * uint8(idx))
                            s = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4)
                            s = (uint8(idx) * stor4) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) - (uint255(stor9.field_1) * stor4)
                            s = 2 * stor3.length - (stor4 * uint8(idx))
                            s = uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) - uint255(stor9.field_1)
                            idx = idx + 1
                            s = s + (2 * stor3.length - (stor4 * uint8(idx)))
                            continue 
                        require uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) - uint255(stor9.field_1) < contrarians_by_index.length
                        call address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_0) with:
                           value 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4) wei
                             gas 0 wei
                        require uint8(idx) < contrarians_by_index.length
                        mem[0] = address(contrarians_by_index[uint8(idx)].field_0)
                        mem[32] = 15
                        historyPayout[address(stor13[uint8(idx)].field_0)] += 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4)
                        s = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4)
                        s = (uint8(idx) * stor4) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) - (uint255(stor9.field_1) * stor4)
                        s = 2 * stor3.length - (stor4 * uint8(idx))
                        s = uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) - uint255(stor9.field_1)
                        idx = idx + 1
                        s = s + (2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4))
                        continue 
                    if not lastRoundResults_by_index.length > lastRoundResults_by_index.length + 1:
                        _1016 = mem[64]
                        mem[64] = mem[64] + 192
                        require uint8(idx) < matchers_by_index.length
                        mem[0] = 12
                        mem[_1016] = address(matchers_by_index[uint8(idx)].field_0)
                        mem[_1016 + 32] = uint8(matchers_by_index[uint8(idx)].field_160)
                        mem[_1016 + 64] = 2 * stor3.length - (stor4 * uint8(idx))
                        require uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) < contrarians_by_index.length
                        mem[_1016 + 96] = address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_0)
                        mem[_1016 + 128] = uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_160)
                        mem[_1016 + 160] = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                    else:
                        t = sha3(14) + (4 * lastRoundResults_by_index.length + 1)
                        while sha3(14) + (4 * lastRoundResults_by_index.length) > t:
                            address(stor[t].field_0) = 0
                            uint8(stor[t].field_160) = 0
                            stor1[t] = 0
                            address(stor2[t].field_0) = 0
                            uint8(stor2[t].field_160) = 0
                            stor3[t] = 0
                            t = t + 4
                            continue 
                        _1346 = mem[64]
                        mem[64] = mem[64] + 192
                        require uint8(idx) < matchers_by_index.length
                        mem[0] = 12
                        mem[_1346] = address(matchers_by_index[uint8(idx)].field_0)
                        mem[_1346 + 32] = uint8(matchers_by_index[uint8(idx)].field_160)
                        mem[_1346 + 64] = 2 * stor3.length - (stor4 * uint8(idx))
                        require uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) < contrarians_by_index.length
                        mem[_1346 + 96] = address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_0)
                        mem[_1346 + 128] = uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_160)
                        mem[_1346 + 160] = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                    address(lastRoundResults_by_index[lastRoundResults_by_index.length].field_0) = address(matchers_by_index[uint8(idx)].field_0)
                    Mask(96, 0, lastRoundResults_by_index[lastRoundResults_by_index.length].field_160) = uint8(matchers_by_index[uint8(idx)].field_160)
                    bool(lastRoundResults_by_index[lastRoundResults_by_index.length].field_256) = 0
                    uint255(lastRoundResults_by_index[lastRoundResults_by_index.length].field_257) = uint255(stor3.length - (stor4 * uint8(idx)))
                    address(lastRoundResults_by_index[lastRoundResults_by_index.length].field_512) = address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_0)
                    Mask(96, 0, lastRoundResults_by_index[lastRoundResults_by_index.length].field_672) = uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_160)
                    bool(lastRoundResults_by_index[lastRoundResults_by_index.length].field_768) = 0
                    uint255(lastRoundResults_by_index[lastRoundResults_by_index.length].field_769) = uint255(stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4))
                    require uint8(idx) < matchers_by_index.length
                    if uint8(matchers_by_index[uint8(idx)].field_160) == uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_160):
                        require uint8(idx) < matchers_by_index.length
                        call address(matchers_by_index[uint8(idx)].field_0) with:
                           value 2 * stor3.length - (stor4 * uint8(idx)) wei
                             gas 0 wei
                        mem[0] = address(matchers_by_index[uint8(idx)].field_0)
                        mem[32] = 15
                        historyPayout[address(stor12[uint8(idx)].field_0)] += 2 * stor3.length - (stor4 * uint8(idx))
                        s = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                        s = (uint8(idx) * stor4) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                        s = 2 * stor3.length - (stor4 * uint8(idx))
                        s = uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1))
                        idx = idx + 1
                        s = s + (2 * stor3.length - (stor4 * uint8(idx)))
                        continue 
                    require uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) < contrarians_by_index.length
                    call address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_0) with:
                       value 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) wei
                         gas 0 wei
                    require uint8(idx) < contrarians_by_index.length
                    mem[0] = address(contrarians_by_index[uint8(idx)].field_0)
                    mem[32] = 15
                    historyPayout[address(stor13[uint8(idx)].field_0)] += 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                    s = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                    s = (uint8(idx) * stor4) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                    s = 2 * stor3.length - (stor4 * uint8(idx))
                    s = uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1))
                    idx = idx + 1
                    s = s + (2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4))
                    continue 
                stor8++
                call address(stor2.length) with:
                   value (uint256(stor9.field_0) * stor3.length) - s wei
                     gas 0 wei
                uint256(stor9.field_0) = 0
                matchers_by_index.length = 0
                idx = 0
                while matchers_by_index.length > idx:
                    address(matchers_by_index[idx].field_0) = 0
                    uint8(matchers_by_index[idx].field_160) = 0
                    idx = idx + 1
                    continue 
                contrarians_by_index.length = 0
                idx = 0
                while contrarians_by_index.length > idx:
                    address(contrarians_by_index[idx].field_0) = 0
                    uint8(contrarians_by_index[idx].field_160) = 0
                    idx = idx + 1
                    continue 
                stor10 = 0
                if stor17 == 1:
                    state = 1
    if bool(stor9.field_0):
        contrarians_by_index.length++
        if not contrarians_by_index.length <= contrarians_by_index.length + 1:
            idx = contrarians_by_index.length + 1
            while contrarians_by_index.length > idx:
                address(contrarians_by_index[idx].field_0) = 0
                uint8(contrarians_by_index[idx].field_160) = 0
                idx = idx + 1
                continue 
        uint256(contrarians_by_index[contrarians_by_index.length].field_0) = msg.sender or Mask(96, 160, uint256(contrarians_by_index[contrarians_by_index.length].field_0))
        Mask(96, 0, contrarians_by_index[contrarians_by_index.length].field_160) = Mask(96, 0, arg1)
        stor7++
        uint256(stor9.field_0)++
        historyTimesPlayed[address(msg.sender)]++
        if uint256(stor9.field_0) >= stor6:
            if not bool(stor9.field_0):
                if uint256(stor9.field_0) == stor5:
                    stor10 = 1
                    stor11 = block.number
                else:
                    if (sha3(block.hash(block.number - 1), stor7) % (stor5 - uint256(stor9.field_0) / 2) + 1) + 1 == 1:
                        stor10 = 1
                        stor11 = block.number
    else:
        matchers_by_index.length++
        if not matchers_by_index.length <= matchers_by_index.length + 1:
            idx = matchers_by_index.length + 1
            while matchers_by_index.length > idx:
                address(matchers_by_index[idx].field_0) = 0
                uint8(matchers_by_index[idx].field_160) = 0
                idx = idx + 1
                continue 
        uint256(matchers_by_index[matchers_by_index.length].field_0) = msg.sender or Mask(96, 160, uint256(matchers_by_index[matchers_by_index.length].field_0))
        Mask(96, 0, matchers_by_index[matchers_by_index.length].field_160) = Mask(96, 0, arg1)
        stor7++
        uint256(stor9.field_0)++
        historyTimesPlayed[address(msg.sender)]++
        if uint256(stor9.field_0) >= stor6:
            if not bool(stor9.field_0):
                if uint256(stor9.field_0) == stor5:
                    stor10 = 1
                    stor11 = block.number
                else:
                    if (sha3(block.hash(block.number - 1), stor7) % (stor5 - uint256(stor9.field_0) / 2) + 1) + 1 == 1:
                        stor10 = 1
                        stor11 = block.number
}

function refundRound() payable {
    require not state
    require msg.sender == address(stor2.length)
    require msg.value <= 0
    idx = 0
    s = 0
    while uint8(idx) < matchers_by_index.length:
        mem[0] = 12
        call address(matchers_by_index[uint8(idx)].field_0) with:
           value stor3.length wei
             gas 0 wei
        idx = idx + 1
        s = s + stor3.length
        continue 
    idx = 0
    t = s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None
    while uint8(idx) < contrarians_by_index.length:
        mem[0] = 13
        call address(contrarians_by_index[uint8(idx)].field_0) with:
           value stor3.length wei
             gas 0 wei
        idx = idx + 1
        t = t + stor3.length
        continue 
    matchers_by_index.length = 0
    u = 0
    while sha3(12) + matchers_by_index.length > None:
        address(stor[None].field_0) = 0
        uint8(stor[None].field_160) = 0
        u = None + 1
        continue 
    contrarians_by_index.length = 0
    idx = 0
    while contrarians_by_index.length > idx:
        address(contrarians_by_index[idx].field_0) = 0
        uint8(contrarians_by_index[idx].field_160) = 0
        idx = idx + 1
        continue 
    state = 1
    uint256(stor9.field_0) = 0
    call address(stor2.length) with:
       value eth.balance(this.address) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (s * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) - (t * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None * None) wei
         gas 0 wei
}

function _fallback() payable {
    mem[64] = 96
    require msg.value >= stor3.length
    if stor3.length != msg.value:
        if msg.value > stor3.length:
            if msg.value <= stor3.length:
                require not state
                stor1.length = block.number + 1
                if stor10:
                    if stor1.length == stor11:
                        if stor10:
                            require stor1.length != stor11
                    else:
                        lastRoundResults_by_index.length = 0
                        idx = 0
                        while 4 * lastRoundResults_by_index.length > idx:
                            address(lastRoundResults_by_index[idx].field_0) = 0
                            uint8(lastRoundResults_by_index[idx].field_160) = 0
                            uint256(lastRoundResults_by_index[idx].field_256) = 0
                            address(lastRoundResults_by_index[idx].field_512) = 0
                            uint8(lastRoundResults_by_index[idx].field_672) = 0
                            uint256(lastRoundResults_by_index[idx].field_768) = 0
                            idx = idx + 4
                            continue 
                        s = 0
                        s = 0
                        s = 0
                        s = 0
                        idx = 0
                        s = 0
                        while uint8(idx) < uint255(stor9.field_1):
                            lastRoundResults_by_index.length++
                            if uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) >= uint255(stor9.field_1):
                                if not lastRoundResults_by_index.length > lastRoundResults_by_index.length + 1:
                                    _4048 = mem[64]
                                    mem[64] = mem[64] + 192
                                    require uint8(idx) < matchers_by_index.length
                                    mem[0] = 12
                                    mem[_4048] = address(matchers_by_index[uint8(idx)].field_0)
                                    mem[_4048 + 32] = uint8(matchers_by_index[uint8(idx)].field_160)
                                    mem[_4048 + 64] = 2 * stor3.length - (stor4 * uint8(idx))
                                    require uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) - uint255(stor9.field_1) < contrarians_by_index.length
                                    mem[_4048 + 96] = address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_0)
                                    mem[_4048 + 128] = uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_160)
                                    mem[_4048 + 160] = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4)
                                else:
                                    t = sha3(14) + (4 * lastRoundResults_by_index.length + 1)
                                    while sha3(14) + (4 * lastRoundResults_by_index.length) > t:
                                        address(stor[t].field_0) = 0
                                        uint8(stor[t].field_160) = 0
                                        stor1[t] = 0
                                        address(stor2[t].field_0) = 0
                                        uint8(stor2[t].field_160) = 0
                                        stor3[t] = 0
                                        t = t + 4
                                        continue 
                                    _5373 = mem[64]
                                    mem[64] = mem[64] + 192
                                    require uint8(idx) < matchers_by_index.length
                                    mem[0] = 12
                                    mem[_5373] = address(matchers_by_index[uint8(idx)].field_0)
                                    mem[_5373 + 32] = uint8(matchers_by_index[uint8(idx)].field_160)
                                    mem[_5373 + 64] = 2 * stor3.length - (stor4 * uint8(idx))
                                    require uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) - uint255(stor9.field_1) < contrarians_by_index.length
                                    mem[_5373 + 96] = address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_0)
                                    mem[_5373 + 128] = uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_160)
                                    mem[_5373 + 160] = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4)
                                address(lastRoundResults_by_index[lastRoundResults_by_index.length].field_0) = address(matchers_by_index[uint8(idx)].field_0)
                                Mask(96, 0, lastRoundResults_by_index[lastRoundResults_by_index.length].field_160) = uint8(matchers_by_index[uint8(idx)].field_160)
                                bool(lastRoundResults_by_index[lastRoundResults_by_index.length].field_256) = 0
                                uint255(lastRoundResults_by_index[lastRoundResults_by_index.length].field_257) = uint255(stor3.length - (stor4 * uint8(idx)))
                                address(lastRoundResults_by_index[lastRoundResults_by_index.length].field_512) = address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_0)
                                Mask(96, 0, lastRoundResults_by_index[lastRoundResults_by_index.length].field_672) = uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_160)
                                bool(lastRoundResults_by_index[lastRoundResults_by_index.length].field_768) = 0
                                uint255(lastRoundResults_by_index[lastRoundResults_by_index.length].field_769) = uint255(stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4))
                                require uint8(idx) < matchers_by_index.length
                                if uint8(matchers_by_index[uint8(idx)].field_160) == uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_160):
                                    require uint8(idx) < matchers_by_index.length
                                    call address(matchers_by_index[uint8(idx)].field_0) with:
                                       value 2 * stor3.length - (stor4 * uint8(idx)) wei
                                         gas 0 wei
                                    mem[0] = address(matchers_by_index[uint8(idx)].field_0)
                                    mem[32] = 15
                                    historyPayout[address(stor12[uint8(idx)].field_0)] += 2 * stor3.length - (stor4 * uint8(idx))
                                    s = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4)
                                    s = (uint8(idx) * stor4) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) - (uint255(stor9.field_1) * stor4)
                                    s = 2 * stor3.length - (stor4 * uint8(idx))
                                    s = uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) - uint255(stor9.field_1)
                                    idx = idx + 1
                                    s = s + (2 * stor3.length - (stor4 * uint8(idx)))
                                    continue 
                                require uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) - uint255(stor9.field_1) < contrarians_by_index.length
                                call address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_0) with:
                                   value 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4) wei
                                     gas 0 wei
                                require uint8(idx) < contrarians_by_index.length
                                mem[0] = address(contrarians_by_index[uint8(idx)].field_0)
                                mem[32] = 15
                                historyPayout[address(stor13[uint8(idx)].field_0)] += 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4)
                                s = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4)
                                s = (uint8(idx) * stor4) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) - (uint255(stor9.field_1) * stor4)
                                s = 2 * stor3.length - (stor4 * uint8(idx))
                                s = uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) - uint255(stor9.field_1)
                                idx = idx + 1
                                s = s + (2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4))
                                continue 
                            if not lastRoundResults_by_index.length > lastRoundResults_by_index.length + 1:
                                _4049 = mem[64]
                                mem[64] = mem[64] + 192
                                require uint8(idx) < matchers_by_index.length
                                mem[0] = 12
                                mem[_4049] = address(matchers_by_index[uint8(idx)].field_0)
                                mem[_4049 + 32] = uint8(matchers_by_index[uint8(idx)].field_160)
                                mem[_4049 + 64] = 2 * stor3.length - (stor4 * uint8(idx))
                                require uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) < contrarians_by_index.length
                                mem[_4049 + 96] = address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_0)
                                mem[_4049 + 128] = uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_160)
                                mem[_4049 + 160] = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                            else:
                                t = sha3(14) + (4 * lastRoundResults_by_index.length + 1)
                                while sha3(14) + (4 * lastRoundResults_by_index.length) > t:
                                    address(stor[t].field_0) = 0
                                    uint8(stor[t].field_160) = 0
                                    stor1[t] = 0
                                    address(stor2[t].field_0) = 0
                                    uint8(stor2[t].field_160) = 0
                                    stor3[t] = 0
                                    t = t + 4
                                    continue 
                                _5374 = mem[64]
                                mem[64] = mem[64] + 192
                                require uint8(idx) < matchers_by_index.length
                                mem[0] = 12
                                mem[_5374] = address(matchers_by_index[uint8(idx)].field_0)
                                mem[_5374 + 32] = uint8(matchers_by_index[uint8(idx)].field_160)
                                mem[_5374 + 64] = 2 * stor3.length - (stor4 * uint8(idx))
                                require uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) < contrarians_by_index.length
                                mem[_5374 + 96] = address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_0)
                                mem[_5374 + 128] = uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_160)
                                mem[_5374 + 160] = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                            address(lastRoundResults_by_index[lastRoundResults_by_index.length].field_0) = address(matchers_by_index[uint8(idx)].field_0)
                            Mask(96, 0, lastRoundResults_by_index[lastRoundResults_by_index.length].field_160) = uint8(matchers_by_index[uint8(idx)].field_160)
                            bool(lastRoundResults_by_index[lastRoundResults_by_index.length].field_256) = 0
                            uint255(lastRoundResults_by_index[lastRoundResults_by_index.length].field_257) = uint255(stor3.length - (stor4 * uint8(idx)))
                            address(lastRoundResults_by_index[lastRoundResults_by_index.length].field_512) = address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_0)
                            Mask(96, 0, lastRoundResults_by_index[lastRoundResults_by_index.length].field_672) = uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_160)
                            bool(lastRoundResults_by_index[lastRoundResults_by_index.length].field_768) = 0
                            uint255(lastRoundResults_by_index[lastRoundResults_by_index.length].field_769) = uint255(stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4))
                            require uint8(idx) < matchers_by_index.length
                            if uint8(matchers_by_index[uint8(idx)].field_160) == uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_160):
                                require uint8(idx) < matchers_by_index.length
                                call address(matchers_by_index[uint8(idx)].field_0) with:
                                   value 2 * stor3.length - (stor4 * uint8(idx)) wei
                                     gas 0 wei
                                mem[0] = address(matchers_by_index[uint8(idx)].field_0)
                                mem[32] = 15
                                historyPayout[address(stor12[uint8(idx)].field_0)] += 2 * stor3.length - (stor4 * uint8(idx))
                                s = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                                s = (uint8(idx) * stor4) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                                s = 2 * stor3.length - (stor4 * uint8(idx))
                                s = uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1))
                                idx = idx + 1
                                s = s + (2 * stor3.length - (stor4 * uint8(idx)))
                                continue 
                            require uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) < contrarians_by_index.length
                            call address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_0) with:
                               value 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) wei
                                 gas 0 wei
                            require uint8(idx) < contrarians_by_index.length
                            mem[0] = address(contrarians_by_index[uint8(idx)].field_0)
                            mem[32] = 15
                            historyPayout[address(stor13[uint8(idx)].field_0)] += 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                            s = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                            s = (uint8(idx) * stor4) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                            s = 2 * stor3.length - (stor4 * uint8(idx))
                            s = uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1))
                            idx = idx + 1
                            s = s + (2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4))
                            continue 
                        stor8++
                        call address(stor2.length) with:
                           value (uint256(stor9.field_0) * stor3.length) - s wei
                             gas 0 wei
                        uint256(stor9.field_0) = 0
                        matchers_by_index.length = 0
                        idx = 0
                        while matchers_by_index.length > idx:
                            address(matchers_by_index[idx].field_0) = 0
                            uint8(matchers_by_index[idx].field_160) = 0
                            idx = idx + 1
                            continue 
                        contrarians_by_index.length = 0
                        idx = 0
                        while contrarians_by_index.length > idx:
                            address(contrarians_by_index[idx].field_0) = 0
                            uint8(contrarians_by_index[idx].field_160) = 0
                            idx = idx + 1
                            continue 
                        stor10 = 0
                        if stor17 == 1:
                            state = 1
            else:
                call msg.sender with:
                   value msg.value - stor3.length wei
                     gas 0 wei
                require not state
                stor1.length = block.number + 1
                if stor10:
                    if stor1.length == stor11:
                        if stor10:
                            require stor1.length != stor11
                    else:
                        lastRoundResults_by_index.length = 0
                        idx = 0
                        while 4 * lastRoundResults_by_index.length > idx:
                            address(lastRoundResults_by_index[idx].field_0) = 0
                            uint8(lastRoundResults_by_index[idx].field_160) = 0
                            uint256(lastRoundResults_by_index[idx].field_256) = 0
                            address(lastRoundResults_by_index[idx].field_512) = 0
                            uint8(lastRoundResults_by_index[idx].field_672) = 0
                            uint256(lastRoundResults_by_index[idx].field_768) = 0
                            idx = idx + 4
                            continue 
                        s = 0
                        s = 0
                        s = 0
                        s = 0
                        idx = 0
                        s = 0
                        while uint8(idx) < uint255(stor9.field_1):
                            lastRoundResults_by_index.length++
                            if uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) >= uint255(stor9.field_1):
                                if not lastRoundResults_by_index.length > lastRoundResults_by_index.length + 1:
                                    _4051 = mem[64]
                                    mem[64] = mem[64] + 192
                                    require uint8(idx) < matchers_by_index.length
                                    mem[0] = 12
                                    mem[_4051] = address(matchers_by_index[uint8(idx)].field_0)
                                    mem[_4051 + 32] = uint8(matchers_by_index[uint8(idx)].field_160)
                                    mem[_4051 + 64] = 2 * stor3.length - (stor4 * uint8(idx))
                                    require uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) - uint255(stor9.field_1) < contrarians_by_index.length
                                    mem[_4051 + 96] = address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_0)
                                    mem[_4051 + 128] = uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_160)
                                    mem[_4051 + 160] = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4)
                                else:
                                    t = sha3(14) + (4 * lastRoundResults_by_index.length + 1)
                                    while sha3(14) + (4 * lastRoundResults_by_index.length) > t:
                                        address(stor[t].field_0) = 0
                                        uint8(stor[t].field_160) = 0
                                        stor1[t] = 0
                                        address(stor2[t].field_0) = 0
                                        uint8(stor2[t].field_160) = 0
                                        stor3[t] = 0
                                        t = t + 4
                                        continue 
                                    _5375 = mem[64]
                                    mem[64] = mem[64] + 192
                                    require uint8(idx) < matchers_by_index.length
                                    mem[0] = 12
                                    mem[_5375] = address(matchers_by_index[uint8(idx)].field_0)
                                    mem[_5375 + 32] = uint8(matchers_by_index[uint8(idx)].field_160)
                                    mem[_5375 + 64] = 2 * stor3.length - (stor4 * uint8(idx))
                                    require uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) - uint255(stor9.field_1) < contrarians_by_index.length
                                    mem[_5375 + 96] = address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_0)
                                    mem[_5375 + 128] = uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_160)
                                    mem[_5375 + 160] = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4)
                                address(lastRoundResults_by_index[lastRoundResults_by_index.length].field_0) = address(matchers_by_index[uint8(idx)].field_0)
                                Mask(96, 0, lastRoundResults_by_index[lastRoundResults_by_index.length].field_160) = uint8(matchers_by_index[uint8(idx)].field_160)
                                bool(lastRoundResults_by_index[lastRoundResults_by_index.length].field_256) = 0
                                uint255(lastRoundResults_by_index[lastRoundResults_by_index.length].field_257) = uint255(stor3.length - (stor4 * uint8(idx)))
                                address(lastRoundResults_by_index[lastRoundResults_by_index.length].field_512) = address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_0)
                                Mask(96, 0, lastRoundResults_by_index[lastRoundResults_by_index.length].field_672) = uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_160)
                                bool(lastRoundResults_by_index[lastRoundResults_by_index.length].field_768) = 0
                                uint255(lastRoundResults_by_index[lastRoundResults_by_index.length].field_769) = uint255(stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4))
                                require uint8(idx) < matchers_by_index.length
                                if uint8(matchers_by_index[uint8(idx)].field_160) == uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_160):
                                    require uint8(idx) < matchers_by_index.length
                                    call address(matchers_by_index[uint8(idx)].field_0) with:
                                       value 2 * stor3.length - (stor4 * uint8(idx)) wei
                                         gas 0 wei
                                    mem[0] = address(matchers_by_index[uint8(idx)].field_0)
                                    mem[32] = 15
                                    historyPayout[address(stor12[uint8(idx)].field_0)] += 2 * stor3.length - (stor4 * uint8(idx))
                                    s = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4)
                                    s = (uint8(idx) * stor4) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) - (uint255(stor9.field_1) * stor4)
                                    s = 2 * stor3.length - (stor4 * uint8(idx))
                                    s = uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) - uint255(stor9.field_1)
                                    idx = idx + 1
                                    s = s + (2 * stor3.length - (stor4 * uint8(idx)))
                                    continue 
                                require uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) - uint255(stor9.field_1) < contrarians_by_index.length
                                call address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_0) with:
                                   value 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4) wei
                                     gas 0 wei
                                require uint8(idx) < contrarians_by_index.length
                                mem[0] = address(contrarians_by_index[uint8(idx)].field_0)
                                mem[32] = 15
                                historyPayout[address(stor13[uint8(idx)].field_0)] += 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4)
                                s = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4)
                                s = (uint8(idx) * stor4) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) - (uint255(stor9.field_1) * stor4)
                                s = 2 * stor3.length - (stor4 * uint8(idx))
                                s = uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) - uint255(stor9.field_1)
                                idx = idx + 1
                                s = s + (2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4))
                                continue 
                            if not lastRoundResults_by_index.length > lastRoundResults_by_index.length + 1:
                                _4052 = mem[64]
                                mem[64] = mem[64] + 192
                                require uint8(idx) < matchers_by_index.length
                                mem[0] = 12
                                mem[_4052] = address(matchers_by_index[uint8(idx)].field_0)
                                mem[_4052 + 32] = uint8(matchers_by_index[uint8(idx)].field_160)
                                mem[_4052 + 64] = 2 * stor3.length - (stor4 * uint8(idx))
                                require uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) < contrarians_by_index.length
                                mem[_4052 + 96] = address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_0)
                                mem[_4052 + 128] = uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_160)
                                mem[_4052 + 160] = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                            else:
                                t = sha3(14) + (4 * lastRoundResults_by_index.length + 1)
                                while sha3(14) + (4 * lastRoundResults_by_index.length) > t:
                                    address(stor[t].field_0) = 0
                                    uint8(stor[t].field_160) = 0
                                    stor1[t] = 0
                                    address(stor2[t].field_0) = 0
                                    uint8(stor2[t].field_160) = 0
                                    stor3[t] = 0
                                    t = t + 4
                                    continue 
                                _5376 = mem[64]
                                mem[64] = mem[64] + 192
                                require uint8(idx) < matchers_by_index.length
                                mem[0] = 12
                                mem[_5376] = address(matchers_by_index[uint8(idx)].field_0)
                                mem[_5376 + 32] = uint8(matchers_by_index[uint8(idx)].field_160)
                                mem[_5376 + 64] = 2 * stor3.length - (stor4 * uint8(idx))
                                require uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) < contrarians_by_index.length
                                mem[_5376 + 96] = address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_0)
                                mem[_5376 + 128] = uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_160)
                                mem[_5376 + 160] = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                            address(lastRoundResults_by_index[lastRoundResults_by_index.length].field_0) = address(matchers_by_index[uint8(idx)].field_0)
                            Mask(96, 0, lastRoundResults_by_index[lastRoundResults_by_index.length].field_160) = uint8(matchers_by_index[uint8(idx)].field_160)
                            bool(lastRoundResults_by_index[lastRoundResults_by_index.length].field_256) = 0
                            uint255(lastRoundResults_by_index[lastRoundResults_by_index.length].field_257) = uint255(stor3.length - (stor4 * uint8(idx)))
                            address(lastRoundResults_by_index[lastRoundResults_by_index.length].field_512) = address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_0)
                            Mask(96, 0, lastRoundResults_by_index[lastRoundResults_by_index.length].field_672) = uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_160)
                            bool(lastRoundResults_by_index[lastRoundResults_by_index.length].field_768) = 0
                            uint255(lastRoundResults_by_index[lastRoundResults_by_index.length].field_769) = uint255(stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4))
                            require uint8(idx) < matchers_by_index.length
                            if uint8(matchers_by_index[uint8(idx)].field_160) == uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_160):
                                require uint8(idx) < matchers_by_index.length
                                call address(matchers_by_index[uint8(idx)].field_0) with:
                                   value 2 * stor3.length - (stor4 * uint8(idx)) wei
                                     gas 0 wei
                                mem[0] = address(matchers_by_index[uint8(idx)].field_0)
                                mem[32] = 15
                                historyPayout[address(stor12[uint8(idx)].field_0)] += 2 * stor3.length - (stor4 * uint8(idx))
                                s = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                                s = (uint8(idx) * stor4) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                                s = 2 * stor3.length - (stor4 * uint8(idx))
                                s = uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1))
                                idx = idx + 1
                                s = s + (2 * stor3.length - (stor4 * uint8(idx)))
                                continue 
                            require uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) < contrarians_by_index.length
                            call address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_0) with:
                               value 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) wei
                                 gas 0 wei
                            require uint8(idx) < contrarians_by_index.length
                            mem[0] = address(contrarians_by_index[uint8(idx)].field_0)
                            mem[32] = 15
                            historyPayout[address(stor13[uint8(idx)].field_0)] += 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                            s = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                            s = (uint8(idx) * stor4) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                            s = 2 * stor3.length - (stor4 * uint8(idx))
                            s = uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1))
                            idx = idx + 1
                            s = s + (2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4))
                            continue 
                        stor8++
                        call address(stor2.length) with:
                           value (uint256(stor9.field_0) * stor3.length) - s wei
                             gas 0 wei
                        uint256(stor9.field_0) = 0
                        matchers_by_index.length = 0
                        idx = 0
                        while matchers_by_index.length > idx:
                            address(matchers_by_index[idx].field_0) = 0
                            uint8(matchers_by_index[idx].field_160) = 0
                            idx = idx + 1
                            continue 
                        contrarians_by_index.length = 0
                        idx = 0
                        while contrarians_by_index.length > idx:
                            address(contrarians_by_index[idx].field_0) = 0
                            uint8(contrarians_by_index[idx].field_160) = 0
                            idx = idx + 1
                            continue 
                        stor10 = 0
                        if stor17 == 1:
                            state = 1
            if bool(stor9.field_0):
                contrarians_by_index.length++
                if not contrarians_by_index.length <= contrarians_by_index.length + 1:
                    idx = contrarians_by_index.length + 1
                    while contrarians_by_index.length > idx:
                        address(contrarians_by_index[idx].field_0) = 0
                        uint8(contrarians_by_index[idx].field_160) = 0
                        idx = idx + 1
                        continue 
                uint256(contrarians_by_index[contrarians_by_index.length].field_0) = msg.sender or Mask(96, 160, uint256(contrarians_by_index[contrarians_by_index.length].field_0))
                uint8(contrarians_by_index[contrarians_by_index.length].field_160) = 1
                stor7++
                uint256(stor9.field_0)++
                historyTimesPlayed[address(msg.sender)]++
                if uint256(stor9.field_0) >= stor6:
                    if not bool(stor9.field_0):
                        if uint256(stor9.field_0) == stor5:
                            stor10 = 1
                            stor11 = block.number
                        else:
                            if (sha3(block.hash(block.number - 1), stor7) % (stor5 - uint256(stor9.field_0) / 2) + 1) + 1 == 1:
                                stor10 = 1
                                stor11 = block.number
            else:
                matchers_by_index.length++
                if not matchers_by_index.length <= matchers_by_index.length + 1:
                    idx = matchers_by_index.length + 1
                    while matchers_by_index.length > idx:
                        address(matchers_by_index[idx].field_0) = 0
                        uint8(matchers_by_index[idx].field_160) = 0
                        idx = idx + 1
                        continue 
                uint256(matchers_by_index[matchers_by_index.length].field_0) = msg.sender or Mask(96, 160, uint256(matchers_by_index[matchers_by_index.length].field_0))
                uint8(matchers_by_index[matchers_by_index.length].field_160) = 1
                stor7++
                uint256(stor9.field_0)++
                historyTimesPlayed[address(msg.sender)]++
                if uint256(stor9.field_0) >= stor6:
                    if not bool(stor9.field_0):
                        if uint256(stor9.field_0) == stor5:
                            stor10 = 1
                            stor11 = block.number
                        else:
                            if (sha3(block.hash(block.number - 1), stor7) % (stor5 - uint256(stor9.field_0) / 2) + 1) + 1 == 1:
                                stor10 = 1
                                stor11 = block.number
        else:
            if msg.value <= stor3.length:
                require not state
                stor1.length = block.number + 1
                if stor10:
                    if stor1.length == stor11:
                        if stor10:
                            require stor1.length != stor11
                    else:
                        lastRoundResults_by_index.length = 0
                        idx = 0
                        while 4 * lastRoundResults_by_index.length > idx:
                            address(lastRoundResults_by_index[idx].field_0) = 0
                            uint8(lastRoundResults_by_index[idx].field_160) = 0
                            uint256(lastRoundResults_by_index[idx].field_256) = 0
                            address(lastRoundResults_by_index[idx].field_512) = 0
                            uint8(lastRoundResults_by_index[idx].field_672) = 0
                            uint256(lastRoundResults_by_index[idx].field_768) = 0
                            idx = idx + 4
                            continue 
                        s = 0
                        s = 0
                        s = 0
                        s = 0
                        idx = 0
                        s = 0
                        while uint8(idx) < uint255(stor9.field_1):
                            lastRoundResults_by_index.length++
                            if uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) >= uint255(stor9.field_1):
                                if not lastRoundResults_by_index.length > lastRoundResults_by_index.length + 1:
                                    _4042 = mem[64]
                                    mem[64] = mem[64] + 192
                                    require uint8(idx) < matchers_by_index.length
                                    mem[0] = 12
                                    mem[_4042] = address(matchers_by_index[uint8(idx)].field_0)
                                    mem[_4042 + 32] = uint8(matchers_by_index[uint8(idx)].field_160)
                                    mem[_4042 + 64] = 2 * stor3.length - (stor4 * uint8(idx))
                                    require uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) - uint255(stor9.field_1) < contrarians_by_index.length
                                    mem[_4042 + 96] = address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_0)
                                    mem[_4042 + 128] = uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_160)
                                    mem[_4042 + 160] = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4)
                                else:
                                    t = sha3(14) + (4 * lastRoundResults_by_index.length + 1)
                                    while sha3(14) + (4 * lastRoundResults_by_index.length) > t:
                                        address(stor[t].field_0) = 0
                                        uint8(stor[t].field_160) = 0
                                        stor1[t] = 0
                                        address(stor2[t].field_0) = 0
                                        uint8(stor2[t].field_160) = 0
                                        stor3[t] = 0
                                        t = t + 4
                                        continue 
                                    _5369 = mem[64]
                                    mem[64] = mem[64] + 192
                                    require uint8(idx) < matchers_by_index.length
                                    mem[0] = 12
                                    mem[_5369] = address(matchers_by_index[uint8(idx)].field_0)
                                    mem[_5369 + 32] = uint8(matchers_by_index[uint8(idx)].field_160)
                                    mem[_5369 + 64] = 2 * stor3.length - (stor4 * uint8(idx))
                                    require uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) - uint255(stor9.field_1) < contrarians_by_index.length
                                    mem[_5369 + 96] = address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_0)
                                    mem[_5369 + 128] = uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_160)
                                    mem[_5369 + 160] = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4)
                                address(lastRoundResults_by_index[lastRoundResults_by_index.length].field_0) = address(matchers_by_index[uint8(idx)].field_0)
                                Mask(96, 0, lastRoundResults_by_index[lastRoundResults_by_index.length].field_160) = uint8(matchers_by_index[uint8(idx)].field_160)
                                bool(lastRoundResults_by_index[lastRoundResults_by_index.length].field_256) = 0
                                uint255(lastRoundResults_by_index[lastRoundResults_by_index.length].field_257) = uint255(stor3.length - (stor4 * uint8(idx)))
                                address(lastRoundResults_by_index[lastRoundResults_by_index.length].field_512) = address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_0)
                                Mask(96, 0, lastRoundResults_by_index[lastRoundResults_by_index.length].field_672) = uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_160)
                                bool(lastRoundResults_by_index[lastRoundResults_by_index.length].field_768) = 0
                                uint255(lastRoundResults_by_index[lastRoundResults_by_index.length].field_769) = uint255(stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4))
                                require uint8(idx) < matchers_by_index.length
                                if uint8(matchers_by_index[uint8(idx)].field_160) == uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_160):
                                    require uint8(idx) < matchers_by_index.length
                                    call address(matchers_by_index[uint8(idx)].field_0) with:
                                       value 2 * stor3.length - (stor4 * uint8(idx)) wei
                                         gas 0 wei
                                    mem[0] = address(matchers_by_index[uint8(idx)].field_0)
                                    mem[32] = 15
                                    historyPayout[address(stor12[uint8(idx)].field_0)] += 2 * stor3.length - (stor4 * uint8(idx))
                                    s = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4)
                                    s = (uint8(idx) * stor4) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) - (uint255(stor9.field_1) * stor4)
                                    s = 2 * stor3.length - (stor4 * uint8(idx))
                                    s = uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) - uint255(stor9.field_1)
                                    idx = idx + 1
                                    s = s + (2 * stor3.length - (stor4 * uint8(idx)))
                                    continue 
                                require uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) - uint255(stor9.field_1) < contrarians_by_index.length
                                call address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_0) with:
                                   value 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4) wei
                                     gas 0 wei
                                require uint8(idx) < contrarians_by_index.length
                                mem[0] = address(contrarians_by_index[uint8(idx)].field_0)
                                mem[32] = 15
                                historyPayout[address(stor13[uint8(idx)].field_0)] += 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4)
                                s = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4)
                                s = (uint8(idx) * stor4) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) - (uint255(stor9.field_1) * stor4)
                                s = 2 * stor3.length - (stor4 * uint8(idx))
                                s = uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) - uint255(stor9.field_1)
                                idx = idx + 1
                                s = s + (2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4))
                                continue 
                            if not lastRoundResults_by_index.length > lastRoundResults_by_index.length + 1:
                                _4043 = mem[64]
                                mem[64] = mem[64] + 192
                                require uint8(idx) < matchers_by_index.length
                                mem[0] = 12
                                mem[_4043] = address(matchers_by_index[uint8(idx)].field_0)
                                mem[_4043 + 32] = uint8(matchers_by_index[uint8(idx)].field_160)
                                mem[_4043 + 64] = 2 * stor3.length - (stor4 * uint8(idx))
                                require uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) < contrarians_by_index.length
                                mem[_4043 + 96] = address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_0)
                                mem[_4043 + 128] = uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_160)
                                mem[_4043 + 160] = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                            else:
                                t = sha3(14) + (4 * lastRoundResults_by_index.length + 1)
                                while sha3(14) + (4 * lastRoundResults_by_index.length) > t:
                                    address(stor[t].field_0) = 0
                                    uint8(stor[t].field_160) = 0
                                    stor1[t] = 0
                                    address(stor2[t].field_0) = 0
                                    uint8(stor2[t].field_160) = 0
                                    stor3[t] = 0
                                    t = t + 4
                                    continue 
                                _5370 = mem[64]
                                mem[64] = mem[64] + 192
                                require uint8(idx) < matchers_by_index.length
                                mem[0] = 12
                                mem[_5370] = address(matchers_by_index[uint8(idx)].field_0)
                                mem[_5370 + 32] = uint8(matchers_by_index[uint8(idx)].field_160)
                                mem[_5370 + 64] = 2 * stor3.length - (stor4 * uint8(idx))
                                require uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) < contrarians_by_index.length
                                mem[_5370 + 96] = address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_0)
                                mem[_5370 + 128] = uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_160)
                                mem[_5370 + 160] = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                            address(lastRoundResults_by_index[lastRoundResults_by_index.length].field_0) = address(matchers_by_index[uint8(idx)].field_0)
                            Mask(96, 0, lastRoundResults_by_index[lastRoundResults_by_index.length].field_160) = uint8(matchers_by_index[uint8(idx)].field_160)
                            bool(lastRoundResults_by_index[lastRoundResults_by_index.length].field_256) = 0
                            uint255(lastRoundResults_by_index[lastRoundResults_by_index.length].field_257) = uint255(stor3.length - (stor4 * uint8(idx)))
                            address(lastRoundResults_by_index[lastRoundResults_by_index.length].field_512) = address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_0)
                            Mask(96, 0, lastRoundResults_by_index[lastRoundResults_by_index.length].field_672) = uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_160)
                            bool(lastRoundResults_by_index[lastRoundResults_by_index.length].field_768) = 0
                            uint255(lastRoundResults_by_index[lastRoundResults_by_index.length].field_769) = uint255(stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4))
                            require uint8(idx) < matchers_by_index.length
                            if uint8(matchers_by_index[uint8(idx)].field_160) == uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_160):
                                require uint8(idx) < matchers_by_index.length
                                call address(matchers_by_index[uint8(idx)].field_0) with:
                                   value 2 * stor3.length - (stor4 * uint8(idx)) wei
                                     gas 0 wei
                                mem[0] = address(matchers_by_index[uint8(idx)].field_0)
                                mem[32] = 15
                                historyPayout[address(stor12[uint8(idx)].field_0)] += 2 * stor3.length - (stor4 * uint8(idx))
                                s = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                                s = (uint8(idx) * stor4) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                                s = 2 * stor3.length - (stor4 * uint8(idx))
                                s = uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1))
                                idx = idx + 1
                                s = s + (2 * stor3.length - (stor4 * uint8(idx)))
                                continue 
                            require uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) < contrarians_by_index.length
                            call address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_0) with:
                               value 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) wei
                                 gas 0 wei
                            require uint8(idx) < contrarians_by_index.length
                            mem[0] = address(contrarians_by_index[uint8(idx)].field_0)
                            mem[32] = 15
                            historyPayout[address(stor13[uint8(idx)].field_0)] += 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                            s = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                            s = (uint8(idx) * stor4) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                            s = 2 * stor3.length - (stor4 * uint8(idx))
                            s = uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1))
                            idx = idx + 1
                            s = s + (2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4))
                            continue 
                        stor8++
                        call address(stor2.length) with:
                           value (uint256(stor9.field_0) * stor3.length) - s wei
                             gas 0 wei
                        uint256(stor9.field_0) = 0
                        matchers_by_index.length = 0
                        idx = 0
                        while matchers_by_index.length > idx:
                            address(matchers_by_index[idx].field_0) = 0
                            uint8(matchers_by_index[idx].field_160) = 0
                            idx = idx + 1
                            continue 
                        contrarians_by_index.length = 0
                        idx = 0
                        while contrarians_by_index.length > idx:
                            address(contrarians_by_index[idx].field_0) = 0
                            uint8(contrarians_by_index[idx].field_160) = 0
                            idx = idx + 1
                            continue 
                        stor10 = 0
                        if stor17 == 1:
                            state = 1
            else:
                call msg.sender with:
                   value msg.value - stor3.length wei
                     gas 0 wei
                require not state
                stor1.length = block.number + 1
                if stor10:
                    if stor1.length == stor11:
                        if stor10:
                            require stor1.length != stor11
                    else:
                        lastRoundResults_by_index.length = 0
                        idx = 0
                        while 4 * lastRoundResults_by_index.length > idx:
                            address(lastRoundResults_by_index[idx].field_0) = 0
                            uint8(lastRoundResults_by_index[idx].field_160) = 0
                            uint256(lastRoundResults_by_index[idx].field_256) = 0
                            address(lastRoundResults_by_index[idx].field_512) = 0
                            uint8(lastRoundResults_by_index[idx].field_672) = 0
                            uint256(lastRoundResults_by_index[idx].field_768) = 0
                            idx = idx + 4
                            continue 
                        s = 0
                        s = 0
                        s = 0
                        s = 0
                        idx = 0
                        s = 0
                        while uint8(idx) < uint255(stor9.field_1):
                            lastRoundResults_by_index.length++
                            if uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) >= uint255(stor9.field_1):
                                if not lastRoundResults_by_index.length > lastRoundResults_by_index.length + 1:
                                    _4045 = mem[64]
                                    mem[64] = mem[64] + 192
                                    require uint8(idx) < matchers_by_index.length
                                    mem[0] = 12
                                    mem[_4045] = address(matchers_by_index[uint8(idx)].field_0)
                                    mem[_4045 + 32] = uint8(matchers_by_index[uint8(idx)].field_160)
                                    mem[_4045 + 64] = 2 * stor3.length - (stor4 * uint8(idx))
                                    require uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) - uint255(stor9.field_1) < contrarians_by_index.length
                                    mem[_4045 + 96] = address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_0)
                                    mem[_4045 + 128] = uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_160)
                                    mem[_4045 + 160] = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4)
                                else:
                                    t = sha3(14) + (4 * lastRoundResults_by_index.length + 1)
                                    while sha3(14) + (4 * lastRoundResults_by_index.length) > t:
                                        address(stor[t].field_0) = 0
                                        uint8(stor[t].field_160) = 0
                                        stor1[t] = 0
                                        address(stor2[t].field_0) = 0
                                        uint8(stor2[t].field_160) = 0
                                        stor3[t] = 0
                                        t = t + 4
                                        continue 
                                    _5371 = mem[64]
                                    mem[64] = mem[64] + 192
                                    require uint8(idx) < matchers_by_index.length
                                    mem[0] = 12
                                    mem[_5371] = address(matchers_by_index[uint8(idx)].field_0)
                                    mem[_5371 + 32] = uint8(matchers_by_index[uint8(idx)].field_160)
                                    mem[_5371 + 64] = 2 * stor3.length - (stor4 * uint8(idx))
                                    require uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) - uint255(stor9.field_1) < contrarians_by_index.length
                                    mem[_5371 + 96] = address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_0)
                                    mem[_5371 + 128] = uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_160)
                                    mem[_5371 + 160] = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4)
                                address(lastRoundResults_by_index[lastRoundResults_by_index.length].field_0) = address(matchers_by_index[uint8(idx)].field_0)
                                Mask(96, 0, lastRoundResults_by_index[lastRoundResults_by_index.length].field_160) = uint8(matchers_by_index[uint8(idx)].field_160)
                                bool(lastRoundResults_by_index[lastRoundResults_by_index.length].field_256) = 0
                                uint255(lastRoundResults_by_index[lastRoundResults_by_index.length].field_257) = uint255(stor3.length - (stor4 * uint8(idx)))
                                address(lastRoundResults_by_index[lastRoundResults_by_index.length].field_512) = address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_0)
                                Mask(96, 0, lastRoundResults_by_index[lastRoundResults_by_index.length].field_672) = uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_160)
                                bool(lastRoundResults_by_index[lastRoundResults_by_index.length].field_768) = 0
                                uint255(lastRoundResults_by_index[lastRoundResults_by_index.length].field_769) = uint255(stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4))
                                require uint8(idx) < matchers_by_index.length
                                if uint8(matchers_by_index[uint8(idx)].field_160) == uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_160):
                                    require uint8(idx) < matchers_by_index.length
                                    call address(matchers_by_index[uint8(idx)].field_0) with:
                                       value 2 * stor3.length - (stor4 * uint8(idx)) wei
                                         gas 0 wei
                                    mem[0] = address(matchers_by_index[uint8(idx)].field_0)
                                    mem[32] = 15
                                    historyPayout[address(stor12[uint8(idx)].field_0)] += 2 * stor3.length - (stor4 * uint8(idx))
                                    s = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4)
                                    s = (uint8(idx) * stor4) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) - (uint255(stor9.field_1) * stor4)
                                    s = 2 * stor3.length - (stor4 * uint8(idx))
                                    s = uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) - uint255(stor9.field_1)
                                    idx = idx + 1
                                    s = s + (2 * stor3.length - (stor4 * uint8(idx)))
                                    continue 
                                require uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) - uint255(stor9.field_1) < contrarians_by_index.length
                                call address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_0) with:
                                   value 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4) wei
                                     gas 0 wei
                                require uint8(idx) < contrarians_by_index.length
                                mem[0] = address(contrarians_by_index[uint8(idx)].field_0)
                                mem[32] = 15
                                historyPayout[address(stor13[uint8(idx)].field_0)] += 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4)
                                s = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4)
                                s = (uint8(idx) * stor4) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) - (uint255(stor9.field_1) * stor4)
                                s = 2 * stor3.length - (stor4 * uint8(idx))
                                s = uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) - uint255(stor9.field_1)
                                idx = idx + 1
                                s = s + (2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4))
                                continue 
                            if not lastRoundResults_by_index.length > lastRoundResults_by_index.length + 1:
                                _4046 = mem[64]
                                mem[64] = mem[64] + 192
                                require uint8(idx) < matchers_by_index.length
                                mem[0] = 12
                                mem[_4046] = address(matchers_by_index[uint8(idx)].field_0)
                                mem[_4046 + 32] = uint8(matchers_by_index[uint8(idx)].field_160)
                                mem[_4046 + 64] = 2 * stor3.length - (stor4 * uint8(idx))
                                require uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) < contrarians_by_index.length
                                mem[_4046 + 96] = address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_0)
                                mem[_4046 + 128] = uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_160)
                                mem[_4046 + 160] = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                            else:
                                t = sha3(14) + (4 * lastRoundResults_by_index.length + 1)
                                while sha3(14) + (4 * lastRoundResults_by_index.length) > t:
                                    address(stor[t].field_0) = 0
                                    uint8(stor[t].field_160) = 0
                                    stor1[t] = 0
                                    address(stor2[t].field_0) = 0
                                    uint8(stor2[t].field_160) = 0
                                    stor3[t] = 0
                                    t = t + 4
                                    continue 
                                _5372 = mem[64]
                                mem[64] = mem[64] + 192
                                require uint8(idx) < matchers_by_index.length
                                mem[0] = 12
                                mem[_5372] = address(matchers_by_index[uint8(idx)].field_0)
                                mem[_5372 + 32] = uint8(matchers_by_index[uint8(idx)].field_160)
                                mem[_5372 + 64] = 2 * stor3.length - (stor4 * uint8(idx))
                                require uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) < contrarians_by_index.length
                                mem[_5372 + 96] = address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_0)
                                mem[_5372 + 128] = uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_160)
                                mem[_5372 + 160] = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                            address(lastRoundResults_by_index[lastRoundResults_by_index.length].field_0) = address(matchers_by_index[uint8(idx)].field_0)
                            Mask(96, 0, lastRoundResults_by_index[lastRoundResults_by_index.length].field_160) = uint8(matchers_by_index[uint8(idx)].field_160)
                            bool(lastRoundResults_by_index[lastRoundResults_by_index.length].field_256) = 0
                            uint255(lastRoundResults_by_index[lastRoundResults_by_index.length].field_257) = uint255(stor3.length - (stor4 * uint8(idx)))
                            address(lastRoundResults_by_index[lastRoundResults_by_index.length].field_512) = address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_0)
                            Mask(96, 0, lastRoundResults_by_index[lastRoundResults_by_index.length].field_672) = uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_160)
                            bool(lastRoundResults_by_index[lastRoundResults_by_index.length].field_768) = 0
                            uint255(lastRoundResults_by_index[lastRoundResults_by_index.length].field_769) = uint255(stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4))
                            require uint8(idx) < matchers_by_index.length
                            if uint8(matchers_by_index[uint8(idx)].field_160) == uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_160):
                                require uint8(idx) < matchers_by_index.length
                                call address(matchers_by_index[uint8(idx)].field_0) with:
                                   value 2 * stor3.length - (stor4 * uint8(idx)) wei
                                     gas 0 wei
                                mem[0] = address(matchers_by_index[uint8(idx)].field_0)
                                mem[32] = 15
                                historyPayout[address(stor12[uint8(idx)].field_0)] += 2 * stor3.length - (stor4 * uint8(idx))
                                s = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                                s = (uint8(idx) * stor4) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                                s = 2 * stor3.length - (stor4 * uint8(idx))
                                s = uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1))
                                idx = idx + 1
                                s = s + (2 * stor3.length - (stor4 * uint8(idx)))
                                continue 
                            require uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) < contrarians_by_index.length
                            call address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_0) with:
                               value 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) wei
                                 gas 0 wei
                            require uint8(idx) < contrarians_by_index.length
                            mem[0] = address(contrarians_by_index[uint8(idx)].field_0)
                            mem[32] = 15
                            historyPayout[address(stor13[uint8(idx)].field_0)] += 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                            s = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                            s = (uint8(idx) * stor4) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                            s = 2 * stor3.length - (stor4 * uint8(idx))
                            s = uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1))
                            idx = idx + 1
                            s = s + (2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4))
                            continue 
                        stor8++
                        call address(stor2.length) with:
                           value (uint256(stor9.field_0) * stor3.length) - s wei
                             gas 0 wei
                        uint256(stor9.field_0) = 0
                        matchers_by_index.length = 0
                        idx = 0
                        while matchers_by_index.length > idx:
                            address(matchers_by_index[idx].field_0) = 0
                            uint8(matchers_by_index[idx].field_160) = 0
                            idx = idx + 1
                            continue 
                        contrarians_by_index.length = 0
                        idx = 0
                        while contrarians_by_index.length > idx:
                            address(contrarians_by_index[idx].field_0) = 0
                            uint8(contrarians_by_index[idx].field_160) = 0
                            idx = idx + 1
                            continue 
                        stor10 = 0
                        if stor17 == 1:
                            state = 1
            if bool(stor9.field_0):
                contrarians_by_index.length++
                if not contrarians_by_index.length <= contrarians_by_index.length + 1:
                    idx = contrarians_by_index.length + 1
                    while contrarians_by_index.length > idx:
                        address(contrarians_by_index[idx].field_0) = 0
                        uint8(contrarians_by_index[idx].field_160) = 0
                        idx = idx + 1
                        continue 
                uint256(contrarians_by_index[contrarians_by_index.length].field_0) = msg.sender or Mask(96, 160, uint256(contrarians_by_index[contrarians_by_index.length].field_0))
                uint8(contrarians_by_index[contrarians_by_index.length].field_160) = 0
                contrarians_by_index[contrarians_by_index.length].field_256 % 1 = 0
                stor7++
                uint256(stor9.field_0)++
                historyTimesPlayed[address(msg.sender)]++
                if uint256(stor9.field_0) >= stor6:
                    if not bool(stor9.field_0):
                        if uint256(stor9.field_0) == stor5:
                            stor10 = 1
                            stor11 = block.number
                        else:
                            if (sha3(block.hash(block.number - 1), stor7) % (stor5 - uint256(stor9.field_0) / 2) + 1) + 1 == 1:
                                stor10 = 1
                                stor11 = block.number
            else:
                matchers_by_index.length++
                if not matchers_by_index.length <= matchers_by_index.length + 1:
                    idx = matchers_by_index.length + 1
                    while matchers_by_index.length > idx:
                        address(matchers_by_index[idx].field_0) = 0
                        uint8(matchers_by_index[idx].field_160) = 0
                        idx = idx + 1
                        continue 
                uint256(matchers_by_index[matchers_by_index.length].field_0) = msg.sender or Mask(96, 160, uint256(matchers_by_index[matchers_by_index.length].field_0))
                uint8(matchers_by_index[matchers_by_index.length].field_160) = 0
                matchers_by_index[matchers_by_index.length].field_256 % 1 = 0
                stor7++
                uint256(stor9.field_0)++
                historyTimesPlayed[address(msg.sender)]++
                if uint256(stor9.field_0) >= stor6:
                    if not bool(stor9.field_0):
                        if uint256(stor9.field_0) == stor5:
                            stor10 = 1
                            stor11 = block.number
                        else:
                            if (sha3(block.hash(block.number - 1), stor7) % (stor5 - uint256(stor9.field_0) / 2) + 1) + 1 == 1:
                                stor10 = 1
                                stor11 = block.number
    else:
        if msg.value > stor3.length:
            if msg.value <= stor3.length:
                require not state
                stor1.length = block.number + 1
                if stor10:
                    if stor1.length == stor11:
                        if stor10:
                            require stor1.length != stor11
                    else:
                        lastRoundResults_by_index.length = 0
                        idx = 0
                        while 4 * lastRoundResults_by_index.length > idx:
                            address(lastRoundResults_by_index[idx].field_0) = 0
                            uint8(lastRoundResults_by_index[idx].field_160) = 0
                            uint256(lastRoundResults_by_index[idx].field_256) = 0
                            address(lastRoundResults_by_index[idx].field_512) = 0
                            uint8(lastRoundResults_by_index[idx].field_672) = 0
                            uint256(lastRoundResults_by_index[idx].field_768) = 0
                            idx = idx + 4
                            continue 
                        s = 0
                        s = 0
                        s = 0
                        s = 0
                        idx = 0
                        s = 0
                        while uint8(idx) < uint255(stor9.field_1):
                            lastRoundResults_by_index.length++
                            if uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) >= uint255(stor9.field_1):
                                if not lastRoundResults_by_index.length > lastRoundResults_by_index.length + 1:
                                    _4060 = mem[64]
                                    mem[64] = mem[64] + 192
                                    require uint8(idx) < matchers_by_index.length
                                    mem[0] = 12
                                    mem[_4060] = address(matchers_by_index[uint8(idx)].field_0)
                                    mem[_4060 + 32] = uint8(matchers_by_index[uint8(idx)].field_160)
                                    mem[_4060 + 64] = 2 * stor3.length - (stor4 * uint8(idx))
                                    require uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) - uint255(stor9.field_1) < contrarians_by_index.length
                                    mem[_4060 + 96] = address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_0)
                                    mem[_4060 + 128] = uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_160)
                                    mem[_4060 + 160] = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4)
                                else:
                                    t = sha3(14) + (4 * lastRoundResults_by_index.length + 1)
                                    while sha3(14) + (4 * lastRoundResults_by_index.length) > t:
                                        address(stor[t].field_0) = 0
                                        uint8(stor[t].field_160) = 0
                                        stor1[t] = 0
                                        address(stor2[t].field_0) = 0
                                        uint8(stor2[t].field_160) = 0
                                        stor3[t] = 0
                                        t = t + 4
                                        continue 
                                    _5381 = mem[64]
                                    mem[64] = mem[64] + 192
                                    require uint8(idx) < matchers_by_index.length
                                    mem[0] = 12
                                    mem[_5381] = address(matchers_by_index[uint8(idx)].field_0)
                                    mem[_5381 + 32] = uint8(matchers_by_index[uint8(idx)].field_160)
                                    mem[_5381 + 64] = 2 * stor3.length - (stor4 * uint8(idx))
                                    require uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) - uint255(stor9.field_1) < contrarians_by_index.length
                                    mem[_5381 + 96] = address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_0)
                                    mem[_5381 + 128] = uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_160)
                                    mem[_5381 + 160] = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4)
                                address(lastRoundResults_by_index[lastRoundResults_by_index.length].field_0) = address(matchers_by_index[uint8(idx)].field_0)
                                Mask(96, 0, lastRoundResults_by_index[lastRoundResults_by_index.length].field_160) = uint8(matchers_by_index[uint8(idx)].field_160)
                                bool(lastRoundResults_by_index[lastRoundResults_by_index.length].field_256) = 0
                                uint255(lastRoundResults_by_index[lastRoundResults_by_index.length].field_257) = uint255(stor3.length - (stor4 * uint8(idx)))
                                address(lastRoundResults_by_index[lastRoundResults_by_index.length].field_512) = address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_0)
                                Mask(96, 0, lastRoundResults_by_index[lastRoundResults_by_index.length].field_672) = uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_160)
                                bool(lastRoundResults_by_index[lastRoundResults_by_index.length].field_768) = 0
                                uint255(lastRoundResults_by_index[lastRoundResults_by_index.length].field_769) = uint255(stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4))
                                require uint8(idx) < matchers_by_index.length
                                if uint8(matchers_by_index[uint8(idx)].field_160) == uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_160):
                                    require uint8(idx) < matchers_by_index.length
                                    call address(matchers_by_index[uint8(idx)].field_0) with:
                                       value 2 * stor3.length - (stor4 * uint8(idx)) wei
                                         gas 0 wei
                                    mem[0] = address(matchers_by_index[uint8(idx)].field_0)
                                    mem[32] = 15
                                    historyPayout[address(stor12[uint8(idx)].field_0)] += 2 * stor3.length - (stor4 * uint8(idx))
                                    s = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4)
                                    s = (uint8(idx) * stor4) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) - (uint255(stor9.field_1) * stor4)
                                    s = 2 * stor3.length - (stor4 * uint8(idx))
                                    s = uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) - uint255(stor9.field_1)
                                    idx = idx + 1
                                    s = s + (2 * stor3.length - (stor4 * uint8(idx)))
                                    continue 
                                require uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) - uint255(stor9.field_1) < contrarians_by_index.length
                                call address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_0) with:
                                   value 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4) wei
                                     gas 0 wei
                                require uint8(idx) < contrarians_by_index.length
                                mem[0] = address(contrarians_by_index[uint8(idx)].field_0)
                                mem[32] = 15
                                historyPayout[address(stor13[uint8(idx)].field_0)] += 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4)
                                s = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4)
                                s = (uint8(idx) * stor4) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) - (uint255(stor9.field_1) * stor4)
                                s = 2 * stor3.length - (stor4 * uint8(idx))
                                s = uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) - uint255(stor9.field_1)
                                idx = idx + 1
                                s = s + (2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4))
                                continue 
                            if not lastRoundResults_by_index.length > lastRoundResults_by_index.length + 1:
                                _4061 = mem[64]
                                mem[64] = mem[64] + 192
                                require uint8(idx) < matchers_by_index.length
                                mem[0] = 12
                                mem[_4061] = address(matchers_by_index[uint8(idx)].field_0)
                                mem[_4061 + 32] = uint8(matchers_by_index[uint8(idx)].field_160)
                                mem[_4061 + 64] = 2 * stor3.length - (stor4 * uint8(idx))
                                require uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) < contrarians_by_index.length
                                mem[_4061 + 96] = address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_0)
                                mem[_4061 + 128] = uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_160)
                                mem[_4061 + 160] = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                            else:
                                t = sha3(14) + (4 * lastRoundResults_by_index.length + 1)
                                while sha3(14) + (4 * lastRoundResults_by_index.length) > t:
                                    address(stor[t].field_0) = 0
                                    uint8(stor[t].field_160) = 0
                                    stor1[t] = 0
                                    address(stor2[t].field_0) = 0
                                    uint8(stor2[t].field_160) = 0
                                    stor3[t] = 0
                                    t = t + 4
                                    continue 
                                _5382 = mem[64]
                                mem[64] = mem[64] + 192
                                require uint8(idx) < matchers_by_index.length
                                mem[0] = 12
                                mem[_5382] = address(matchers_by_index[uint8(idx)].field_0)
                                mem[_5382 + 32] = uint8(matchers_by_index[uint8(idx)].field_160)
                                mem[_5382 + 64] = 2 * stor3.length - (stor4 * uint8(idx))
                                require uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) < contrarians_by_index.length
                                mem[_5382 + 96] = address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_0)
                                mem[_5382 + 128] = uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_160)
                                mem[_5382 + 160] = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                            address(lastRoundResults_by_index[lastRoundResults_by_index.length].field_0) = address(matchers_by_index[uint8(idx)].field_0)
                            Mask(96, 0, lastRoundResults_by_index[lastRoundResults_by_index.length].field_160) = uint8(matchers_by_index[uint8(idx)].field_160)
                            bool(lastRoundResults_by_index[lastRoundResults_by_index.length].field_256) = 0
                            uint255(lastRoundResults_by_index[lastRoundResults_by_index.length].field_257) = uint255(stor3.length - (stor4 * uint8(idx)))
                            address(lastRoundResults_by_index[lastRoundResults_by_index.length].field_512) = address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_0)
                            Mask(96, 0, lastRoundResults_by_index[lastRoundResults_by_index.length].field_672) = uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_160)
                            bool(lastRoundResults_by_index[lastRoundResults_by_index.length].field_768) = 0
                            uint255(lastRoundResults_by_index[lastRoundResults_by_index.length].field_769) = uint255(stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4))
                            require uint8(idx) < matchers_by_index.length
                            if uint8(matchers_by_index[uint8(idx)].field_160) == uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_160):
                                require uint8(idx) < matchers_by_index.length
                                call address(matchers_by_index[uint8(idx)].field_0) with:
                                   value 2 * stor3.length - (stor4 * uint8(idx)) wei
                                     gas 0 wei
                                mem[0] = address(matchers_by_index[uint8(idx)].field_0)
                                mem[32] = 15
                                historyPayout[address(stor12[uint8(idx)].field_0)] += 2 * stor3.length - (stor4 * uint8(idx))
                                s = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                                s = (uint8(idx) * stor4) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                                s = 2 * stor3.length - (stor4 * uint8(idx))
                                s = uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1))
                                idx = idx + 1
                                s = s + (2 * stor3.length - (stor4 * uint8(idx)))
                                continue 
                            require uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) < contrarians_by_index.length
                            call address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_0) with:
                               value 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) wei
                                 gas 0 wei
                            require uint8(idx) < contrarians_by_index.length
                            mem[0] = address(contrarians_by_index[uint8(idx)].field_0)
                            mem[32] = 15
                            historyPayout[address(stor13[uint8(idx)].field_0)] += 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                            s = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                            s = (uint8(idx) * stor4) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                            s = 2 * stor3.length - (stor4 * uint8(idx))
                            s = uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1))
                            idx = idx + 1
                            s = s + (2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4))
                            continue 
                        stor8++
                        call address(stor2.length) with:
                           value (uint256(stor9.field_0) * stor3.length) - s wei
                             gas 0 wei
                        uint256(stor9.field_0) = 0
                        matchers_by_index.length = 0
                        idx = 0
                        while matchers_by_index.length > idx:
                            address(matchers_by_index[idx].field_0) = 0
                            uint8(matchers_by_index[idx].field_160) = 0
                            idx = idx + 1
                            continue 
                        contrarians_by_index.length = 0
                        idx = 0
                        while contrarians_by_index.length > idx:
                            address(contrarians_by_index[idx].field_0) = 0
                            uint8(contrarians_by_index[idx].field_160) = 0
                            idx = idx + 1
                            continue 
                        stor10 = 0
                        if stor17 == 1:
                            state = 1
            else:
                call msg.sender with:
                   value msg.value - stor3.length wei
                     gas 0 wei
                require not state
                stor1.length = block.number + 1
                if stor10:
                    if stor1.length == stor11:
                        if stor10:
                            require stor1.length != stor11
                    else:
                        lastRoundResults_by_index.length = 0
                        idx = 0
                        while 4 * lastRoundResults_by_index.length > idx:
                            address(lastRoundResults_by_index[idx].field_0) = 0
                            uint8(lastRoundResults_by_index[idx].field_160) = 0
                            uint256(lastRoundResults_by_index[idx].field_256) = 0
                            address(lastRoundResults_by_index[idx].field_512) = 0
                            uint8(lastRoundResults_by_index[idx].field_672) = 0
                            uint256(lastRoundResults_by_index[idx].field_768) = 0
                            idx = idx + 4
                            continue 
                        s = 0
                        s = 0
                        s = 0
                        s = 0
                        idx = 0
                        s = 0
                        while uint8(idx) < uint255(stor9.field_1):
                            lastRoundResults_by_index.length++
                            if uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) >= uint255(stor9.field_1):
                                if not lastRoundResults_by_index.length > lastRoundResults_by_index.length + 1:
                                    _4063 = mem[64]
                                    mem[64] = mem[64] + 192
                                    require uint8(idx) < matchers_by_index.length
                                    mem[0] = 12
                                    mem[_4063] = address(matchers_by_index[uint8(idx)].field_0)
                                    mem[_4063 + 32] = uint8(matchers_by_index[uint8(idx)].field_160)
                                    mem[_4063 + 64] = 2 * stor3.length - (stor4 * uint8(idx))
                                    require uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) - uint255(stor9.field_1) < contrarians_by_index.length
                                    mem[_4063 + 96] = address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_0)
                                    mem[_4063 + 128] = uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_160)
                                    mem[_4063 + 160] = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4)
                                else:
                                    t = sha3(14) + (4 * lastRoundResults_by_index.length + 1)
                                    while sha3(14) + (4 * lastRoundResults_by_index.length) > t:
                                        address(stor[t].field_0) = 0
                                        uint8(stor[t].field_160) = 0
                                        stor1[t] = 0
                                        address(stor2[t].field_0) = 0
                                        uint8(stor2[t].field_160) = 0
                                        stor3[t] = 0
                                        t = t + 4
                                        continue 
                                    _5383 = mem[64]
                                    mem[64] = mem[64] + 192
                                    require uint8(idx) < matchers_by_index.length
                                    mem[0] = 12
                                    mem[_5383] = address(matchers_by_index[uint8(idx)].field_0)
                                    mem[_5383 + 32] = uint8(matchers_by_index[uint8(idx)].field_160)
                                    mem[_5383 + 64] = 2 * stor3.length - (stor4 * uint8(idx))
                                    require uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) - uint255(stor9.field_1) < contrarians_by_index.length
                                    mem[_5383 + 96] = address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_0)
                                    mem[_5383 + 128] = uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_160)
                                    mem[_5383 + 160] = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4)
                                address(lastRoundResults_by_index[lastRoundResults_by_index.length].field_0) = address(matchers_by_index[uint8(idx)].field_0)
                                Mask(96, 0, lastRoundResults_by_index[lastRoundResults_by_index.length].field_160) = uint8(matchers_by_index[uint8(idx)].field_160)
                                bool(lastRoundResults_by_index[lastRoundResults_by_index.length].field_256) = 0
                                uint255(lastRoundResults_by_index[lastRoundResults_by_index.length].field_257) = uint255(stor3.length - (stor4 * uint8(idx)))
                                address(lastRoundResults_by_index[lastRoundResults_by_index.length].field_512) = address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_0)
                                Mask(96, 0, lastRoundResults_by_index[lastRoundResults_by_index.length].field_672) = uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_160)
                                bool(lastRoundResults_by_index[lastRoundResults_by_index.length].field_768) = 0
                                uint255(lastRoundResults_by_index[lastRoundResults_by_index.length].field_769) = uint255(stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4))
                                require uint8(idx) < matchers_by_index.length
                                if uint8(matchers_by_index[uint8(idx)].field_160) == uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_160):
                                    require uint8(idx) < matchers_by_index.length
                                    call address(matchers_by_index[uint8(idx)].field_0) with:
                                       value 2 * stor3.length - (stor4 * uint8(idx)) wei
                                         gas 0 wei
                                    mem[0] = address(matchers_by_index[uint8(idx)].field_0)
                                    mem[32] = 15
                                    historyPayout[address(stor12[uint8(idx)].field_0)] += 2 * stor3.length - (stor4 * uint8(idx))
                                    s = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4)
                                    s = (uint8(idx) * stor4) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) - (uint255(stor9.field_1) * stor4)
                                    s = 2 * stor3.length - (stor4 * uint8(idx))
                                    s = uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) - uint255(stor9.field_1)
                                    idx = idx + 1
                                    s = s + (2 * stor3.length - (stor4 * uint8(idx)))
                                    continue 
                                require uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) - uint255(stor9.field_1) < contrarians_by_index.length
                                call address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_0) with:
                                   value 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4) wei
                                     gas 0 wei
                                require uint8(idx) < contrarians_by_index.length
                                mem[0] = address(contrarians_by_index[uint8(idx)].field_0)
                                mem[32] = 15
                                historyPayout[address(stor13[uint8(idx)].field_0)] += 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4)
                                s = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4)
                                s = (uint8(idx) * stor4) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) - (uint255(stor9.field_1) * stor4)
                                s = 2 * stor3.length - (stor4 * uint8(idx))
                                s = uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) - uint255(stor9.field_1)
                                idx = idx + 1
                                s = s + (2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4))
                                continue 
                            if not lastRoundResults_by_index.length > lastRoundResults_by_index.length + 1:
                                _4064 = mem[64]
                                mem[64] = mem[64] + 192
                                require uint8(idx) < matchers_by_index.length
                                mem[0] = 12
                                mem[_4064] = address(matchers_by_index[uint8(idx)].field_0)
                                mem[_4064 + 32] = uint8(matchers_by_index[uint8(idx)].field_160)
                                mem[_4064 + 64] = 2 * stor3.length - (stor4 * uint8(idx))
                                require uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) < contrarians_by_index.length
                                mem[_4064 + 96] = address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_0)
                                mem[_4064 + 128] = uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_160)
                                mem[_4064 + 160] = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                            else:
                                t = sha3(14) + (4 * lastRoundResults_by_index.length + 1)
                                while sha3(14) + (4 * lastRoundResults_by_index.length) > t:
                                    address(stor[t].field_0) = 0
                                    uint8(stor[t].field_160) = 0
                                    stor1[t] = 0
                                    address(stor2[t].field_0) = 0
                                    uint8(stor2[t].field_160) = 0
                                    stor3[t] = 0
                                    t = t + 4
                                    continue 
                                _5384 = mem[64]
                                mem[64] = mem[64] + 192
                                require uint8(idx) < matchers_by_index.length
                                mem[0] = 12
                                mem[_5384] = address(matchers_by_index[uint8(idx)].field_0)
                                mem[_5384 + 32] = uint8(matchers_by_index[uint8(idx)].field_160)
                                mem[_5384 + 64] = 2 * stor3.length - (stor4 * uint8(idx))
                                require uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) < contrarians_by_index.length
                                mem[_5384 + 96] = address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_0)
                                mem[_5384 + 128] = uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_160)
                                mem[_5384 + 160] = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                            address(lastRoundResults_by_index[lastRoundResults_by_index.length].field_0) = address(matchers_by_index[uint8(idx)].field_0)
                            Mask(96, 0, lastRoundResults_by_index[lastRoundResults_by_index.length].field_160) = uint8(matchers_by_index[uint8(idx)].field_160)
                            bool(lastRoundResults_by_index[lastRoundResults_by_index.length].field_256) = 0
                            uint255(lastRoundResults_by_index[lastRoundResults_by_index.length].field_257) = uint255(stor3.length - (stor4 * uint8(idx)))
                            address(lastRoundResults_by_index[lastRoundResults_by_index.length].field_512) = address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_0)
                            Mask(96, 0, lastRoundResults_by_index[lastRoundResults_by_index.length].field_672) = uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_160)
                            bool(lastRoundResults_by_index[lastRoundResults_by_index.length].field_768) = 0
                            uint255(lastRoundResults_by_index[lastRoundResults_by_index.length].field_769) = uint255(stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4))
                            require uint8(idx) < matchers_by_index.length
                            if uint8(matchers_by_index[uint8(idx)].field_160) == uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_160):
                                require uint8(idx) < matchers_by_index.length
                                call address(matchers_by_index[uint8(idx)].field_0) with:
                                   value 2 * stor3.length - (stor4 * uint8(idx)) wei
                                     gas 0 wei
                                mem[0] = address(matchers_by_index[uint8(idx)].field_0)
                                mem[32] = 15
                                historyPayout[address(stor12[uint8(idx)].field_0)] += 2 * stor3.length - (stor4 * uint8(idx))
                                s = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                                s = (uint8(idx) * stor4) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                                s = 2 * stor3.length - (stor4 * uint8(idx))
                                s = uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1))
                                idx = idx + 1
                                s = s + (2 * stor3.length - (stor4 * uint8(idx)))
                                continue 
                            require uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) < contrarians_by_index.length
                            call address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_0) with:
                               value 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) wei
                                 gas 0 wei
                            require uint8(idx) < contrarians_by_index.length
                            mem[0] = address(contrarians_by_index[uint8(idx)].field_0)
                            mem[32] = 15
                            historyPayout[address(stor13[uint8(idx)].field_0)] += 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                            s = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                            s = (uint8(idx) * stor4) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                            s = 2 * stor3.length - (stor4 * uint8(idx))
                            s = uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1))
                            idx = idx + 1
                            s = s + (2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4))
                            continue 
                        stor8++
                        call address(stor2.length) with:
                           value (uint256(stor9.field_0) * stor3.length) - s wei
                             gas 0 wei
                        uint256(stor9.field_0) = 0
                        matchers_by_index.length = 0
                        idx = 0
                        while matchers_by_index.length > idx:
                            address(matchers_by_index[idx].field_0) = 0
                            uint8(matchers_by_index[idx].field_160) = 0
                            idx = idx + 1
                            continue 
                        contrarians_by_index.length = 0
                        idx = 0
                        while contrarians_by_index.length > idx:
                            address(contrarians_by_index[idx].field_0) = 0
                            uint8(contrarians_by_index[idx].field_160) = 0
                            idx = idx + 1
                            continue 
                        stor10 = 0
                        if stor17 == 1:
                            state = 1
            if bool(stor9.field_0):
                contrarians_by_index.length++
                if not contrarians_by_index.length <= contrarians_by_index.length + 1:
                    idx = contrarians_by_index.length + 1
                    while contrarians_by_index.length > idx:
                        address(contrarians_by_index[idx].field_0) = 0
                        uint8(contrarians_by_index[idx].field_160) = 0
                        idx = idx + 1
                        continue 
                uint256(contrarians_by_index[contrarians_by_index.length].field_0) = msg.sender or Mask(96, 160, uint256(contrarians_by_index[contrarians_by_index.length].field_0))
                uint8(contrarians_by_index[contrarians_by_index.length].field_160) = 1
                stor7++
                uint256(stor9.field_0)++
                historyTimesPlayed[address(msg.sender)]++
                if uint256(stor9.field_0) >= stor6:
                    if not bool(stor9.field_0):
                        if uint256(stor9.field_0) == stor5:
                            stor10 = 1
                            stor11 = block.number
                        else:
                            if (sha3(block.hash(block.number - 1), stor7) % (stor5 - uint256(stor9.field_0) / 2) + 1) + 1 == 1:
                                stor10 = 1
                                stor11 = block.number
            else:
                matchers_by_index.length++
                if not matchers_by_index.length <= matchers_by_index.length + 1:
                    idx = matchers_by_index.length + 1
                    while matchers_by_index.length > idx:
                        address(matchers_by_index[idx].field_0) = 0
                        uint8(matchers_by_index[idx].field_160) = 0
                        idx = idx + 1
                        continue 
                uint256(matchers_by_index[matchers_by_index.length].field_0) = msg.sender or Mask(96, 160, uint256(matchers_by_index[matchers_by_index.length].field_0))
                uint8(matchers_by_index[matchers_by_index.length].field_160) = 1
                stor7++
                uint256(stor9.field_0)++
                historyTimesPlayed[address(msg.sender)]++
                if uint256(stor9.field_0) >= stor6:
                    if not bool(stor9.field_0):
                        if uint256(stor9.field_0) == stor5:
                            stor10 = 1
                            stor11 = block.number
                        else:
                            if (sha3(block.hash(block.number - 1), stor7) % (stor5 - uint256(stor9.field_0) / 2) + 1) + 1 == 1:
                                stor10 = 1
                                stor11 = block.number
        else:
            if msg.value <= stor3.length:
                require not state
                stor1.length = block.number + 1
                if stor10:
                    if stor1.length == stor11:
                        if stor10:
                            require stor1.length != stor11
                    else:
                        lastRoundResults_by_index.length = 0
                        idx = 0
                        while 4 * lastRoundResults_by_index.length > idx:
                            address(lastRoundResults_by_index[idx].field_0) = 0
                            uint8(lastRoundResults_by_index[idx].field_160) = 0
                            uint256(lastRoundResults_by_index[idx].field_256) = 0
                            address(lastRoundResults_by_index[idx].field_512) = 0
                            uint8(lastRoundResults_by_index[idx].field_672) = 0
                            uint256(lastRoundResults_by_index[idx].field_768) = 0
                            idx = idx + 4
                            continue 
                        s = 0
                        s = 0
                        s = 0
                        s = 0
                        idx = 0
                        s = 0
                        while uint8(idx) < uint255(stor9.field_1):
                            lastRoundResults_by_index.length++
                            if uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) >= uint255(stor9.field_1):
                                if not lastRoundResults_by_index.length > lastRoundResults_by_index.length + 1:
                                    _4054 = mem[64]
                                    mem[64] = mem[64] + 192
                                    require uint8(idx) < matchers_by_index.length
                                    mem[0] = 12
                                    mem[_4054] = address(matchers_by_index[uint8(idx)].field_0)
                                    mem[_4054 + 32] = uint8(matchers_by_index[uint8(idx)].field_160)
                                    mem[_4054 + 64] = 2 * stor3.length - (stor4 * uint8(idx))
                                    require uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) - uint255(stor9.field_1) < contrarians_by_index.length
                                    mem[_4054 + 96] = address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_0)
                                    mem[_4054 + 128] = uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_160)
                                    mem[_4054 + 160] = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4)
                                else:
                                    t = sha3(14) + (4 * lastRoundResults_by_index.length + 1)
                                    while sha3(14) + (4 * lastRoundResults_by_index.length) > t:
                                        address(stor[t].field_0) = 0
                                        uint8(stor[t].field_160) = 0
                                        stor1[t] = 0
                                        address(stor2[t].field_0) = 0
                                        uint8(stor2[t].field_160) = 0
                                        stor3[t] = 0
                                        t = t + 4
                                        continue 
                                    _5377 = mem[64]
                                    mem[64] = mem[64] + 192
                                    require uint8(idx) < matchers_by_index.length
                                    mem[0] = 12
                                    mem[_5377] = address(matchers_by_index[uint8(idx)].field_0)
                                    mem[_5377 + 32] = uint8(matchers_by_index[uint8(idx)].field_160)
                                    mem[_5377 + 64] = 2 * stor3.length - (stor4 * uint8(idx))
                                    require uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) - uint255(stor9.field_1) < contrarians_by_index.length
                                    mem[_5377 + 96] = address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_0)
                                    mem[_5377 + 128] = uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_160)
                                    mem[_5377 + 160] = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4)
                                address(lastRoundResults_by_index[lastRoundResults_by_index.length].field_0) = address(matchers_by_index[uint8(idx)].field_0)
                                Mask(96, 0, lastRoundResults_by_index[lastRoundResults_by_index.length].field_160) = uint8(matchers_by_index[uint8(idx)].field_160)
                                bool(lastRoundResults_by_index[lastRoundResults_by_index.length].field_256) = 0
                                uint255(lastRoundResults_by_index[lastRoundResults_by_index.length].field_257) = uint255(stor3.length - (stor4 * uint8(idx)))
                                address(lastRoundResults_by_index[lastRoundResults_by_index.length].field_512) = address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_0)
                                Mask(96, 0, lastRoundResults_by_index[lastRoundResults_by_index.length].field_672) = uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_160)
                                bool(lastRoundResults_by_index[lastRoundResults_by_index.length].field_768) = 0
                                uint255(lastRoundResults_by_index[lastRoundResults_by_index.length].field_769) = uint255(stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4))
                                require uint8(idx) < matchers_by_index.length
                                if uint8(matchers_by_index[uint8(idx)].field_160) == uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_160):
                                    require uint8(idx) < matchers_by_index.length
                                    call address(matchers_by_index[uint8(idx)].field_0) with:
                                       value 2 * stor3.length - (stor4 * uint8(idx)) wei
                                         gas 0 wei
                                    mem[0] = address(matchers_by_index[uint8(idx)].field_0)
                                    mem[32] = 15
                                    historyPayout[address(stor12[uint8(idx)].field_0)] += 2 * stor3.length - (stor4 * uint8(idx))
                                    s = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4)
                                    s = (uint8(idx) * stor4) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) - (uint255(stor9.field_1) * stor4)
                                    s = 2 * stor3.length - (stor4 * uint8(idx))
                                    s = uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) - uint255(stor9.field_1)
                                    idx = idx + 1
                                    s = s + (2 * stor3.length - (stor4 * uint8(idx)))
                                    continue 
                                require uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) - uint255(stor9.field_1) < contrarians_by_index.length
                                call address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_0) with:
                                   value 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4) wei
                                     gas 0 wei
                                require uint8(idx) < contrarians_by_index.length
                                mem[0] = address(contrarians_by_index[uint8(idx)].field_0)
                                mem[32] = 15
                                historyPayout[address(stor13[uint8(idx)].field_0)] += 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4)
                                s = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4)
                                s = (uint8(idx) * stor4) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) - (uint255(stor9.field_1) * stor4)
                                s = 2 * stor3.length - (stor4 * uint8(idx))
                                s = uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) - uint255(stor9.field_1)
                                idx = idx + 1
                                s = s + (2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4))
                                continue 
                            if not lastRoundResults_by_index.length > lastRoundResults_by_index.length + 1:
                                _4055 = mem[64]
                                mem[64] = mem[64] + 192
                                require uint8(idx) < matchers_by_index.length
                                mem[0] = 12
                                mem[_4055] = address(matchers_by_index[uint8(idx)].field_0)
                                mem[_4055 + 32] = uint8(matchers_by_index[uint8(idx)].field_160)
                                mem[_4055 + 64] = 2 * stor3.length - (stor4 * uint8(idx))
                                require uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) < contrarians_by_index.length
                                mem[_4055 + 96] = address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_0)
                                mem[_4055 + 128] = uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_160)
                                mem[_4055 + 160] = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                            else:
                                t = sha3(14) + (4 * lastRoundResults_by_index.length + 1)
                                while sha3(14) + (4 * lastRoundResults_by_index.length) > t:
                                    address(stor[t].field_0) = 0
                                    uint8(stor[t].field_160) = 0
                                    stor1[t] = 0
                                    address(stor2[t].field_0) = 0
                                    uint8(stor2[t].field_160) = 0
                                    stor3[t] = 0
                                    t = t + 4
                                    continue 
                                _5378 = mem[64]
                                mem[64] = mem[64] + 192
                                require uint8(idx) < matchers_by_index.length
                                mem[0] = 12
                                mem[_5378] = address(matchers_by_index[uint8(idx)].field_0)
                                mem[_5378 + 32] = uint8(matchers_by_index[uint8(idx)].field_160)
                                mem[_5378 + 64] = 2 * stor3.length - (stor4 * uint8(idx))
                                require uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) < contrarians_by_index.length
                                mem[_5378 + 96] = address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_0)
                                mem[_5378 + 128] = uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_160)
                                mem[_5378 + 160] = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                            address(lastRoundResults_by_index[lastRoundResults_by_index.length].field_0) = address(matchers_by_index[uint8(idx)].field_0)
                            Mask(96, 0, lastRoundResults_by_index[lastRoundResults_by_index.length].field_160) = uint8(matchers_by_index[uint8(idx)].field_160)
                            bool(lastRoundResults_by_index[lastRoundResults_by_index.length].field_256) = 0
                            uint255(lastRoundResults_by_index[lastRoundResults_by_index.length].field_257) = uint255(stor3.length - (stor4 * uint8(idx)))
                            address(lastRoundResults_by_index[lastRoundResults_by_index.length].field_512) = address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_0)
                            Mask(96, 0, lastRoundResults_by_index[lastRoundResults_by_index.length].field_672) = uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_160)
                            bool(lastRoundResults_by_index[lastRoundResults_by_index.length].field_768) = 0
                            uint255(lastRoundResults_by_index[lastRoundResults_by_index.length].field_769) = uint255(stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4))
                            require uint8(idx) < matchers_by_index.length
                            if uint8(matchers_by_index[uint8(idx)].field_160) == uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_160):
                                require uint8(idx) < matchers_by_index.length
                                call address(matchers_by_index[uint8(idx)].field_0) with:
                                   value 2 * stor3.length - (stor4 * uint8(idx)) wei
                                     gas 0 wei
                                mem[0] = address(matchers_by_index[uint8(idx)].field_0)
                                mem[32] = 15
                                historyPayout[address(stor12[uint8(idx)].field_0)] += 2 * stor3.length - (stor4 * uint8(idx))
                                s = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                                s = (uint8(idx) * stor4) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                                s = 2 * stor3.length - (stor4 * uint8(idx))
                                s = uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1))
                                idx = idx + 1
                                s = s + (2 * stor3.length - (stor4 * uint8(idx)))
                                continue 
                            require uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) < contrarians_by_index.length
                            call address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_0) with:
                               value 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) wei
                                 gas 0 wei
                            require uint8(idx) < contrarians_by_index.length
                            mem[0] = address(contrarians_by_index[uint8(idx)].field_0)
                            mem[32] = 15
                            historyPayout[address(stor13[uint8(idx)].field_0)] += 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                            s = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                            s = (uint8(idx) * stor4) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                            s = 2 * stor3.length - (stor4 * uint8(idx))
                            s = uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1))
                            idx = idx + 1
                            s = s + (2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4))
                            continue 
                        stor8++
                        call address(stor2.length) with:
                           value (uint256(stor9.field_0) * stor3.length) - s wei
                             gas 0 wei
                        uint256(stor9.field_0) = 0
                        matchers_by_index.length = 0
                        idx = 0
                        while matchers_by_index.length > idx:
                            address(matchers_by_index[idx].field_0) = 0
                            uint8(matchers_by_index[idx].field_160) = 0
                            idx = idx + 1
                            continue 
                        contrarians_by_index.length = 0
                        idx = 0
                        while contrarians_by_index.length > idx:
                            address(contrarians_by_index[idx].field_0) = 0
                            uint8(contrarians_by_index[idx].field_160) = 0
                            idx = idx + 1
                            continue 
                        stor10 = 0
                        if stor17 == 1:
                            state = 1
            else:
                call msg.sender with:
                   value msg.value - stor3.length wei
                     gas 0 wei
                require not state
                stor1.length = block.number + 1
                if stor10:
                    if stor1.length == stor11:
                        if stor10:
                            require stor1.length != stor11
                    else:
                        lastRoundResults_by_index.length = 0
                        idx = 0
                        while 4 * lastRoundResults_by_index.length > idx:
                            address(lastRoundResults_by_index[idx].field_0) = 0
                            uint8(lastRoundResults_by_index[idx].field_160) = 0
                            uint256(lastRoundResults_by_index[idx].field_256) = 0
                            address(lastRoundResults_by_index[idx].field_512) = 0
                            uint8(lastRoundResults_by_index[idx].field_672) = 0
                            uint256(lastRoundResults_by_index[idx].field_768) = 0
                            idx = idx + 4
                            continue 
                        s = 0
                        s = 0
                        s = 0
                        s = 0
                        idx = 0
                        s = 0
                        while uint8(idx) < uint255(stor9.field_1):
                            lastRoundResults_by_index.length++
                            if uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) >= uint255(stor9.field_1):
                                if not lastRoundResults_by_index.length > lastRoundResults_by_index.length + 1:
                                    _4057 = mem[64]
                                    mem[64] = mem[64] + 192
                                    require uint8(idx) < matchers_by_index.length
                                    mem[0] = 12
                                    mem[_4057] = address(matchers_by_index[uint8(idx)].field_0)
                                    mem[_4057 + 32] = uint8(matchers_by_index[uint8(idx)].field_160)
                                    mem[_4057 + 64] = 2 * stor3.length - (stor4 * uint8(idx))
                                    require uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) - uint255(stor9.field_1) < contrarians_by_index.length
                                    mem[_4057 + 96] = address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_0)
                                    mem[_4057 + 128] = uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_160)
                                    mem[_4057 + 160] = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4)
                                else:
                                    t = sha3(14) + (4 * lastRoundResults_by_index.length + 1)
                                    while sha3(14) + (4 * lastRoundResults_by_index.length) > t:
                                        address(stor[t].field_0) = 0
                                        uint8(stor[t].field_160) = 0
                                        stor1[t] = 0
                                        address(stor2[t].field_0) = 0
                                        uint8(stor2[t].field_160) = 0
                                        stor3[t] = 0
                                        t = t + 4
                                        continue 
                                    _5379 = mem[64]
                                    mem[64] = mem[64] + 192
                                    require uint8(idx) < matchers_by_index.length
                                    mem[0] = 12
                                    mem[_5379] = address(matchers_by_index[uint8(idx)].field_0)
                                    mem[_5379 + 32] = uint8(matchers_by_index[uint8(idx)].field_160)
                                    mem[_5379 + 64] = 2 * stor3.length - (stor4 * uint8(idx))
                                    require uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) - uint255(stor9.field_1) < contrarians_by_index.length
                                    mem[_5379 + 96] = address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_0)
                                    mem[_5379 + 128] = uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_160)
                                    mem[_5379 + 160] = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4)
                                address(lastRoundResults_by_index[lastRoundResults_by_index.length].field_0) = address(matchers_by_index[uint8(idx)].field_0)
                                Mask(96, 0, lastRoundResults_by_index[lastRoundResults_by_index.length].field_160) = uint8(matchers_by_index[uint8(idx)].field_160)
                                bool(lastRoundResults_by_index[lastRoundResults_by_index.length].field_256) = 0
                                uint255(lastRoundResults_by_index[lastRoundResults_by_index.length].field_257) = uint255(stor3.length - (stor4 * uint8(idx)))
                                address(lastRoundResults_by_index[lastRoundResults_by_index.length].field_512) = address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_0)
                                Mask(96, 0, lastRoundResults_by_index[lastRoundResults_by_index.length].field_672) = uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_160)
                                bool(lastRoundResults_by_index[lastRoundResults_by_index.length].field_768) = 0
                                uint255(lastRoundResults_by_index[lastRoundResults_by_index.length].field_769) = uint255(stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4))
                                require uint8(idx) < matchers_by_index.length
                                if uint8(matchers_by_index[uint8(idx)].field_160) == uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_160):
                                    require uint8(idx) < matchers_by_index.length
                                    call address(matchers_by_index[uint8(idx)].field_0) with:
                                       value 2 * stor3.length - (stor4 * uint8(idx)) wei
                                         gas 0 wei
                                    mem[0] = address(matchers_by_index[uint8(idx)].field_0)
                                    mem[32] = 15
                                    historyPayout[address(stor12[uint8(idx)].field_0)] += 2 * stor3.length - (stor4 * uint8(idx))
                                    s = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4)
                                    s = (uint8(idx) * stor4) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) - (uint255(stor9.field_1) * stor4)
                                    s = 2 * stor3.length - (stor4 * uint8(idx))
                                    s = uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) - uint255(stor9.field_1)
                                    idx = idx + 1
                                    s = s + (2 * stor3.length - (stor4 * uint8(idx)))
                                    continue 
                                require uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) - uint255(stor9.field_1) < contrarians_by_index.length
                                call address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) - uint255(stor9.field_1) + ('name', 'contrarians_by_index', 13)].field_0) with:
                                   value 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4) wei
                                     gas 0 wei
                                require uint8(idx) < contrarians_by_index.length
                                mem[0] = address(contrarians_by_index[uint8(idx)].field_0)
                                mem[32] = 15
                                historyPayout[address(stor13[uint8(idx)].field_0)] += 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4)
                                s = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4)
                                s = (uint8(idx) * stor4) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) - (uint255(stor9.field_1) * stor4)
                                s = 2 * stor3.length - (stor4 * uint8(idx))
                                s = uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) - uint255(stor9.field_1)
                                idx = idx + 1
                                s = s + (2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) + (uint255(stor9.field_1) * stor4))
                                continue 
                            if not lastRoundResults_by_index.length > lastRoundResults_by_index.length + 1:
                                _4058 = mem[64]
                                mem[64] = mem[64] + 192
                                require uint8(idx) < matchers_by_index.length
                                mem[0] = 12
                                mem[_4058] = address(matchers_by_index[uint8(idx)].field_0)
                                mem[_4058 + 32] = uint8(matchers_by_index[uint8(idx)].field_160)
                                mem[_4058 + 64] = 2 * stor3.length - (stor4 * uint8(idx))
                                require uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) < contrarians_by_index.length
                                mem[_4058 + 96] = address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_0)
                                mem[_4058 + 128] = uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_160)
                                mem[_4058 + 160] = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                            else:
                                t = sha3(14) + (4 * lastRoundResults_by_index.length + 1)
                                while sha3(14) + (4 * lastRoundResults_by_index.length) > t:
                                    address(stor[t].field_0) = 0
                                    uint8(stor[t].field_160) = 0
                                    stor1[t] = 0
                                    address(stor2[t].field_0) = 0
                                    uint8(stor2[t].field_160) = 0
                                    stor3[t] = 0
                                    t = t + 4
                                    continue 
                                _5380 = mem[64]
                                mem[64] = mem[64] + 192
                                require uint8(idx) < matchers_by_index.length
                                mem[0] = 12
                                mem[_5380] = address(matchers_by_index[uint8(idx)].field_0)
                                mem[_5380 + 32] = uint8(matchers_by_index[uint8(idx)].field_160)
                                mem[_5380 + 64] = 2 * stor3.length - (stor4 * uint8(idx))
                                require uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) < contrarians_by_index.length
                                mem[_5380 + 96] = address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_0)
                                mem[_5380 + 128] = uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_160)
                                mem[_5380 + 160] = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                            address(lastRoundResults_by_index[lastRoundResults_by_index.length].field_0) = address(matchers_by_index[uint8(idx)].field_0)
                            Mask(96, 0, lastRoundResults_by_index[lastRoundResults_by_index.length].field_160) = uint8(matchers_by_index[uint8(idx)].field_160)
                            bool(lastRoundResults_by_index[lastRoundResults_by_index.length].field_256) = 0
                            uint255(lastRoundResults_by_index[lastRoundResults_by_index.length].field_257) = uint255(stor3.length - (stor4 * uint8(idx)))
                            address(lastRoundResults_by_index[lastRoundResults_by_index.length].field_512) = address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_0)
                            Mask(96, 0, lastRoundResults_by_index[lastRoundResults_by_index.length].field_672) = uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_160)
                            bool(lastRoundResults_by_index[lastRoundResults_by_index.length].field_768) = 0
                            uint255(lastRoundResults_by_index[lastRoundResults_by_index.length].field_769) = uint255(stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4))
                            require uint8(idx) < matchers_by_index.length
                            if uint8(matchers_by_index[uint8(idx)].field_160) == uint8(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_160):
                                require uint8(idx) < matchers_by_index.length
                                call address(matchers_by_index[uint8(idx)].field_0) with:
                                   value 2 * stor3.length - (stor4 * uint8(idx)) wei
                                     gas 0 wei
                                mem[0] = address(matchers_by_index[uint8(idx)].field_0)
                                mem[32] = 15
                                historyPayout[address(stor12[uint8(idx)].field_0)] += 2 * stor3.length - (stor4 * uint8(idx))
                                s = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                                s = (uint8(idx) * stor4) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                                s = 2 * stor3.length - (stor4 * uint8(idx))
                                s = uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1))
                                idx = idx + 1
                                s = s + (2 * stor3.length - (stor4 * uint8(idx)))
                                continue 
                            require uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1)) < contrarians_by_index.length
                            call address(stor[uint8(idx) + (('map', ('blockhash', ('add', -1, 'number')), ('stor', ('name', 'stor7', 7))) % uint255(stor9.field_1)) + ('name', 'contrarians_by_index', 13)].field_0) with:
                               value 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4) wei
                                 gas 0 wei
                            require uint8(idx) < contrarians_by_index.length
                            mem[0] = address(contrarians_by_index[uint8(idx)].field_0)
                            mem[32] = 15
                            historyPayout[address(stor13[uint8(idx)].field_0)] += 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                            s = 2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                            s = (uint8(idx) * stor4) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4)
                            s = 2 * stor3.length - (stor4 * uint8(idx))
                            s = uint8(idx) + (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1))
                            idx = idx + 1
                            s = s + (2 * stor3.length - (uint8(idx) * stor4) - (sha3(block.hash(block.number - 1), stor7) % uint255(stor9.field_1) * stor4))
                            continue 
                        stor8++
                        call address(stor2.length) with:
                           value (uint256(stor9.field_0) * stor3.length) - s wei
                             gas 0 wei
                        uint256(stor9.field_0) = 0
                        matchers_by_index.length = 0
                        idx = 0
                        while matchers_by_index.length > idx:
                            address(matchers_by_index[idx].field_0) = 0
                            uint8(matchers_by_index[idx].field_160) = 0
                            idx = idx + 1
                            continue 
                        contrarians_by_index.length = 0
                        idx = 0
                        while contrarians_by_index.length > idx:
                            address(contrarians_by_index[idx].field_0) = 0
                            uint8(contrarians_by_index[idx].field_160) = 0
                            idx = idx + 1
                            continue 
                        stor10 = 0
                        if stor17 == 1:
                            state = 1
            if bool(stor9.field_0):
                contrarians_by_index.length++
                if not contrarians_by_index.length <= contrarians_by_index.length + 1:
                    idx = contrarians_by_index.length + 1
                    while contrarians_by_index.length > idx:
                        address(contrarians_by_index[idx].field_0) = 0
                        uint8(contrarians_by_index[idx].field_160) = 0
                        idx = idx + 1
                        continue 
                uint256(contrarians_by_index[contrarians_by_index.length].field_0) = msg.sender or Mask(96, 160, uint256(contrarians_by_index[contrarians_by_index.length].field_0))
                uint8(contrarians_by_index[contrarians_by_index.length].field_160) = 0
                contrarians_by_index[contrarians_by_index.length].field_256 % 1 = 0
                stor7++
                uint256(stor9.field_0)++
                historyTimesPlayed[address(msg.sender)]++
                if uint256(stor9.field_0) >= stor6:
                    if not bool(stor9.field_0):
                        if uint256(stor9.field_0) == stor5:
                            stor10 = 1
                            stor11 = block.number
                        else:
                            if (sha3(block.hash(block.number - 1), stor7) % (stor5 - uint256(stor9.field_0) / 2) + 1) + 1 == 1:
                                stor10 = 1
                                stor11 = block.number
            else:
                matchers_by_index.length++
                if not matchers_by_index.length <= matchers_by_index.length + 1:
                    idx = matchers_by_index.length + 1
                    while matchers_by_index.length > idx:
                        address(matchers_by_index[idx].field_0) = 0
                        uint8(matchers_by_index[idx].field_160) = 0
                        idx = idx + 1
                        continue 
                uint256(matchers_by_index[matchers_by_index.length].field_0) = msg.sender or Mask(96, 160, uint256(matchers_by_index[matchers_by_index.length].field_0))
                uint8(matchers_by_index[matchers_by_index.length].field_160) = 0
                matchers_by_index[matchers_by_index.length].field_256 % 1 = 0
                stor7++
                uint256(stor9.field_0)++
                historyTimesPlayed[address(msg.sender)]++
                if uint256(stor9.field_0) >= stor6:
                    if not bool(stor9.field_0):
                        if uint256(stor9.field_0) == stor5:
                            stor10 = 1
                            stor11 = block.number
                        else:
                            if (sha3(block.hash(block.number - 1), stor7) % (stor5 - uint256(stor9.field_0) / 2) + 1) + 1 == 1:
                                stor10 = 1
                                stor11 = block.number
}



}
