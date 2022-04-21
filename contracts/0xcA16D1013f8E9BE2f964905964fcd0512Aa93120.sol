contract main {


// =======================  Init code  ======================


mapping of uint256 stor1;
uint128 stor3; offset 160
address stor3;
uint256 stor4;
uint256 stor5;

function _fallback() payable {
    Mask(96, 0, stor3.field_160) = 0
    stor4 = 0
    stor5 = 0
    require not msg.value
    address(stor3.field_0) = msg.sender
    stor1[address(msg.sender)] = 40000000 * 10^18
    return code.data[216 len 6207]
}



// =====================  Runtime code  =====================


const name = 'PallyCoin'

const totalSupply = 100000000 * 10^18

const decimals = 18

const symbol = 'PAL'


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor3; offset 160
uint128 stor3; offset 160
address owner;
uint256 tokensDistributedPresale;
uint256 tokensDistributedCrowdsale;
address crowdsaleAddress;

function paused() {
    return bool(uint8(stor3.field_160))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function crowdsale() {
    return crowdsaleAddress
}

function tokensDistributedCrowdsale() {
    return tokensDistributedCrowdsale
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function tokensDistributedPresale() {
    return tokensDistributedPresale
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function unpause() {
    require msg.sender == owner
    require uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 0
    emit Unpause()
    return 1
}

function pause() {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 1
    emit Pause()
    return 1
}

function setCrowdsaleAddress(address arg1) {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    require arg1
    crowdsaleAddress = arg1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function refundTokens(address arg1, uint256 arg2) {
    require msg.sender == crowdsaleAddress
    require not uint8(stor3.field_160)
    require arg1
    require arg2 > 0
    require balanceOf[address(arg1)] >= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    emit RefundedTokens(arg2, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function distributeICOTokens(address arg1, uint256 arg2) {
    require msg.sender == crowdsaleAddress
    require not uint8(stor3.field_160)
    require arg1
    require arg2 > 0
    require tokensDistributedCrowdsale < 50000000 * 10^18
    require tokensDistributedCrowdsale + arg2 >= tokensDistributedCrowdsale
    tokensDistributedCrowdsale += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor3.field_160)
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function distributePresaleTokens(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    require arg1
    require arg2 > 0
    require arg2 <= 10000000 * 10^18
    require tokensDistributedPresale < 10000000 * 10^18
    require tokensDistributedPresale + arg2 >= tokensDistributedPresale
    tokensDistributedPresale += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
}



}
