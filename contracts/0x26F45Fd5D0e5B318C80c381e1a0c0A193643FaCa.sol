contract main {


// =======================  Init code  ======================


address stor1;
array of uint256 stor2;
array of uint256 stor3;
uint256 stor4;
uint128 stor5; offset 160

function _fallback() payable {
    bool(stor2.length) = 0
    stor2.length.field_1 = 17
    stor2.length.field_8 = 'ShareEstate Token' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor3.length) = 0
    stor3.length.field_1 = 3
    stor3.length.field_8 = 'SRE' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 4
    stor5 = 0
    require not msg.value
    stor1 = msg.sender
    stor1 = msg.sender
    return code.data[534 len 4909]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
address owner;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint8 stor5; offset 160
uint128 stor5; offset 160
address crowdsaleAgentAddress;
mapping of uint256 allowance;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function crowdsaleAgent() {
    return crowdsaleAgentAddress
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

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function released() {
    return bool(uint8(stor5.field_160))
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function releaseTokenTransfer() {
    require msg.sender == crowdsaleAgentAddress
    Mask(96, 0, stor5.field_160) = 1
}

function setCrowdsaleAgent(address arg1) {
    require msg.sender == owner
    require 0 == bool(uint8(stor5.field_160))
    crowdsaleAgentAddress = arg1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == crowdsaleAgentAddress
    require not uint8(stor5.field_160)
    require totalSupply + arg2 >= totalSupply
    require totalSupply + arg2 >= arg2
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    if not uint8(stor5.field_160):
        require msg.sender == crowdsaleAgentAddress
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 68
    if not uint8(stor5.field_160):
        require msg.sender == crowdsaleAgentAddress
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require balanceOf[address(arg2)] + arg3 >= arg3
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
