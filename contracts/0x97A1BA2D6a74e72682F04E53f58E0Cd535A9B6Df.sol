contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
array of uint8 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;

function _fallback() payable {
    mem[128] = '
-----------------------------
 '
    mem[160] = '    Welcome to Roulette 
 Got co'
    mem[192] = 'ins? Then come on in! 
---------'
    mem[224] = '--------------------
'
    stor0.length = 235
    s = 0
    idx = 128
    while 245 > idx:
        stor0[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 4
    while stor0.length + 31 / 32 > idx:
        stor0[idx] = 0
        idx = idx + 1
        continue 
    stor1.length = 1
    stor2.length = 10^18
    stor3.length = 100 * 10^18
    stor4.length = 1000 * 10^18
    stor5 = msg.sender or Mask(96, 160, stor5)
    stor6 = 0
    stor7 = 0
    if not stor7 <= 0:
        mem[0] = 7
        idx = 0
        while sha3(7) + (5 * stor7) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            uint256(stor[idx + sha3(mem[0]) + 3]) = 0
            uint256(stor[idx + sha3(mem[0]) + 4]) = 0
            mem[0] = idx + sha3(mem[0]) + 4
            s = sha3(idx + sha3(mem[0]) + 4)
            while sha3(idx + sha3(mem[0]) + 4) + (5 * uint256(stor[idx + sha3(mem[0]) + 4])) > s:
                uint256(stor[s]) = 0
                stor1[s] = 0
                stor2[s] = 0
                stor3[s] = 0
                stor4[s] = 0
                s = s + 1
                continue 
            idx = idx + 1
            continue 
    return code.data[777 len 9484]
}



// =====================  Runtime code  =====================


array of uint256 welcome;
array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
array of uint8 stor4;
address stor5;
uint256 casinoBalance;
mapping of uint256 stor8;

function casinoBalance() payable {
    return casinoBalance
}

function welcome() payable {
    return welcome[0 len welcome.length]
}

function kill() payable {
    if stor5 != msg.sender:
    idx = 0
    while idx < stor7.length:
        mem[0] = 7
        call address(stor7[idx].field_0) with:
           value uint256(stor7[idx].field_256) wei
             gas 0 wei
        idx = idx + 1
        continue 
    selfdestruct(stor5)
}

function _fallback() payable {
  stop
}

function sub_0fe2a60e(?) payable {
    if not stor8[address(msg.sender)]:
        return 0
    require stor8[address(msg.sender)] - 1 < stor7.length
    return uint256(stor7[stor8[address(msg.sender)]].field_0)
}

function sub_c4a16415(?) payable {
    if not stor8[address(msg.sender)]:
        return 0
    require stor8[address(msg.sender)] - 1 < stor7.length
    return uint256(stor7[stor8[address(msg.sender)]].field_0)
}

function withdraw(uint256 arg1) payable {
    if not stor8[address(msg.sender)]:
        return 0
    require stor8[address(msg.sender)] - 1 < stor7.length
    if arg1 < 10^18:
        return 0
    if arg1 > uint256(stor7[stor8[address(msg.sender)]].field_0):
        return 0
    require stor8[address(msg.sender)] - 1 < stor7.length
    uint256(stor7[stor8[address(msg.sender)]].field_0) -= arg1
    call address(stor7[stor8[address(msg.sender)]].field_0) with:
       value arg1 wei
         gas 0 wei
    casinoBalance -= arg1
    return 1
}

function deposit() payable {
    if msg.value < stor2.length:
        return 0
    if msg.value > stor3.length:
        if msg.value >= stor2.length:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
            return 0
        else:
            return 0
    if stor8[address(msg.sender)]:
        require stor8[address(msg.sender)] - 1 < stor7.length
        if uint256(stor7[stor8[address(msg.sender)]].field_0) + msg.value > stor4.length:
            if msg.value >= stor2.length:
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
                return 0
            else:
                return 0
        require stor8[address(msg.sender)] - 1 < stor7.length
        uint256(stor7[stor8[address(msg.sender)]].field_0) += msg.value
        uint256(stor7[stor8[address(msg.sender)]].field_0) += msg.value
    else:
        stor7.length++
        if not stor7.length <= stor7.length + 1:
            mem[0] = 7
            idx = (5 * stor7.length) + 5
            while sha3(7) + (5 * stor7.length) > idx + sha3(mem[0]):
                address(stor[idx + sha3(mem[0])]) = 0
                uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                mem[0] = idx + sha3(mem[0]) + 4
                s = sha3(idx + sha3(mem[0]) + 4)
                while sha3(idx + sha3(mem[0]) + 4) + (5 * uint256(stor[idx + sha3(mem[0]) + 4])) > s:
                    uint256(stor[s]) = 0
                    stor1[s] = 0
                    stor2[s] = 0
                    stor3[s] = 0
                    stor4[s] = 0
                    s = s + 1
                    continue 
                idx = idx + 1
                continue 
        require stor7.length - 1 < stor7.length
        uint256(stor7[stor7.length].field_0) = msg.value
        uint256(stor7[stor7.length].field_0) = msg.value
        uint256(stor7[stor7.length].field_0) = stor7.length
        uint256(stor7[stor7.length].field_0) = 0
        if not uint256(stor7[stor7.length].field_0) <= 0:
            idx = 0
            while 5 * uint256(stor7[stor7.length].field_0) > idx:
                uint256(stor[idx + sha3((5 * stor7.length) + ('name', 'stor7', 7) - 1)].field_0) = 0
                uint256(stor[idx + sha3((5 * stor7.length) + ('name', 'stor7', 7) - 1)].field_256) = 0
                uint256(stor[idx + sha3((5 * stor7.length) + ('name', 'stor7', 7) - 1)].field_512) = 0
                uint256(stor[idx + sha3((5 * stor7.length) + ('name', 'stor7', 7) - 1)].field_768) = 0
                uint8(stor[idx + sha3((5 * stor7.length) + ('name', 'stor7', 7) - 1)].field_1024) = 0
                idx = idx + 1
                continue 
        require stor7.length - 1 < stor7.length
        stor8[address(msg.sender)] = uint256(stor7[stor7.length].field_0)
    casinoBalance += msg.value
    return 1
}

function sub_d73ba845(?) payable {
    if not stor8[address(msg.sender)]:
        mem[256] = Mask(16, 120, 'Non-Existing User') >> 120, mem[273 len 15]
        return Array(len=17, data=mem[256])
    if arg2 < stor2.length:
        mem[320] = mem[337 len 15]
        return Array(len=47, data='Please choose an amount between ', '0.1 and 100 ETH', mem[320])
    if arg2 > stor3.length:
        mem[320] = mem[337 len 15]
        return Array(len=47, data='Please choose an amount between ', '0.1 and 100 ETH', mem[320])
    if 2 * arg2 > casinoBalance:
        mem[320] = 0, mem[337 len 15]
        return Array(len=49, data='Casino has insufficient funds fo', 'r this bet amount', mem[320])
    require stor8[address(msg.sender)] - 1 < stor7.length
    if arg2 > uint256(stor7[stor8[address(msg.sender)]].field_0):
        mem[256] = Mask(176, 40, 'User has insufficient funds') >> 40, mem[283 len 5]
        return Array(len=27, data=mem[256])
    if arg1:
        if arg1 != 1:
            mem[320] = 0, mem[344 len 8]
            return Array(len=56, data='Please choose either '0' = red o', 'r '1' = black as a color', mem[320])
    require stor8[address(msg.sender)] - 1 < stor7.length
    uint256(stor7[stor8[address(msg.sender)]].field_0)++
    if not uint256(stor7[stor8[address(msg.sender)]].field_0) <= uint256(stor7[stor8[address(msg.sender)]].field_0) + 1:
        idx = (5 * uint256(stor7[stor8[address(msg.sender)]].field_0)) + 5
        while 5 * uint256(stor7[stor8[address(msg.sender)]].field_0) > idx:
            uint256(stor[idx + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_0) = 0
            uint256(stor[idx + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_256) = 0
            uint256(stor[idx + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) = 0
            uint256(stor[idx + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768) = 0
            uint8(stor[idx + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 0
            idx = idx + 1
            continue 
    require stor8[address(msg.sender)] - 1 < stor7.length
    require uint256(stor7[stor8[address(msg.sender)]].field_0) - 1 < uint256(stor7[stor8[address(msg.sender)]].field_0)
    uint256(stor[(5 * uint256(stor7[stor8[address(msg.sender)]].field_0)) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_0) = block.number
    require stor8[address(msg.sender)] - 1 < stor7.length
    require uint256(stor7[stor8[address(msg.sender)]].field_0) - 1 < uint256(stor7[stor8[address(msg.sender)]].field_0)
    uint256(stor[(5 * uint256(stor7[stor8[address(msg.sender)]].field_0)) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_0) = arg1
    require stor8[address(msg.sender)] - 1 < stor7.length
    require uint256(stor7[stor8[address(msg.sender)]].field_0) - 1 < uint256(stor7[stor8[address(msg.sender)]].field_0)
    uint256(stor[(5 * uint256(stor7[stor8[address(msg.sender)]].field_0)) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_0) = arg2
    require stor8[address(msg.sender)] - 1 < stor7.length
    require uint256(stor7[stor8[address(msg.sender)]].field_0) - 1 < uint256(stor7[stor8[address(msg.sender)]].field_0)
    uint256(stor[(5 * uint256(stor7[stor8[address(msg.sender)]].field_0)) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_0) = 2
    require stor8[address(msg.sender)] - 1 < stor7.length
    require uint256(stor7[stor8[address(msg.sender)]].field_0) - 1 < uint256(stor7[stor8[address(msg.sender)]].field_0)
    uint8(stor[(5 * uint256(stor7[stor8[address(msg.sender)]].field_0)) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_0) = 0
    require stor8[address(msg.sender)] - 1 < stor7.length
    uint256(stor7[stor8[address(msg.sender)]].field_0) -= arg2
    casinoBalance += arg2
    mem[256] = Mask(144, 56, 'Bet executed and pending!') >> 56, mem[281 len 7]
    return Array(len=25, data=mem[256])
}

function sub_3d5b60d6(?) payable {
    if not stor8[address(msg.sender)]:
        mem[256] = Mask(16, 120, 'Non-Existing User') >> 120, mem[273 len 15]
        return Array(len=17, data=mem[256])
    if arg2 < stor2.length:
        mem[320] = mem[338 len 14]
        return Array(len=46, data='Please choose an amount between ', '0.1 and 10 ETH', mem[320])
    if arg2 > stor3.length / 10:
        mem[320] = mem[338 len 14]
        return Array(len=46, data='Please choose an amount between ', '0.1 and 10 ETH', mem[320])
    if 36 * arg2 > casinoBalance:
        mem[320] = 0, mem[337 len 15]
        return Array(len=49, data='Casino has insufficient funds fo', 'r this bet amount', mem[320])
    require stor8[address(msg.sender)] - 1 < stor7.length
    if arg2 > uint256(stor7[stor8[address(msg.sender)]].field_0):
        mem[256] = Mask(176, 40, 'User has insufficient funds') >> 40, mem[283 len 5]
        return Array(len=27, data=mem[256])
    if arg1 < 0:
        mem[320] = mem[345 len 7]
        return Array(len=39, data='Please choose a number between 0', ' and 36', mem[320])
    if arg1 > 36:
        mem[320] = mem[345 len 7]
        return Array(len=39, data='Please choose a number between 0', ' and 36', mem[320])
    require stor8[address(msg.sender)] - 1 < stor7.length
    uint256(stor7[stor8[address(msg.sender)]].field_0)++
    if not uint256(stor7[stor8[address(msg.sender)]].field_0) <= uint256(stor7[stor8[address(msg.sender)]].field_0) + 1:
        idx = (5 * uint256(stor7[stor8[address(msg.sender)]].field_0)) + 5
        while 5 * uint256(stor7[stor8[address(msg.sender)]].field_0) > idx:
            uint256(stor[idx + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_0) = 0
            uint256(stor[idx + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_256) = 0
            uint256(stor[idx + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) = 0
            uint256(stor[idx + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768) = 0
            uint8(stor[idx + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 0
            idx = idx + 1
            continue 
    require stor8[address(msg.sender)] - 1 < stor7.length
    require uint256(stor7[stor8[address(msg.sender)]].field_0) - 1 < uint256(stor7[stor8[address(msg.sender)]].field_0)
    uint256(stor[(5 * uint256(stor7[stor8[address(msg.sender)]].field_0)) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_0) = block.number
    require stor8[address(msg.sender)] - 1 < stor7.length
    require uint256(stor7[stor8[address(msg.sender)]].field_0) - 1 < uint256(stor7[stor8[address(msg.sender)]].field_0)
    uint256(stor[(5 * uint256(stor7[stor8[address(msg.sender)]].field_0)) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_0) = arg1
    require stor8[address(msg.sender)] - 1 < stor7.length
    require uint256(stor7[stor8[address(msg.sender)]].field_0) - 1 < uint256(stor7[stor8[address(msg.sender)]].field_0)
    uint256(stor[(5 * uint256(stor7[stor8[address(msg.sender)]].field_0)) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_0) = arg2
    require stor8[address(msg.sender)] - 1 < stor7.length
    require uint256(stor7[stor8[address(msg.sender)]].field_0) - 1 < uint256(stor7[stor8[address(msg.sender)]].field_0)
    uint256(stor[(5 * uint256(stor7[stor8[address(msg.sender)]].field_0)) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_0) = 36
    require stor8[address(msg.sender)] - 1 < stor7.length
    require uint256(stor7[stor8[address(msg.sender)]].field_0) - 1 < uint256(stor7[stor8[address(msg.sender)]].field_0)
    uint8(stor[(5 * uint256(stor7[stor8[address(msg.sender)]].field_0)) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_0) = 0
    require stor8[address(msg.sender)] - 1 < stor7.length
    uint256(stor7[stor8[address(msg.sender)]].field_0) -= arg2
    casinoBalance += arg2
    mem[256] = Mask(144, 56, 'Bet executed and pending!') >> 56, mem[281 len 7]
    return Array(len=25, data=mem[256])
}

function sub_a1eb05c0(?) payable {
    if not stor8[address(msg.sender)]:
        mem[256] = Mask(16, 120, 'Non-Existing User') >> 120, mem[273 len 15]
        return Array(len=17, data=mem[256])
    if arg2 < stor2.length:
        mem[320] = mem[337 len 15]
        return Array(len=47, data='Please choose an amount between ', '0.1 and 100 ETH', mem[320])
    if arg2 > stor3.length:
        mem[320] = mem[337 len 15]
        return Array(len=47, data='Please choose an amount between ', '0.1 and 100 ETH', mem[320])
    if 3 * arg2 > casinoBalance:
        mem[320] = 0, mem[337 len 15]
        return Array(len=49, data='Casino has insufficient funds fo', 'r this bet amount', mem[320])
    require stor8[address(msg.sender)] - 1 < stor7.length
    if arg2 > uint256(stor7[stor8[address(msg.sender)]].field_0):
        mem[256] = Mask(176, 40, 'User has insufficient funds') >> 40, mem[283 len 5]
        return Array(len=27, data=mem[256])
    if arg1 < 0:
        mem[384] = 0, mem[410 len 6]
        return Array(len=90, data='Please choose a number between '', '0' = Bet on 1-12, '1' = Bet on 1', '3-24 or '2' = Bet on 25-36' >> 256, mem[384]), 
    if arg1 > 2:
        mem[384] = 0, mem[410 len 6]
        return Array(len=90, data='Please choose a number between '', '0' = Bet on 1-12, '1' = Bet on 1', '3-24 or '2' = Bet on 25-36' >> 256, mem[384]), 
    require stor8[address(msg.sender)] - 1 < stor7.length
    uint256(stor7[stor8[address(msg.sender)]].field_0)++
    if not uint256(stor7[stor8[address(msg.sender)]].field_0) <= uint256(stor7[stor8[address(msg.sender)]].field_0) + 1:
        idx = (5 * uint256(stor7[stor8[address(msg.sender)]].field_0)) + 5
        while 5 * uint256(stor7[stor8[address(msg.sender)]].field_0) > idx:
            uint256(stor[idx + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_0) = 0
            uint256(stor[idx + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_256) = 0
            uint256(stor[idx + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) = 0
            uint256(stor[idx + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768) = 0
            uint8(stor[idx + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 0
            idx = idx + 1
            continue 
    require stor8[address(msg.sender)] - 1 < stor7.length
    require uint256(stor7[stor8[address(msg.sender)]].field_0) - 1 < uint256(stor7[stor8[address(msg.sender)]].field_0)
    uint256(stor[(5 * uint256(stor7[stor8[address(msg.sender)]].field_0)) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_0) = block.number
    require stor8[address(msg.sender)] - 1 < stor7.length
    require uint256(stor7[stor8[address(msg.sender)]].field_0) - 1 < uint256(stor7[stor8[address(msg.sender)]].field_0)
    uint256(stor[(5 * uint256(stor7[stor8[address(msg.sender)]].field_0)) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_0) = arg1
    require stor8[address(msg.sender)] - 1 < stor7.length
    require uint256(stor7[stor8[address(msg.sender)]].field_0) - 1 < uint256(stor7[stor8[address(msg.sender)]].field_0)
    uint256(stor[(5 * uint256(stor7[stor8[address(msg.sender)]].field_0)) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_0) = arg2
    require stor8[address(msg.sender)] - 1 < stor7.length
    require uint256(stor7[stor8[address(msg.sender)]].field_0) - 1 < uint256(stor7[stor8[address(msg.sender)]].field_0)
    uint256(stor[(5 * uint256(stor7[stor8[address(msg.sender)]].field_0)) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_0) = 3
    require stor8[address(msg.sender)] - 1 < stor7.length
    require uint256(stor7[stor8[address(msg.sender)]].field_0) - 1 < uint256(stor7[stor8[address(msg.sender)]].field_0)
    uint8(stor[(5 * uint256(stor7[stor8[address(msg.sender)]].field_0)) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_0) = 0
    require stor8[address(msg.sender)] - 1 < stor7.length
    uint256(stor7[stor8[address(msg.sender)]].field_0) -= arg2
    casinoBalance += arg2
    mem[256] = Mask(144, 56, 'Bet executed and pending!') >> 56, mem[281 len 7]
    return Array(len=25, data=mem[256])
}

function updateBalance() payable {
    if not stor8[address(msg.sender)]:
        return 0
    require stor8[address(msg.sender)] - 1 < stor7.length
    require stor8[address(msg.sender)] - 1 < stor7.length
    if uint256(stor7[stor8[address(msg.sender)]].field_0):
        idx = 0
        while idx < uint256(stor7[stor8[address(msg.sender)]].field_0):
            mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
            if uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) != 1:
                require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                if block.number >= uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_0) + 2:
                    stor1.length++
                    stor1.length = (7 * stor1.length) + (7 * stor1.length * stor1.length)
                    stor1.length = stor1.length % 10^12
                    require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                    if uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768) != 36:
                        require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                        if uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768) != 3:
                            require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                            if uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768) != 2:
                                require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                idx = idx + 1
                                continue 
                            else:
                                if not (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40:
                                    require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                    mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                    uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                    idx = idx + 1
                                    continue 
                                else:
                                    require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                    if bool(((11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40) + 1) != uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_256):
                                        require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                        mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                        uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                        idx = idx + 1
                                        continue 
                                    else:
                                        if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 37:
                                            require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                            mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                            uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                            idx = idx + 1
                                            continue 
                                        else:
                                            if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 38:
                                                require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                idx = idx + 1
                                                continue 
                                            else:
                                                if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 39:
                                                    require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                    mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                    uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                    uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                    casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                    mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                    uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                    idx = idx + 1
                                                    continue 
                        else:
                            if not (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40:
                                require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                if uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768) != 2:
                                    require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                    mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                    uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                    idx = idx + 1
                                    continue 
                                else:
                                    if not (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40:
                                        require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                        mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                        uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                        idx = idx + 1
                                        continue 
                                    else:
                                        require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                        if bool(((11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40) + 1) != uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_256):
                                            require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                            mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                            uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                            idx = idx + 1
                                            continue 
                                        else:
                                            if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 37:
                                                require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                idx = idx + 1
                                                continue 
                                            else:
                                                if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 38:
                                                    require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                    mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                    uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 39:
                                                        require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                        mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                        uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                        idx = idx + 1
                                                        continue 
                                                    else:
                                                        require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                        uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                        casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                        mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                        uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                        idx = idx + 1
                                                        continue 
                            else:
                                require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                if ((11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40) + 1 % 3 != uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_256):
                                    require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                    if uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768) != 2:
                                        require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                        mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                        uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                        idx = idx + 1
                                        continue 
                                    else:
                                        if not (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40:
                                            require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                            mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                            uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                            idx = idx + 1
                                            continue 
                                        else:
                                            require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                            if bool(((11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40) + 1) != uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_256):
                                                require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                idx = idx + 1
                                                continue 
                                            else:
                                                if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 37:
                                                    require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                    mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                    uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 38:
                                                        require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                        mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                        uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                        idx = idx + 1
                                                        continue 
                                                    else:
                                                        if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 39:
                                                            require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                            mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                            uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                            idx = idx + 1
                                                            continue 
                                                        else:
                                                            require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                            uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                            casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                            mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                            uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                            idx = idx + 1
                                                            continue 
                                else:
                                    if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 37:
                                        require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                        if uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768) != 2:
                                            require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                            mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                            uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                            idx = idx + 1
                                            continue 
                                        else:
                                            if not (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40:
                                                require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                idx = idx + 1
                                                continue 
                                            else:
                                                require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                if bool(((11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40) + 1) != uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_256):
                                                    require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                    mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                    uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 37:
                                                        require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                        mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                        uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                        idx = idx + 1
                                                        continue 
                                                    else:
                                                        if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 38:
                                                            require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                            mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                            uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                            idx = idx + 1
                                                            continue 
                                                        else:
                                                            if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 39:
                                                                require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                                mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                                uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                                idx = idx + 1
                                                                continue 
                                                            else:
                                                                require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                                uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                                uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                                idx = idx + 1
                                                                continue 
                                    else:
                                        if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 38:
                                            require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                            if uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768) != 2:
                                                require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                idx = idx + 1
                                                continue 
                                            else:
                                                if not (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40:
                                                    require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                    mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                    uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                    if bool(((11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40) + 1) != uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_256):
                                                        require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                        mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                        uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                        idx = idx + 1
                                                        continue 
                                                    else:
                                                        if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 37:
                                                            require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                            mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                            uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                            idx = idx + 1
                                                            continue 
                                                        else:
                                                            if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 38:
                                                                require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                                mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                                uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                                idx = idx + 1
                                                                continue 
                                                            else:
                                                                if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 39:
                                                                    require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                                    mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                                    uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                                    idx = idx + 1
                                                                    continue 
                                                                else:
                                                                    require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                                    uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                    casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                    mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                                    uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                                    idx = idx + 1
                                                                    continue 
                                        else:
                                            if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 39:
                                                require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                if uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768) != 2:
                                                    require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                    mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                    uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    if not (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40:
                                                        require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                        mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                        uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                        idx = idx + 1
                                                        continue 
                                                    else:
                                                        require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                        if bool(((11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40) + 1) != uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_256):
                                                            require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                            mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                            uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                            idx = idx + 1
                                                            continue 
                                                        else:
                                                            if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 37:
                                                                require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                                mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                                uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                                idx = idx + 1
                                                                continue 
                                                            else:
                                                                if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 38:
                                                                    require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                                    mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                                    uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                                    idx = idx + 1
                                                                    continue 
                                                                else:
                                                                    if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 39:
                                                                        require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                                        mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                                        uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                                        idx = idx + 1
                                                                        continue 
                                                                    else:
                                                                        require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                                        uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                        casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                        mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                                        uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                                        idx = idx + 1
                                                                        continue 
                                            else:
                                                require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                if uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768) != 2:
                                                    require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                    uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                    casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                    mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                    uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    if not (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40:
                                                        require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                        uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                        casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                        mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                        uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                        idx = idx + 1
                                                        continue 
                                                    else:
                                                        require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                        if bool(((11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40) + 1) != uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_256):
                                                            require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                            uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                            casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                            mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                            uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                            idx = idx + 1
                                                            continue 
                                                        else:
                                                            if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 37:
                                                                require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                                uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                                uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                                idx = idx + 1
                                                                continue 
                                                            else:
                                                                if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 38:
                                                                    require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                                    uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                    casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                    mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                                    uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                                    idx = idx + 1
                                                                    continue 
                                                                else:
                                                                    if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 39:
                                                                        require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                                        uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                        casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                        mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                                        uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                                        idx = idx + 1
                                                                        continue 
                                                                    else:
                                                                        require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                                        uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                        casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                        mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                                        uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                                        idx = idx + 1
                                                                        continue 
                    else:
                        require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                        if uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_256) != (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40:
                            require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                            if uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768) != 3:
                                require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                if uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768) != 2:
                                    require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                    mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                    uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                    idx = idx + 1
                                    continue 
                                else:
                                    if not (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40:
                                        require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                        mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                        uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                        idx = idx + 1
                                        continue 
                                    else:
                                        require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                        if bool(((11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40) + 1) != uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_256):
                                            require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                            mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                            uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                            idx = idx + 1
                                            continue 
                                        else:
                                            if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 37:
                                                require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                idx = idx + 1
                                                continue 
                                            else:
                                                if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 38:
                                                    require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                    mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                    uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 39:
                                                        require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                        mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                        uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                        idx = idx + 1
                                                        continue 
                                                    else:
                                                        require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                        uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                        casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                        mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                        uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                        idx = idx + 1
                                                        continue 
                            else:
                                if not (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40:
                                    require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                    if uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768) != 2:
                                        require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                        mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                        uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                        idx = idx + 1
                                        continue 
                                    else:
                                        if not (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40:
                                            require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                            mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                            uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                            idx = idx + 1
                                            continue 
                                        else:
                                            require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                            if bool(((11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40) + 1) != uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_256):
                                                require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                idx = idx + 1
                                                continue 
                                            else:
                                                if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 37:
                                                    require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                    mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                    uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 38:
                                                        require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                        mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                        uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                        idx = idx + 1
                                                        continue 
                                                    else:
                                                        if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 39:
                                                            require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                            mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                            uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                            idx = idx + 1
                                                            continue 
                                                        else:
                                                            require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                            uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                            casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                            mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                            uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                            idx = idx + 1
                                                            continue 
                                else:
                                    require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                    if ((11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40) + 1 % 3 != uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_256):
                                        require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                        if uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768) != 2:
                                            require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                            mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                            uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                            idx = idx + 1
                                            continue 
                                        else:
                                            if not (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40:
                                                require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                idx = idx + 1
                                                continue 
                                            else:
                                                require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                if bool(((11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40) + 1) != uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_256):
                                                    require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                    mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                    uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 37:
                                                        require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                        mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                        uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                        idx = idx + 1
                                                        continue 
                                                    else:
                                                        if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 38:
                                                            require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                            mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                            uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                            idx = idx + 1
                                                            continue 
                                                        else:
                                                            if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 39:
                                                                require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                                mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                                uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                                idx = idx + 1
                                                                continue 
                                                            else:
                                                                require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                                uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                                uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                                idx = idx + 1
                                                                continue 
                                    else:
                                        if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 37:
                                            require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                            if uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768) != 2:
                                                require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                idx = idx + 1
                                                continue 
                                            else:
                                                if not (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40:
                                                    require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                    mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                    uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                    if bool(((11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40) + 1) != uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_256):
                                                        require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                        mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                        uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                        idx = idx + 1
                                                        continue 
                                                    else:
                                                        if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 37:
                                                            require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                            mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                            uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                            idx = idx + 1
                                                            continue 
                                                        else:
                                                            if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 38:
                                                                require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                                mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                                uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                                idx = idx + 1
                                                                continue 
                                                            else:
                                                                if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 39:
                                                                    require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                                    mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                                    uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                                    idx = idx + 1
                                                                    continue 
                                                                else:
                                                                    require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                                    uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                    casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                    mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                                    uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                                    idx = idx + 1
                                                                    continue 
                                        else:
                                            if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 38:
                                                require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                if uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768) != 2:
                                                    require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                    mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                    uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    if not (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40:
                                                        require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                        mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                        uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                        idx = idx + 1
                                                        continue 
                                                    else:
                                                        require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                        if bool(((11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40) + 1) != uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_256):
                                                            require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                            mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                            uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                            idx = idx + 1
                                                            continue 
                                                        else:
                                                            if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 37:
                                                                require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                                mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                                uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                                idx = idx + 1
                                                                continue 
                                                            else:
                                                                if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 38:
                                                                    require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                                    mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                                    uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                                    idx = idx + 1
                                                                    continue 
                                                                else:
                                                                    if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 39:
                                                                        require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                                        mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                                        uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                                        idx = idx + 1
                                                                        continue 
                                                                    else:
                                                                        require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                                        uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                        casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                        mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                                        uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                                        idx = idx + 1
                                                                        continue 
                                            else:
                                                if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 39:
                                                    require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                    if uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768) != 2:
                                                        require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                        mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                        uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                        idx = idx + 1
                                                        continue 
                                                    else:
                                                        if not (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40:
                                                            require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                            mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                            uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                            idx = idx + 1
                                                            continue 
                                                        else:
                                                            require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                            if bool(((11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40) + 1) != uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_256):
                                                                require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                                mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                                uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                                idx = idx + 1
                                                                continue 
                                                            else:
                                                                if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 37:
                                                                    require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                                    mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                                    uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                                    idx = idx + 1
                                                                    continue 
                                                                else:
                                                                    if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 38:
                                                                        require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                                        mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                                        uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                                        idx = idx + 1
                                                                        continue 
                                                                    else:
                                                                        if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 39:
                                                                            require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                                            mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                                            uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                                            idx = idx + 1
                                                                            continue 
                                                                        else:
                                                                            require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                                            uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                            casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                            mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                                            uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                                            idx = idx + 1
                                                                            continue 
                                                else:
                                                    require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                    if uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768) != 2:
                                                        require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                        uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                        casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                        mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                        uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                        idx = idx + 1
                                                        continue 
                                                    else:
                                                        if not (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40:
                                                            require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                            uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                            casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                            mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                            uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                            idx = idx + 1
                                                            continue 
                                                        else:
                                                            require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                            if bool(((11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40) + 1) != uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_256):
                                                                require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                                uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                                uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                                idx = idx + 1
                                                                continue 
                                                            else:
                                                                if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 37:
                                                                    require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                                    uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                    casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                    mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                                    uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                                    idx = idx + 1
                                                                    continue 
                                                                else:
                                                                    if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 38:
                                                                        require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                                        uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                        casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                        mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                                        uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                                        idx = idx + 1
                                                                        continue 
                                                                    else:
                                                                        if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 39:
                                                                            require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                                            uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                            casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                            mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                                            uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                                            idx = idx + 1
                                                                            continue 
                                                                        else:
                                                                            require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                                            uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                            casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                            mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                                            uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                                            idx = idx + 1
                                                                            continue 
                        else:
                            require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                            if uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768) != 3:
                                require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                if uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768) != 2:
                                    require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                    uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                    casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                    mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                    uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                    idx = idx + 1
                                    continue 
                                else:
                                    if not (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40:
                                        require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                        uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                        casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                        mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                        uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                        idx = idx + 1
                                        continue 
                                    else:
                                        require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                        if bool(((11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40) + 1) != uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_256):
                                            require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                            uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                            casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                            mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                            uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                            idx = idx + 1
                                            continue 
                                        else:
                                            if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 37:
                                                require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                idx = idx + 1
                                                continue 
                                            else:
                                                if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 38:
                                                    require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                    uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                    casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                    mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                    uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 39:
                                                        require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                        uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                        casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                        mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                        uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                        idx = idx + 1
                                                        continue 
                                                    else:
                                                        require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                        uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                        casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                        mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                        uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                        idx = idx + 1
                                                        continue 
                            else:
                                if not (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40:
                                    require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                    if uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768) != 2:
                                        require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                        uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                        casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                        mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                        uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                        idx = idx + 1
                                        continue 
                                    else:
                                        if not (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40:
                                            require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                            uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                            casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                            mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                            uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                            idx = idx + 1
                                            continue 
                                        else:
                                            require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                            if bool(((11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40) + 1) != uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_256):
                                                require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                idx = idx + 1
                                                continue 
                                            else:
                                                if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 37:
                                                    require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                    uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                    casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                    mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                    uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 38:
                                                        require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                        uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                        casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                        mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                        uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                        idx = idx + 1
                                                        continue 
                                                    else:
                                                        if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 39:
                                                            require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                            uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                            casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                            mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                            uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                            idx = idx + 1
                                                            continue 
                                                        else:
                                                            require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                            uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                            casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                            mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                            uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                            idx = idx + 1
                                                            continue 
                                else:
                                    require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                    if ((11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40) + 1 % 3 != uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_256):
                                        require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                        if uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768) != 2:
                                            require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                            uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                            casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                            mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                            uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                            idx = idx + 1
                                            continue 
                                        else:
                                            if not (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40:
                                                require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                idx = idx + 1
                                                continue 
                                            else:
                                                require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                if bool(((11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40) + 1) != uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_256):
                                                    require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                    uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                    casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                    mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                    uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 37:
                                                        require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                        uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                        casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                        mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                        uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                        idx = idx + 1
                                                        continue 
                                                    else:
                                                        if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 38:
                                                            require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                            uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                            casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                            mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                            uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                            idx = idx + 1
                                                            continue 
                                                        else:
                                                            if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 39:
                                                                require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                                uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                                uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                                idx = idx + 1
                                                                continue 
                                                            else:
                                                                require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                                uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                                uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                                idx = idx + 1
                                                                continue 
                                    else:
                                        if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 37:
                                            require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                            if uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768) != 2:
                                                require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                idx = idx + 1
                                                continue 
                                            else:
                                                if not (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40:
                                                    require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                    uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                    casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                    mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                    uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                    if bool(((11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40) + 1) != uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_256):
                                                        require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                        uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                        casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                        mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                        uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                        idx = idx + 1
                                                        continue 
                                                    else:
                                                        if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 37:
                                                            require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                            uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                            casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                            mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                            uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                            idx = idx + 1
                                                            continue 
                                                        else:
                                                            if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 38:
                                                                require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                                uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                                uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                                idx = idx + 1
                                                                continue 
                                                            else:
                                                                if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 39:
                                                                    require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                                    uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                    casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                    mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                                    uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                                    idx = idx + 1
                                                                    continue 
                                                                else:
                                                                    require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                                    uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                    casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                    mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                                    uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                                    idx = idx + 1
                                                                    continue 
                                        else:
                                            if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 38:
                                                require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                if uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768) != 2:
                                                    require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                    uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                    casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                    mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                    uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                    idx = idx + 1
                                                    continue 
                                                else:
                                                    if not (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40:
                                                        require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                        uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                        casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                        mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                        uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                        idx = idx + 1
                                                        continue 
                                                    else:
                                                        require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                        if bool(((11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40) + 1) != uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_256):
                                                            require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                            uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                            casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                            mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                            uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                            idx = idx + 1
                                                            continue 
                                                        else:
                                                            if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 37:
                                                                require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                                uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                                uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                                idx = idx + 1
                                                                continue 
                                                            else:
                                                                if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 38:
                                                                    require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                                    uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                    casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                    mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                                    uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                                    idx = idx + 1
                                                                    continue 
                                                                else:
                                                                    if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 39:
                                                                        require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                                        uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                        casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                        mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                                        uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                                        idx = idx + 1
                                                                        continue 
                                                                    else:
                                                                        require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                                        uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                        casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                        mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                                        uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                                        idx = idx + 1
                                                                        continue 
                                            else:
                                                if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 39:
                                                    require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                    if uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768) != 2:
                                                        require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                        uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                        casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                        mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                        uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                        idx = idx + 1
                                                        continue 
                                                    else:
                                                        if not (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40:
                                                            require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                            uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                            casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                            mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                            uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                            idx = idx + 1
                                                            continue 
                                                        else:
                                                            require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                            if bool(((11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40) + 1) != uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_256):
                                                                require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                                uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                                uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                                idx = idx + 1
                                                                continue 
                                                            else:
                                                                if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 37:
                                                                    require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                                    uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                    casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                    mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                                    uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                                    idx = idx + 1
                                                                    continue 
                                                                else:
                                                                    if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 38:
                                                                        require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                                        uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                        casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                        mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                                        uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                                        idx = idx + 1
                                                                        continue 
                                                                    else:
                                                                        if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 39:
                                                                            require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                                            uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                            casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                            mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                                            uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                                            idx = idx + 1
                                                                            continue 
                                                                        else:
                                                                            require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                                            uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                            casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                            mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                                            uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                                            idx = idx + 1
                                                                            continue 
                                                else:
                                                    require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                    if uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768) != 2:
                                                        require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                        uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                        casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                        mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                        uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                        idx = idx + 1
                                                        continue 
                                                    else:
                                                        if not (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40:
                                                            require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                            uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                            casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                            mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                            uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                            idx = idx + 1
                                                            continue 
                                                        else:
                                                            require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                            if bool(((11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40) + 1) != uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_256):
                                                                require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                                uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                                uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                                idx = idx + 1
                                                                continue 
                                                            else:
                                                                if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 37:
                                                                    require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                                    uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                    casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                    mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                                    uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                                    idx = idx + 1
                                                                    continue 
                                                                else:
                                                                    if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 38:
                                                                        require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                                        uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                        casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                        mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                                        uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                                        idx = idx + 1
                                                                        continue 
                                                                    else:
                                                                        if (11 * stor1.length) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 40 == 39:
                                                                            require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                                            uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                            casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                            mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                                            uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                                            idx = idx + 1
                                                                            continue 
                                                                        else:
                                                                            require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
                                                                            uint256(stor7[stor8[address(msg.sender)]].field_0) += uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                            casinoBalance += -1 * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) * uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
                                                                            mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
                                                                            uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 1
                                                                            idx = idx + 1
                                                                            continue 
                else:
                    idx = idx + 1
                    continue 
            else:
                idx = idx + 1
                continue 
        idx = 0
        s = 1
        while uint8(idx) < uint256(stor7[stor8[address(msg.sender)]].field_0):
            require idx < uint256(stor7[stor8[address(msg.sender)]].field_0)
            mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
            if uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024):
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = 0
            continue 
        if s == 1:
            uint256(stor7[stor8[address(msg.sender)]].field_0) = 0
            idx = 0
            while 5 * uint256(stor7[stor8[address(msg.sender)]].field_0) > idx:
                uint256(stor[idx + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_0) = 0
                uint256(stor[idx + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_256) = 0
                uint256(stor[idx + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512) = 0
                uint256(stor[idx + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768) = 0
                uint8(stor[idx + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024) = 0
                idx = idx + 1
                continue 
    return uint256(stor7[stor8[address(msg.sender)]].field_0)
}



}
