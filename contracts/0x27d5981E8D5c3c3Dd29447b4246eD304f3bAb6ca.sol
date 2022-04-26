contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
uint256 stor2;
address stor3;
array of uint256 stor4;
array of uint256 stor5;
uint256 stor6;
uint256 stor7;
uint8 stor8;

function _fallback() payable {
    stor2 = 31000000 * 10^18
    bool(stor4.length) = 0
    stor4.length.field_1 = 9
    stor4.length.field_8 = 'UCH Token' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor5.length) = 0
    stor5.length.field_1 = 3
    stor5.length.field_8 = 'UCH' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor6 = 18
    stor7 = 10^18
    stor8 = 0
    require not msg.value
    stor3 = msg.sender
    stor0[address(msg.sender)] = 7 * 10^6 * stor7
    stor0[0xfb724b05a73bde6fcbdf2dd3e68bc9aaef21e271] = 11 * 10^6 * stor7
    stor0[0xde6020110954d8c825af4ce1c7ed60d7011172c2] = 13 * 10^6 * stor7
    return code.data[766 len 3982]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
address owner;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint8 stor8;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function tradingStarted() {
    return bool(stor8)
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

function _fallback() payable {
    revert
}

function startTrading() {
    require msg.sender == owner
    stor8 = 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] >= arg2:
        if arg2 > 0:
            if balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]:
                require arg2 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] -= arg2
                require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
                return 0
            else:
                return 0
        else:
            return 0
    else:
        return 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] >= arg3:
        if allowance[address(arg1)][address(msg.sender)] >= arg3:
            if arg3 > 0:
                if balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]:
                    balanceOf[address(arg1)] -= arg3
                    allowance[address(arg1)][address(msg.sender)] -= arg3
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                    return 0
                else:
                    return 0
            else:
                return 0
        else:
            return 0
    else:
        return 0
}



}
