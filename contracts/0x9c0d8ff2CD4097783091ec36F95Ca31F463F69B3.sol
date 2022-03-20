contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;

function _fallback() payable {
    stor0 = 0
    stor1 = 0
    stor2 = 1100
    stor3 = 1
    stor4 = 15 * 10^18
    stor5 = 0
    stor6 = msg.sender or Mask(96, 160, stor6)
    return code.data[70 len 1956]
}



// =====================  Runtime code  =====================


uint256 stor0;
uint256 sub_dbb0681e;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
address stor6;
uint256 stor6;
array of struct stor7;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432777;
array of uint8 stor75276140696391174450305814049576319106646922510300487059720162673006384432778;

function sub_dbb0681e(?) payable {
    return sub_dbb0681e
}

function ChangeOwnership(address arg1) payable {
    if msg.sender == address(stor6):
        uint256(stor6) = arg1 or Mask(96, 160, uint256(stor6))
}

function WatchBalance() payable {
    mem[288] = Mask(16, 120, 'Balance in finney') >> 120, mem[305 len 15]
    return stor0 / 10^15, Array(len=17, data=mem[288])
}

function WatchCurrentMultiplier() payable {
    mem[288] = Mask(208, 24, 'Current multiplier in percent') >> 24, mem[317 len 3]
    return stor2 / 10, Array(len=29, data=mem[288])
}

function CollectAllFees() payable {
    if msg.sender == address(stor6):
        require sub_dbb0681e != 0
        call address(stor6) with:
           value sub_dbb0681e wei
             gas 0 wei
        sub_dbb0681e = 0
}

function sub_7e4620a8(?) payable {
    mem[416] = mem[439 len 9]
    return stor7.length, 
           Array(len=73, data='Number of participations since t', 'he beginning of this wonderful b', 2000274736996233079150 >> 256, mem[416])
}

function PlayerInfo(uint256 arg1) payable {
    if arg1 > stor7.length:
        return 0
    require arg1 < stor7.length
    return address(stor[code.data[1924 len 32] + (3 * arg1)]), uint256(stor7[arg1].field_256) / 10^15, storA66C[arg1]
}

function sub_936e75b2(?) payable {
    mem[416] = mem[439 len 9]
    return stor7.length - stor5, 
           Array(len=73, data='Number of participations since t', 'he beginning of this wonderful b', 2000274736996233079150 >> 256, mem[416])
}

function GetAndReduceFeesByFraction(uint256 arg1) payable {
    if msg.sender == address(stor6):
        if 0 == sub_dbb0681e:
            stor3 = 50 * stor3 / 100
        call address(stor6) with:
           value arg1 * sub_dbb0681e / 1000 wei
             gas 0 wei
        sub_dbb0681e += -1 * arg1 * sub_dbb0681e / 1000
}

