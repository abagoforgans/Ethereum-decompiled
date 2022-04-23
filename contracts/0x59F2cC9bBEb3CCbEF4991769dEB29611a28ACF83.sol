contract main {


// =======================  Init code  ======================


mapping of uint256 stor1;
uint8 stor3; offset 160
address stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;

function _fallback() payable {
    uint8(stor3.field_160) = 0
    stor4 = 120000000 * 10^18
    stor5 = 80000000 * 10^18
    stor6 = 0
    require not msg.value
    address(stor3.field_0) = msg.sender
    stor1[address(msg.sender)] = stor4
    return code.data[131 len 3555]
}



// =====================  Runtime code  =====================


const name = 'Costume Token'

const totalSupply = 200000000 * 10^18

const decimals = 18

const symbol = 'COST'


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor3; offset 160
address owner;
uint256 initialSupply;
uint256 limitCrowdsale;
uint256 tokensDistributedCrowdsale;
address crowdsaleAddress;

function initialSupply() {
    return initialSupply
}

function paused() {
    return bool(stor3)
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

function limitCrowdsale() {
    return limitCrowdsale
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function unpause() {
    require owner == msg.sender
    require stor3
    stor3 = 0
    emit Unpause()
}

function pause() {
    require owner == msg.sender
    require not stor3
    stor3 = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setCrowdsaleAddress(address arg1) {
    require owner == msg.sender
    require not stor3
    require not crowdsaleAddress
    require arg1
    crowdsaleAddress = arg1
}

function approve(address arg1, uint256 arg2) {
    require not stor3
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require not stor3
    require arg2 + allowance[address(msg.sender)][address(arg1)] >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require not stor3
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor3
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor3
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function distributeCrowdsaleTokens(address arg1, uint256 arg2) {
    require crowdsaleAddress == msg.sender
    require not stor3
    require arg1
    require arg2 > 0
    require tokensDistributedCrowdsale < limitCrowdsale
    require arg2 + tokensDistributedCrowdsale >= tokensDistributedCrowdsale
    require arg2 + tokensDistributedCrowdsale <= limitCrowdsale
    require arg2 + tokensDistributedCrowdsale >= tokensDistributedCrowdsale
    tokensDistributedCrowdsale += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
}



}
