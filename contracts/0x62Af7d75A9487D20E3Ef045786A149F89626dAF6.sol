contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;
uint8 stor5;
uint256 stor5; offset 8
mapping of uint256 stor8;
uint256 stor9;
uint256 stor10;

function _fallback() payable {
    mem[128] = '0.0.1'
    bool(stor2.length) = 0
    stor2.length.field_1 = 5
    stor2.length.field_8 = '0.0.1' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor10 = 10
    require not msg.value
    mem[160 len -3623] = code.data[4079 len -3623]
    stor0 = msg.sender
    stor8[address(msg.sender)] = mem[160]
    stor9 = mem[160]
    stor3[] = Array(len=mem[mem[192] + 160], data=mem[mem[192] + 192 len mem[mem[192] + 160]])
    stor4[] = Array(len=mem[mem[256] + 160], data=mem[mem[256] + 192 len mem[mem[256] + 160]])
    uint8(stor5.field_0) = mem[255 len 1]
    Mask(248, 0, stor5.field_8) = 0
    return code.data[456 len 3623]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 version;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
address platinumAddress;
mapping of uint256 allowance;
mapping of uint256 balanceOf;
uint256 totalSupply;
uint256 fee;

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

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function platinum() {
    return platinumAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function fee() {
    return fee
}

function suicide() {
    require owner == msg.sender
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function setFee(uint256 arg1) {
    require owner == msg.sender
    require arg1 >= 0
    fee = arg1
    return 1
}

function setPlatinumAddress(address arg1) {
    require owner == msg.sender
    require arg1
    platinumAddress = arg1
    return 1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][stor0]
    allowance[address(msg.sender)][stor0] = arg2
    emit Approval(arg2, msg.sender, owner);
    return 1
}

function produce(uint256 arg1) {
    require platinumAddress
    require platinumAddress == msg.sender
    require arg1 + balanceOf[stor0] >= balanceOf[stor0]
    balanceOf[stor0] += arg1
    require arg1 + totalSupply >= totalSupply
    totalSupply += arg1
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require owner == msg.sender
    require arg2 <= balanceOf[stor0]
    balanceOf[stor0] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, owner, arg1);
    return 1
}

function reduce(uint256 arg1) {
    require platinumAddress
    require platinumAddress == msg.sender
    require arg1 <= balanceOf[stor0]
    require balanceOf[stor0] - arg1 >= 0
    require arg1 <= totalSupply
    require totalSupply - arg1 >= 0
    require arg1 <= balanceOf[stor0]
    balanceOf[stor0] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require msg.sender
    if platinumAddress != msg.sender:
        require owner == msg.sender
    require fee <= arg3
    require arg3 - fee + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] = arg3 - fee + balanceOf[address(arg2)]
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require fee + balanceOf[stor0] >= balanceOf[stor0]
    balanceOf[stor0] += fee
    require arg3 <= allowance[address(arg1)][stor0]
    allowance[address(arg1)][stor0] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