function _fallback() payable {
    if msg.value < stor4:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
    if msg.value <= stor4:
        stor0 += (1000 * stor4) - (stor3 * stor4) / 1000
        sub_dbb0681e += stor3 * stor4 / 1000
        stor7.length++
        if not stor7.length > stor7.length + 1:
            uint256(stor7[stor7.length].field_0) = Mask(96, 0, stor7[stor7.length].field_160)
            uint256(stor7[stor7.length].field_256) = stor2 * stor4 / 1000
            uint8(stor7[stor7.length].field_512) = 0
            if stor0 < storA66C[stor5]:
            require stor5 < stor7.length
            if 0 == storA66C[stor5]:
            require stor5 < stor7.length
            call var29004 with:
               value uint256(stor[code.data[1924 len 32] + (3 * stor5) + 1]) wei
                 gas 0 wei
            stor0 -= storA66C[stor5]
            uint8(stor[code.data[1924 len 32] + (3 * stor5) + 2]) = 1
            stor5++
            if stor0 < storA66C[stor5]:
            require stor5 < stor7.length
            if 0 == storA66C[stor5]:
            require stor5 < stor7.length
            call var49004 with:
               value uint256(stor[code.data[1924 len 32] + (3 * stor5) + 1]) wei
                 gas 0 wei
            stor0 -= storA66C[stor5]
            # nil
        else:
            idx = (3 * stor7.length) + 3
            while 3 * stor7.length > idx:
                address(stor7[idx].field_0) = 0
                uint256(stor7[idx].field_256) = 0
                uint8(stor7[idx].field_512) = 0
                idx = idx + 3
                continue 
            uint256(stor7[stor7.length].field_0) = Mask(96, 0, stor7[stor7.length].field_160)
            uint256(stor7[stor7.length].field_256) = stor2 * stor4 / 1000
            uint8(stor7[stor7.length].field_512) = 0
            if stor0 < storA66C[stor5]:
            require stor5 < stor7.length
            if 0 == storA66C[stor5]:
            require stor5 < stor7.length
            call var33004 with:
               value uint256(stor[code.data[1924 len 32] + (3 * stor5) + 1]) wei
                 gas 0 wei
            stor0 -= storA66C[stor5]
            uint8(stor[code.data[1924 len 32] + (3 * stor5) + 2]) = 1
            stor5++
            if stor0 < storA66C[stor5]:
            require stor5 < stor7.length
            if 0 == storA66C[stor5]:
            require stor5 < stor7.length
            call var53004 with:
               value uint256(stor[code.data[1924 len 32] + (3 * stor5) + 1]) wei
                 gas 0 wei
            # nil
    else:
        call msg.sender with:
           value msg.value - stor4 wei
             gas 0 wei
        stor0 += (1000 * stor4) - (stor3 * stor4) / 1000
        sub_dbb0681e += stor3 * stor4 / 1000
        stor7.length++
        if not stor7.length > stor7.length + 1:
            uint256(stor7[stor7.length].field_0) = Mask(96, 0, stor7[stor7.length].field_160)
            uint256(stor7[stor7.length].field_256) = stor2 * stor4 / 1000
            uint8(stor7[stor7.length].field_512) = 0
            if stor0 < storA66C[stor5]:
            require stor5 < stor7.length
            if 0 == storA66C[stor5]:
            require stor5 < stor7.length
            call var30004 with:
               value uint256(stor[code.data[1924 len 32] + (3 * stor5) + 1]) wei
                 gas 0 wei
            stor0 -= storA66C[stor5]
            uint8(stor[code.data[1924 len 32] + (3 * stor5) + 2]) = 1
            stor5++
            if stor0 < storA66C[stor5]:
            require stor5 < stor7.length
            if 0 == storA66C[stor5]:
            require stor5 < stor7.length
            call var50004 with:
               value uint256(stor[code.data[1924 len 32] + (3 * stor5) + 1]) wei
                 gas 0 wei
            stor0 -= storA66C[stor5]
            # nil
        else:
            idx = (3 * stor7.length) + 3
            while 3 * stor7.length > idx:
                address(stor7[idx].field_0) = 0
                uint256(stor7[idx].field_256) = 0
                uint8(stor7[idx].field_512) = 0
                idx = idx + 3
                continue 
            uint256(stor7[stor7.length].field_0) = Mask(96, 0, stor7[stor7.length].field_160)
            uint256(stor7[stor7.length].field_256) = stor2 * stor4 / 1000
            uint8(stor7[stor7.length].field_512) = 0
            if stor0 < storA66C[stor5]:
            require stor5 < stor7.length
            if 0 == storA66C[stor5]:
            require stor5 < stor7.length
            call var34004 with:
               value uint256(stor[code.data[1924 len 32] + (3 * stor5) + 1]) wei
                 gas 0 wei
            stor0 -= storA66C[stor5]
            uint8(stor[code.data[1924 len 32] + (3 * stor5) + 2]) = 1
            stor5++
            if stor0 < storA66C[stor5]:
            require stor5 < stor7.length
            if 0 == storA66C[stor5]:
            require stor5 < stor7.length
            call var54004 with:
               value uint256(stor[code.data[1924 len 32] + (3 * stor5) + 1]) wei
                 gas 0 wei
            # nil
}



}
