contract main {


// =======================  Init code  ======================


array of uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
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
    stor0.length = 117
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
    stor1 = 1
    stor2 = 10^18
    stor3 = 100 * 10^18
    stor4 = 1000 * 10^18
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
            s = sha3(s + sha3(mem[0]) + 4)
            while sha3(s + sha3(mem[0]) + 4) + (5 * uint256(stor[s + sha3(mem[0]) + 4])) > s + sha3(mem[0]):
                uint256(stor[s + sha3(mem[0])]) = 0
                uint256(stor[s + sha3(mem[0]) + 1]) = 0
                uint256(stor[s + sha3(mem[0]) + 2]) = 0
                uint256(stor[s + sha3(mem[0]) + 3]) = 0
                uint8(stor[s + sha3(mem[0]) + 4]) = 0
                s = s + 1
                continue 
            s = s + 1
            continue 
    return code.data[681 len 9409]
}



// =====================  Runtime code  =====================


array of struct stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
address stor5;
uint256 casinoBalance;
mapping of uint256 stor8;

function casinoBalance() payable {
    return casinoBalance
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

function sub_c4a16415(?) payable {
    if not stor8[address(msg.sender)]:
        return 0
    require stor8[address(msg.sender)] - 1 < stor7.length
    return uint256(stor7[stor8[address(msg.sender)]].field_0)
}

function welcome() payable {
    if stor0.length:
        mem[160] = uint256(stor0.field_0)
        idx = 160
        s = 0
        while stor0.length + 128 > idx:
            mem[idx + 32] = uint256(stor0[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=stor0.length, data=mem[160 len stor0.length])
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
    if msg.value < stor2:
        return 0
    if msg.value > stor3:
        if msg.value >= stor2:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
            return 0
        else:
            return 0
    if stor8[address(msg.sender)]:
        require stor8[address(msg.sender)] - 1 < stor7.length
        if uint256(stor7[stor8[address(msg.sender)]].field_0) + msg.value > stor4:
            if msg.value >= stor2:
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
                s = sha3(s + sha3(mem[0]) + 4)
                while sha3(s + sha3(mem[0]) + 4) + (5 * uint256(stor[s + sha3(mem[0]) + 4])) > s + sha3(mem[0]):
                    uint256(stor[s + sha3(mem[0])]) = 0
                    uint256(stor[s + sha3(mem[0]) + 1]) = 0
                    uint256(stor[s + sha3(mem[0]) + 2]) = 0
                    uint256(stor[s + sha3(mem[0]) + 3]) = 0
                    uint8(stor[s + sha3(mem[0]) + 4]) = 0
                    s = s + 1
                    continue 
                s = s + 1
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
        require stor7.length < stor7.length
        stor8[address(msg.sender)] = uint256(stor7[stor7.length].field_768)
    casinoBalance += msg.value
    return 1
}

function betOnColor(uint256 arg1) payable {
    if not stor8[address(msg.sender)]:
        if msg.value >= stor2:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
        mem[256] = Mask(16, 120, 'Non-Existing User') >> 120, mem[273 len 15]
        return Array(len=17, data=mem[256])
    if msg.value < stor2:
        mem[320] = mem[337 len 15]
        return Array(len=47, data='Please choose an amount between ', '0.1 and 100 ETH', mem[320])
    if msg.value > stor3:
        if msg.value >= stor2:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
        mem[320] = mem[337 len 15]
        return Array(len=47, data='Please choose an amount between ', '0.1 and 100 ETH', mem[320])
    if 2 * msg.value > casinoBalance:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
        mem[320] = 0, mem[337 len 15]
        return Array(len=49, data='Casino has insufficient funds fo', 'r this bet amount', mem[320])
    if arg1:
        if arg1 != 1:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
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
    uint256(stor[(5 * uint256(stor7[stor8[address(msg.sender)]].field_0)) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_0) = msg.value
    require stor8[address(msg.sender)] - 1 < stor7.length
    require uint256(stor7[stor8[address(msg.sender)]].field_0) - 1 < uint256(stor7[stor8[address(msg.sender)]].field_0)
    uint256(stor[(5 * uint256(stor7[stor8[address(msg.sender)]].field_0)) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_0) = 2
    require stor8[address(msg.sender)] - 1 < stor7.length
    require uint256(stor7[stor8[address(msg.sender)]].field_0) - 1 < uint256(stor7[stor8[address(msg.sender)]].field_0)
    uint8(stor[(5 * uint256(stor7[stor8[address(msg.sender)]].field_0)) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_0) = 0
    require stor8[address(msg.sender)] - 1 < stor7.length
    uint256(stor7[stor8[address(msg.sender)]].field_0) -= msg.value
    casinoBalance += msg.value
    mem[256] = Mask(144, 56, 'Bet executed and pending!') >> 56, mem[281 len 7]
    return Array(len=25, data=mem[256])
}

function betOnNumber(uint256 arg1) payable {
    if not stor8[address(msg.sender)]:
        if msg.value >= stor2:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
        mem[256] = Mask(16, 120, 'Non-Existing User') >> 120, mem[273 len 15]
        return Array(len=17, data=mem[256])
    if msg.value < stor2:
        mem[320] = mem[337 len 15]
        return Array(len=47, data='Please choose an amount between ', '0.1 and 100 ETH', mem[320])
    if msg.value > stor3 / 10:
        if msg.value >= stor2:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
        mem[320] = mem[337 len 15]
        return Array(len=47, data='Please choose an amount between ', '0.1 and 100 ETH', mem[320])
    if 36 * msg.value > casinoBalance:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
        mem[320] = 0, mem[337 len 15]
        return Array(len=49, data='Casino has insufficient funds fo', 'r this bet amount', mem[320])
    if arg1 < 0:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
        mem[320] = mem[345 len 7]
        return Array(len=39, data='Please choose a number between 0', ' and 36', mem[320])
    if arg1 > 36:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
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
    uint256(stor[(5 * uint256(stor7[stor8[address(msg.sender)]].field_0)) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_0) = msg.value
    require stor8[address(msg.sender)] - 1 < stor7.length
    require uint256(stor7[stor8[address(msg.sender)]].field_0) - 1 < uint256(stor7[stor8[address(msg.sender)]].field_0)
    uint256(stor[(5 * uint256(stor7[stor8[address(msg.sender)]].field_0)) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_0) = 36
    require stor8[address(msg.sender)] - 1 < stor7.length
    require uint256(stor7[stor8[address(msg.sender)]].field_0) - 1 < uint256(stor7[stor8[address(msg.sender)]].field_0)
    uint8(stor[(5 * uint256(stor7[stor8[address(msg.sender)]].field_0)) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_0) = 0
    require stor8[address(msg.sender)] - 1 < stor7.length
    uint256(stor7[stor8[address(msg.sender)]].field_0) -= msg.value
    casinoBalance += msg.value
    mem[256] = Mask(144, 56, 'Bet executed and pending!') >> 56, mem[281 len 7]
    return Array(len=25, data=mem[256])
}

function sub_75f44026(?) payable {
    if not stor8[address(msg.sender)]:
        if msg.value >= stor2:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
        mem[256] = Mask(16, 120, 'Non-Existing User') >> 120, mem[273 len 15]
        return Array(len=17, data=mem[256])
    if msg.value < stor2:
        mem[320] = mem[337 len 15]
        return Array(len=47, data='Please choose an amount between ', '0.1 and 100 ETH', mem[320])
    if msg.value > stor3:
        if msg.value >= stor2:
            call msg.sender with:
               value msg.value wei
                 gas 0 wei
        mem[320] = mem[337 len 15]
        return Array(len=47, data='Please choose an amount between ', '0.1 and 100 ETH', mem[320])
    if 3 * msg.value > casinoBalance:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
        mem[320] = 0, mem[337 len 15]
        return Array(len=49, data='Casino has insufficient funds fo', 'r this bet amount', mem[320])
    if arg1 < 0:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
        mem[384] = 0, mem[410 len 6]
        return Array(len=90, data='Please choose a number between '', '0' = Bet on 1-12, '1' = Bet on 1', '3-24 or '2' = Bet on 25-36' >> 256, mem[384]), 
    if arg1 > 2:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
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
    uint256(stor[(5 * uint256(stor7[stor8[address(msg.sender)]].field_0)) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_0) = msg.value
    require stor8[address(msg.sender)] - 1 < stor7.length
    require uint256(stor7[stor8[address(msg.sender)]].field_0) - 1 < uint256(stor7[stor8[address(msg.sender)]].field_0)
    uint256(stor[(5 * uint256(stor7[stor8[address(msg.sender)]].field_0)) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_0) = 3
    require stor8[address(msg.sender)] - 1 < stor7.length
    require uint256(stor7[stor8[address(msg.sender)]].field_0) - 1 < uint256(stor7[stor8[address(msg.sender)]].field_0)
    uint8(stor[(5 * uint256(stor7[stor8[address(msg.sender)]].field_0)) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_0) = 0
    require stor8[address(msg.sender)] - 1 < stor7.length
    uint256(stor7[stor8[address(msg.sender)]].field_0) -= msg.value
    casinoBalance += msg.value
    mem[256] = Mask(144, 56, 'Bet executed and pending!') >> 56, mem[281 len 7]
    return Array(len=25, data=mem[256])
}

function updateBalance() payable {
    mem[32] = 8
    if not stor8[address(msg.sender)]:
        return 0
    require stor8[address(msg.sender)] - 1 < stor7.length
    require stor8[address(msg.sender)] - 1 < stor7.length
    if uint256(stor7[stor8[address(msg.sender)]].field_0):
        mem[0] = 7
        mem[96] = address(stor7[stor8[address(msg.sender)]].field_0)
        mem[128] = uint256(stor7[stor8[address(msg.sender)]].field_0)
        mem[160] = uint256(stor7[stor8[address(msg.sender)]].field_0)
        mem[192] = uint256(stor7[stor8[address(msg.sender)]].field_0)
        mem[64] = (32 * uint256(stor7[stor8[address(msg.sender)]].field_0)) + 288
        mem[256] = uint256(stor7[stor8[address(msg.sender)]].field_0)
        s = 288
        idx = 0
        while idx < uint256(stor7[stor8[address(msg.sender)]].field_0):
            mem[0] = (5 * stor8[address(msg.sender)]) + sha3(7) - 1
            _690 = mem[64]
            mem[64] = mem[64] + 160
            mem[_690] = uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_0)
            mem[_690 + 32] = uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_256)
            mem[_690 + 64] = uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_512)
            mem[_690 + 96] = uint256(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_768)
            mem[_690 + 128] = uint8(stor[(5 * idx) + sha3((5 * stor8[address(msg.sender)]) + ('name', 'stor7', 7) - 1)].field_1024)
            mem[s] = _690
            s = s + 32
            idx = idx + 1
            continue 
        mem[224] = 256
        _692 = mem[256]
        idx = 0
        while idx < _692:
            require idx < mem[mem[224]]
            if mem[mem[(32 * idx) + mem[224] + 32] + 128] != 1:
                require idx < mem[mem[224]]
                if block.number >= mem[mem[(32 * idx) + mem[224] + 32]] + 2:
                    stor1++
                    stor1 = (7 * stor1) + (7 * stor1 * stor1)
                    stor1 = stor1 % 10^12
                    require idx < mem[mem[224]]
                    require idx < mem[mem[224]]
                    require idx < mem[mem[224]]
                    if mem[mem[(32 * idx) + mem[224] + 32] + 96] != 36:
                        if mem[mem[(32 * idx) + mem[224] + 32] + 96] != 3:
                            if mem[mem[(32 * idx) + mem[224] + 32] + 96] == 3:
                                if (11 * stor1) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 37:
                                    require idx < mem[mem[224]]
                                    if bool(((11 * stor1) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 37) + 1) == mem[mem[(32 * idx) + mem[224] + 32] + 32]:
                                        require idx < mem[mem[224]]
                                        _1518 = mem[mem[(32 * idx) + mem[224] + 32] + 96]
                                        require idx < mem[mem[224]]
                                        _1548 = mem[mem[(32 * idx) + mem[224] + 32] + 64]
                                        require idx < mem[mem[224]]
                                        mem[128] = mem[128] + (mem[mem[(32 * idx) + mem[224] + 32] + 64] * mem[mem[(32 * idx) + mem[224] + 32] + 96]) + mem[mem[(32 * idx) + mem[224] + 32] + 64]
                                        casinoBalance += -1 * _1548 * _1518
                        else:
                            if not (11 * stor1) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 37:
                                if mem[mem[(32 * idx) + mem[224] + 32] + 96] == 3:
                                    if (11 * stor1) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 37:
                                        require idx < mem[mem[224]]
                                        if bool(((11 * stor1) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 37) + 1) == mem[mem[(32 * idx) + mem[224] + 32] + 32]:
                                            require idx < mem[mem[224]]
                                            _1621 = mem[mem[(32 * idx) + mem[224] + 32] + 96]
                                            require idx < mem[mem[224]]
                                            _1669 = mem[mem[(32 * idx) + mem[224] + 32] + 64]
                                            require idx < mem[mem[224]]
                                            mem[128] = mem[128] + (mem[mem[(32 * idx) + mem[224] + 32] + 64] * mem[mem[(32 * idx) + mem[224] + 32] + 96]) + mem[mem[(32 * idx) + mem[224] + 32] + 64]
                                            casinoBalance += -1 * _1669 * _1621
                            else:
                                require idx < mem[mem[224]]
                                if ((11 * stor1) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 37) + 1 % 3 != mem[mem[(32 * idx) + mem[224] + 32] + 32]:
                                    if mem[mem[(32 * idx) + mem[224] + 32] + 96] == 3:
                                        if (11 * stor1) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 37:
                                            require idx < mem[mem[224]]
                                            if bool(((11 * stor1) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 37) + 1) == mem[mem[(32 * idx) + mem[224] + 32] + 32]:
                                                require idx < mem[mem[224]]
                                                _1724 = mem[mem[(32 * idx) + mem[224] + 32] + 96]
                                                require idx < mem[mem[224]]
                                                _1775 = mem[mem[(32 * idx) + mem[224] + 32] + 64]
                                                require idx < mem[mem[224]]
                                                mem[128] = mem[128] + (mem[mem[(32 * idx) + mem[224] + 32] + 64] * mem[mem[(32 * idx) + mem[224] + 32] + 96]) + mem[mem[(32 * idx) + mem[224] + 32] + 64]
                                                casinoBalance += -1 * _1775 * _1724
                                else:
                                    require idx < mem[mem[224]]
                                    if mem[mem[(32 * idx) + mem[224] + 32] + 96] != 3:
                                        _1523 = mem[mem[(32 * idx) + mem[224] + 32] + 96]
                                        require idx < mem[mem[224]]
                                        _1556 = mem[mem[(32 * idx) + mem[224] + 32] + 64]
                                        require idx < mem[mem[224]]
                                        mem[128] = mem[128] + (mem[mem[(32 * idx) + mem[224] + 32] + 64] * mem[mem[(32 * idx) + mem[224] + 32] + 96]) + mem[mem[(32 * idx) + mem[224] + 32] + 64]
                                        casinoBalance += -1 * _1556 * _1523
                                    else:
                                        if not (11 * stor1) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 37:
                                            _1629 = mem[mem[(32 * idx) + mem[224] + 32] + 96]
                                            require idx < mem[mem[224]]
                                            _1677 = mem[mem[(32 * idx) + mem[224] + 32] + 64]
                                            require idx < mem[mem[224]]
                                            mem[128] = mem[128] + (mem[mem[(32 * idx) + mem[224] + 32] + 64] * mem[mem[(32 * idx) + mem[224] + 32] + 96]) + mem[mem[(32 * idx) + mem[224] + 32] + 64]
                                            casinoBalance += -1 * _1677 * _1629
                                        else:
                                            require idx < mem[mem[224]]
                                            if bool(((11 * stor1) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 37) + 1) != mem[mem[(32 * idx) + mem[224] + 32] + 32]:
                                                _1731 = mem[mem[(32 * idx) + mem[224] + 32] + 96]
                                                require idx < mem[mem[224]]
                                                _1781 = mem[mem[(32 * idx) + mem[224] + 32] + 64]
                                                require idx < mem[mem[224]]
                                                mem[128] = mem[128] + (mem[mem[(32 * idx) + mem[224] + 32] + 64] * mem[mem[(32 * idx) + mem[224] + 32] + 96]) + mem[mem[(32 * idx) + mem[224] + 32] + 64]
                                                casinoBalance += -1 * _1781 * _1731
                                            else:
                                                _1785 = mem[mem[(32 * idx) + mem[224] + 32] + 96]
                                                require idx < mem[mem[224]]
                                                _1836 = mem[mem[(32 * idx) + mem[224] + 32] + 64]
                                                require idx < mem[mem[224]]
                                                mem[128] = mem[128] + (mem[mem[(32 * idx) + mem[224] + 32] + 64] * mem[mem[(32 * idx) + mem[224] + 32] + 96]) + mem[mem[(32 * idx) + mem[224] + 32] + 64]
                                                casinoBalance += -1 * _1836 * _1785
                    else:
                        require idx < mem[mem[224]]
                        if mem[mem[(32 * idx) + mem[224] + 32] + 32] != (11 * stor1) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 37:
                            if mem[mem[(32 * idx) + mem[224] + 32] + 96] != 3:
                                if mem[mem[(32 * idx) + mem[224] + 32] + 96] == 3:
                                    if (11 * stor1) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 37:
                                        require idx < mem[mem[224]]
                                        if bool(((11 * stor1) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 37) + 1) == mem[mem[(32 * idx) + mem[224] + 32] + 32]:
                                            require idx < mem[mem[224]]
                                            _1633 = mem[mem[(32 * idx) + mem[224] + 32] + 96]
                                            require idx < mem[mem[224]]
                                            _1683 = mem[mem[(32 * idx) + mem[224] + 32] + 64]
                                            require idx < mem[mem[224]]
                                            mem[128] = mem[128] + (mem[mem[(32 * idx) + mem[224] + 32] + 64] * mem[mem[(32 * idx) + mem[224] + 32] + 96]) + mem[mem[(32 * idx) + mem[224] + 32] + 64]
                                            casinoBalance += -1 * _1683 * _1633
                            else:
                                if not (11 * stor1) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 37:
                                    if mem[mem[(32 * idx) + mem[224] + 32] + 96] == 3:
                                        if (11 * stor1) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 37:
                                            require idx < mem[mem[224]]
                                            if bool(((11 * stor1) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 37) + 1) == mem[mem[(32 * idx) + mem[224] + 32] + 32]:
                                                require idx < mem[mem[224]]
                                                _1791 = mem[mem[(32 * idx) + mem[224] + 32] + 96]
                                                require idx < mem[mem[224]]
                                                _1841 = mem[mem[(32 * idx) + mem[224] + 32] + 64]
                                                require idx < mem[mem[224]]
                                                mem[128] = mem[128] + (mem[mem[(32 * idx) + mem[224] + 32] + 64] * mem[mem[(32 * idx) + mem[224] + 32] + 96]) + mem[mem[(32 * idx) + mem[224] + 32] + 64]
                                                casinoBalance += -1 * _1841 * _1791
                                else:
                                    require idx < mem[mem[224]]
                                    if ((11 * stor1) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 37) + 1 % 3 != mem[mem[(32 * idx) + mem[224] + 32] + 32]:
                                        if mem[mem[(32 * idx) + mem[224] + 32] + 96] == 3:
                                            if (11 * stor1) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 37:
                                                require idx < mem[mem[224]]
                                                if bool(((11 * stor1) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 37) + 1) == mem[mem[(32 * idx) + mem[224] + 32] + 32]:
                                                    require idx < mem[mem[224]]
                                                    _1891 = mem[mem[(32 * idx) + mem[224] + 32] + 96]
                                                    require idx < mem[mem[224]]
                                                    _1935 = mem[mem[(32 * idx) + mem[224] + 32] + 64]
                                                    require idx < mem[mem[224]]
                                                    mem[128] = mem[128] + (mem[mem[(32 * idx) + mem[224] + 32] + 64] * mem[mem[(32 * idx) + mem[224] + 32] + 96]) + mem[mem[(32 * idx) + mem[224] + 32] + 64]
                                                    casinoBalance += -1 * _1935 * _1891
                                    else:
                                        require idx < mem[mem[224]]
                                        if mem[mem[(32 * idx) + mem[224] + 32] + 96] != 3:
                                            _1638 = mem[mem[(32 * idx) + mem[224] + 32] + 96]
                                            require idx < mem[mem[224]]
                                            _1691 = mem[mem[(32 * idx) + mem[224] + 32] + 64]
                                            require idx < mem[mem[224]]
                                            mem[128] = mem[128] + (mem[mem[(32 * idx) + mem[224] + 32] + 64] * mem[mem[(32 * idx) + mem[224] + 32] + 96]) + mem[mem[(32 * idx) + mem[224] + 32] + 64]
                                            casinoBalance += -1 * _1691 * _1638
                                        else:
                                            if not (11 * stor1) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 37:
                                                _1799 = mem[mem[(32 * idx) + mem[224] + 32] + 96]
                                                require idx < mem[mem[224]]
                                                _1849 = mem[mem[(32 * idx) + mem[224] + 32] + 64]
                                                require idx < mem[mem[224]]
                                                mem[128] = mem[128] + (mem[mem[(32 * idx) + mem[224] + 32] + 64] * mem[mem[(32 * idx) + mem[224] + 32] + 96]) + mem[mem[(32 * idx) + mem[224] + 32] + 64]
                                                casinoBalance += -1 * _1849 * _1799
                                            else:
                                                require idx < mem[mem[224]]
                                                if bool(((11 * stor1) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 37) + 1) != mem[mem[(32 * idx) + mem[224] + 32] + 32]:
                                                    _1898 = mem[mem[(32 * idx) + mem[224] + 32] + 96]
                                                    require idx < mem[mem[224]]
                                                    _1941 = mem[mem[(32 * idx) + mem[224] + 32] + 64]
                                                    require idx < mem[mem[224]]
                                                    mem[128] = mem[128] + (mem[mem[(32 * idx) + mem[224] + 32] + 64] * mem[mem[(32 * idx) + mem[224] + 32] + 96]) + mem[mem[(32 * idx) + mem[224] + 32] + 64]
                                                    casinoBalance += -1 * _1941 * _1898
                                                else:
                                                    _1945 = mem[mem[(32 * idx) + mem[224] + 32] + 96]
                                                    require idx < mem[mem[224]]
                                                    _1982 = mem[mem[(32 * idx) + mem[224] + 32] + 64]
                                                    require idx < mem[mem[224]]
                                                    mem[128] = mem[128] + (mem[mem[(32 * idx) + mem[224] + 32] + 64] * mem[mem[(32 * idx) + mem[224] + 32] + 96]) + mem[mem[(32 * idx) + mem[224] + 32] + 64]
                                                    casinoBalance += -1 * _1982 * _1945
                        else:
                            require idx < mem[mem[224]]
                            if mem[mem[(32 * idx) + mem[224] + 32] + 96] != 3:
                                if mem[mem[(32 * idx) + mem[224] + 32] + 96] != 3:
                                    _1482 = mem[mem[(32 * idx) + mem[224] + 32] + 96]
                                    require idx < mem[mem[224]]
                                    _1512 = mem[mem[(32 * idx) + mem[224] + 32] + 64]
                                    require idx < mem[mem[224]]
                                    mem[128] = mem[128] + (mem[mem[(32 * idx) + mem[224] + 32] + 64] * mem[mem[(32 * idx) + mem[224] + 32] + 96]) + mem[mem[(32 * idx) + mem[224] + 32] + 64]
                                    casinoBalance += -1 * _1512 * _1482
                                else:
                                    if not (11 * stor1) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 37:
                                        _1568 = mem[mem[(32 * idx) + mem[224] + 32] + 96]
                                        require idx < mem[mem[224]]
                                        _1605 = mem[mem[(32 * idx) + mem[224] + 32] + 64]
                                        require idx < mem[mem[224]]
                                        mem[128] = mem[128] + (mem[mem[(32 * idx) + mem[224] + 32] + 64] * mem[mem[(32 * idx) + mem[224] + 32] + 96]) + mem[mem[(32 * idx) + mem[224] + 32] + 64]
                                        casinoBalance += -1 * _1605 * _1568
                                    else:
                                        require idx < mem[mem[224]]
                                        if bool(((11 * stor1) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 37) + 1) != mem[mem[(32 * idx) + mem[224] + 32] + 32]:
                                            _1647 = mem[mem[(32 * idx) + mem[224] + 32] + 96]
                                            require idx < mem[mem[224]]
                                            _1697 = mem[mem[(32 * idx) + mem[224] + 32] + 64]
                                            require idx < mem[mem[224]]
                                            mem[128] = mem[128] + (mem[mem[(32 * idx) + mem[224] + 32] + 64] * mem[mem[(32 * idx) + mem[224] + 32] + 96]) + mem[mem[(32 * idx) + mem[224] + 32] + 64]
                                            casinoBalance += -1 * _1697 * _1647
                                        else:
                                            _1701 = mem[mem[(32 * idx) + mem[224] + 32] + 96]
                                            require idx < mem[mem[224]]
                                            _1753 = mem[mem[(32 * idx) + mem[224] + 32] + 64]
                                            require idx < mem[mem[224]]
                                            mem[128] = mem[128] + (mem[mem[(32 * idx) + mem[224] + 32] + 64] * mem[mem[(32 * idx) + mem[224] + 32] + 96]) + mem[mem[(32 * idx) + mem[224] + 32] + 64]
                                            casinoBalance += -1 * _1753 * _1701
                            else:
                                if not (11 * stor1) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 37:
                                    if mem[mem[(32 * idx) + mem[224] + 32] + 96] != 3:
                                        _1572 = mem[mem[(32 * idx) + mem[224] + 32] + 96]
                                        require idx < mem[mem[224]]
                                        _1611 = mem[mem[(32 * idx) + mem[224] + 32] + 64]
                                        require idx < mem[mem[224]]
                                        mem[128] = mem[128] + (mem[mem[(32 * idx) + mem[224] + 32] + 64] * mem[mem[(32 * idx) + mem[224] + 32] + 96]) + mem[mem[(32 * idx) + mem[224] + 32] + 64]
                                        casinoBalance += -1 * _1611 * _1572
                                    else:
                                        if not (11 * stor1) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 37:
                                            _1707 = mem[mem[(32 * idx) + mem[224] + 32] + 96]
                                            require idx < mem[mem[224]]
                                            _1758 = mem[mem[(32 * idx) + mem[224] + 32] + 64]
                                            require idx < mem[mem[224]]
                                            mem[128] = mem[128] + (mem[mem[(32 * idx) + mem[224] + 32] + 64] * mem[mem[(32 * idx) + mem[224] + 32] + 96]) + mem[mem[(32 * idx) + mem[224] + 32] + 64]
                                            casinoBalance += -1 * _1758 * _1707
                                        else:
                                            require idx < mem[mem[224]]
                                            if bool(((11 * stor1) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 37) + 1) != mem[mem[(32 * idx) + mem[224] + 32] + 32]:
                                                _1811 = mem[mem[(32 * idx) + mem[224] + 32] + 96]
                                                require idx < mem[mem[224]]
                                                _1860 = mem[mem[(32 * idx) + mem[224] + 32] + 64]
                                                require idx < mem[mem[224]]
                                                mem[128] = mem[128] + (mem[mem[(32 * idx) + mem[224] + 32] + 64] * mem[mem[(32 * idx) + mem[224] + 32] + 96]) + mem[mem[(32 * idx) + mem[224] + 32] + 64]
                                                casinoBalance += -1 * _1860 * _1811
                                            else:
                                                _1864 = mem[mem[(32 * idx) + mem[224] + 32] + 96]
                                                require idx < mem[mem[224]]
                                                _1909 = mem[mem[(32 * idx) + mem[224] + 32] + 64]
                                                require idx < mem[mem[224]]
                                                mem[128] = mem[128] + (mem[mem[(32 * idx) + mem[224] + 32] + 64] * mem[mem[(32 * idx) + mem[224] + 32] + 96]) + mem[mem[(32 * idx) + mem[224] + 32] + 64]
                                                casinoBalance += -1 * _1909 * _1864
                                else:
                                    require idx < mem[mem[224]]
                                    if ((11 * stor1) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 37) + 1 % 3 != mem[mem[(32 * idx) + mem[224] + 32] + 32]:
                                        if mem[mem[(32 * idx) + mem[224] + 32] + 96] != 3:
                                            _1658 = mem[mem[(32 * idx) + mem[224] + 32] + 96]
                                            require idx < mem[mem[224]]
                                            _1711 = mem[mem[(32 * idx) + mem[224] + 32] + 64]
                                            require idx < mem[mem[224]]
                                            mem[128] = mem[128] + (mem[mem[(32 * idx) + mem[224] + 32] + 64] * mem[mem[(32 * idx) + mem[224] + 32] + 96]) + mem[mem[(32 * idx) + mem[224] + 32] + 64]
                                            casinoBalance += -1 * _1711 * _1658
                                        else:
                                            if not (11 * stor1) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 37:
                                                _1819 = mem[mem[(32 * idx) + mem[224] + 32] + 96]
                                                require idx < mem[mem[224]]
                                                _1869 = mem[mem[(32 * idx) + mem[224] + 32] + 64]
                                                require idx < mem[mem[224]]
                                                mem[128] = mem[128] + (mem[mem[(32 * idx) + mem[224] + 32] + 64] * mem[mem[(32 * idx) + mem[224] + 32] + 96]) + mem[mem[(32 * idx) + mem[224] + 32] + 64]
                                                casinoBalance += -1 * _1869 * _1819
                                            else:
                                                require idx < mem[mem[224]]
                                                if bool(((11 * stor1) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 37) + 1) != mem[mem[(32 * idx) + mem[224] + 32] + 32]:
                                                    _1916 = mem[mem[(32 * idx) + mem[224] + 32] + 96]
                                                    require idx < mem[mem[224]]
                                                    _1956 = mem[mem[(32 * idx) + mem[224] + 32] + 64]
                                                    require idx < mem[mem[224]]
                                                    mem[128] = mem[128] + (mem[mem[(32 * idx) + mem[224] + 32] + 64] * mem[mem[(32 * idx) + mem[224] + 32] + 96]) + mem[mem[(32 * idx) + mem[224] + 32] + 64]
                                                    casinoBalance += -1 * _1956 * _1916
                                                else:
                                                    _1960 = mem[mem[(32 * idx) + mem[224] + 32] + 96]
                                                    require idx < mem[mem[224]]
                                                    _1993 = mem[mem[(32 * idx) + mem[224] + 32] + 64]
                                                    require idx < mem[mem[224]]
                                                    mem[128] = mem[128] + (mem[mem[(32 * idx) + mem[224] + 32] + 64] * mem[mem[(32 * idx) + mem[224] + 32] + 96]) + mem[mem[(32 * idx) + mem[224] + 32] + 64]
                                                    casinoBalance += -1 * _1993 * _1960
                                    else:
                                        if mem[mem[(32 * idx) + mem[224] + 32] + 96] != 3:
                                            _1715 = mem[mem[(32 * idx) + mem[224] + 32] + 96]
                                            require idx < mem[mem[224]]
                                            _1769 = mem[mem[(32 * idx) + mem[224] + 32] + 64]
                                            require idx < mem[mem[224]]
                                            mem[128] = mem[128] + (mem[mem[(32 * idx) + mem[224] + 32] + 64] * mem[mem[(32 * idx) + mem[224] + 32] + 96]) + mem[mem[(32 * idx) + mem[224] + 32] + 64]
                                            casinoBalance += -1 * _1769 * _1715
                                        else:
                                            if not (11 * stor1) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 37:
                                                _1877 = mem[mem[(32 * idx) + mem[224] + 32] + 96]
                                                require idx < mem[mem[224]]
                                                _1923 = mem[mem[(32 * idx) + mem[224] + 32] + 64]
                                                require idx < mem[mem[224]]
                                                mem[128] = mem[128] + (mem[mem[(32 * idx) + mem[224] + 32] + 64] * mem[mem[(32 * idx) + mem[224] + 32] + 96]) + mem[mem[(32 * idx) + mem[224] + 32] + 64]
                                                casinoBalance += -1 * _1923 * _1877
                                            else:
                                                require idx < mem[mem[224]]
                                                if bool(((11 * stor1) + (55 * block.number) + (11 * block.difficulty) + (11 * 2 * block.timestamp) + (33 * block.gas_limit) % 37) + 1) != mem[mem[(32 * idx) + mem[224] + 32] + 32]:
                                                    _1967 = mem[mem[(32 * idx) + mem[224] + 32] + 96]
                                                    require idx < mem[mem[224]]
                                                    _1999 = mem[mem[(32 * idx) + mem[224] + 32] + 64]
                                                    require idx < mem[mem[224]]
                                                    mem[128] = mem[128] + (mem[mem[(32 * idx) + mem[224] + 32] + 64] * mem[mem[(32 * idx) + mem[224] + 32] + 96]) + mem[mem[(32 * idx) + mem[224] + 32] + 64]
                                                    casinoBalance += -1 * _1999 * _1967
                                                else:
                                                    _2003 = mem[mem[(32 * idx) + mem[224] + 32] + 96]
                                                    require idx < mem[mem[224]]
                                                    _2024 = mem[mem[(32 * idx) + mem[224] + 32] + 64]
                                                    require idx < mem[mem[224]]
                                                    mem[128] = mem[128] + (mem[mem[(32 * idx) + mem[224] + 32] + 64] * mem[mem[(32 * idx) + mem[224] + 32] + 96]) + mem[mem[(32 * idx) + mem[224] + 32] + 64]
                                                    casinoBalance += -1 * _2024 * _2003
                    require idx < mem[mem[224]]
                    mem[mem[(32 * idx) + mem[224] + 32] + 128] = 1
            idx = idx + 1
            continue 
        idx = 0
        s = 1
        while uint8(idx) < _692:
            require idx < mem[mem[224]]
            if mem[mem[(32 * idx) + mem[224] + 32] + 128]:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = 0
            continue 
    return uint256(stor7[stor8[address(msg.sender)]].field_0)
}



}
