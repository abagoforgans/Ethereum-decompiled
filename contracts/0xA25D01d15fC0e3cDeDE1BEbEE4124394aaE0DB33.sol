contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
uint8 stor4;
mapping of uint256 stor5;
mapping of uint8 stor8;
array of address stor9;
uint8 stor10;

function _fallback() payable {
    stor10 = 1
    require not msg.value
    mem[96 len -3392] = code.data[4030 len -3392]
    mem[64] = -3296
    stor0 = msg.sender
    stor0 = mem[108 len 20]
    stor1 = mem[128]
    stor2[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor3[] = Array(len=mem[mem[224] + 96], data=mem[mem[224] + 128 len mem[mem[224] + 96]])
    stor4 = mem[223 len 1]
    stor5[stor0] = stor1
    if bool(stor8[stor0]) != 1:
        stor9.length++
        if not stor9.length <= stor9.length + 1:
            idx = stor9.length + 1
            while stor9.length > idx:
                uint256(stor9[idx]) = 0
                idx = idx + 1
                continue 
        require stor9.length < stor9.length
        address(stor9[stor9.length]) = stor0
        stor8[stor0] = 1
    return code.data[638 len 3392]
}



// =====================  Runtime code  =====================


address owner;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 balances;
mapping of uint8 stor6;
mapping of uint256 allowance;
mapping of uint8 stor8;
array of address holders;
uint8 stor10;

function sub_02231881(?) {
    return bool(stor6[arg1])
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function holders(uint256 arg1) {
    require arg1 < holders.length
    return address(holders[arg1])
}

function decimals() {
    return decimals
}

function contributorsLockdown() {
    return bool(stor10)
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function isHolder(address arg1) {
    return bool(stor8[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function disableLockDown() {
    require owner == msg.sender
    stor10 = 0
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function allowAccount(address arg1, bool arg2) {
    require owner == msg.sender
    stor6[address(arg1)] = uint8(arg2)
    return 1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function mint(uint256 arg1) {
    require owner == msg.sender
    require arg1 + balances[address(msg.sender)] >= balances[address(msg.sender)]
    balances[address(msg.sender)] += arg1
    require arg1 + totalSupply >= totalSupply
    totalSupply += arg1
    emit Transfer(arg1, 0, owner);
}

function burn(uint256 arg1) {
    require owner == msg.sender
    require balances[address(msg.sender)] >= arg1
    require arg1 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1 != this.address
    if stor10:
        if owner != msg.sender:
            require stor6[address(msg.sender)]
    require arg1
    require balances[address(msg.sender)] >= arg2
    require arg2 + balances[address(arg1)] >= balances[address(arg1)]
    require arg2 + balances[address(arg1)] > balances[address(arg1)]
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require arg2 + balances[address(arg1)] >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    if bool(stor8[address(arg1)]) != 1:
        holders.length++
        if not holders.length <= holders.length + 1:
            idx = holders.length + 1
            while holders.length > idx:
                uint256(holders[idx]) = 0
                idx = idx + 1
                continue 
        require holders.length < holders.length
        address(holders[holders.length]) = arg1
        stor8[address(arg1)] = 1
    emit Transfer(arg2, msg.sender, arg1);
    return 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    if stor10:
        if owner != msg.sender:
            require stor6[address(msg.sender)]
    require arg2
    require balances[address(arg1)] >= arg3
    require arg3 + balances[address(arg2)] >= balances[address(arg2)]
    require arg3 + balances[address(arg2)] > balances[address(arg2)]
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require arg3 + balances[address(arg2)] >= balances[address(arg2)]
    balances[address(arg2)] += arg3
    if bool(stor8[address(arg2)]) != 1:
        holders.length++
        if not holders.length <= holders.length + 1:
            idx = holders.length + 1
            while holders.length > idx:
                uint256(holders[idx]) = 0
                idx = idx + 1
                continue 
        require holders.length < holders.length
        address(holders[holders.length]) = arg2
        stor8[address(arg2)] = 1
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
