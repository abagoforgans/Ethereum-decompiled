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
uint256 stor10;

function _fallback() payable {
    stor0 = 0
    stor1 = 0
    stor2 = 0
    stor3 = 10 * 10^18
    stor4 = 5 * 10^18
    stor5 = 1200
    stor6 = 0
    stor7 = 5
    stor8 = 30
    stor9 = 0
    stor10 = msg.sender or Mask(96, 160, stor10)
    return code.data[99 len 3287]
}



// =====================  Runtime code  =====================


uint256 stor0;
array of uint256 stor1;
array of uint8 stor2;
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
array of address stor660301456019777184113296434797620819555017468543624515662331739614079884729;
array of uint8 stor660301456019777184113296434797620819555017468543624515662331739614079884731;

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
        require stor6 != 0
        call address(stor10) with:
           value stor6 wei
             gas 0 wei
        stor6 = 0
}

function PlayerInfo(uint256 arg1) payable {
    if arg1 > stor11.length:
        return 0
    require arg1 < stor11.length
    return stor175B[arg1], uint256(stor11[arg1].field_256) / 10^15, stor175B[arg1]
}

function NumberOfMiners() payable {
    mem[416] = mem[439 len 9]
    return stor11.length, 
           Array(len=73, data='Number of participations since t', 'he beginning of this wonderful b', 'lockchain' >> 256, mem[416])
}

function NumberOfBlockAlreadyMined() payable {
    mem[480] = mem[507 len 5]
    return stor1.length, 
           Array(len=101, data='A block mined is a payout of siz', 'e BlockSize, multiply this numbe', 'r and you get the sum of all pay', 'outs.' >> 512, mem[480])
}

function WatchNextBlockReward() payable {
    mem[480] = mem[509 len 3]
    return stor2.length / 10^15, 
           Array(len=99, data='Current reward collected. The re', 'ward when a block is mined is al', 'ways BlockSize*RewardPercentage/', '100' >> 512, mem[480])
}

function GetAndReduceFeesByFraction(uint256 arg1) payable {
    if msg.sender == address(stor10):
        if 0 == stor6:
            stor7 = 80 * stor7 / 100
        call address(stor10) with:
           value arg1 * stor6 / 1000 wei
             gas 0 wei
        stor6 += -1 * arg1 * stor6 / 1000
}

function AmountToForgeTheNextBlock() payable {
    mem[480] = mem[500 len 12]
    return (1000 * stor3 / 1000 * stor5) - (stor8 * stor3 / 1000 * stor5) - (stor7 * stor3 / 1000 * stor5) - (1000 * stor0) + (stor8 * stor0) + (stor7 * stor0) / 1000 / 10^15, 
           Array(len=108, data='This amount in finney in finney ', 'required to complete the current', ' block, and to MINE it (trigger ', 'the payout).' >> 512, mem[480])
}

