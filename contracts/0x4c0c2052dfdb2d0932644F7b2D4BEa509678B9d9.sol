contract main {


// =======================  Init code  ======================


address stor0;
uint8 stor2;
array of uint256 stor3;
array of uint256 stor4;
uint8 stor5;
array of struct stor9;
array of struct stor10;
uint256 stor13;
uint256 stor14;

function _fallback() payable {
    stor2 = 0
    bool(stor9.length) = 0
    stor9.length.field_1 = 7
    stor9.length.field_8 = '9ENCORE' / 256
    idx = 0
    while stor9.length + 31 / 32 > idx:
        stor9[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor10.length) = 0
    stor10.length.field_1 = 3
    stor10.length.field_8 = '9EN' / 256
    idx = 0
    while stor10.length + 31 / 32 > idx:
        stor10[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    mem[256] = uint256(stor9.field_0)
    idx = 256
    s = 0
    while stor9.length + 224 > idx:
        mem[idx + 32] = stor9[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor9.length) + 288] = uint256(stor10.field_0)
    idx = ceil32(stor9.length) + 288
    s = 0
    while ceil32(stor9.length) + stor10.length + 256 > idx:
        mem[idx + 32] = stor10[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    stor0 = msg.sender
    stor5 = 18
    stor3[] = Array(len=stor9.length, data=mem[256 len stor9.length])
    stor4[] = Array(len=stor10.length, data=mem[ceil32(stor9.length) + 288 len stor10.length])
    stor13 = 0
    stor14 = 0
    return code.data[880 len 8517]
}



// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#
address owner;
mapping of uint8 stor1;
uint8 stor2;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor11;
mapping of struct frozenTime;
uint256 stor13;
uint256 stor14;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function saleContract(address arg1) {
    return bool(stor1[arg1])
}

function decimals() {
    return decimals
}

function paused() {
    return bool(stor2)
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

function frozenTime(address arg1) {
    return frozenTime[arg1].field_0, frozenTime[arg1].field_256
}

function frozenAccount(address arg1) {
    return bool(stor11[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function allFrozenTime() {
    return stor13, stor14
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function delSaleOwner(address arg1) {
    require msg.sender == owner
    stor1[address(arg1)] = 0
}

function addSaleOwner(address arg1) {
    require msg.sender == owner
    stor1[address(arg1)] = 1
}

function pause() {
    require msg.sender == owner
    require 0 == bool(stor2)
    stor2 = 1
    emit Pause()
    return 1
}

function unpause() {
    require msg.sender == owner
    require 1 == bool(stor2)
    stor2 = 0
    emit Unpause()
    return 1
}

function isSaleOwner() {
    if owner != msg.sender:
        if bool(stor1[address(msg.sender)]) != 1:
            return 0
    return 1
}

function setAllFreeze(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    stor13 = arg1
    stor14 = arg2
    emit AllFrozenFunds(arg1, arg2);
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function isFrozen(address arg1) {
    if 0 == bool(stor11[address(arg1)]):
        return 0
    if frozenTime[address(arg1)].field_0 > block.timestamp:
        return 0
    if block.timestamp > frozenTime[address(arg1)].field_256:
        return 0
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require msg.sender == owner
    require balanceOf[address(arg1)] >= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function burn(uint256 arg1) {
    require msg.sender == owner
    require balanceOf[address(msg.sender)] >= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function isAllFrozen() {
    if stor13 != 0:
        if stor13 > block.timestamp:
            return 0
        if block.timestamp > stor14:
            return 0
    else:
        if stor14 != 0:
            if stor13 > block.timestamp:
                return 0
            if block.timestamp > stor14:
                return 0
    return 1
}

function freezeAccount(address arg1, bool arg2, uint256 arg3, uint256 arg4) {
    if owner != msg.sender:
        require 1 == bool(stor1[address(msg.sender)])
    stor11[address(arg1)] = uint8(arg2)
    frozenTime[address(arg1)].field_0 = arg3
    frozenTime[address(arg1)].field_256 = arg4
    emit FrozenFunds(address(arg1), arg2, arg3, arg4);
}

function mintToken(uint256 arg1) {
    require msg.sender == owner
    if not arg1:
        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        require totalSupply >= totalSupply
        emit Transfer(0, 0, this.address);
        emit Transfer(0, this.address, msg.sender);
    else:
        require arg1
        require arg1 * 10^decimals / arg1 == 10^decimals
        require balanceOf[address(msg.sender)] + (arg1 * 10^decimals) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += arg1 * 10^decimals
        require totalSupply + (arg1 * 10^decimals) >= totalSupply
        totalSupply += arg1 * 10^decimals
        emit Transfer((arg1 * 10^decimals), 0, this.address);
        emit Transfer((arg1 * 10^decimals), this.address, msg.sender);
}

function transfer(address arg1, uint256 arg2) {
    require 0 == bool(stor2)
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    if owner != msg.sender:
        if bool(stor1[address(msg.sender)]) != 1:
            if 0 == stor13:
                require stor14 != 0
            if stor13 <= block.timestamp:
                require block.timestamp > stor14
    if bool(stor11[address(msg.sender)]) != 0:
        if frozenTime[address(msg.sender)].field_0 <= block.timestamp:
            require block.timestamp > frozenTime[address(msg.sender)].field_256
    if owner != msg.sender:
        if bool(stor1[address(msg.sender)]) != 1:
            if bool(stor11[address(arg1)]) != 0:
                if frozenTime[address(arg1)].field_0 <= block.timestamp:
                    require block.timestamp > frozenTime[address(arg1)].field_256
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}



}
