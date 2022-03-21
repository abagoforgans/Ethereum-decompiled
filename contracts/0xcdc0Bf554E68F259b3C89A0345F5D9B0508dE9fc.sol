contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
address stor6;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;

function _fallback() payable {
    stor0 = 0
    stor1 = 1
    stor2 = 150
    stor3 = 0
    stor4 = 0
    stor5 = 0
    stor6 = 0
    stor9 = 0
    stor10 = 0
    stor11 = 0
    stor12 = msg.sender or Mask(96, 160, stor12)
    return code.data[94 len 3472]
}



// =====================  Runtime code  =====================


#
#  - setName(string arg1)
#  - dogFight()
#  - _fallback()
#
uint256 underdogPayoutFund;
uint256 stor1;
uint256 underdogPayoutMarkup;
address stor6;
uint256 stor7;
array of struct stor8;
uint256 stor9;
uint256 stor10;
array of uint256 stor39192952402756187425302384862487251540968225014669488259582314013099748177606;

function underdogPayoutMarkup() payable {
    return underdogPayoutMarkup
}

function underdogPayoutFund() payable {
    return underdogPayoutFund
}

function underdogCount() payable {
    return (stor7 - stor10)
}

function nextUnderdogPayout() payable {
    if stor7 - stor10 < 1:
        return 0
    require stor10 < stor7
    return stor56A6[stor10]
}

function topDogInfo() payable {
    if 0 == stor6:
        mem[288] = mem[311 len 9]
        return Array(len=9, data=mem[288]), stor1
    if stor8[stor6].length <= 0:
        mem[320] = mem[340 len 12]
        return Array(len=12, data=mem[320]), stor1
    mem[192] = uint256(stor8[stor6].field_0)
    idx = 192
    s = 0
    while stor8[stor6].length + 160 > idx:
        mem[idx + 32] = uint256(stor8[stor6][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor8[stor6].length, data=mem[192 len stor8[stor6].length]), stor1
}

function luckyDogInfo() payable {
    if stor9 <= 0:
        mem[256] = mem[280 len 8]
        return Array(len=8, data=mem[256])
    require stor9 < stor7
    if stor8[address(stor[code.data[3440 len 32] + (4 * stor9)])].length <= 0:
        mem[288] = mem[308 len 12]
        return Array(len=12, data=mem[288])
    mem[192] = uint256(stor8[address(stor[code.data[3440 len 32] + (4 * stor9)])].field_0)
    idx = 192
    s = 0
    while stor8[address(stor[code.data[3440 len 32] + (4 * stor9)])].length + 160 > idx:
        mem[idx + 32] = uint256(stor8[address(stor[code.data[3440 len 32] + (4 * stor9)])][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor8[address(stor[code.data[3440 len 32] + (4 * stor9)])].length, data=mem[192 len stor8[address(stor[code.data[3440 len 32] + (4 * stor9)])].length]), 
}

function underdogInfo(uint256 arg1) payable {
    if arg1 <= 0:
        return 160, 0, 0, 0, 0, 0
    if arg1 > stor7 - stor10:
        return 160, 0, 0, 0, 0, 0
    require arg1 + stor10 - 1 < stor7
    if stor8[address(stor[code.data[3440 len 32] + (4 * arg1 + stor10 - 1)])].length <= 0:
        mem[416] = mem[436 len 12]
        return Array(len=12, data=mem[416]), 
               address(stor[code.data[3440 len 32] + (4 * arg1 + stor10 - 1)]),
               uint256(stor[code.data[3440 len 32] + (4 * arg1 + stor10 - 1) + 1]),
               uint256(stor[code.data[3440 len 32] + (4 * arg1 + stor10 - 1) + 2]),
               uint256(stor[code.data[3440 len 32] + (4 * arg1 + stor10 - 1) + 3])
    mem[192] = uint256(stor8[address(stor[code.data[3440 len 32] + (4 * arg1 + stor10 - 1)])].field_0)
    idx = 192
    s = 0
    while stor8[address(stor[code.data[3440 len 32] + (4 * arg1 + stor10 - 1)])].length + 160 > idx:
        mem[idx + 32] = uint256(stor8[address(stor[code.data[3440 len 32] + (4 * arg1 + stor10 - 1)])][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor8[address(stor[code.data[3440 len 32] + (4 * arg1 + stor10 - 1)])].length, data=mem[192 len stor8[address(stor[code.data[3440 len 32] + (4 * arg1 + stor10 - 1)])].length]), 
           address(stor[code.data[3440 len 32] + (4 * arg1 + stor10 - 1)]),
           uint256(stor[code.data[3440 len 32] + (4 * arg1 + stor10 - 1) + 1]),
           uint256(stor[code.data[3440 len 32] + (4 * arg1 + stor10 - 1) + 2]),
           uint256(stor[code.data[3440 len 32] + (4 * arg1 + stor10 - 1) + 3])
}



}
