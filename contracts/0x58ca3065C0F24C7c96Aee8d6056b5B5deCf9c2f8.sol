contract main {


// =======================  Init code  ======================


address stor1;
array of uint256 stor2;
array of uint256 stor3;
uint8 stor4;
array of uint256 stor5;
uint256 stor6;
uint256 stor7;
uint8 stor8;
address stor8; offset 8
uint256 stor9;
mapping of uint256 stor11;

function _fallback() payable {
    bool(stor5.length) = 0
    stor5.length.field_1 = 4
    stor5.length.field_8 = 'v0.1' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor9 = 10^10
    require not msg.value
    stor1 = msg.sender
    uint8(stor8.field_0) = 1
    stor6 = 10 * 10^6 * stor9
    stor7 = 10 * 10^6 * stor9
    bool(stor2.length) = 0
    stor2.length.field_1 = 3
    stor2.length.field_8 = 'GXC' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor3.length) = 0
    stor3.length.field_1 = 3
    stor3.length.field_8 = 'GXC' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 10
    address(stor8.field_8) = address(code.data[4166 len 32])
    stor11[address(code.data[4166 len 32])] = stor7
    return code.data[597 len 3569]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of uint256 version;
uint256 initialSupply;
uint256 totalSupply;
uint8 locked;
address crowdSaleAddress; offset 8
uint256 totalMigrated;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function crowdSaleAddress() {
    return crowdSaleAddress
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function initialSupply() {
    return initialSupply
}

function version() {
    return version[0 len version.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function totalMigrated() {
    return totalMigrated
}

function symbol() {
    return symbol[0 len symbol.length]
}

function locked() {
    return bool(locked)
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function kill() {
    if owner != msg.sender:
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function lock() {
    if crowdSaleAddress != msg.sender:
        require owner == msg.sender
    locked = 1
}

function unlock() {
    if crowdSaleAddress != msg.sender:
        require owner == msg.sender
    locked = 0
}

function transferOwnership(address arg1) {
    if owner == msg.sender:
        if arg1:
            owner = arg1
}

function restCrowdSaleAddress(address arg1) {
    if crowdSaleAddress != msg.sender:
        require owner == msg.sender
    crowdSaleAddress = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(address arg1, uint256 arg2) {
    if crowdSaleAddress != msg.sender:
        require owner == msg.sender
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if crowdSaleAddress != msg.sender:
        if locked:
            require owner == msg.sender
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    require arg2 + balanceOf[arg1] >= arg2
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if crowdSaleAddress != msg.sender:
        if locked:
            require owner == msg.sender
    require balanceOf[address(arg1)] >= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    require arg3 + balanceOf[arg2] >= arg3
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
