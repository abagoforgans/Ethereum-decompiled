contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
array of uint256 stor2;
array of uint256 stor3;
uint8 stor4;
uint256 stor5;
mapping of uint256 stor6;
uint256 stor8;

function _fallback() {
    mem[96 len -13355] = code.data[13962 len -13355]
    mem[64] = -13259
    require mem[236 len 20]
    stor1 = mem[236 len 20]
    stor2[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor3[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor4 = mem[191 len 1]
    stor5 = mem[192] * 10^stor4
    stor0 = stor5
    stor6[address(mem[224])] = stor0
    stor8 = 0
    return code.data[607 len 13355]
}



// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - itemTransfer(address arg1)
#  - balanceOf(address arg1)
#  - transfer(address arg1, uint256 arg2)
#  - itemBalance(address arg1)
#
uint256 totalSupply;
array of uint256 stor1;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 initial_supply;
mapping of uint256 balances;
mapping of uint256 allownce;
uint256 stor8;
array of struct stor9;
array of struct stor10;
mapping of struct stor11;
array of struct stor12;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function initial_supply() {
    return initial_supply
}

function balances(address arg1) {
    return balances[arg1]
}

function decimals() {
    return decimals
}

function owner() {
    return address(stor1.length)
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allownce(address arg1, address arg2) {
    return allownce[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    allownce[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == address(stor1.length)
    require arg1
    emit OwnershipTransferred(address(stor1.length), arg1);
    address(stor1.length) = arg1
}

function burn(uint256 arg1) {
    require balances[address(msg.sender)] >= arg1
    require arg1 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function increase(uint256 arg1) {
    require msg.sender == address(stor1.length)
    if balances[address(msg.sender)] + arg1 <= balances[address(msg.sender)]:
        return 0
    require totalSupply + arg1 >= totalSupply
    totalSupply += arg1
    require balances[address(msg.sender)] + arg1 >= balances[address(msg.sender)]
    balances[address(msg.sender)] += arg1
    emit Increase(arg1, msg.sender);
    return 1
}

function sub_8517ffa6(?) {
    require arg1 >= 0
    require arg2 >= 0
    if address(stor11[arg1].field_0) != msg.sender:
        require address(stor11[arg1].field_256) == msg.sender
    require arg2 < stor12[arg1].field_0
    require stor12[arg1][2 * uint8(arg2)].field_0 > 0
    require arg2 < stor12[arg1].field_0
    require arg2 < stor12[arg1].field_0
    return address(stor11[arg1].field_0), 
           address(stor11[arg1].field_256),
           stor12[arg1][2 * uint8(arg2)].field_0,
           stor12[arg1][2 * uint8(arg2)].field_256
}

function getOption(uint256 arg1) {
    require arg1 >= 0
    if address(stor11[arg1].field_0) != msg.sender:
        require address(stor11[arg1].field_256) == msg.sender
    idx = 0
    s = 0
    t = 0
    while idx < stor12[arg1].field_0:
        require idx < stor12[arg1].field_0
        if stor12[arg1][idx].field_0 <= 0:
            mem[0] = arg1
            mem[32] = 12
            idx = idx + 1
            s = s
            t = t
            continue 
        require idx < stor12[arg1].field_0
        if stor12[arg1][idx].field_256 <= block.timestamp:
            mem[0] = arg1
            mem[32] = 12
            idx = idx + 1
            s = s
            t = t
            continue 
        require idx < stor12[arg1].field_0
        require s + stor12[arg1][idx].field_0 >= s
        if s + stor12[arg1][idx].field_0 <= s:
            mem[0] = arg1
            mem[32] = 12
            idx = idx + 1
            s = s
            t = t
            continue 
        require idx < stor12[arg1].field_0
        require s + stor12[arg1][idx].field_0 >= s
        mem[0] = arg1
        mem[32] = 12
        idx = idx + 1
        s = s + stor12[arg1][idx].field_0
        t = t + 1
        continue 
    return address(stor11[arg1].field_0), address(stor11[arg1].field_256), t << 248, s
}

function sub_3c5f0465(?) {
    require arg1
    require arg2 >= 0
    idx = 0
    while idx < stor10[address(arg1)].field_0:
        require idx < stor10[address(arg1)].field_0
        if stor10[address(arg1)][idx].field_0 == arg2:
            require idx < stor10[address(arg1)].field_0
            if address(stor11[stor10[address(arg1)][idx].field_0].field_0) == msg.sender:
                idx = 0
                while idx < stor12[arg2].field_0:
                    require idx < stor12[arg2].field_0
                    if stor12[arg2][idx].field_0 > 0:
                        require idx < stor12[arg2].field_0
                        if stor12[arg2][idx].field_256 > block.timestamp:
                            require idx < stor12[arg2].field_0
                            require balances[address(msg.sender)] + stor12[arg2][idx].field_0 >= balances[address(msg.sender)]
                            if balances[address(msg.sender)] + stor12[arg2][idx].field_0 > balances[address(msg.sender)]:
                                require idx < stor12[arg2].field_0
                                require balances[address(msg.sender)] + stor12[arg2][idx].field_0 >= balances[address(msg.sender)]
                                balances[address(msg.sender)] += stor12[arg2][idx].field_0
                                require idx < stor12[arg2].field_0
                                stor12[arg2][idx].field_0 = 0
                    mem[0] = arg2
                    mem[32] = 12
                    idx = idx + 1
                    continue 
                return 1
        mem[0] = arg1
        mem[32] = 10
        idx = idx + 1
        continue 
    return 0
}

function sub_34bd94ba(?) {
    idx = 0
    s = 0
    while idx < stor9[address(msg.sender)].field_0:
        require idx < stor9[address(msg.sender)].field_0
        if var21005 >= stor12[stor[idx + sha3(idx)]].field_0:
            mem[0] = msg.sender
            mem[32] = 9
            idx = idx + 1
            s = s
            continue 
        require idx < stor9[address(msg.sender)].field_0
        require var25006 < stor12[stor[idx + sha3(var25002)]].field_0
        if stor[(2 * var27001) + sha3(var27002)] <= 0:
            if not var29001:
                require idx < stor9[address(msg.sender)].field_0
                t = var29002
                while t + 1 < stor12[stor9[address(msg.sender)][idx].field_0].field_0:
                    require idx < stor9[address(msg.sender)].field_0
                    require t + 1 < stor12[stor9[address(msg.sender)][idx].field_0].field_0
                    if stor12[stor9[address(msg.sender)][idx].field_0][t + 1].field_0 <= 0:
                        require idx < stor9[address(msg.sender)].field_0
                        mem[0] = stor9[address(msg.sender)][idx].field_0
                        mem[32] = 12
                        t = t + 1
                        continue 
                    require idx < stor9[address(msg.sender)].field_0
                    require t + 1 < stor12[stor9[address(msg.sender)][idx].field_0].field_0
                    if stor12[stor9[address(msg.sender)][idx].field_0][t + 1].field_256 <= block.timestamp:
                        require idx < stor9[address(msg.sender)].field_0
                        mem[0] = stor9[address(msg.sender)][idx].field_0
                        mem[32] = 12
                        t = t + 1
                        continue 
                    require idx < stor9[address(msg.sender)].field_0
                    require uint8(s) < 0
                    mem[(32 * uint8(s)) + 128] = stor9[address(msg.sender)][idx].field_0
                    require idx + 1 < stor9[address(msg.sender)].field_0
                    mem[0] = stor9[address(msg.sender)][idx].field_256
                    mem[32] = 12
                    idx = idx + 1
                    s = s + 1
                    continue 
                mem[0] = msg.sender
                mem[32] = 9
                idx = idx + 1
                s = s
                continue 
        else:
            require idx < stor9[address(msg.sender)].field_0
            require var31006 < stor12[stor[idx + sha3(var31002)]].field_0
            if not var35001:
                require idx < stor9[address(msg.sender)].field_0
                t = var35002
                while t + 1 < stor12[stor9[address(msg.sender)][idx].field_0].field_0:
                    require idx < stor9[address(msg.sender)].field_0
                    require t + 1 < stor12[stor9[address(msg.sender)][idx].field_0].field_0
                    if stor12[stor9[address(msg.sender)][idx].field_0][t + 1].field_0 <= 0:
                        require idx < stor9[address(msg.sender)].field_0
                        mem[0] = stor9[address(msg.sender)][idx].field_0
                        mem[32] = 12
                        t = t + 1
                        continue 
                    require idx < stor9[address(msg.sender)].field_0
                    require t + 1 < stor12[stor9[address(msg.sender)][idx].field_0].field_0
                    if stor12[stor9[address(msg.sender)][idx].field_0][t + 1].field_256 <= block.timestamp:
                        require idx < stor9[address(msg.sender)].field_0
                        mem[0] = stor9[address(msg.sender)][idx].field_0
                        mem[32] = 12
                        t = t + 1
                        continue 
                    require idx < stor9[address(msg.sender)].field_0
                    require uint8(s) < 0
                    mem[(32 * uint8(s)) + 128] = stor9[address(msg.sender)][idx].field_0
                    require idx + 1 < stor9[address(msg.sender)].field_0
                    mem[0] = stor9[address(msg.sender)][idx].field_256
                    mem[32] = 12
                    idx = idx + 1
                    s = s + 1
                    continue 
                mem[0] = msg.sender
                mem[32] = 9
                idx = idx + 1
                s = s
                continue 
        require idx < stor9[address(msg.sender)].field_0
        require uint8(s) < 0
        mem[(32 * uint8(s)) + 128] = stor9[address(msg.sender)][idx].field_0
        mem[0] = msg.sender
        mem[32] = 9
        idx = idx + 1
        s = s + 1
        continue 
    return ''
}

function sub_2142ca5e(?) {
    idx = 0
    s = 0
    while idx < stor10[address(msg.sender)].field_0:
        require idx < stor10[address(msg.sender)].field_0
        if var21005 >= stor12[stor[idx + sha3(idx)]].field_0:
            mem[0] = msg.sender
            mem[32] = 10
            idx = idx + 1
            s = s
            continue 
        require idx < stor10[address(msg.sender)].field_0
        require var25006 < stor12[stor[idx + sha3(var25002)]].field_0
        if stor[(2 * var27001) + sha3(var27002)] <= 0:
            if not var29001:
                require idx < stor10[address(msg.sender)].field_0
                t = var29002
                while t + 1 < stor12[stor10[address(msg.sender)][idx].field_0].field_0:
                    require idx < stor10[address(msg.sender)].field_0
                    require t + 1 < stor12[stor10[address(msg.sender)][idx].field_0].field_0
                    if stor12[stor10[address(msg.sender)][idx].field_0][t + 1].field_0 <= 0:
                        require idx < stor10[address(msg.sender)].field_0
                        mem[0] = stor10[address(msg.sender)][idx].field_0
                        mem[32] = 12
                        t = t + 1
                        continue 
                    require idx < stor10[address(msg.sender)].field_0
                    require t + 1 < stor12[stor10[address(msg.sender)][idx].field_0].field_0
                    if stor12[stor10[address(msg.sender)][idx].field_0][t + 1].field_256 <= block.timestamp:
                        require idx < stor10[address(msg.sender)].field_0
                        mem[0] = stor10[address(msg.sender)][idx].field_0
                        mem[32] = 12
                        t = t + 1
                        continue 
                    require idx < stor10[address(msg.sender)].field_0
                    require uint8(s) < 0
                    mem[(32 * uint8(s)) + 128] = stor10[address(msg.sender)][idx].field_0
                    require idx + 1 < stor10[address(msg.sender)].field_0
                    mem[0] = stor10[address(msg.sender)][idx].field_256
                    mem[32] = 12
                    idx = idx + 1
                    s = s + 1
                    continue 
                mem[0] = msg.sender
                mem[32] = 10
                idx = idx + 1
                s = s
                continue 
        else:
            require idx < stor10[address(msg.sender)].field_0
            require var31006 < stor12[stor[idx + sha3(var31002)]].field_0
            if not var35001:
                require idx < stor10[address(msg.sender)].field_0
                t = var35002
                while t + 1 < stor12[stor10[address(msg.sender)][idx].field_0].field_0:
                    require idx < stor10[address(msg.sender)].field_0
                    require t + 1 < stor12[stor10[address(msg.sender)][idx].field_0].field_0
                    if stor12[stor10[address(msg.sender)][idx].field_0][t + 1].field_0 <= 0:
                        require idx < stor10[address(msg.sender)].field_0
                        mem[0] = stor10[address(msg.sender)][idx].field_0
                        mem[32] = 12
                        t = t + 1
                        continue 
                    require idx < stor10[address(msg.sender)].field_0
                    require t + 1 < stor12[stor10[address(msg.sender)][idx].field_0].field_0
                    if stor12[stor10[address(msg.sender)][idx].field_0][t + 1].field_256 <= block.timestamp:
                        require idx < stor10[address(msg.sender)].field_0
                        mem[0] = stor10[address(msg.sender)][idx].field_0
                        mem[32] = 12
                        t = t + 1
                        continue 
                    require idx < stor10[address(msg.sender)].field_0
                    require uint8(s) < 0
                    mem[(32 * uint8(s)) + 128] = stor10[address(msg.sender)][idx].field_0
                    require idx + 1 < stor10[address(msg.sender)].field_0
                    mem[0] = stor10[address(msg.sender)][idx].field_256
                    mem[32] = 12
                    idx = idx + 1
                    s = s + 1
                    continue 
                mem[0] = msg.sender
                mem[32] = 10
                idx = idx + 1
                s = s
                continue 
        require idx < stor10[address(msg.sender)].field_0
        require uint8(s) < 0
        mem[(32 * uint8(s)) + 128] = stor10[address(msg.sender)][idx].field_0
        mem[0] = msg.sender
        mem[32] = 10
        idx = idx + 1
        s = s + 1
        continue 
    return ''
}

function setItemOptions(address arg1, uint256 arg2, uint256 arg3, uint8 arg4) {
    require arg1
    require arg2 > 0
    require arg4 > 0
    if not arg2:
        require arg2 * arg4 > 0
        require arg2 * arg4 <= balances[address(msg.sender)]
        require balances[address(msg.sender)] - (arg2 * arg4) >= 0
        require balances[address(arg1)] + (arg2 * arg4) >= balances[address(arg1)]
        require balances[address(arg1)] + (arg2 * arg4) > balances[address(arg1)]
        stor9[address(msg.sender)].field_0++
        if not stor9[address(msg.sender)].field_0 > stor9[address(msg.sender)].field_0 + 1:
            stor9[address(msg.sender)][stor9[address(msg.sender)].field_0].field_0 = stor8
            stor10[address(arg1)].field_0++
            if not stor10[address(arg1)].field_0 > stor10[address(arg1)].field_0 + 1:
                stor10[address(arg1)][stor10[address(arg1)].field_0].field_0 = stor8
                mem[64] = 160
                address(stor11[stor8].field_0) = msg.sender
                address(stor11[stor8].field_256) = arg1
                require arg2 * arg4 <= balances[address(msg.sender)]
                balances[address(msg.sender)] += -1 * arg2 * arg4
                idx = 0
                s = arg3
                while uint8(idx) < arg4:
                    require s + (8760 * 24 * 3600) >= s
                    mem[32] = 12
                    stor12[stor8].field_0++
                    if not stor12[stor8].field_0 > stor12[stor8].field_0 + 1:
                        mem[0] = sha3(stor8, 12)
                        _200 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_200] = arg2
                        mem[_200 + 32] = s + (8760 * 24 * 3600)
                    else:
                        t = sha3(sha3(stor8, 12)) + (2 * stor12[stor8].field_0 + 1)
                        while sha3(sha3(stor8, 12)) + (2 * stor12[stor8].field_0) > t:
                            stor[t] = 0
                            uint256(stor1[t]) = 0
                            t = t + 2
                            continue 
                        mem[0] = sha3(stor8, 12)
                        _332 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_332] = arg2
                        mem[_332 + 32] = s + (8760 * 24 * 3600)
                    stor12[stor8][stor12[stor8].field_0].field_0 = arg2
                    stor12[stor8][stor12[stor8].field_0].field_256 = s + (8760 * 24 * 3600)
                    idx = idx + 1
                    s = s + (8760 * 24 * 3600)
                    continue 
            else:
                idx = stor10[address(arg1)].field_0 + 1
                while stor10[address(arg1)].field_0 > idx:
                    stor10[address(arg1)][idx].field_0 = 0
                    idx = idx + 1
                    continue 
                stor10[address(arg1)][stor10[address(arg1)].field_0].field_0 = stor8
                mem[64] = 160
                address(stor11[stor8].field_0) = msg.sender
                address(stor11[stor8].field_256) = arg1
                require arg2 * arg4 <= balances[address(msg.sender)]
                balances[address(msg.sender)] += -1 * arg2 * arg4
                idx = 0
                s = arg3
                while uint8(idx) < arg4:
                    require s + (8760 * 24 * 3600) >= s
                    mem[32] = 12
                    stor12[stor8].field_0++
                    if not stor12[stor8].field_0 > stor12[stor8].field_0 + 1:
                        mem[0] = sha3(stor8, 12)
                        _356 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_356] = arg2
                        mem[_356 + 32] = s + (8760 * 24 * 3600)
                    else:
                        t = sha3(sha3(stor8, 12)) + (2 * stor12[stor8].field_0 + 1)
                        while sha3(sha3(stor8, 12)) + (2 * stor12[stor8].field_0) > t:
                            stor[t] = 0
                            uint256(stor1[t]) = 0
                            t = t + 2
                            continue 
                        mem[0] = sha3(stor8, 12)
                        _420 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_420] = arg2
                        mem[_420 + 32] = s + (8760 * 24 * 3600)
                    stor12[stor8][stor12[stor8].field_0].field_0 = arg2
                    stor12[stor8][stor12[stor8].field_0].field_256 = s + (8760 * 24 * 3600)
                    idx = idx + 1
                    s = s + (8760 * 24 * 3600)
                    continue 
        else:
            idx = stor9[address(msg.sender)].field_0 + 1
            while stor9[address(msg.sender)].field_0 > idx:
                stor9[address(msg.sender)][idx].field_0 = 0
                idx = idx + 1
                continue 
            stor9[address(msg.sender)][stor9[address(msg.sender)].field_0].field_0 = stor8
            stor10[address(arg1)].field_0++
            if not stor10[address(arg1)].field_0 > stor10[address(arg1)].field_0 + 1:
                stor10[address(arg1)][stor10[address(arg1)].field_0].field_0 = stor8
                mem[64] = 160
                address(stor11[stor8].field_0) = msg.sender
                address(stor11[stor8].field_256) = arg1
                require arg2 * arg4 <= balances[address(msg.sender)]
                balances[address(msg.sender)] += -1 * arg2 * arg4
                idx = 0
                s = arg3
                while uint8(idx) < arg4:
                    require s + (8760 * 24 * 3600) >= s
                    mem[32] = 12
                    stor12[stor8].field_0++
                    if not stor12[stor8].field_0 > stor12[stor8].field_0 + 1:
                        mem[0] = sha3(stor8, 12)
                        _360 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_360] = arg2
                        mem[_360 + 32] = s + (8760 * 24 * 3600)
                    else:
                        t = sha3(sha3(stor8, 12)) + (2 * stor12[stor8].field_0 + 1)
                        while sha3(sha3(stor8, 12)) + (2 * stor12[stor8].field_0) > t:
                            stor[t] = 0
                            uint256(stor1[t]) = 0
                            t = t + 2
                            continue 
                        mem[0] = sha3(stor8, 12)
                        _424 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_424] = arg2
                        mem[_424 + 32] = s + (8760 * 24 * 3600)
                    stor12[stor8][stor12[stor8].field_0].field_0 = arg2
                    stor12[stor8][stor12[stor8].field_0].field_256 = s + (8760 * 24 * 3600)
                    idx = idx + 1
                    s = s + (8760 * 24 * 3600)
                    continue 
            else:
                idx = stor10[address(arg1)].field_0 + 1
                while stor10[address(arg1)].field_0 > idx:
                    stor10[address(arg1)][idx].field_0 = 0
                    idx = idx + 1
                    continue 
                stor10[address(arg1)][stor10[address(arg1)].field_0].field_0 = stor8
                mem[64] = 160
                address(stor11[stor8].field_0) = msg.sender
                address(stor11[stor8].field_256) = arg1
                require arg2 * arg4 <= balances[address(msg.sender)]
                balances[address(msg.sender)] += -1 * arg2 * arg4
                idx = 0
                s = arg3
                while uint8(idx) < arg4:
                    require s + (8760 * 24 * 3600) >= s
                    mem[32] = 12
                    stor12[stor8].field_0++
                    if not stor12[stor8].field_0 > stor12[stor8].field_0 + 1:
                        mem[0] = sha3(stor8, 12)
                        _438 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_438] = arg2
                        mem[_438 + 32] = s + (8760 * 24 * 3600)
                    else:
                        t = sha3(sha3(stor8, 12)) + (2 * stor12[stor8].field_0 + 1)
                        while sha3(sha3(stor8, 12)) + (2 * stor12[stor8].field_0) > t:
                            stor[t] = 0
                            uint256(stor1[t]) = 0
                            t = t + 2
                            continue 
                        mem[0] = sha3(stor8, 12)
                        _454 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_454] = arg2
                        mem[_454 + 32] = s + (8760 * 24 * 3600)
                    stor12[stor8][stor12[stor8].field_0].field_0 = arg2
                    stor12[stor8][stor12[stor8].field_0].field_256 = s + (8760 * 24 * 3600)
                    idx = idx + 1
                    s = s + (8760 * 24 * 3600)
                    continue 
    else:
        require arg2
        require arg2 * arg4 / arg2 == arg4
        require arg2 * arg4 > 0
        require arg2 * arg4 <= balances[address(msg.sender)]
        require balances[address(msg.sender)] - (arg2 * arg4) >= 0
        require balances[address(arg1)] + (arg2 * arg4) >= balances[address(arg1)]
        require balances[address(arg1)] + (arg2 * arg4) > balances[address(arg1)]
        stor9[address(msg.sender)].field_0++
        if not stor9[address(msg.sender)].field_0 > stor9[address(msg.sender)].field_0 + 1:
            stor9[address(msg.sender)][stor9[address(msg.sender)].field_0].field_0 = stor8
            stor10[address(arg1)].field_0++
            if not stor10[address(arg1)].field_0 > stor10[address(arg1)].field_0 + 1:
                stor10[address(arg1)][stor10[address(arg1)].field_0].field_0 = stor8
                mem[64] = 160
                address(stor11[stor8].field_0) = msg.sender
                address(stor11[stor8].field_256) = arg1
                require arg2 * arg4 <= balances[address(msg.sender)]
                balances[address(msg.sender)] += -1 * arg2 * arg4
                idx = 0
                s = arg3
                while uint8(idx) < arg4:
                    require s + (8760 * 24 * 3600) >= s
                    mem[32] = 12
                    stor12[stor8].field_0++
                    if not stor12[stor8].field_0 > stor12[stor8].field_0 + 1:
                        mem[0] = sha3(stor8, 12)
                        _205 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_205] = arg2
                        mem[_205 + 32] = s + (8760 * 24 * 3600)
                    else:
                        t = sha3(sha3(stor8, 12)) + (2 * stor12[stor8].field_0 + 1)
                        while sha3(sha3(stor8, 12)) + (2 * stor12[stor8].field_0) > t:
                            stor[t] = 0
                            uint256(stor1[t]) = 0
                            t = t + 2
                            continue 
                        mem[0] = sha3(stor8, 12)
                        _342 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_342] = arg2
                        mem[_342 + 32] = s + (8760 * 24 * 3600)
                    stor12[stor8][stor12[stor8].field_0].field_0 = arg2
                    stor12[stor8][stor12[stor8].field_0].field_256 = s + (8760 * 24 * 3600)
                    idx = idx + 1
                    s = s + (8760 * 24 * 3600)
                    continue 
            else:
                idx = stor10[address(arg1)].field_0 + 1
                while stor10[address(arg1)].field_0 > idx:
                    stor10[address(arg1)][idx].field_0 = 0
                    idx = idx + 1
                    continue 
                stor10[address(arg1)][stor10[address(arg1)].field_0].field_0 = stor8
                mem[64] = 160
                address(stor11[stor8].field_0) = msg.sender
                address(stor11[stor8].field_256) = arg1
                require arg2 * arg4 <= balances[address(msg.sender)]
                balances[address(msg.sender)] += -1 * arg2 * arg4
                idx = 0
                s = arg3
                while uint8(idx) < arg4:
                    require s + (8760 * 24 * 3600) >= s
                    mem[32] = 12
                    stor12[stor8].field_0++
                    if not stor12[stor8].field_0 > stor12[stor8].field_0 + 1:
                        mem[0] = sha3(stor8, 12)
                        _364 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_364] = arg2
                        mem[_364 + 32] = s + (8760 * 24 * 3600)
                    else:
                        t = sha3(sha3(stor8, 12)) + (2 * stor12[stor8].field_0 + 1)
                        while sha3(sha3(stor8, 12)) + (2 * stor12[stor8].field_0) > t:
                            stor[t] = 0
                            uint256(stor1[t]) = 0
                            t = t + 2
                            continue 
                        mem[0] = sha3(stor8, 12)
                        _428 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_428] = arg2
                        mem[_428 + 32] = s + (8760 * 24 * 3600)
                    stor12[stor8][stor12[stor8].field_0].field_0 = arg2
                    stor12[stor8][stor12[stor8].field_0].field_256 = s + (8760 * 24 * 3600)
                    idx = idx + 1
                    s = s + (8760 * 24 * 3600)
                    continue 
        else:
            idx = stor9[address(msg.sender)].field_0 + 1
            while stor9[address(msg.sender)].field_0 > idx:
                stor9[address(msg.sender)][idx].field_0 = 0
                idx = idx + 1
                continue 
            stor9[address(msg.sender)][stor9[address(msg.sender)].field_0].field_0 = stor8
            stor10[address(arg1)].field_0++
            if not stor10[address(arg1)].field_0 > stor10[address(arg1)].field_0 + 1:
                stor10[address(arg1)][stor10[address(arg1)].field_0].field_0 = stor8
                mem[64] = 160
                address(stor11[stor8].field_0) = msg.sender
                address(stor11[stor8].field_256) = arg1
                require arg2 * arg4 <= balances[address(msg.sender)]
                balances[address(msg.sender)] += -1 * arg2 * arg4
                idx = 0
                s = arg3
                while uint8(idx) < arg4:
                    require s + (8760 * 24 * 3600) >= s
                    mem[32] = 12
                    stor12[stor8].field_0++
                    if not stor12[stor8].field_0 > stor12[stor8].field_0 + 1:
                        mem[0] = sha3(stor8, 12)
                        _368 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_368] = arg2
                        mem[_368 + 32] = s + (8760 * 24 * 3600)
                    else:
                        t = sha3(sha3(stor8, 12)) + (2 * stor12[stor8].field_0 + 1)
                        while sha3(sha3(stor8, 12)) + (2 * stor12[stor8].field_0) > t:
                            stor[t] = 0
                            uint256(stor1[t]) = 0
                            t = t + 2
                            continue 
                        mem[0] = sha3(stor8, 12)
                        _432 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_432] = arg2
                        mem[_432 + 32] = s + (8760 * 24 * 3600)
                    stor12[stor8][stor12[stor8].field_0].field_0 = arg2
                    stor12[stor8][stor12[stor8].field_0].field_256 = s + (8760 * 24 * 3600)
                    idx = idx + 1
                    s = s + (8760 * 24 * 3600)
                    continue 
            else:
                idx = stor10[address(arg1)].field_0 + 1
                while stor10[address(arg1)].field_0 > idx:
                    stor10[address(arg1)][idx].field_0 = 0
                    idx = idx + 1
                    continue 
                stor10[address(arg1)][stor10[address(arg1)].field_0].field_0 = stor8
                mem[64] = 160
                address(stor11[stor8].field_0) = msg.sender
                address(stor11[stor8].field_256) = arg1
                require arg2 * arg4 <= balances[address(msg.sender)]
                balances[address(msg.sender)] += -1 * arg2 * arg4
                idx = 0
                s = arg3
                while uint8(idx) < arg4:
                    require s + (8760 * 24 * 3600) >= s
                    mem[32] = 12
                    stor12[stor8].field_0++
                    if not stor12[stor8].field_0 > stor12[stor8].field_0 + 1:
                        mem[0] = sha3(stor8, 12)
                        _442 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_442] = arg2
                        mem[_442 + 32] = s + (8760 * 24 * 3600)
                    else:
                        t = sha3(sha3(stor8, 12)) + (2 * stor12[stor8].field_0 + 1)
                        while sha3(sha3(stor8, 12)) + (2 * stor12[stor8].field_0) > t:
                            stor[t] = 0
                            uint256(stor1[t]) = 0
                            t = t + 2
                            continue 
                        mem[0] = sha3(stor8, 12)
                        _458 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_458] = arg2
                        mem[_458 + 32] = s + (8760 * 24 * 3600)
                    stor12[stor8][stor12[stor8].field_0].field_0 = arg2
                    stor12[stor8][stor12[stor8].field_0].field_256 = s + (8760 * 24 * 3600)
                    idx = idx + 1
                    s = s + (8760 * 24 * 3600)
                    continue 
    stor8++
    return 1
}



}
