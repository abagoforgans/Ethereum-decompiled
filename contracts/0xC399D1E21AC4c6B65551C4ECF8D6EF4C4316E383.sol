contract main {


// =======================  Init code  ======================


address stor3;
array of uint256 stor4;
array of uint256 stor5;
uint8 stor6;
uint256 stor7;

function _fallback() payable {
    bool(stor4.length) = 0
    stor4.length.field_1 = 0
    stor4.length.field_8 = mem[128 len 31]
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[128] = 0
    bool(stor5.length) = 0
    stor5.length.field_1 = 0
    stor5.length.field_8 = mem[160 len 31]
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor6 = 0
    stor7 = 0
    require not msg.value
    mem[160 len -2473] = code.data[2885 len -2473]
    stor3 = msg.sender
    stor4[].field_0 = Array(len=mem[mem[160] + 160], data=mem[mem[160] + 192 len mem[mem[160] + 160]])
    stor5[].field_0 = Array(len=mem[mem[192] + 160], data=mem[mem[192] + 192 len mem[mem[192] + 160]])
    stor6 = mem[255 len 1]
    return code.data[412 len 2473]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 allowance;
mapping of uint256 balanceOf;
address stor3;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 maxMint;

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
    return balanceOf[address(arg1)]
}

function maxMint() {
    return maxMint
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

function transferOwnership(address arg1) {
    require stor3 == msg.sender
    require arg1
    stor3 = arg1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require stor3 == msg.sender
    require not maxMint
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    maxMint = 1
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require 0 < arg2
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require arg3 > 0
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
