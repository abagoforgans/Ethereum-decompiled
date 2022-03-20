contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
address stor10;
uint256 stor10;
array of struct stor11;

function WatchCollectedFeesInSzabo() payable {
    return (stor6 / 10^12)
}

function WatchBlockSizeInEther() payable {
    mem[288] = mem[304 len 16]
    return stor3 / 10^18, Array(len=16, data=mem[288])
}

function ChangeOwnership(address arg1) payable {
    if msg.sender == address(stor10):
        uint256(stor10) = arg1 or Mask(96, 160, uint256(stor10))
}

function WatchBalance() payable {
    mem[288] = Mask(16, 120, 'Balance in finney') >> 120, mem[305 len 15]
    return stor0 / 10^15, Array(len=17, data=mem[288])
}

function WatchCurrentMultiplier() payable {
    mem[288] = Mask(32, 112, 'Current multiplier') >> 112, mem[306 len 14]
    return stor5, Array(len=18, data=mem[288])
}

function NumberOfCurrentBlockMiners() payable {
    mem[352] = mem[370 len 14]
    return stor11.length - stor9, Array(len=46, data='Number of participations in the ', 'current block.', mem[352])
}

function CollectAllFees() payable {
    if msg.sender == address(stor10):
        require stor6
        call address(stor10) with:
           value stor6 wei
             gas 0 wei
        stor6 = 0
}

function NumberOfMiners() payable {
    mem[416] = mem[439 len 9]
    return stor11.length, 
           Array(len=73, data='Number of participations since t', 'he beginning of this wonderful b', 'lockchain' >> 256, mem[416])
}

function PlayerInfo(uint256 arg1) payable {
    if arg1 > stor11.length:
        return 0
    require arg1 < stor11.length
    return address(stor11[arg1].field_0), stor11[arg1].field_256 / 10^15, uint8(stor11[arg1].field_512)
}

function NumberOfBlockAlreadyMined() payable {
    mem[480] = mem[507 len 5]
    return stor1, 
           Array(len=101, data='A block mined is a payout of siz', 'e BlockSize, multiply this numbe', 'r and you get the sum of all pay', 'outs.' >> 512, mem[480])
}

function WatchNextBlockReward() payable {
    mem[480] = mem[509 len 3]
    return stor2 / 10^15, 
           Array(len=99, data='Current reward collected. The re', 'ward when a block is mined is al', 'ways BlockSize*RewardPercentage/', '100' >> 512, mem[480])
}

function GetAndReduceFeesByFraction(uint256 arg1) payable {
    if msg.sender == address(stor10):
        if not stor6:
            stor7 = 80 * stor7 / 100
        call address(stor10) with:
           value stor6 / 1000 * arg1 wei
             gas 0 wei
        stor6 += -1 * stor6 / 1000 * arg1
}

function AmountToForgeTheNextBlock() payable {
    mem[480] = mem[500 len 12]
    return (1000 * stor3 / 1000 * stor5) - (stor7 * stor3 / 1000 * stor5) - (stor8 * stor3 / 1000 * stor5) - (1000 * stor0) + (stor7 * stor0) + (stor8 * stor0) / 1000 / 10^15, 
           Array(len=108, data='This amount in finney in finney ', 'required to complete the current', ' block, and to MINE it (trigger ', 'the payout).' >> 512, mem[480])
}

