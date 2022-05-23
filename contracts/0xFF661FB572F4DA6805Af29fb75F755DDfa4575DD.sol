contract main {




// =====================  Runtime code  =====================


#
#  - getTop(uint256 arg1)
#  - buyTokens()
#
uint256 commissionSum;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 lotteryCount;
address owner;

function balanceSellingOf(address arg1) {
    require lotteryCount - 1 < balanceSellingOf.length
    return stor[(17 * stor8) + ('name', 'balanceSellingOf', 7) - 16][address(arg1)].field_0
}

function balanceOf(address arg1) {
    require lotteryCount - 1 < balanceSellingOf.length
    return stor[(17 * stor8) + ('name', 'balanceSellingOf', 7) - 17][address(arg1)].field_0
}

function sellerIdOf(address arg1) {
    require lotteryCount - 1 < balanceSellingOf.length
    return stor[(17 * stor8) + ('name', 'balanceSellingOf', 7) - 15][address(arg1)].field_0
}

function owner() {
    return owner
}

function lotteryCount() {
    return lotteryCount
}

function commissionSum() {
    return commissionSum
}

function _fallback() payable {
    revert
}

function defaultParams() {
    return stor1, stor2, stor3, stor4, stor5, stor6
}

function updateParams(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    require msg.sender == owner
    stor1 = arg1
    stor2 = arg2
    stor3 = arg3
    stor4 = arg4
    stor5 = arg5
    stor6 = arg6
}

function withdraw() {
    require msg.sender == owner
    require commissionSum > 0
    commissionSum = 0
    call owner with:
       value commissionSum wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function lotteries(uint256 arg1) {
    require arg1 < balanceSellingOf.length
    return balanceSellingOf[arg1].field_1280, 
           balanceSellingOf[arg1].field_1536,
           balanceSellingOf[arg1].field_1792,
           balanceSellingOf[arg1].field_2048,
           bool(balanceSellingOf[arg1].field_2304),
           balanceSellingOf[arg1].field_2304,
           96
}

function disapproveToSell(uint256 arg1) {
    require lotteryCount - 1 < balanceSellingOf.length
    require stor[(17 * stor8) + ('name', 'balanceSellingOf', 7) - 16][address(msg.sender)].field_0 >= arg1
    require stor[(17 * stor8) + ('name', 'balanceSellingOf', 7) - 15][address(msg.sender)].field_0 < balanceSellingOf[stor8].field_0
    stor[sha3((17 * stor8) + ('name', 'balanceSellingOf', 7) - 13) + stor[(17 * stor8) + ('name', 'balanceSellingOf', 7) - 15][address(msg.sender)].field_0].field_0 -= arg1
    stor[(17 * stor8) + ('name', 'balanceSellingOf', 7) - 16][address(msg.sender)].field_0 -= arg1
    balanceSellingOf[stor8].field_0 -= arg1
}

function withdrawForWinner(uint256 arg1) {
    require balanceSellingOf.length > arg1
    require arg1 < balanceSellingOf.length
    require balanceSellingOf[arg1].field_2312 == msg.sender
    require block.timestamp > balanceSellingOf[arg1].field_1280 + balanceSellingOf[arg1].field_2816
    require not balanceSellingOf[arg1].field_2304
    commissionSum += balanceSellingOf[arg1].field_2048 / 100 * balanceSellingOf[arg1].field_4096
    balanceSellingOf[arg1].field_2304 = 1
    call balanceSellingOf[arg1].field_2312 with:
       value balanceSellingOf[arg1].field_2048 - (balanceSellingOf[arg1].field_2048 / 100 * balanceSellingOf[arg1].field_4096) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approveToSell(uint256 arg1) {
    require lotteryCount - 1 < balanceSellingOf.length
    require stor[(17 * stor8) + ('name', 'balanceSellingOf', 7) - 17][address(msg.sender)].field_0 - stor[(17 * stor8) + ('name', 'balanceSellingOf', 7) - 16][address(msg.sender)].field_0 >= arg1
    if not balanceSellingOf[stor8].field_0:
        balanceSellingOf[stor8].field_0++
        stor[sha3((17 * stor8) + ('name', 'balanceSellingOf', 7) - 14) + balanceSellingOf[stor8].field_0].field_0 = msg.sender
        balanceSellingOf[stor8].field_0++
        stor[sha3((17 * stor8) + ('name', 'balanceSellingOf', 7) - 13) + balanceSellingOf[stor8].field_0].field_0 = arg1
        require balanceSellingOf[stor8].field_0 + 1 == balanceSellingOf[stor8].field_0 + 1
        stor[(17 * stor8) + ('name', 'balanceSellingOf', 7) - 15][address(msg.sender)].field_0 = balanceSellingOf[stor8].field_0
    else:
        if stor[(17 * stor8) + ('name', 'balanceSellingOf', 7) - 15][address(msg.sender)].field_0:
            require stor[(17 * stor8) + ('name', 'balanceSellingOf', 7) - 15][address(msg.sender)].field_0 < balanceSellingOf[stor8].field_0
            stor[sha3((17 * stor8) + ('name', 'balanceSellingOf', 7) - 13) + stor[(17 * stor8) + ('name', 'balanceSellingOf', 7) - 15][address(msg.sender)].field_0].field_0 += arg1
        else:
            require 0 < balanceSellingOf[stor8].field_0
            if stor[sha3((17 * stor8) + ('name', 'balanceSellingOf', 7) - 14)].field_0 == msg.sender:
                require stor[(17 * stor8) + ('name', 'balanceSellingOf', 7) - 15][address(msg.sender)].field_0 < balanceSellingOf[stor8].field_0
                stor[sha3((17 * stor8) + ('name', 'balanceSellingOf', 7) - 13) + stor[(17 * stor8) + ('name', 'balanceSellingOf', 7) - 15][address(msg.sender)].field_0].field_0 += arg1
            else:
                balanceSellingOf[stor8].field_0++
                stor[sha3((17 * stor8) + ('name', 'balanceSellingOf', 7) - 14) + balanceSellingOf[stor8].field_0].field_0 = msg.sender
                balanceSellingOf[stor8].field_0++
                stor[sha3((17 * stor8) + ('name', 'balanceSellingOf', 7) - 13) + balanceSellingOf[stor8].field_0].field_0 = arg1
                require balanceSellingOf[stor8].field_0 + 1 == balanceSellingOf[stor8].field_0 + 1
                stor[(17 * stor8) + ('name', 'balanceSellingOf', 7) - 15][address(msg.sender)].field_0 = balanceSellingOf[stor8].field_0
    stor[(17 * stor8) + ('name', 'balanceSellingOf', 7) - 16][address(msg.sender)].field_0 += arg1
    balanceSellingOf[stor8].field_0 += arg1
}

function getSales() {
    require lotteryCount - 1 < balanceSellingOf.length
    if balanceSellingOf[stor8].field_0:
        mem[1120] = stor[sha3((17 * stor8) + ('name', 'balanceSellingOf', 7) - 14)].field_0
        idx = 1120
        s = 0
        while (32 * balanceSellingOf[stor8].field_0) + 1088 > idx:
            mem[idx + 32] = stor[s + sha3((17 * stor8) + ('name', 'balanceSellingOf', 7) - 14)].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if balanceSellingOf[stor8].field_0:
        mem[(32 * balanceSellingOf[stor8].field_0) + 1152] = stor[sha3((17 * stor8) + ('name', 'balanceSellingOf', 7) - 13)].field_0
        idx = (32 * balanceSellingOf[stor8].field_0) + 1152
        s = 0
        while (32 * balanceSellingOf[stor8].field_0) + (32 * balanceSellingOf[stor8].field_0) + 1120 > idx:
            mem[idx + 32] = stor[s + sha3((17 * stor8) + ('name', 'balanceSellingOf', 7) - 13)].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if balanceSellingOf[stor8].field_0:
        idx = (32 * balanceSellingOf[stor8].field_0) + (32 * balanceSellingOf[stor8].field_0) + 1184
        s = 0
        while (32 * balanceSellingOf[stor8].field_0) + (32 * balanceSellingOf[stor8].field_0) + (32 * balanceSellingOf[stor8].field_0) + 1152 > idx:
            mem[idx + 32] = stor[s + sha3((17 * stor8) + ('name', 'balanceSellingOf', 7) - 7)].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * balanceSellingOf[stor8].field_0) + (32 * balanceSellingOf[stor8].field_0) + (32 * balanceSellingOf[stor8].field_0) + 1472 len floor32(balanceSellingOf[stor8].field_0)] = mem[1120 len floor32(balanceSellingOf[stor8].field_0)]
    mem[(64 * balanceSellingOf[stor8].field_0) + (32 * balanceSellingOf[stor8].field_0) + (32 * balanceSellingOf[stor8].field_0) + 1472] = balanceSellingOf[stor8].field_0
    mem[(64 * balanceSellingOf[stor8].field_0) + (32 * balanceSellingOf[stor8].field_0) + (32 * balanceSellingOf[stor8].field_0) + 1504 len floor32(balanceSellingOf[stor8].field_0)] = mem[(32 * balanceSellingOf[stor8].field_0) + 1152 len floor32(balanceSellingOf[stor8].field_0)]
    return Array(len=balanceSellingOf[stor8].field_0, data=mem[1120 len floor32(balanceSellingOf[stor8].field_0)], mem[(32 * balanceSellingOf[stor8].field_0) + (32 * balanceSellingOf[stor8].field_0) + (32 * balanceSellingOf[stor8].field_0) + floor32(balanceSellingOf[stor8].field_0) + 1472 len (32 * balanceSellingOf[stor8].field_0) + (32 * balanceSellingOf[stor8].field_0) + -floor32(balanceSellingOf[stor8].field_0) + 32]), 
           (32 * balanceSellingOf[stor8].field_0) + 96
}

function getLotteryAtIndex(uint256 arg1) {
    require arg1 < lotteryCount
    require arg1 < balanceSellingOf.length
    if not balanceSellingOf[arg1].field_768:
        if not balanceSellingOf[arg1].field_1024:
            if balanceSellingOf[arg1].field_2560:
                mem[(32 * balanceSellingOf[arg1].field_768) + (32 * balanceSellingOf[arg1].field_1024) + 1184] = stor[sha3((17 * arg1) + ('name', 'balanceSellingOf', 7) + 10)].field_0
                idx = (32 * balanceSellingOf[arg1].field_768) + (32 * balanceSellingOf[arg1].field_1024) + 1184
                s = 0
                while (32 * balanceSellingOf[arg1].field_768) + (32 * balanceSellingOf[arg1].field_1024) + (32 * balanceSellingOf[arg1].field_2560) + 1152 > idx:
                    mem[idx + 32] = stor[s + sha3((17 * arg1) + ('name', 'balanceSellingOf', 7) + 10)].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            mem[(32 * balanceSellingOf[arg1].field_768) + (32 * balanceSellingOf[arg1].field_1024) + (32 * balanceSellingOf[arg1].field_2560) + 1824 len floor32(balanceSellingOf[arg1].field_2560)] = mem[(32 * balanceSellingOf[arg1].field_768) + (32 * balanceSellingOf[arg1].field_1024) + 1184 len floor32(balanceSellingOf[arg1].field_2560)]
            return balanceSellingOf[arg1].field_1280, 
                   balanceSellingOf[arg1].field_1536,
                   balanceSellingOf[arg1].field_1792,
                   balanceSellingOf[arg1].field_2048,
                   balanceSellingOf[arg1].field_2304,
                   bool(balanceSellingOf[arg1].field_2304),
                   Array(len=balanceSellingOf[arg1].field_2560, data=mem[(32 * balanceSellingOf[arg1].field_768) + (32 * balanceSellingOf[arg1].field_1024) + 1184 len floor32(balanceSellingOf[arg1].field_2560)], mem[(32 * balanceSellingOf[arg1].field_768) + (32 * balanceSellingOf[arg1].field_1024) + (32 * balanceSellingOf[arg1].field_2560) + floor32(balanceSellingOf[arg1].field_2560) + 1824 len (32 * balanceSellingOf[arg1].field_2560) - floor32(balanceSellingOf[arg1].field_2560)]),
                   balanceSellingOf[arg1].field_2816,
                   balanceSellingOf[arg1].field_3072,
                   balanceSellingOf[arg1].field_3328,
                   balanceSellingOf[arg1].field_3584,
                   balanceSellingOf[arg1].field_3840,
                   balanceSellingOf[arg1].field_4096
        idx = (32 * balanceSellingOf[arg1].field_768) + 1152
        s = 0
        while (32 * balanceSellingOf[arg1].field_768) + (32 * balanceSellingOf[arg1].field_1024) + 1120 > idx:
            mem[idx + 32] = stor[s + sha3((17 * arg1) + ('name', 'balanceSellingOf', 7) + 4)].field_256
            idx = idx + 32
            s = s + 1
            continue 
    else:
        idx = 1120
        s = 0
        while (32 * balanceSellingOf[arg1].field_768) + 1088 > idx:
            mem[idx + 32] = stor[s + sha3((17 * arg1) + ('name', 'balanceSellingOf', 7) + 3)].field_256
            idx = idx + 32
            s = s + 1
            continue 
        if balanceSellingOf[arg1].field_1024:
            idx = (32 * balanceSellingOf[arg1].field_768) + 1152
            s = 0
            while (32 * balanceSellingOf[arg1].field_768) + (32 * balanceSellingOf[arg1].field_1024) + 1120 > idx:
                mem[idx + 32] = stor[s + sha3((17 * arg1) + ('name', 'balanceSellingOf', 7) + 4)].field_256
                idx = idx + 32
                s = s + 1
                continue 
    if not balanceSellingOf[arg1].field_2560:
        mem[(32 * balanceSellingOf[arg1].field_768) + (32 * balanceSellingOf[arg1].field_1024) + (32 * balanceSellingOf[arg1].field_2560) + 1824 len floor32(balanceSellingOf[arg1].field_2560)] = mem[(32 * balanceSellingOf[arg1].field_768) + (32 * balanceSellingOf[arg1].field_1024) + 1184 len floor32(balanceSellingOf[arg1].field_2560)]
        return balanceSellingOf[arg1].field_1280, 
               balanceSellingOf[arg1].field_1536,
               balanceSellingOf[arg1].field_1792,
               balanceSellingOf[arg1].field_2048,
               balanceSellingOf[arg1].field_2304,
               bool(balanceSellingOf[arg1].field_2304),
               Array(len=balanceSellingOf[arg1].field_2560, data=mem[(32 * balanceSellingOf[arg1].field_768) + (32 * balanceSellingOf[arg1].field_1024) + 1184 len floor32(balanceSellingOf[arg1].field_2560)], mem[(32 * balanceSellingOf[arg1].field_768) + (32 * balanceSellingOf[arg1].field_1024) + (32 * balanceSellingOf[arg1].field_2560) + floor32(balanceSellingOf[arg1].field_2560) + 1824 len (32 * balanceSellingOf[arg1].field_2560) - floor32(balanceSellingOf[arg1].field_2560)]),
               balanceSellingOf[arg1].field_2816,
               balanceSellingOf[arg1].field_3072,
               balanceSellingOf[arg1].field_3328,
               balanceSellingOf[arg1].field_3584,
               balanceSellingOf[arg1].field_3840,
               balanceSellingOf[arg1].field_4096
    mem[(32 * balanceSellingOf[arg1].field_768) + (32 * balanceSellingOf[arg1].field_1024) + 1184] = stor[sha3((17 * arg1) + ('name', 'balanceSellingOf', 7) + 10)].field_0
    idx = (32 * balanceSellingOf[arg1].field_768) + (32 * balanceSellingOf[arg1].field_1024) + 1184
    s = 0
    while (32 * balanceSellingOf[arg1].field_768) + (32 * balanceSellingOf[arg1].field_1024) + (32 * balanceSellingOf[arg1].field_2560) + 1152 > idx:
        mem[idx + 32] = stor[s + sha3((17 * arg1) + ('name', 'balanceSellingOf', 7) + 10)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * balanceSellingOf[arg1].field_768) + (32 * balanceSellingOf[arg1].field_1024) + (32 * balanceSellingOf[arg1].field_2560) + 1824 len floor32(balanceSellingOf[arg1].field_2560)] = mem[(32 * balanceSellingOf[arg1].field_768) + (32 * balanceSellingOf[arg1].field_1024) + 1184 len floor32(balanceSellingOf[arg1].field_2560)]
    return balanceSellingOf[arg1].field_1280, 
           balanceSellingOf[arg1].field_1536,
           balanceSellingOf[arg1].field_1792,
           balanceSellingOf[arg1].field_2048,
           address(balanceSellingOf[arg1].field_2312),
           bool(balanceSellingOf[arg1].field_2304),
           Array(len=balanceSellingOf[arg1].field_2560, data=mem[(32 * balanceSellingOf[arg1].field_768) + (32 * balanceSellingOf[arg1].field_1024) + 1184 len floor32(balanceSellingOf[arg1].field_2560)], mem[(32 * balanceSellingOf[arg1].field_768) + (32 * balanceSellingOf[arg1].field_1024) + (32 * balanceSellingOf[arg1].field_2560) + floor32(balanceSellingOf[arg1].field_2560) + 1824 len (32 * balanceSellingOf[arg1].field_2560) - floor32(balanceSellingOf[arg1].field_2560)]),
           balanceSellingOf[arg1].field_2816,
           balanceSellingOf[arg1].field_3072,
           balanceSellingOf[arg1].field_3328,
           balanceSellingOf[arg1].field_3584,
           balanceSellingOf[arg1].field_3840,
           balanceSellingOf[arg1].field_4096
}



}
