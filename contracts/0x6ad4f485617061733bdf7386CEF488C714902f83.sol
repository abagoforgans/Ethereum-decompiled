contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
uint256 stor4;
mapping of uint256 stor5;
array of uint256 stor6;

function _fallback() payable {
    stor3 = 18
    mem[128] = 'frozenInfos will reflush by func'
    mem[160] = 'tion QueryFrozenCoins and transf'
    mem[192] = 'er.'
    stor6.length = 135
    s = 0
    idx = 128
    while 195 > idx:
        stor6[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 3
    while stor6.length + 31 / 32 > idx:
        stor6[idx] = 0
        idx = idx + 1
        continue 
    require not msg.value
    mem[224 len -6661] = code.data[7328 len -6661]
    stor0 = msg.sender
    stor4 = mem[224] * 10^stor3
    stor5[address(msg.sender)] = stor4
    stor1[] = Array(len=mem[mem[256] + 224], data=mem[mem[256] + 256 len mem[mem[256] + 224]])
    stor2[] = Array(len=mem[mem[288] + 224], data=mem[mem[288] + 256 len mem[mem[288] + 224]])
    return code.data[667 len 6661]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
array of uint256 declaration;
mapping of struct frozenInfos;
mapping of uint256 stor8;

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
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function declaration() {
    return declaration[0 len declaration.length]
}

function frozenInfos(address arg1) {
    return bool(frozenInfos[arg1].field_0), 
           bool(frozenInfos[arg1].field_8),
           frozenInfos[arg1].field_256,
           frozenInfos[arg1].field_512,
           frozenInfos[arg1].field_768
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == owner
    frozenInfos[address(arg1)].field_0 = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function burn(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function UnfreezeAccountByTime(address arg1) {
    require msg.sender == owner
    frozenInfos[address(arg1)].field_768 = 0
    frozenInfos[address(arg1)].field_256 = 0
    stor8[address(arg1)] = 0
    frozenInfos[address(arg1)].field_512 = 0
    frozenInfos[address(arg1)].field_8 = 0
    emit FrozenTotal(frozenInfos[address(arg1)].field_768, arg1);
}

function freezeAccountByTime(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    require balanceOf[address(arg1)] >= 1
    require not frozenInfos[address(arg1)].field_8
    require arg2 > 0
    frozenInfos[address(arg1)].field_8 = 1
    frozenInfos[address(arg1)].field_256 = block.timestamp + arg2
    frozenInfos[address(arg1)].field_512 = block.timestamp
    frozenInfos[address(arg1)].field_768 = balanceOf[address(arg1)]
    require arg2
    stor8[address(arg1)] = frozenInfos[address(arg1)].field_768 / arg2
    require stor8[address(arg1)] > 0
    emit FrozenTotal(frozenInfos[address(arg1)].field_768, arg1);
}

function QueryFrozenCoins(address arg1) {
    require arg1
    require frozenInfos[address(arg1)].field_8
    if frozenInfos[address(arg1)].field_8:
        frozenInfos[address(arg1)].field_512 = block.timestamp
        if block.timestamp >= frozenInfos[address(arg1)].field_256:
            frozenInfos[address(arg1)].field_768 = 0
            frozenInfos[address(arg1)].field_256 = 0
            stor8[address(arg1)] = 0
            frozenInfos[address(arg1)].field_512 = 0
            frozenInfos[address(arg1)].field_8 = 0
        else:
            if frozenInfos[address(arg1)].field_768 > (frozenInfos[address(arg1)].field_256 * stor8[address(arg1)]) - (block.timestamp * stor8[address(arg1)]):
                frozenInfos[address(arg1)].field_768 = (frozenInfos[address(arg1)].field_256 * stor8[address(arg1)]) - (block.timestamp * stor8[address(arg1)])
            else:
                frozenInfos[address(arg1)].field_768 = 0
                frozenInfos[address(arg1)].field_256 = 0
                stor8[address(arg1)] = 0
                frozenInfos[address(arg1)].field_512 = 0
                frozenInfos[address(arg1)].field_8 = 0
    emit FrozenTotal(frozenInfos[address(arg1)].field_768, arg1);
    return frozenInfos[address(arg1)].field_768
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require not frozenInfos[address(msg.sender)].field_0
    require not frozenInfos[address(arg1)].field_0
    require not frozenInfos[address(arg1)].field_8
    if frozenInfos[address(msg.sender)].field_8:
        if frozenInfos[address(msg.sender)].field_8:
            frozenInfos[address(msg.sender)].field_512 = block.timestamp
            if block.timestamp >= frozenInfos[address(msg.sender)].field_256:
                frozenInfos[address(msg.sender)].field_768 = 0
                frozenInfos[address(msg.sender)].field_256 = 0
                stor8[address(msg.sender)] = 0
                frozenInfos[address(msg.sender)].field_512 = 0
                frozenInfos[address(msg.sender)].field_8 = 0
            else:
                if frozenInfos[address(msg.sender)].field_768 > (frozenInfos[address(msg.sender)].field_256 * stor8[address(msg.sender)]) - (block.timestamp * stor8[address(msg.sender)]):
                    frozenInfos[address(msg.sender)].field_768 = (frozenInfos[address(msg.sender)].field_256 * stor8[address(msg.sender)]) - (block.timestamp * stor8[address(msg.sender)])
                else:
                    frozenInfos[address(msg.sender)].field_768 = 0
                    frozenInfos[address(msg.sender)].field_256 = 0
                    stor8[address(msg.sender)] = 0
                    frozenInfos[address(msg.sender)].field_512 = 0
                    frozenInfos[address(msg.sender)].field_8 = 0
        if frozenInfos[address(msg.sender)].field_8:
            require balanceOf[address(msg.sender)] - arg2 > frozenInfos[address(msg.sender)].field_768
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