function _fallback() payable {
    if msg.value < 10^17:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    else:
        if msg.value <= stor4:
            stor11.length++
            if stor3 >= msg.value + stor0:
                if not stor11.length > stor11.length + 1:
                    stor11[stor11.length].field_0 = msg.sender or Mask(96, 160, stor11[stor11.length].field_0)
                    stor11[stor11.length].field_256 = msg.value * stor5 / 1000
                    uint8(stor11[stor11.length].field_512) = 0
                    stor11[stor11.length].field_768 % 1 = 0
                    stor2 += msg.value * stor8 / 1000
                    stor6 += msg.value * stor7 / 1000
                    stor0 += (1000 * msg.value) - (stor7 * msg.value) - (stor8 * msg.value) / 1000
                    if stor0 >= stor3 / 1000 * stor5:
                        stor1++
                        idx = 0
                        s = (3 * stor9) + _443
                        while stor[(3 * idx) + sha3((3 * stor9) + _443) + 1]:
                            require stor9 < stor11.length
                            if stor0 < stor11[stor9].field_256:
                                if msg.value < 10^18:
                                    call msg.sender with:
                                       value stor2 * msg.value / 10^16 / 100 wei
                                         gas 0 wei
                                    stor2 -= stor2 * msg.value / 10^16 / 100
                                else:
                                    call msg.sender with:
                                       value stor2 wei
                                         gas 0 wei
                                    stor2 = 0
                            require stor9 < stor11.length
                            call address(stor11[stor9].field_0) with:
                               value stor11[stor9].field_256 wei
                                 gas 0 wei
                            stor0 -= stor11[stor9].field_256
                            uint8(stor11[stor9].field_512) = 1
                            stor9++
                            mem[0] = 11
                            idx = stor9
                            s = 11
                            continue 
                        if msg.value < 10^18:
                            call msg.sender with:
                               value stor2 * msg.value / 10^16 / 100 wei
                                 gas 0 wei
                            stor2 -= stor2 * msg.value / 10^16 / 100
                        else:
                            call msg.sender with:
                               value stor2 wei
                                 gas 0 wei
                            stor2 = 0
                else:
                    idx = (3 * stor11.length) + 3
                    while 3 * stor11.length > idx:
                        address(stor11[idx].field_0) = 0
                        stor11[idx].field_256 = 0
                        uint8(stor11[idx].field_512) = 0
                        idx = idx + 1
                        continue 
                    stor11[stor11.length].field_0 = msg.sender or Mask(96, 160, stor11[stor11.length].field_0)
                    stor11[stor11.length].field_256 = msg.value * stor5 / 1000
                    uint8(stor11[stor11.length].field_512) = 0
                    stor11[stor11.length].field_768 % 1 = 0
                    stor2 += msg.value * stor8 / 1000
                    stor6 += msg.value * stor7 / 1000
                    stor0 += (1000 * msg.value) - (stor7 * msg.value) - (stor8 * msg.value) / 1000
                    if stor0 >= stor3 / 1000 * stor5:
                        stor1++
                        idx = 0
                        s = (3 * stor9) + _614
                        while stor[(3 * idx) + sha3((3 * stor9) + _614) + 1]:
                            require stor9 < stor11.length
                            if stor0 < stor11[stor9].field_256:
                                if msg.value < 10^18:
                                    call msg.sender with:
                                       value stor2 * msg.value / 10^16 / 100 wei
                                         gas 0 wei
                                    stor2 -= stor2 * msg.value / 10^16 / 100
                                else:
                                    call msg.sender with:
                                       value stor2 wei
                                         gas 0 wei
                                    stor2 = 0
                            require stor9 < stor11.length
                            call address(stor11[stor9].field_0) with:
                               value stor11[stor9].field_256 wei
                                 gas 0 wei
                            stor0 -= stor11[stor9].field_256
                            uint8(stor11[stor9].field_512) = 1
                            stor9++
                            mem[0] = 11
                            idx = stor9
                            s = 11
                            continue 
                        if msg.value < 10^18:
                            call msg.sender with:
                               value stor2 * msg.value / 10^16 / 100 wei
                                 gas 0 wei
                            stor2 -= stor2 * msg.value / 10^16 / 100
                        else:
                            call msg.sender with:
                               value stor2 wei
                                 gas 0 wei
                            stor2 = 0
            else:
                if not stor11.length > stor11.length + 1:
                    stor11[stor11.length].field_0 = msg.sender or Mask(96, 160, stor11[stor11.length].field_0)
                    stor11[stor11.length].field_256 = (stor3 * stor5) - (stor0 * stor5) / 1000
                    uint8(stor11[stor11.length].field_512) = 0
                    stor11[stor11.length].field_768 % 1 = 0
                    stor11.length++
                    stor11[stor11.length].field_0 = msg.sender or Mask(96, 160, stor11[stor11.length].field_0)
                    stor11[stor11.length].field_256 = (msg.value * stor5) - (stor3 * stor5) + (stor0 * stor5) / 1000
                    uint8(stor11[stor11.length].field_512) = 0
                    stor11[stor11.length].field_768 % 1 = 0
                    stor2 += msg.value * stor8 / 1000
                    stor6 += msg.value * stor7 / 1000
                    stor0 += (1000 * msg.value) - (stor7 * msg.value) - (stor8 * msg.value) / 1000
                    if stor0 >= stor3 / 1000 * stor5:
                        stor1++
                        idx = 0
                        s = (3 * stor9) + _444
                        while stor[(3 * idx) + sha3((3 * stor9) + _444) + 1]:
                            require stor9 < stor11.length
                            if stor0 < stor11[stor9].field_256:
                                if msg.value < 10^18:
                                    call msg.sender with:
                                       value stor2 * msg.value / 10^16 / 100 wei
                                         gas 0 wei
                                    stor2 -= stor2 * msg.value / 10^16 / 100
                                else:
                                    call msg.sender with:
                                       value stor2 wei
                                         gas 0 wei
                                    stor2 = 0
                            require stor9 < stor11.length
                            call address(stor11[stor9].field_0) with:
                               value stor11[stor9].field_256 wei
                                 gas 0 wei
                            stor0 -= stor11[stor9].field_256
                            uint8(stor11[stor9].field_512) = 1
                            stor9++
                            mem[0] = 11
                            idx = stor9
                            s = 11
                            continue 
                        if msg.value < 10^18:
                            call msg.sender with:
                               value stor2 * msg.value / 10^16 / 100 wei
                                 gas 0 wei
                            stor2 -= stor2 * msg.value / 10^16 / 100
                        else:
                            call msg.sender with:
                               value stor2 wei
                                 gas 0 wei
                            stor2 = 0
                else:
                    idx = (3 * stor11.length) + 3
                    while 3 * stor11.length > idx:
                        address(stor11[idx].field_0) = 0
                        stor11[idx].field_256 = 0
                        uint8(stor11[idx].field_512) = 0
                        idx = idx + 1
                        continue 
                    stor11[stor11.length].field_0 = msg.sender or Mask(96, 160, stor11[stor11.length].field_0)
                    stor11[stor11.length].field_256 = (stor3 * stor5) - (stor0 * stor5) / 1000
                    uint8(stor11[stor11.length].field_512) = 0
                    stor11[stor11.length].field_768 % 1 = 0
                    stor11.length++
                    if not stor11.length > stor11.length + 1:
                        stor11[stor11.length].field_0 = msg.sender or Mask(96, 160, stor11[stor11.length].field_0)
                        stor11[stor11.length].field_256 = (msg.value * stor5) - (stor3 * stor5) + (stor0 * stor5) / 1000
                        uint8(stor11[stor11.length].field_512) = 0
                        stor11[stor11.length].field_768 % 1 = 0
                        stor2 += msg.value * stor8 / 1000
                        stor6 += msg.value * stor7 / 1000
                        stor0 += (1000 * msg.value) - (stor7 * msg.value) - (stor8 * msg.value) / 1000
                        if stor0 >= stor3 / 1000 * stor5:
                            stor1++
                            idx = 0
                            s = (3 * stor9) + _616
                            while stor[(3 * idx) + sha3((3 * stor9) + _616) + 1]:
                                require stor9 < stor11.length
                                if stor0 < stor11[stor9].field_256:
                                    if msg.value < 10^18:
                                        call msg.sender with:
                                           value stor2 * msg.value / 10^16 / 100 wei
                                             gas 0 wei
                                        stor2 -= stor2 * msg.value / 10^16 / 100
                                    else:
                                        call msg.sender with:
                                           value stor2 wei
                                             gas 0 wei
                                        stor2 = 0
                                require stor9 < stor11.length
                                call address(stor11[stor9].field_0) with:
                                   value stor11[stor9].field_256 wei
                                     gas 0 wei
                                stor0 -= stor11[stor9].field_256
                                uint8(stor11[stor9].field_512) = 1
                                stor9++
                                mem[0] = 11
                                idx = stor9
                                s = 11
                                continue 
                            if msg.value < 10^18:
                                call msg.sender with:
                                   value stor2 * msg.value / 10^16 / 100 wei
                                     gas 0 wei
                                stor2 -= stor2 * msg.value / 10^16 / 100
                            else:
                                call msg.sender with:
                                   value stor2 wei
                                     gas 0 wei
                                stor2 = 0
                    else:
                        idx = (3 * stor11.length) + 3
                        while 3 * stor11.length > idx:
                            address(stor11[idx].field_0) = 0
                            stor11[idx].field_256 = 0
                            uint8(stor11[idx].field_512) = 0
                            idx = idx + 1
                            continue 
                        stor11[stor11.length].field_0 = msg.sender or Mask(96, 160, stor11[stor11.length].field_0)
                        stor11[stor11.length].field_256 = (msg.value * stor5) - (stor3 * stor5) + (stor0 * stor5) / 1000
                        uint8(stor11[stor11.length].field_512) = 0
                        stor11[stor11.length].field_768 % 1 = 0
                        stor2 += msg.value * stor8 / 1000
                        stor6 += msg.value * stor7 / 1000
                        stor0 += (1000 * msg.value) - (stor7 * msg.value) - (stor8 * msg.value) / 1000
                        if stor0 >= stor3 / 1000 * stor5:
                            stor1++
                            idx = 0
                            s = (3 * stor9) + _775
                            while stor[(3 * idx) + sha3((3 * stor9) + _775) + 1]:
                                require stor9 < stor11.length
                                if stor0 < stor11[stor9].field_256:
                                    if msg.value < 10^18:
                                        call msg.sender with:
                                           value stor2 * msg.value / 10^16 / 100 wei
                                             gas 0 wei
                                        stor2 -= stor2 * msg.value / 10^16 / 100
                                    else:
                                        call msg.sender with:
                                           value stor2 wei
                                             gas 0 wei
                                        stor2 = 0
                                require stor9 < stor11.length
                                call address(stor11[stor9].field_0) with:
                                   value stor11[stor9].field_256 wei
                                     gas 0 wei
                                stor0 -= stor11[stor9].field_256
                                uint8(stor11[stor9].field_512) = 1
                                stor9++
                                mem[0] = 11
                                idx = stor9
                                s = 11
                                continue 
                            if msg.value < 10^18:
                                call msg.sender with:
                                   value stor2 * msg.value / 10^16 / 100 wei
                                     gas 0 wei
                                stor2 -= stor2 * msg.value / 10^16 / 100
                            else:
                                call msg.sender with:
                                   value stor2 wei
                                     gas 0 wei
                                stor2 = 0
        else:
            call msg.sender with:
               value msg.value - stor4 wei
                 gas 0 wei
            stor11.length++
            if stor3 >= stor4 + stor0:
                if not stor11.length > stor11.length + 1:
                    stor11[stor11.length].field_0 = msg.sender or Mask(96, 160, stor11[stor11.length].field_0)
                    stor11[stor11.length].field_256 = stor4 * stor5 / 1000
                    uint8(stor11[stor11.length].field_512) = 0
                    stor11[stor11.length].field_768 % 1 = 0
                    stor2 += stor4 * stor8 / 1000
                    stor6 += stor4 * stor7 / 1000
                    stor0 += (1000 * stor4) - (stor7 * stor4) - (stor8 * stor4) / 1000
                    if stor0 >= stor3 / 1000 * stor5:
                        stor1++
                        idx = 0
                        s = (3 * stor9) + _445
                        while stor[(3 * idx) + sha3((3 * stor9) + _445) + 1]:
                            require stor9 < stor11.length
                            if stor0 < stor11[stor9].field_256:
                                if stor4 < 10^18:
                                    call msg.sender with:
                                       value stor2 * stor4 / 10^16 / 100 wei
                                         gas 0 wei
                                    stor2 -= stor2 * stor4 / 10^16 / 100
                                else:
                                    call msg.sender with:
                                       value stor2 wei
                                         gas 0 wei
                                    stor2 = 0
                            require stor9 < stor11.length
                            call address(stor11[stor9].field_0) with:
                               value stor11[stor9].field_256 wei
                                 gas 0 wei
                            stor0 -= stor11[stor9].field_256
                            uint8(stor11[stor9].field_512) = 1
                            stor9++
                            mem[0] = 11
                            idx = stor9
                            s = 11
                            continue 
                        if stor4 < 10^18:
                            call msg.sender with:
                               value stor2 * stor4 / 10^16 / 100 wei
                                 gas 0 wei
                            stor2 -= stor2 * stor4 / 10^16 / 100
                        else:
                            call msg.sender with:
                               value stor2 wei
                                 gas 0 wei
                            stor2 = 0
                else:
                    idx = (3 * stor11.length) + 3
                    while 3 * stor11.length > idx:
                        address(stor11[idx].field_0) = 0
                        stor11[idx].field_256 = 0
                        uint8(stor11[idx].field_512) = 0
                        idx = idx + 1
                        continue 
                    stor11[stor11.length].field_0 = msg.sender or Mask(96, 160, stor11[stor11.length].field_0)
                    stor11[stor11.length].field_256 = stor4 * stor5 / 1000
                    uint8(stor11[stor11.length].field_512) = 0
                    stor11[stor11.length].field_768 % 1 = 0
                    stor2 += stor4 * stor8 / 1000
                    stor6 += stor4 * stor7 / 1000
                    stor0 += (1000 * stor4) - (stor7 * stor4) - (stor8 * stor4) / 1000
                    if stor0 >= stor3 / 1000 * stor5:
                        stor1++
                        idx = 0
                        s = (3 * stor9) + _618
                        while stor[(3 * idx) + sha3((3 * stor9) + _618) + 1]:
                            require stor9 < stor11.length
                            if stor0 < stor11[stor9].field_256:
                                if stor4 < 10^18:
                                    call msg.sender with:
                                       value stor2 * stor4 / 10^16 / 100 wei
                                         gas 0 wei
                                    stor2 -= stor2 * stor4 / 10^16 / 100
                                else:
                                    call msg.sender with:
                                       value stor2 wei
                                         gas 0 wei
                                    stor2 = 0
                            require stor9 < stor11.length
                            call address(stor11[stor9].field_0) with:
                               value stor11[stor9].field_256 wei
                                 gas 0 wei
                            stor0 -= stor11[stor9].field_256
                            uint8(stor11[stor9].field_512) = 1
                            stor9++
                            mem[0] = 11
                            idx = stor9
                            s = 11
                            continue 
                        if stor4 < 10^18:
                            call msg.sender with:
                               value stor2 * stor4 / 10^16 / 100 wei
                                 gas 0 wei
                            stor2 -= stor2 * stor4 / 10^16 / 100
                        else:
                            call msg.sender with:
                               value stor2 wei
                                 gas 0 wei
                            stor2 = 0
            else:
                if not stor11.length > stor11.length + 1:
                    stor11[stor11.length].field_0 = msg.sender or Mask(96, 160, stor11[stor11.length].field_0)
                    stor11[stor11.length].field_256 = (stor3 * stor5) - (stor0 * stor5) / 1000
                    uint8(stor11[stor11.length].field_512) = 0
                    stor11[stor11.length].field_768 % 1 = 0
                    stor11.length++
                    stor11[stor11.length].field_0 = msg.sender or Mask(96, 160, stor11[stor11.length].field_0)
                    stor11[stor11.length].field_256 = (stor4 * stor5) - (stor3 * stor5) + (stor0 * stor5) / 1000
                    uint8(stor11[stor11.length].field_512) = 0
                    stor11[stor11.length].field_768 % 1 = 0
                    stor2 += stor4 * stor8 / 1000
                    stor6 += stor4 * stor7 / 1000
                    stor0 += (1000 * stor4) - (stor7 * stor4) - (stor8 * stor4) / 1000
                    if stor0 >= stor3 / 1000 * stor5:
                        stor1++
                        idx = 0
                        s = (3 * stor9) + _446
                        while stor[(3 * idx) + sha3((3 * stor9) + _446) + 1]:
                            require stor9 < stor11.length
                            if stor0 < stor11[stor9].field_256:
                                if stor4 < 10^18:
                                    call msg.sender with:
                                       value stor2 * stor4 / 10^16 / 100 wei
                                         gas 0 wei
                                    stor2 -= stor2 * stor4 / 10^16 / 100
                                else:
                                    call msg.sender with:
                                       value stor2 wei
                                         gas 0 wei
                                    stor2 = 0
                            require stor9 < stor11.length
                            call address(stor11[stor9].field_0) with:
                               value stor11[stor9].field_256 wei
                                 gas 0 wei
                            stor0 -= stor11[stor9].field_256
                            uint8(stor11[stor9].field_512) = 1
                            stor9++
                            mem[0] = 11
                            idx = stor9
                            s = 11
                            continue 
                        if stor4 < 10^18:
                            call msg.sender with:
                               value stor2 * stor4 / 10^16 / 100 wei
                                 gas 0 wei
                            stor2 -= stor2 * stor4 / 10^16 / 100
                        else:
                            call msg.sender with:
                               value stor2 wei
                                 gas 0 wei
                            stor2 = 0
                else:
                    idx = (3 * stor11.length) + 3
                    while 3 * stor11.length > idx:
                        address(stor11[idx].field_0) = 0
                        stor11[idx].field_256 = 0
                        uint8(stor11[idx].field_512) = 0
                        idx = idx + 1
                        continue 
                    stor11[stor11.length].field_0 = msg.sender or Mask(96, 160, stor11[stor11.length].field_0)
                    stor11[stor11.length].field_256 = (stor3 * stor5) - (stor0 * stor5) / 1000
                    uint8(stor11[stor11.length].field_512) = 0
                    stor11[stor11.length].field_768 % 1 = 0
                    stor11.length++
                    if not stor11.length > stor11.length + 1:
                        stor11[stor11.length].field_0 = msg.sender or Mask(96, 160, stor11[stor11.length].field_0)
                        stor11[stor11.length].field_256 = (stor4 * stor5) - (stor3 * stor5) + (stor0 * stor5) / 1000
                        uint8(stor11[stor11.length].field_512) = 0
                        stor11[stor11.length].field_768 % 1 = 0
                        stor2 += stor4 * stor8 / 1000
                        stor6 += stor4 * stor7 / 1000
                        stor0 += (1000 * stor4) - (stor7 * stor4) - (stor8 * stor4) / 1000
                        if stor0 >= stor3 / 1000 * stor5:
                            stor1++
                            idx = 0
                            s = (3 * stor9) + _620
                            while stor[(3 * idx) + sha3((3 * stor9) + _620) + 1]:
                                require stor9 < stor11.length
                                if stor0 < stor11[stor9].field_256:
                                    if stor4 < 10^18:
                                        call msg.sender with:
                                           value stor2 * stor4 / 10^16 / 100 wei
                                             gas 0 wei
                                        stor2 -= stor2 * stor4 / 10^16 / 100
                                    else:
                                        call msg.sender with:
                                           value stor2 wei
                                             gas 0 wei
                                        stor2 = 0
                                require stor9 < stor11.length
                                call address(stor11[stor9].field_0) with:
                                   value stor11[stor9].field_256 wei
                                     gas 0 wei
                                stor0 -= stor11[stor9].field_256
                                uint8(stor11[stor9].field_512) = 1
                                stor9++
                                mem[0] = 11
                                idx = stor9
                                s = 11
                                continue 
                            if stor4 < 10^18:
                                call msg.sender with:
                                   value stor2 * stor4 / 10^16 / 100 wei
                                     gas 0 wei
                                stor2 -= stor2 * stor4 / 10^16 / 100
                            else:
                                call msg.sender with:
                                   value stor2 wei
                                     gas 0 wei
                                stor2 = 0
                    else:
                        idx = (3 * stor11.length) + 3
                        while 3 * stor11.length > idx:
                            address(stor11[idx].field_0) = 0
                            stor11[idx].field_256 = 0
                            uint8(stor11[idx].field_512) = 0
                            idx = idx + 1
                            continue 
                        stor11[stor11.length].field_0 = msg.sender or Mask(96, 160, stor11[stor11.length].field_0)
                        stor11[stor11.length].field_256 = (stor4 * stor5) - (stor3 * stor5) + (stor0 * stor5) / 1000
                        uint8(stor11[stor11.length].field_512) = 0
                        stor11[stor11.length].field_768 % 1 = 0
                        stor2 += stor4 * stor8 / 1000
                        stor6 += stor4 * stor7 / 1000
                        stor0 += (1000 * stor4) - (stor7 * stor4) - (stor8 * stor4) / 1000
                        if stor0 >= stor3 / 1000 * stor5:
                            stor1++
                            idx = 0
                            s = (3 * stor9) + _778
                            while stor[(3 * idx) + sha3((3 * stor9) + _778) + 1]:
                                require stor9 < stor11.length
                                if stor0 < stor11[stor9].field_256:
                                    if stor4 < 10^18:
                                        call msg.sender with:
                                           value stor2 * stor4 / 10^16 / 100 wei
                                             gas 0 wei
                                        stor2 -= stor2 * stor4 / 10^16 / 100
                                    else:
                                        call msg.sender with:
                                           value stor2 wei
                                             gas 0 wei
                                        stor2 = 0
                                require stor9 < stor11.length
                                call address(stor11[stor9].field_0) with:
                                   value stor11[stor9].field_256 wei
                                     gas 0 wei
                                stor0 -= stor11[stor9].field_256
                                uint8(stor11[stor9].field_512) = 1
                                stor9++
                                mem[0] = 11
                                idx = stor9
                                s = 11
                                continue 
                            if stor4 < 10^18:
                                call msg.sender with:
                                   value stor2 * stor4 / 10^16 / 100 wei
                                     gas 0 wei
                                stor2 -= stor2 * stor4 / 10^16 / 100
                            else:
                                call msg.sender with:
                                   value stor2 wei
                                     gas 0 wei
                                stor2 = 0
}



// =====================  Runtime code  =====================




}
