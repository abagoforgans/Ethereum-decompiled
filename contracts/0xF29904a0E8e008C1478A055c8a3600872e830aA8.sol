contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
uint256 stor3;
uint8 stor4;
uint256 stor5;
mapping of uint256 stor6;

function _fallback() {
    stor0 = msg.sender
    stor6[address(msg.sender)] = 0
    stor5 = 0
    stor3 = 10^10
    bool(stor2.length) = 0
    stor2.length.field_1 = 3
    stor2.length.field_8 = 'LEC' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 9
    stor1.length.field_8 = 'LewtCoins' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 2
    return code.data[424 len 1675]
}



// =====================  Runtime code  =====================


address adminAddress;
array of uint256 name;
array of uint256 symbol;
uint256 tokenCap;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;

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

function symbol() {
    return symbol[0 len symbol.length]
}

function tokenCap() {
    return tokenCap
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function transferAdmin(address arg1) {
    require adminAddress == msg.sender
    adminAddress = arg1
}

function mintToken(address arg1, uint256 arg2) {
    require adminAddress == msg.sender
    require tokenCap >= totalSupply + arg2
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}



}
