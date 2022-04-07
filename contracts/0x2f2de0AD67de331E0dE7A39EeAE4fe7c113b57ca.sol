contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
address stor4;

function _fallback() payable {
    stor2 = 70
    stor3 = 4
    require not msg.value
    stor0 = code.data[3421 len 20]
    stor1 = block.number
    stor4 = code.data[3421 len 20]
    return code.data[105 len 3304]
}



// =====================  Runtime code  =====================


#
#  - bid(uint256 arg1, string arg2)
#
address stor0;
uint256 startBlockNumber;
uint256 sub_1d92dcc7;
uint256 sub_1be65603;
address stor4;
uint256 stor5;
array of struct stor6;
address stor7;
uint256 stor8;
array of struct stor9;
mapping of uint256 pendingReturns;

function sub_1be65603(?) {
    return sub_1be65603
}

function sub_1d92dcc7(?) {
    return sub_1d92dcc7
}

function pendingReturns(address arg1) {
    return pendingReturns[arg1]
}

function sub_2832b757(?) {
    return pendingReturns[address(msg.sender)]
}

function startBlockNumber() {
    return startBlockNumber
}

function _fallback() payable {
    revert
}

function auctionEnded() {
    return block.number >= startBlockNumber + sub_1d92dcc7
}

function sub_115c9bf0(?) {
    require stor0 == msg.sender
    require arg1 > 0
    require arg1 < 10
    sub_1be65603 = arg1
}

function remainingTime() {
    if block.number >= startBlockNumber + sub_1d92dcc7:
        return 0
    return (startBlockNumber + sub_1d92dcc7 - block.number)
}

function minBid() {
    if stor8 > 0:
        return (stor8 + 1)
    if stor5 >= (10^15 * block.number) - (10^15 * startBlockNumber):
        if stor5 - (10^15 * block.number) + (10^15 * startBlockNumber) > 10^15:
            return (stor5 - (10^15 * block.number) + (10^15 * startBlockNumber))
    return 10^15
}

function withdraw(uint256 arg1) {
    require pendingReturns[address(msg.sender)] >= arg1
    pendingReturns[address(msg.sender)] -= arg1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        return 1
    pendingReturns[address(msg.sender)] += arg1
    return 0
}

function winningBid() {
    mem[224] = uint256(stor6.field_0)
    idx = 224
    s = 0
    while stor6.length + 224 > idx + 32:
        mem[idx + 32] = stor6[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor4, 
           stor5,
           Array(len=stor6.length, data=mem[224 len stor6.length + (floor32(stor6.length - 1) + -stor6.length + 32 % 32)])
}

function highestBid() {
    mem[224] = uint256(stor9.field_0)
    idx = 224
    s = 0
    while stor9.length + 224 > idx + 32:
        mem[idx + 32] = stor9[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor7, 
           stor8,
           Array(len=stor9.length, data=mem[224 len stor9.length + (floor32(stor9.length - 1) + -stor9.length + 32 % 32)])
}

function endAuction() {
    if stor8 <= 0:
        return 0
    if block.number < startBlockNumber + sub_1d92dcc7:
        return 0
    mem[224] = uint256(stor9.field_0)
    idx = 224
    s = 0
    while stor9.length + 192 > idx:
        mem[idx + 32] = stor9[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor9.length) + 224] = stor7
    mem[ceil32(stor9.length) + 256] = stor8
    mem[ceil32(stor9.length) + 288] = 192
    stor4 = stor7
    stor5 = stor8
    stor6[].field_0 = Array(len=stor9.length, data=mem[224 len stor9.length])
    mem[ceil32(stor9.length) + 320] = stor7
    mem[ceil32(stor9.length) + 352] = stor8
    mem[ceil32(stor9.length) + 384] = 96
    mem[ceil32(stor9.length) + 416] = stor9.length
    if stor9.length:
        mem[ceil32(stor9.length) + 448] = mem[224]
        mem[ceil32(stor9.length) + 480 len floor32(stor9.length - 1)] = mem[256 len floor32(stor9.length - 1)]
    emit 0x32e1901a: stor7, stor8, Array(len=stor9.length, data=mem[ceil32(stor9.length) + 448 len stor9.length])
    stor7 = 0
    stor8 = 0
    stor9.length = 0
    if 31 < stor9.length:
        idx = 0
        while stor9.length + 31 / 32 > idx:
            stor9[idx].field_0 = 0
            idx = idx + 1
            continue 
    startBlockNumber = block.number
    pendingReturns[stor4] += sub_1be65603 * stor5 / 10
    call stor0 with:
       value stor5 - (sub_1be65603 * stor5 / 10) wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        return 1
    revert
}



}
