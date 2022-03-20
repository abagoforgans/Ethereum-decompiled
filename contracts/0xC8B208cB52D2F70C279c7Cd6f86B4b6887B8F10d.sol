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

function _fallback() payable {
    stor0 = 0
    stor1 = 0
    stor2 = 0
    stor3 = 1100
    stor4 = 1
    stor5 = 15 * 10^18
    stor6 = 0
    stor7 = msg.sender or Mask(96, 160, stor7)
    return code.data[75 len 2006]
}



// =====================  Runtime code  =====================


uint256 stor0;
uint256 sub_dbb0681e;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
address stor7;
uint256 stor7;
array of struct stor8;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020068;
array of uint8 stor110349606679412691172957834289542550319383271247755660854362242977991410020069;

function sub_dbb0681e(?) payable {
    return sub_dbb0681e
}

function ChangeOwnership(address arg1) payable {
    if msg.sender == address(stor7):
        uint256(stor7) = arg1 or Mask(96, 160, uint256(stor7))
}

function WatchBalance() payable {
    mem[288] = Mask(16, 120, 'Balance in finney') >> 120, mem[305 len 15]
    return stor0 / 10^15, Array(len=17, data=mem[288])
}

function WatchCurrentMultiplier() payable {
    mem[288] = Mask(208, 24, 'Current multiplier in percent') >> 24, mem[317 len 3]
    return stor3 / 10, Array(len=29, data=mem[288])
}

function CollectAllFees() payable {
    if msg.sender == address(stor7):
        require sub_dbb0681e != 0
        call address(stor7) with:
           value sub_dbb0681e wei
             gas 0 wei
        sub_dbb0681e = 0
}

function sub_7e4620a8(?) payable {
    mem[416] = mem[439 len 9]
    return stor8.length, 
           Array(len=73, data='Number of participations since t', 'he beginning of this wonderful b', 2000274736996233079150 >> 256, mem[416])
}

function PlayerInfo(uint256 arg1) payable {
    if arg1 > stor8.length:
        return 0
    require arg1 < stor8.length
    return address(stor[code.data[1974 len 32] + (3 * arg1)]), uint256(stor8[arg1].field_256) / 10^15, storF3F7[arg1]
}

function sub_936e75b2(?) payable {
    mem[416] = mem[439 len 9]
    return stor8.length - stor6, 
           Array(len=73, data='Number of participations since t', 'he beginning of this wonderful b', 2000274736996233079150 >> 256, mem[416])
}

function GetAndReduceFeesByFraction(uint256 arg1) payable {
    if msg.sender == address(stor7):
        if 0 == sub_dbb0681e:
            stor4 = 50 * stor4 / 100
        call address(stor7) with:
           value arg1 * sub_dbb0681e / 1000 wei
             gas 0 wei
        sub_dbb0681e += -1 * arg1 * sub_dbb0681e / 1000
}

function _fallback() payable {
    if msg.value < stor5:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    if msg.value <= stor5:
        stor0 += (1000 * stor5) - (stor4 * stor5) / 1000
        sub_dbb0681e += stor4 * stor5 / 1000
        stor8.length++
        if not stor8.length > stor8.length + 1:
            uint256(stor8[stor8.length].field_0) = Mask(96, 0, stor8[stor8.length].field_160)
            uint256(stor8[stor8.length].field_256) = stor3 * stor5 / 1000
            uint8(stor8[stor8.length].field_512) = 0
            if stor0 < storF3F7[stor6]:
            require stor6 < stor8.length
            if 0 == storF3F7[stor6]:
            require stor6 < stor8.length
            call var30004 with:
               value uint256(stor[code.data[1974 len 32] + (3 * stor6) + 1]) wei
                 gas 0 wei
            # nil
        else:
            idx = (3 * stor8.length) + 3
            while 3 * stor8.length > idx:
                address(stor8[idx].field_0) = 0
                uint256(stor8[idx].field_256) = 0
                uint8(stor8[idx].field_512) = 0
                idx = idx + 3
                continue 
            uint256(stor8[stor8.length].field_0) = Mask(96, 0, stor8[stor8.length].field_160)
            uint256(stor8[stor8.length].field_256) = stor3 * stor5 / 1000
            uint8(stor8[stor8.length].field_512) = 0
            if stor0 < storF3F7[stor6]:
            require stor6 < stor8.length
            if 0 == storF3F7[stor6]:
            require stor6 < stor8.length
            call var34004 with:
               value uint256(stor[code.data[1974 len 32] + (3 * stor6) + 1]) wei
                 gas 0 wei
            # nil
    else:
        call msg.sender with:
           value msg.value - stor5 wei
             gas 0 wei
        stor0 += (1000 * stor5) - (stor4 * stor5) / 1000
        sub_dbb0681e += stor4 * stor5 / 1000
        stor8.length++
        if not stor8.length > stor8.length + 1:
            uint256(stor8[stor8.length].field_0) = Mask(96, 0, stor8[stor8.length].field_160)
            uint256(stor8[stor8.length].field_256) = stor3 * stor5 / 1000
            uint8(stor8[stor8.length].field_512) = 0
            if stor0 < storF3F7[stor6]:
            require stor6 < stor8.length
            if 0 == storF3F7[stor6]:
            require stor6 < stor8.length
            call var31004 with:
               value uint256(stor[code.data[1974 len 32] + (3 * stor6) + 1]) wei
                 gas 0 wei
            # nil
        else:
            idx = (3 * stor8.length) + 3
            while 3 * stor8.length > idx:
                address(stor8[idx].field_0) = 0
                uint256(stor8[idx].field_256) = 0
                uint8(stor8[idx].field_512) = 0
                idx = idx + 3
                continue 
            uint256(stor8[stor8.length].field_0) = Mask(96, 0, stor8[stor8.length].field_160)
            uint256(stor8[stor8.length].field_256) = stor3 * stor5 / 1000
            uint8(stor8[stor8.length].field_512) = 0
            if stor0 < storF3F7[stor6]:
            require stor6 < stor8.length
            if 0 == storF3F7[stor6]:
            require stor6 < stor8.length
            call var35004 with:
               value uint256(stor[code.data[1974 len 32] + (3 * stor6) + 1]) wei
                 gas 0 wei
            # nil
}



}
