contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
uint8 stor4;
uint256 stor5;
uint256 stor6;

function _fallback() payable {
    stor5 = 500 * 10^6
    require not msg.value
    stor0 = msg.sender
    stor1[address(msg.sender)] = stor5
    stor6 = stor5
    stor4 = 2
    bool(stor3.length) = 0
    stor3.length.field_1 = 3
    stor3.length.field_8 = 'AIO' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 8
    stor2.length.field_8 = 'AllInOne' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor6 = 500 * 10^6
    stor0 = msg.sender
    stor1[stor0] = 500 * 10^6
    stor6 = 500 * 10^6
    return code.data[728 len 2473]
}



// =====================  Runtime code  =====================


address adminAddress;
mapping of uint256 balanceOf;
array of uint256 name;
array of uint256 symbol;
uint8 decimal;
uint256 intialSupply;
uint256 totalSupply;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function decimal() {
    return decimal
}

function symbol() {
    return symbol[0 len symbol.length]
}

function intialSupply() {
    return intialSupply
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function transferAdminship(address arg1) {
    require msg.sender == adminAddress
    adminAddress = arg1
}

function mintToken(address arg1, uint256 arg2) {
    require msg.sender == adminAddress
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] > 0
    require balanceOf[address(msg.sender)] > arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}



}