function _fallback() payable {
    if msg.value < 10^17:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    if msg.value <= stor4:
        stor11.length++
        if stor3 >= msg.value + stor0:
            if not stor11.length > stor11.length + 1:
                uint256(stor11[stor11.length].field_0) = Mask(96, 0, stor11[stor11.length].field_160)
                uint256(stor11[stor11.length].field_256) = msg.value * stor5 / 1000
                uint8(stor11[stor11.length].field_512) = 0
                stor2.length += stor8 * msg.value / 1000
                stor6 += stor7 * msg.value / 1000
                stor0 += (1000 * msg.value) - (stor8 * msg.value) - (stor7 * msg.value) / 1000
                if ((1000 * msg.value) - (stor8 * msg.value) - (stor7 * msg.value) / 1000) + stor0 < stor3 / 1000 * stor5:
                stor1.length++
                if not uint256(stor[code.data[3255 len 32] + (3 * stor9)]):
                    if msg.value < 10^18:
                        call msg.sender with:
                           value msg.value / 10^16 * stor2.length / 100 wei
                             gas 0 wei
                        stor2.length -= msg.value / 10^16 * stor2.length / 100
                    else:
                        call msg.sender with:
                           value stor2.length wei
                             gas 0 wei
                        stor2.length = 0
                require stor9 < stor11.length
                if not var26001:
                    if msg.value < 10^18:
                        call msg.sender with:
                           value msg.value / 10^16 * stor2.length / 100 wei
                             gas 0 wei
                        stor2.length -= msg.value / 10^16 * stor2.length / 100
                    else:
                        call msg.sender with:
                           value stor2.length wei
                             gas 0 wei
                        stor2.length = 0
                require stor9 < stor11.length
                call stor175B[stor9] with:
                   value uint256(stor[code.data[3255 len 32] + (3 * stor9)]) wei
                     gas 0 wei
                stor0 -= uint256(stor[code.data[3255 len 32] + (3 * stor9)])
                stor175B[stor9] = 1
                stor9++
                if not uint256(stor[code.data[3255 len 32] + (3 * stor9)]):
                    if msg.value < 10^18:
                        call msg.sender with:
                           value msg.value / 10^16 * stor2.length / 100 wei
                             gas 0 wei
                        stor2.length -= msg.value / 10^16 * stor2.length / 100
                    else:
                        call msg.sender with:
                           value stor2.length wei
                             gas 0 wei
                        stor2.length = 0
                require stor9 < stor11.length
                if not var46001:
                    if msg.value < 10^18:
                        call msg.sender with:
                           value msg.value / 10^16 * stor2.length / 100 wei
                             gas 0 wei
                        stor2.length -= msg.value / 10^16 * stor2.length / 100
                    else:
                        call msg.sender with:
                           value stor2.length wei
                             gas 0 wei
                        stor2.length = 0
                require stor9 < stor11.length
                call stor175B[stor9] with:
                   value uint256(stor[code.data[3255 len 32] + (3 * stor9)]) wei
                     gas 0 wei
                stor0 -= uint256(stor[code.data[3255 len 32] + (3 * stor9)])
                # nil
            else:
                idx = (3 * stor11.length) + 3
                while 3 * stor11.length > idx:
                    address(stor11[idx].field_0) = 0
                    uint256(stor11[idx].field_256) = 0
                    uint8(stor11[idx].field_512) = 0
                    idx = idx + 3
                    continue 
                uint256(stor11[stor11.length].field_0) = Mask(96, 0, stor11[stor11.length].field_160)
                uint256(stor11[stor11.length].field_256) = msg.value * stor5 / 1000
                uint8(stor11[stor11.length].field_512) = 0
                stor2.length += stor8 * msg.value / 1000
                stor6 += stor7 * msg.value / 1000
                stor0 += (1000 * msg.value) - (stor8 * msg.value) - (stor7 * msg.value) / 1000
                if ((1000 * msg.value) - (stor8 * msg.value) - (stor7 * msg.value) / 1000) + stor0 < stor3 / 1000 * stor5:
                stor1.length++
                if not uint256(stor[code.data[3255 len 32] + (3 * stor9)]):
                    if msg.value < 10^18:
                        call msg.sender with:
                           value msg.value / 10^16 * stor2.length / 100 wei
                             gas 0 wei
                        stor2.length -= msg.value / 10^16 * stor2.length / 100
                    else:
                        call msg.sender with:
                           value stor2.length wei
                             gas 0 wei
                        stor2.length = 0
                require stor9 < stor11.length
                if not var30001:
                    if msg.value < 10^18:
                        call msg.sender with:
                           value msg.value / 10^16 * stor2.length / 100 wei
                             gas 0 wei
                        stor2.length -= msg.value / 10^16 * stor2.length / 100
                    else:
                        call msg.sender with:
                           value stor2.length wei
                             gas 0 wei
                        stor2.length = 0
                require stor9 < stor11.length
                call stor175B[stor9] with:
                   value uint256(stor[code.data[3255 len 32] + (3 * stor9)]) wei
                     gas 0 wei
                stor0 -= uint256(stor[code.data[3255 len 32] + (3 * stor9)])
                stor175B[stor9] = 1
                stor9++
                if not uint256(stor[code.data[3255 len 32] + (3 * stor9)]):
                    if msg.value < 10^18:
                        call msg.sender with:
                           value msg.value / 10^16 * stor2.length / 100 wei
                             gas 0 wei
                        stor2.length -= msg.value / 10^16 * stor2.length / 100
                    else:
                        call msg.sender with:
                           value stor2.length wei
                             gas 0 wei
                        stor2.length = 0
                require stor9 < stor11.length
                if var50001:
                    require stor9 < stor11.length
                    call stor175B[stor9] with:
                       value uint256(stor[code.data[3255 len 32] + (3 * stor9)]) wei
                         gas 0 wei
                    # nil
                else:
                    if msg.value < 10^18:
                        call msg.sender with:
                           value msg.value / 10^16 * stor2.length / 100 wei
                             gas 0 wei
                        stor2.length -= msg.value / 10^16 * stor2.length / 100
                    else:
                        call msg.sender with:
                           value stor2.length wei
                             gas 0 wei
                        stor2.length = 0
        else:
            if not stor11.length > stor11.length + 1:
                uint256(stor11[stor11.length].field_0) = Mask(96, 0, stor11[stor11.length].field_160)
                uint256(stor11[stor11.length].field_256) = (stor3 * stor5) - (stor0 * stor5) / 1000
                uint8(stor11[stor11.length].field_512) = 0
                stor11.length++
                uint256(stor11[stor11.length].field_0) = Mask(96, 0, stor11[stor11.length].field_160)
                uint256(stor11[stor11.length].field_256) = (msg.value * stor5) - (stor3 * stor5) + (stor0 * stor5) / 1000
                uint8(stor11[stor11.length].field_512) = 0
                stor2.length += stor8 * msg.value / 1000
                stor6 += stor7 * msg.value / 1000
                stor0 += (1000 * msg.value) - (stor8 * msg.value) - (stor7 * msg.value) / 1000
                if ((1000 * msg.value) - (stor8 * msg.value) - (stor7 * msg.value) / 1000) + stor0 < stor3 / 1000 * stor5:
                stor1.length++
                if not uint256(stor[code.data[3255 len 32] + (3 * stor9)]):
                    if msg.value < 10^18:
                        call msg.sender with:
                           value msg.value / 10^16 * stor2.length / 100 wei
                             gas 0 wei
                        stor2.length -= msg.value / 10^16 * stor2.length / 100
                    else:
                        call msg.sender with:
                           value stor2.length wei
                             gas 0 wei
                        stor2.length = 0
                require stor9 < stor11.length
                if not var27001:
                    if msg.value < 10^18:
                        call msg.sender with:
                           value msg.value / 10^16 * stor2.length / 100 wei
                             gas 0 wei
                        stor2.length -= msg.value / 10^16 * stor2.length / 100
                    else:
                        call msg.sender with:
                           value stor2.length wei
                             gas 0 wei
                        stor2.length = 0
                require stor9 < stor11.length
                call stor175B[stor9] with:
                   value uint256(stor[code.data[3255 len 32] + (3 * stor9)]) wei
                     gas 0 wei
                stor0 -= uint256(stor[code.data[3255 len 32] + (3 * stor9)])
                stor175B[stor9] = 1
                stor9++
                if not uint256(stor[code.data[3255 len 32] + (3 * stor9)]):
                    if msg.value < 10^18:
                        call msg.sender with:
                           value msg.value / 10^16 * stor2.length / 100 wei
                             gas 0 wei
                        stor2.length -= msg.value / 10^16 * stor2.length / 100
                    else:
                        call msg.sender with:
                           value stor2.length wei
                             gas 0 wei
                        stor2.length = 0
                require stor9 < stor11.length
                if not var47001:
                    if msg.value < 10^18:
                        call msg.sender with:
                           value msg.value / 10^16 * stor2.length / 100 wei
                             gas 0 wei
                        stor2.length -= msg.value / 10^16 * stor2.length / 100
                    else:
                        call msg.sender with:
                           value stor2.length wei
                             gas 0 wei
                        stor2.length = 0
                require stor9 < stor11.length
                call stor175B[stor9] with:
                   value uint256(stor[code.data[3255 len 32] + (3 * stor9)]) wei
                     gas 0 wei
                stor0 -= uint256(stor[code.data[3255 len 32] + (3 * stor9)])
                # nil
            else:
                idx = (3 * stor11.length) + 3
                while 3 * stor11.length > idx:
                    address(stor11[idx].field_0) = 0
                    uint256(stor11[idx].field_256) = 0
                    uint8(stor11[idx].field_512) = 0
                    idx = idx + 3
                    continue 
                uint256(stor11[stor11.length].field_0) = Mask(96, 0, stor11[stor11.length].field_160)
                uint256(stor11[stor11.length].field_256) = (stor3 * stor5) - (stor0 * stor5) / 1000
                uint8(stor11[stor11.length].field_512) = 0
                stor11.length++
                if not stor11.length > stor11.length + 1:
                    uint256(stor11[stor11.length].field_0) = Mask(96, 0, stor11[stor11.length].field_160)
                    uint256(stor11[stor11.length].field_256) = (msg.value * stor5) - (stor3 * stor5) + (stor0 * stor5) / 1000
                    uint8(stor11[stor11.length].field_512) = 0
                    stor2.length += stor8 * msg.value / 1000
                    stor6 += stor7 * msg.value / 1000
                    stor0 += (1000 * msg.value) - (stor8 * msg.value) - (stor7 * msg.value) / 1000
                    if ((1000 * msg.value) - (stor8 * msg.value) - (stor7 * msg.value) / 1000) + stor0 < stor3 / 1000 * stor5:
                    stor1.length++
                    if not uint256(stor[code.data[3255 len 32] + (3 * stor9)]):
                        if msg.value < 10^18:
                            call msg.sender with:
                               value msg.value / 10^16 * stor2.length / 100 wei
                                 gas 0 wei
                            stor2.length -= msg.value / 10^16 * stor2.length / 100
                        else:
                            call msg.sender with:
                               value stor2.length wei
                                 gas 0 wei
                            stor2.length = 0
                    require stor9 < stor11.length
                    if not var31001:
                        if msg.value < 10^18:
                            call msg.sender with:
                               value msg.value / 10^16 * stor2.length / 100 wei
                                 gas 0 wei
                            stor2.length -= msg.value / 10^16 * stor2.length / 100
                        else:
                            call msg.sender with:
                               value stor2.length wei
                                 gas 0 wei
                            stor2.length = 0
                    require stor9 < stor11.length
                    call stor175B[stor9] with:
                       value uint256(stor[code.data[3255 len 32] + (3 * stor9)]) wei
                         gas 0 wei
                    stor0 -= uint256(stor[code.data[3255 len 32] + (3 * stor9)])
                    stor175B[stor9] = 1
                    stor9++
                    if not uint256(stor[code.data[3255 len 32] + (3 * stor9)]):
                        if msg.value < 10^18:
                            call msg.sender with:
                               value msg.value / 10^16 * stor2.length / 100 wei
                                 gas 0 wei
                            stor2.length -= msg.value / 10^16 * stor2.length / 100
                        else:
                            call msg.sender with:
                               value stor2.length wei
                                 gas 0 wei
                            stor2.length = 0
                    require stor9 < stor11.length
                    if var51001:
                        require stor9 < stor11.length
                        call stor175B[stor9] with:
                           value uint256(stor[code.data[3255 len 32] + (3 * stor9)]) wei
                             gas 0 wei
                        # nil
                    else:
                        if msg.value < 10^18:
                            call msg.sender with:
                               value msg.value / 10^16 * stor2.length / 100 wei
                                 gas 0 wei
                            stor2.length -= msg.value / 10^16 * stor2.length / 100
                        else:
                            call msg.sender with:
                               value stor2.length wei
                                 gas 0 wei
                            stor2.length = 0
                else:
                    idx = (3 * stor11.length) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dbc
                    while (3 * stor11.length) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01db9 > idx:
                        address(stor[idx]) = 0
                        stor1[idx] = 0
                        stor2[idx] = 0
                        idx = idx + 3
                        continue 
                    uint256(stor11[stor11.length].field_0) = Mask(96, 0, stor11[stor11.length].field_160)
                    uint256(stor11[stor11.length].field_256) = (msg.value * stor5) - (stor3 * stor5) + (stor0 * stor5) / 1000
                    uint8(stor11[stor11.length].field_512) = 0
                    stor2.length += stor8 * msg.value / 1000
                    stor6 += stor7 * msg.value / 1000
                    stor0 += (1000 * msg.value) - (stor8 * msg.value) - (stor7 * msg.value) / 1000
                    if ((1000 * msg.value) - (stor8 * msg.value) - (stor7 * msg.value) / 1000) + stor0 < stor3 / 1000 * stor5:
                    stor1.length++
                    if not uint256(stor[code.data[3255 len 32] + (3 * stor9)]):
                        if msg.value < 10^18:
                            call msg.sender with:
                               value msg.value / 10^16 * stor2.length / 100 wei
                                 gas 0 wei
                            stor2.length -= msg.value / 10^16 * stor2.length / 100
                        else:
                            call msg.sender with:
                               value stor2.length wei
                                 gas 0 wei
                            stor2.length = 0
                    require stor9 < stor11.length
                    if not var35001:
                        if msg.value < 10^18:
                            call msg.sender with:
                               value msg.value / 10^16 * stor2.length / 100 wei
                                 gas 0 wei
                            stor2.length -= msg.value / 10^16 * stor2.length / 100
                        else:
                            call msg.sender with:
                               value stor2.length wei
                                 gas 0 wei
                            stor2.length = 0
                    require stor9 < stor11.length
                    call stor175B[stor9] with:
                       value uint256(stor[code.data[3255 len 32] + (3 * stor9)]) wei
                         gas 0 wei
                    stor0 -= uint256(stor[code.data[3255 len 32] + (3 * stor9)])
                    stor175B[stor9] = 1
                    stor9++
                    if not uint256(stor[code.data[3255 len 32] + (3 * stor9)]):
                        if msg.value < 10^18:
                            call msg.sender with:
                               value msg.value / 10^16 * stor2.length / 100 wei
                                 gas 0 wei
                            stor2.length -= msg.value / 10^16 * stor2.length / 100
                        else:
                            call msg.sender with:
                               value stor2.length wei
                                 gas 0 wei
                            stor2.length = 0
                    require stor9 < stor11.length
                    if var55001:
                        require stor9 < stor11.length
                        # nil
                    else:
                        if msg.value < 10^18:
                            call msg.sender with:
                               value msg.value / 10^16 * stor2.length / 100 wei
                                 gas 0 wei
                            stor2.length -= msg.value / 10^16 * stor2.length / 100
                        else:
                            call msg.sender with:
                               value stor2.length wei
                                 gas 0 wei
                            stor2.length = 0
    else:
        call msg.sender with:
           value msg.value - stor4 wei
             gas 0 wei
        stor11.length++
        if stor3 >= stor4 + stor0:
            if not stor11.length > stor11.length + 1:
                uint256(stor11[stor11.length].field_0) = Mask(96, 0, stor11[stor11.length].field_160)
                uint256(stor11[stor11.length].field_256) = stor4 * stor5 / 1000
                uint8(stor11[stor11.length].field_512) = 0
                stor2.length += stor8 * stor4 / 1000
                stor6 += stor7 * stor4 / 1000
                stor0 += (1000 * stor4) - (stor8 * stor4) - (stor7 * stor4) / 1000
                if ((1000 * stor4) - (stor8 * stor4) - (stor7 * stor4) / 1000) + stor0 < stor3 / 1000 * stor5:
                stor1.length++
                if not uint256(stor[code.data[3255 len 32] + (3 * stor9)]):
                    if stor4 < 10^18:
                        call msg.sender with:
                           value stor4 / 10^16 * stor2.length / 100 wei
                             gas 0 wei
                        stor2.length -= stor4 / 10^16 * stor2.length / 100
                    else:
                        call msg.sender with:
                           value stor2.length wei
                             gas 0 wei
                        stor2.length = 0
                require stor9 < stor11.length
                if not var27001:
                    if stor4 < 10^18:
                        call msg.sender with:
                           value stor4 / 10^16 * stor2.length / 100 wei
                             gas 0 wei
                        stor2.length -= stor4 / 10^16 * stor2.length / 100
                    else:
                        call msg.sender with:
                           value stor2.length wei
                             gas 0 wei
                        stor2.length = 0
                require stor9 < stor11.length
                call stor175B[stor9] with:
                   value uint256(stor[code.data[3255 len 32] + (3 * stor9)]) wei
                     gas 0 wei
                stor0 -= uint256(stor[code.data[3255 len 32] + (3 * stor9)])
                stor175B[stor9] = 1
                stor9++
                if not uint256(stor[code.data[3255 len 32] + (3 * stor9)]):
                    if stor4 < 10^18:
                        call msg.sender with:
                           value stor4 / 10^16 * stor2.length / 100 wei
                             gas 0 wei
                        stor2.length -= stor4 / 10^16 * stor2.length / 100
                    else:
                        call msg.sender with:
                           value stor2.length wei
                             gas 0 wei
                        stor2.length = 0
                require stor9 < stor11.length
                if not var47001:
                    if stor4 < 10^18:
                        call msg.sender with:
                           value stor4 / 10^16 * stor2.length / 100 wei
                             gas 0 wei
                        stor2.length -= stor4 / 10^16 * stor2.length / 100
                    else:
                        call msg.sender with:
                           value stor2.length wei
                             gas 0 wei
                        stor2.length = 0
                require stor9 < stor11.length
                call stor175B[stor9] with:
                   value uint256(stor[code.data[3255 len 32] + (3 * stor9)]) wei
                     gas 0 wei
                stor0 -= uint256(stor[code.data[3255 len 32] + (3 * stor9)])
                # nil
            else:
                idx = (3 * stor11.length) + 3
                while 3 * stor11.length > idx:
                    address(stor11[idx].field_0) = 0
                    uint256(stor11[idx].field_256) = 0
                    uint8(stor11[idx].field_512) = 0
                    idx = idx + 3
                    continue 
                uint256(stor11[stor11.length].field_0) = Mask(96, 0, stor11[stor11.length].field_160)
                uint256(stor11[stor11.length].field_256) = stor4 * stor5 / 1000
                uint8(stor11[stor11.length].field_512) = 0
                stor2.length += stor8 * stor4 / 1000
                stor6 += stor7 * stor4 / 1000
                stor0 += (1000 * stor4) - (stor8 * stor4) - (stor7 * stor4) / 1000
                if ((1000 * stor4) - (stor8 * stor4) - (stor7 * stor4) / 1000) + stor0 < stor3 / 1000 * stor5:
                stor1.length++
                if not uint256(stor[code.data[3255 len 32] + (3 * stor9)]):
                    if stor4 < 10^18:
                        call msg.sender with:
                           value stor4 / 10^16 * stor2.length / 100 wei
                             gas 0 wei
                        stor2.length -= stor4 / 10^16 * stor2.length / 100
                    else:
                        call msg.sender with:
                           value stor2.length wei
                             gas 0 wei
                        stor2.length = 0
                require stor9 < stor11.length
                if not var31001:
                    if stor4 < 10^18:
                        call msg.sender with:
                           value stor4 / 10^16 * stor2.length / 100 wei
                             gas 0 wei
                        stor2.length -= stor4 / 10^16 * stor2.length / 100
                    else:
                        call msg.sender with:
                           value stor2.length wei
                             gas 0 wei
                        stor2.length = 0
                require stor9 < stor11.length
                call stor175B[stor9] with:
                   value uint256(stor[code.data[3255 len 32] + (3 * stor9)]) wei
                     gas 0 wei
                stor0 -= uint256(stor[code.data[3255 len 32] + (3 * stor9)])
                stor175B[stor9] = 1
                stor9++
                if not uint256(stor[code.data[3255 len 32] + (3 * stor9)]):
                    if stor4 < 10^18:
                        call msg.sender with:
                           value stor4 / 10^16 * stor2.length / 100 wei
                             gas 0 wei
                        stor2.length -= stor4 / 10^16 * stor2.length / 100
                    else:
                        call msg.sender with:
                           value stor2.length wei
                             gas 0 wei
                        stor2.length = 0
                require stor9 < stor11.length
                if var51001:
                    require stor9 < stor11.length
                    call stor175B[stor9] with:
                       value uint256(stor[code.data[3255 len 32] + (3 * stor9)]) wei
                         gas 0 wei
                    # nil
                else:
                    if stor4 < 10^18:
                        call msg.sender with:
                           value stor4 / 10^16 * stor2.length / 100 wei
                             gas 0 wei
                        stor2.length -= stor4 / 10^16 * stor2.length / 100
                    else:
                        call msg.sender with:
                           value stor2.length wei
                             gas 0 wei
                        stor2.length = 0
        else:
            if not stor11.length > stor11.length + 1:
                uint256(stor11[stor11.length].field_0) = Mask(96, 0, stor11[stor11.length].field_160)
                uint256(stor11[stor11.length].field_256) = (stor3 * stor5) - (stor0 * stor5) / 1000
                uint8(stor11[stor11.length].field_512) = 0
                stor11.length++
                uint256(stor11[stor11.length].field_0) = Mask(96, 0, stor11[stor11.length].field_160)
                uint256(stor11[stor11.length].field_256) = (stor4 * stor5) - (stor3 * stor5) + (stor0 * stor5) / 1000
                uint8(stor11[stor11.length].field_512) = 0
                stor2.length += stor8 * stor4 / 1000
                stor6 += stor7 * stor4 / 1000
                stor0 += (1000 * stor4) - (stor8 * stor4) - (stor7 * stor4) / 1000
                if ((1000 * stor4) - (stor8 * stor4) - (stor7 * stor4) / 1000) + stor0 < stor3 / 1000 * stor5:
                stor1.length++
                if not uint256(stor[code.data[3255 len 32] + (3 * stor9)]):
                    if stor4 < 10^18:
                        call msg.sender with:
                           value stor4 / 10^16 * stor2.length / 100 wei
                             gas 0 wei
                        stor2.length -= stor4 / 10^16 * stor2.length / 100
                    else:
                        call msg.sender with:
                           value stor2.length wei
                             gas 0 wei
                        stor2.length = 0
                require stor9 < stor11.length
                if not var28001:
                    if stor4 < 10^18:
                        call msg.sender with:
                           value stor4 / 10^16 * stor2.length / 100 wei
                             gas 0 wei
                        stor2.length -= stor4 / 10^16 * stor2.length / 100
                    else:
                        call msg.sender with:
                           value stor2.length wei
                             gas 0 wei
                        stor2.length = 0
                require stor9 < stor11.length
                call stor175B[stor9] with:
                   value uint256(stor[code.data[3255 len 32] + (3 * stor9)]) wei
                     gas 0 wei
                stor0 -= uint256(stor[code.data[3255 len 32] + (3 * stor9)])
                stor175B[stor9] = 1
                stor9++
                if not uint256(stor[code.data[3255 len 32] + (3 * stor9)]):
                    if stor4 < 10^18:
                        call msg.sender with:
                           value stor4 / 10^16 * stor2.length / 100 wei
                             gas 0 wei
                        stor2.length -= stor4 / 10^16 * stor2.length / 100
                    else:
                        call msg.sender with:
                           value stor2.length wei
                             gas 0 wei
                        stor2.length = 0
                require stor9 < stor11.length
                if not var48001:
                    if stor4 < 10^18:
                        call msg.sender with:
                           value stor4 / 10^16 * stor2.length / 100 wei
                             gas 0 wei
                        stor2.length -= stor4 / 10^16 * stor2.length / 100
                    else:
                        call msg.sender with:
                           value stor2.length wei
                             gas 0 wei
                        stor2.length = 0
                require stor9 < stor11.length
                call stor175B[stor9] with:
                   value uint256(stor[code.data[3255 len 32] + (3 * stor9)]) wei
                     gas 0 wei
                stor0 -= uint256(stor[code.data[3255 len 32] + (3 * stor9)])
                # nil
            else:
                idx = (3 * stor11.length) + 3
                while 3 * stor11.length > idx:
                    address(stor11[idx].field_0) = 0
                    uint256(stor11[idx].field_256) = 0
                    uint8(stor11[idx].field_512) = 0
                    idx = idx + 3
                    continue 
                uint256(stor11[stor11.length].field_0) = Mask(96, 0, stor11[stor11.length].field_160)
                uint256(stor11[stor11.length].field_256) = (stor3 * stor5) - (stor0 * stor5) / 1000
                uint8(stor11[stor11.length].field_512) = 0
                stor11.length++
                if not stor11.length > stor11.length + 1:
                    uint256(stor11[stor11.length].field_0) = Mask(96, 0, stor11[stor11.length].field_160)
                    uint256(stor11[stor11.length].field_256) = (stor4 * stor5) - (stor3 * stor5) + (stor0 * stor5) / 1000
                    uint8(stor11[stor11.length].field_512) = 0
                    stor2.length += stor8 * stor4 / 1000
                    stor6 += stor7 * stor4 / 1000
                    stor0 += (1000 * stor4) - (stor8 * stor4) - (stor7 * stor4) / 1000
                    if ((1000 * stor4) - (stor8 * stor4) - (stor7 * stor4) / 1000) + stor0 < stor3 / 1000 * stor5:
                    stor1.length++
                    if not uint256(stor[code.data[3255 len 32] + (3 * stor9)]):
                        if stor4 < 10^18:
                            call msg.sender with:
                               value stor4 / 10^16 * stor2.length / 100 wei
                                 gas 0 wei
                            stor2.length -= stor4 / 10^16 * stor2.length / 100
                        else:
                            call msg.sender with:
                               value stor2.length wei
                                 gas 0 wei
                            stor2.length = 0
                    require stor9 < stor11.length
                    if not var32001:
                        if stor4 < 10^18:
                            call msg.sender with:
                               value stor4 / 10^16 * stor2.length / 100 wei
                                 gas 0 wei
                            stor2.length -= stor4 / 10^16 * stor2.length / 100
                        else:
                            call msg.sender with:
                               value stor2.length wei
                                 gas 0 wei
                            stor2.length = 0
                    require stor9 < stor11.length
                    call stor175B[stor9] with:
                       value uint256(stor[code.data[3255 len 32] + (3 * stor9)]) wei
                         gas 0 wei
                    stor0 -= uint256(stor[code.data[3255 len 32] + (3 * stor9)])
                    stor175B[stor9] = 1
                    stor9++
                    if not uint256(stor[code.data[3255 len 32] + (3 * stor9)]):
                        if stor4 < 10^18:
                            call msg.sender with:
                               value stor4 / 10^16 * stor2.length / 100 wei
                                 gas 0 wei
                            stor2.length -= stor4 / 10^16 * stor2.length / 100
                        else:
                            call msg.sender with:
                               value stor2.length wei
                                 gas 0 wei
                            stor2.length = 0
                    require stor9 < stor11.length
                    if var52001:
                        require stor9 < stor11.length
                        call stor175B[stor9] with:
                           value uint256(stor[code.data[3255 len 32] + (3 * stor9)]) wei
                             gas 0 wei
                        # nil
                    else:
                        if stor4 < 10^18:
                            call msg.sender with:
                               value stor4 / 10^16 * stor2.length / 100 wei
                                 gas 0 wei
                            stor2.length -= stor4 / 10^16 * stor2.length / 100
                        else:
                            call msg.sender with:
                               value stor2.length wei
                                 gas 0 wei
                            stor2.length = 0
                else:
                    idx = (3 * stor11.length) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01dbc
                    while (3 * stor11.length) + 0x175b7a638427703f0dbe7bb9bbf987a2551717b34e79f33b5b1008d1fa01db9 > idx:
                        address(stor[idx]) = 0
                        stor1[idx] = 0
                        stor2[idx] = 0
                        idx = idx + 3
                        continue 
                    uint256(stor11[stor11.length].field_0) = Mask(96, 0, stor11[stor11.length].field_160)
                    uint256(stor11[stor11.length].field_256) = (stor4 * stor5) - (stor3 * stor5) + (stor0 * stor5) / 1000
                    uint8(stor11[stor11.length].field_512) = 0
                    stor2.length += stor8 * stor4 / 1000
                    stor6 += stor7 * stor4 / 1000
                    stor0 += (1000 * stor4) - (stor8 * stor4) - (stor7 * stor4) / 1000
                    if ((1000 * stor4) - (stor8 * stor4) - (stor7 * stor4) / 1000) + stor0 < stor3 / 1000 * stor5:
                    stor1.length++
                    if not uint256(stor[code.data[3255 len 32] + (3 * stor9)]):
                        if stor4 < 10^18:
                            call msg.sender with:
                               value stor4 / 10^16 * stor2.length / 100 wei
                                 gas 0 wei
                            stor2.length -= stor4 / 10^16 * stor2.length / 100
                        else:
                            call msg.sender with:
                               value stor2.length wei
                                 gas 0 wei
                            stor2.length = 0
                    require stor9 < stor11.length
                    if not var36001:
                        if stor4 < 10^18:
                            call msg.sender with:
                               value stor4 / 10^16 * stor2.length / 100 wei
                                 gas 0 wei
                            stor2.length -= stor4 / 10^16 * stor2.length / 100
                        else:
                            call msg.sender with:
                               value stor2.length wei
                                 gas 0 wei
                            stor2.length = 0
                    require stor9 < stor11.length
                    call stor175B[stor9] with:
                       value uint256(stor[code.data[3255 len 32] + (3 * stor9)]) wei
                         gas 0 wei
                    stor0 -= uint256(stor[code.data[3255 len 32] + (3 * stor9)])
                    stor175B[stor9] = 1
                    stor9++
                    if not uint256(stor[code.data[3255 len 32] + (3 * stor9)]):
                        if stor4 < 10^18:
                            call msg.sender with:
                               value stor4 / 10^16 * stor2.length / 100 wei
                                 gas 0 wei
                            stor2.length -= stor4 / 10^16 * stor2.length / 100
                        else:
                            call msg.sender with:
                               value stor2.length wei
                                 gas 0 wei
                            stor2.length = 0
                    require stor9 < stor11.length
                    if var56001:
                        require stor9 < stor11.length
                        # nil
                    else:
                        if stor4 < 10^18:
                            call msg.sender with:
                               value stor4 / 10^16 * stor2.length / 100 wei
                                 gas 0 wei
                            stor2.length -= stor4 / 10^16 * stor2.length / 100
                        else:
                            call msg.sender with:
                               value stor2.length wei
                                 gas 0 wei
                            stor2.length = 0
}



}
