contract main {


// =======================  Init code  ======================


array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor12;
uint256 stor13;
uint8 stor14;
mapping of uint256 stor15;
address stor17;
uint256 stor20;

function _fallback() payable {
    bool(stor1.length) = 0
    stor1.length.field_1 = 12
    stor1.length.field_8 = 'blockoptions' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 4
    stor2.length.field_8 = 'BOPT' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = 8
    stor4 = 2 * 10^15
    stor12 = 0
    stor13 = 0
    stor14 = 0
    stor20 = 0
    require not msg.value
    stor17 = msg.sender
    stor15[stor17] = stor4
    stor5 = block.timestamp
    stor6 = stor5 + (168 * 24 * 3600)
    return code.data[642 len 10280]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
mapping of address stor9;
mapping of uint256 stor10;
mapping of uint256 stor11;
uint256 stor12;
uint256 stor13;
uint8 stor14;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
mapping of struct stor18;
mapping of address stor19;
uint256 stor20;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function endICO() {
    if msg.sender == owner:
        stor14 = 1
        if balanceOf[stor17] > 2 * 10^6:
            balanceOf[stor17] = 2 * 10^6
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function startICO() {
    if msg.sender == owner:
        stor7 = block.timestamp
        stor8 = stor7 + (744 * 24 * 3600)
        stor5 = 0
        stor6 = 0
}

function drain() {
    if msg.sender == owner:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
}

function transferOwnership(address arg1) {
    if msg.sender == owner:
        balanceOf[address(arg1)] = balanceOf[stor17]
        balanceOf[stor17] = 0
        owner = arg1
}

function pre_ico(address arg1, uint256 arg2) payable {
    stor12++
    stor9[stor12] = arg1
    stor10[stor12] = arg2
    stor11[stor12] = 400 * arg2 / 10^10
    balanceOf[stor17] -= stor11[stor12]
    balanceOf[stor9[stor12]] += stor11[stor12]
    emit preico(stor12, stor9[stor12], stor10[stor12], stor11[stor12]);
}

function requestDivident() payable {
    stor20++
    stor19[stor20] = msg.sender
    if bool(stor18[stor19[stor20]].field_256) == 1:
        emit dividentSent(stor20, stor19[stor20], stor18[stor19[stor20]].field_0);
        call stor19[stor20] with:
           value stor18[stor19[stor20]].field_0 wei
             gas 2300 * is_zero(value) wei
        stor18[stor19[stor20]].field_256 = 0
}

function distribute() {
    if msg.sender == owner:
        idx = 1
        while idx <= stor12:
            require 100 * 10^6 * totalSupply
            stor18[stor9[idx]].field_0 = balanceOf[stor9[idx]] * stor13 / 100 * 10^6 * totalSupply
            mem[0] = stor9[idx]
            mem[32] = 18
            stor18[stor9[idx]].field_256 = 1
            idx = idx + 1
            continue 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if arg3 <= 0:
        return 0
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require balanceOf[address(arg2)] + arg3 >= arg3
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if msg.sender == owner:
        if block.timestamp >= stor5:
            if block.timestamp <= stor6:
                if balanceOf[stor17] - arg2 < 19 * 10^14:
                    return 0
        if msg.sender == owner:
            if block.timestamp >= stor6:
                if block.timestamp <= stor6 + (384 * 24 * 3600):
                    if balanceOf[stor17] - arg2 < 185 * 10^13:
                        return 0
            if msg.sender == owner:
                if balanceOf[stor17] - arg2 < 15 * 10^13:
                    if block.timestamp < stor7 + (4320 * 24 * 3600):
                        return 0
                if msg.sender == owner:
                    if balanceOf[stor17] - arg2 < 10^14:
                        if block.timestamp < stor7 + (8640 * 24 * 3600):
                            return 0
                    if msg.sender == owner:
                        if balanceOf[stor17] - arg2 < 5 * 10^13:
                            if block.timestamp < stor7 + (12960 * 24 * 3600):
                                return 0
    if arg2 <= 0:
        return 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function main_ico(address arg1, uint256 arg2) payable {
    if block.timestamp >= stor7:
        if block.timestamp <= stor7 + (168 * 24 * 3600):
            stor12++
            stor9[stor12] = arg1
            stor10[stor12] = arg2
            stor11[stor12] = 250 * arg2 / 10^10
            balanceOf[stor17] -= stor11[stor12]
            balanceOf[stor9[stor12]] += stor11[stor12]
            emit ico(stor12, stor9[stor12], stor10[stor12], stor11[stor12]);
        else:
            if block.timestamp >= stor7 + (168 * 24 * 3600):
                if block.timestamp <= stor7 + (336 * 24 * 3600):
                    stor12++
                    stor9[stor12] = arg1
                    stor10[stor12] = arg2
                    stor11[stor12] = 220 * arg2 / 10^10
                    balanceOf[stor17] -= stor11[stor12]
                    balanceOf[stor9[stor12]] += stor11[stor12]
                    emit ico(stor12, stor9[stor12], stor10[stor12], stor11[stor12]);
                else:
                    if block.timestamp >= stor7 + (336 * 24 * 3600):
                        if block.timestamp <= stor7 + (744 * 24 * 3600):
                            stor12++
                            stor9[stor12] = arg1
                            stor10[stor12] = arg2
                            stor11[stor12] = 200 * arg2 / 10^10
                            balanceOf[stor17] -= stor11[stor12]
                            balanceOf[stor9[stor12]] += stor11[stor12]
                            emit ico(stor12, stor9[stor12], stor10[stor12], stor11[stor12]);
}

function _fallback() payable {
    require not stor14
    if msg.sender == owner:
        stor13 = msg.value
    else:
        if block.timestamp < stor5:
            if block.timestamp >= stor7:
                if block.timestamp < stor8:
                    if block.timestamp >= stor7:
                        if block.timestamp <= stor7 + (168 * 24 * 3600):
                            stor12++
                            stor9[stor12] = msg.sender
                            stor10[stor12] = msg.value
                            stor11[stor12] = 250 * msg.value / 10^10
                            balanceOf[stor17] -= stor11[stor12]
                            balanceOf[stor9[stor12]] += stor11[stor12]
                            emit ico(stor12, stor9[stor12], stor10[stor12], stor11[stor12]);
                        else:
                            if block.timestamp >= stor7 + (168 * 24 * 3600):
                                if block.timestamp <= stor7 + (336 * 24 * 3600):
                                    stor12++
                                    stor9[stor12] = msg.sender
                                    stor10[stor12] = msg.value
                                    stor11[stor12] = 220 * msg.value / 10^10
                                    balanceOf[stor17] -= stor11[stor12]
                                    balanceOf[stor9[stor12]] += stor11[stor12]
                                    emit ico(stor12, stor9[stor12], stor10[stor12], stor11[stor12]);
                                else:
                                    if block.timestamp >= stor7 + (336 * 24 * 3600):
                                        if block.timestamp <= stor7 + (744 * 24 * 3600):
                                            stor12++
                                            stor9[stor12] = msg.sender
                                            stor10[stor12] = msg.value
                                            stor11[stor12] = 200 * msg.value / 10^10
                                            balanceOf[stor17] -= stor11[stor12]
                                            balanceOf[stor9[stor12]] += stor11[stor12]
                                            emit ico(stor12, stor9[stor12], stor10[stor12], stor11[stor12]);
        else:
            if block.timestamp <= stor6:
                if balanceOf[stor17] - (400 * msg.value / 10^10) >= 19 * 10^14:
                    stor12++
                    stor9[stor12] = msg.sender
                    stor10[stor12] = msg.value
                    stor11[stor12] = 400 * msg.value / 10^10
                    balanceOf[stor17] -= stor11[stor12]
                    balanceOf[stor9[stor12]] += stor11[stor12]
                    emit preico(stor12, stor9[stor12], stor10[stor12], stor11[stor12]);
            else:
                if block.timestamp >= stor7:
                    if block.timestamp < stor8:
                        if block.timestamp >= stor7:
                            if block.timestamp <= stor7 + (168 * 24 * 3600):
                                stor12++
                                stor9[stor12] = msg.sender
                                stor10[stor12] = msg.value
                                stor11[stor12] = 250 * msg.value / 10^10
                                balanceOf[stor17] -= stor11[stor12]
                                balanceOf[stor9[stor12]] += stor11[stor12]
                                emit ico(stor12, stor9[stor12], stor10[stor12], stor11[stor12]);
                            else:
                                if block.timestamp >= stor7 + (168 * 24 * 3600):
                                    if block.timestamp <= stor7 + (336 * 24 * 3600):
                                        stor12++
                                        stor9[stor12] = msg.sender
                                        stor10[stor12] = msg.value
                                        stor11[stor12] = 220 * msg.value / 10^10
                                        balanceOf[stor17] -= stor11[stor12]
                                        balanceOf[stor9[stor12]] += stor11[stor12]
                                        emit ico(stor12, stor9[stor12], stor10[stor12], stor11[stor12]);
                                    else:
                                        if block.timestamp >= stor7 + (336 * 24 * 3600):
                                            if block.timestamp <= stor7 + (744 * 24 * 3600):
                                                stor12++
                                                stor9[stor12] = msg.sender
                                                stor10[stor12] = msg.value
                                                stor11[stor12] = 200 * msg.value / 10^10
                                                balanceOf[stor17] -= stor11[stor12]
                                                balanceOf[stor9[stor12]] += stor11[stor12]
                                                emit ico(stor12, stor9[stor12], stor10[stor12], stor11[stor12]);
}



}
