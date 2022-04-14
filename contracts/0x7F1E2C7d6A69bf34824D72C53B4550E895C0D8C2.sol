contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor11;
uint256 stor12;
uint8 stor13;
mapping of uint256 stor14;
address stor16;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 12
    stor0.length.field_8 = 'blockoptions' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 3
    stor1.length.field_8 = 'BOP' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 8
    stor3 = 2 * 10^15
    stor11 = 0
    stor12 = 0
    stor13 = 0
    stor16 = msg.sender
    stor14[address(msg.sender)] = stor3
    stor4 = block.timestamp
    stor5 = block.timestamp + (168 * 24 * 3600)
    return code.data[450 len 4559]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 _totalSupply;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
mapping of address stor8;
mapping of uint256 stor9;
mapping of uint256 stor10;
uint256 stor11;
uint256 stor12;
uint8 stor13;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return _totalSupply
}

function decimals() {
    return decimals
}

function _totalSupply() {
    return _totalSupply
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

function drain() {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function startICO() {
    require owner == msg.sender
    stor6 = block.timestamp
    stor7 = block.timestamp + (744 * 24 * 3600)
    stor4 = 0
    stor5 = 0
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    balanceOf[arg1] = balanceOf[stor16]
    balanceOf[stor16] = 0
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function endICO() {
    require owner == msg.sender
    stor13 = 1
    if balanceOf[stor16] > 13 * 10^13:
        _totalSupply = _totalSupply + -balanceOf[stor16] + 13 * 10^13
        balanceOf[stor16] = 13 * 10^13
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if arg3 <= 0:
        return 0
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    require arg3 + balanceOf[address(arg2)] >= arg3
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if msg.sender == owner:
        if block.timestamp >= stor4:
            if block.timestamp <= stor5:
                if balanceOf[stor16] - arg2 < 19 * 10^14:
                    return 0
    if owner == msg.sender:
        if block.timestamp >= stor5:
            if block.timestamp <= stor5 + (384 * 24 * 3600):
                if balanceOf[stor16] - arg2 < 185 * 10^13:
                    return 0
        if owner == msg.sender:
            if balanceOf[stor16] - arg2 < 13 * 10^13:
                if block.timestamp < stor6 + (4320 * 24 * 3600):
                    return 0
            if owner == msg.sender:
                if balanceOf[stor16] - arg2 < 8 * 10^13:
                    if block.timestamp < stor6 + (8640 * 24 * 3600):
                        return 0
                if owner == msg.sender:
                    if balanceOf[stor16] - arg2 < 3 * 10^13:
                        if block.timestamp < stor6 + (12960 * 24 * 3600):
                            return 0
    if arg2 <= 0:
        return 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    require arg2 + balanceOf[arg1] >= arg2
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function _fallback() payable {
    if stor13:
        require owner == msg.sender
        stor12 = msg.value
    else:
        if owner == msg.sender:
            stor12 = msg.value
        else:
            if block.timestamp < stor4:
                if block.timestamp >= stor6:
                    if block.timestamp < stor7:
                        if block.timestamp >= stor6:
                            if block.timestamp <= stor6 + (168 * 24 * 3600):
                                stor11++
                                stor8[stor11 + 1] = msg.sender
                                stor9[stor11] = msg.value
                                stor10[stor11] = 250 * msg.value / 10^10
                                balanceOf[stor16] -= stor10[stor11]
                                balanceOf[stor8[stor11]] += stor10[stor11]
                                emit ico(stor11, stor8[stor11], stor9[stor11], stor10[stor11]);
                            else:
                                if block.timestamp >= stor6 + (168 * 24 * 3600):
                                    if block.timestamp <= stor6 + (336 * 24 * 3600):
                                        stor11++
                                        stor8[stor11 + 1] = msg.sender
                                        stor9[stor11] = msg.value
                                        stor10[stor11] = 220 * msg.value / 10^10
                                        balanceOf[stor16] -= stor10[stor11]
                                        balanceOf[stor8[stor11]] += stor10[stor11]
                                        emit ico(stor11, stor8[stor11], stor9[stor11], stor10[stor11]);
                                    else:
                                        if block.timestamp >= stor6 + (336 * 24 * 3600):
                                            if block.timestamp <= stor6 + (744 * 24 * 3600):
                                                stor11++
                                                stor8[stor11 + 1] = msg.sender
                                                stor9[stor11] = msg.value
                                                stor10[stor11] = 200 * msg.value / 10^10
                                                balanceOf[stor16] -= stor10[stor11]
                                                balanceOf[stor8[stor11]] += stor10[stor11]
                                                emit ico(stor11, stor8[stor11], stor9[stor11], stor10[stor11]);
            else:
                if block.timestamp <= stor5:
                    if balanceOf[stor16] - (400 * msg.value / 10^10) >= 19 * 10^14:
                        stor11++
                        stor8[stor11 + 1] = msg.sender
                        stor9[stor11] = msg.value
                        stor10[stor11] = 400 * msg.value / 10^10
                        balanceOf[stor16] -= stor10[stor11]
                        balanceOf[stor8[stor11]] += stor10[stor11]
                        emit preico(stor11, stor8[stor11], stor9[stor11], stor10[stor11]);
                else:
                    if block.timestamp >= stor6:
                        if block.timestamp < stor7:
                            if block.timestamp >= stor6:
                                if block.timestamp <= stor6 + (168 * 24 * 3600):
                                    stor11++
                                    stor8[stor11 + 1] = msg.sender
                                    stor9[stor11] = msg.value
                                    stor10[stor11] = 250 * msg.value / 10^10
                                    balanceOf[stor16] -= stor10[stor11]
                                    balanceOf[stor8[stor11]] += stor10[stor11]
                                    emit ico(stor11, stor8[stor11], stor9[stor11], stor10[stor11]);
                                else:
                                    if block.timestamp >= stor6 + (168 * 24 * 3600):
                                        if block.timestamp <= stor6 + (336 * 24 * 3600):
                                            stor11++
                                            stor8[stor11 + 1] = msg.sender
                                            stor9[stor11] = msg.value
                                            stor10[stor11] = 220 * msg.value / 10^10
                                            balanceOf[stor16] -= stor10[stor11]
                                            balanceOf[stor8[stor11]] += stor10[stor11]
                                            emit ico(stor11, stor8[stor11], stor9[stor11], stor10[stor11]);
                                        else:
                                            if block.timestamp >= stor6 + (336 * 24 * 3600):
                                                if block.timestamp <= stor6 + (744 * 24 * 3600):
                                                    stor11++
                                                    stor8[stor11 + 1] = msg.sender
                                                    stor9[stor11] = msg.value
                                                    stor10[stor11] = 200 * msg.value / 10^10
                                                    balanceOf[stor16] -= stor10[stor11]
                                                    balanceOf[stor8[stor11]] += stor10[stor11]
                                                    emit ico(stor11, stor8[stor11], stor9[stor11], stor10[stor11]);
}



}
