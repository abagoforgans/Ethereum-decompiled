contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint256 stor1;
uint256 stor3;
uint256 stor4;
array of uint256 stor5;
uint256 stor6;
array of uint256 stor7;
array of uint256 stor8;

function _fallback() payable {
    bool(stor5.length) = 0
    stor5.length.field_1 = 21
    stor5.length.field_8 = 'Bitcoin Futures Alpha' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor6 = 8
    bool(stor7.length) = 0
    stor7.length.field_1 = 3
    stor7.length.field_8 = 'BTU' / 256
    idx = 0
    while stor7.length + 31 / 32 > idx:
        stor7[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor8.length) = 0
    stor8.length.field_1 = 1
    stor8.length.field_8 = '1' / 256
    idx = 0
    while stor8.length + 31 / 32 > idx:
        stor8[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor0 = msg.sender
    emit Admined(msg.sender);
    stor3 = 2 * 10^9 * 10^stor6
    stor4 = 2 * 10^9 * 10^stor6
    stor1[address(msg.sender)] = 2 * 10^9 * 10^stor6
    emit code.data[3348 len 32]: (2 * 10^9 * 10^stor6), 0, this.address
    emit code.data[3348 len 32]: stor3, this.address, msg.sender
    return code.data[653 len 2695]
}



// =====================  Runtime code  =====================


address adminAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint256 maxSupply;
array of uint256 name;
uint256 decimals;
array of uint256 symbol;
array of uint256 version;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function version() {
    return version[0 len version.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function maxSupply() {
    return maxSupply
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function admin() {
    return adminAddress
}

function _fallback() {
    revert
}

function transferAdminship(address arg1) {
    require adminAddress == msg.sender
    adminAddress = arg1
    emit TransferAdminship(arg1);
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burnToken(address arg1, uint256 arg2) {
    require adminAddress == msg.sender
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Burned(arg2, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function mintToken(address arg1, uint256 arg2) {
    require adminAddress == msg.sender
    require arg2 + totalSupply >= totalSupply
    require arg2 + totalSupply < maxSupply
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
