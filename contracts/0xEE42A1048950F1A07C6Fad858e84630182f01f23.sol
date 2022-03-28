contract main {


// =======================  Init code  ======================


uint256 stor3;
address stor4;
uint128 stor5; offset 160
address stor5;

function _fallback() {
    stor4 = code.data[3833 len 20]
    address(stor5.field_0) = code.data[3865 len 20]
    stor3 = code.data[3885 len 32]
    Mask(96, 0, stor5.field_160) = Mask(96, 0, bool(code.data[3917 len 32]))
    return code.data[252 len 3569]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalMIT;
uint256 start;
address mainstreetCrowdfundAddress;
uint8 stor5; offset 160
address intellisysAddress;

function totalSupply() {
    return totalMIT
}

function intellisys() {
    return intellisysAddress
}

function totalMIT() {
    return totalMIT
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function testing() {
    return bool(uint8(stor5.field_160))
}

function start() {
    return start
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function mainstreetCrowdfund() {
    return mainstreetCrowdfundAddress
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    require block.timestamp >= start
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require block.timestamp >= start
    require arg1
    require arg1 != this.address
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function addTokens(address arg1, uint256 arg2) {
    if not uint8(stor5.field_160):
        require block.timestamp < start
    require msg.sender == mainstreetCrowdfundAddress
    balanceOf[address(arg1)] += arg2
    balanceOf[address(stor5.field_0)] += arg2 / 10
    totalMIT = totalMIT + arg2 + (arg2 / 10)
    emit TokensAdded(arg2, arg1);
    emit TokensAdded((arg2 / 10), intellisysAddress);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require block.timestamp >= start
    require arg2
    require arg2 != this.address
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require balanceOf[address(arg1)] >= arg3
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
