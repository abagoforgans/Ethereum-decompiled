contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor5;
uint256 stor7;
uint256 stor8;
uint8 stor9;

function _fallback() payable {
    stor5 = 30000 * 10^18
    stor7 = 1000 * 10^18
    stor8 = 300 * 10^18
    stor9 = 0
    require not msg.value
    stor0 = msg.sender
    stor1 = code.data[5116 len 32]
    stor2 = code.data[5148 len 32]
    return code.data[213 len 4903]
}



// =====================  Runtime code  =====================


const name = 'MatchPay Token'

const decimals = 18

const tokenExchangeRate = 10

const symbol = 'MPY'


address stor0;
uint256 fundingStartBlock;
uint256 fundingEndBlock;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 maxCap;
uint256 supply;
uint256 minCap;
uint256 ownerTokens;
uint8 stor9;

function totalSupply() {
    return supply
}

function maxCap() {
    return maxCap
}

function minCap() {
    return minCap
}

function getSupply() {
    return supply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function isFinalized() {
    return bool(stor9)
}

function fundingEndBlock() {
    return fundingEndBlock
}

function ownerTokens() {
    return ownerTokens
}

function fundingStartBlock() {
    return fundingStartBlock
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function emergencyPay() payable {
  stop
}

function getStats() {
    return minCap, maxCap, supply, fundingEndBlock
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function finalize() {
    require msg.sender == stor0
    require supply >= minCap
    if block.number <= fundingEndBlock:
        require supply >= maxCap
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    balanceOf[stor0] += ownerTokens
    supply += ownerTokens
    stor9 = 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function refund() {
    require not stor9
    require block.number > fundingEndBlock
    require supply < minCap
    require stor0 != msg.sender
    require balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] = 0
    require supply >= balanceOf[address(msg.sender)]
    supply -= balanceOf[address(msg.sender)]
    emit MPYRefund((balanceOf[address(msg.sender)] / 10), msg.sender);
    call msg.sender with:
       value balanceOf[address(msg.sender)] / 10 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require block.number >= fundingStartBlock
    require block.number <= fundingEndBlock
    require msg.value
    require not stor9
    if msg.value:
        require msg.value
        require 10 * msg.value / msg.value == 10
    require supply + (10 * msg.value) >= supply
    require supply + (10 * msg.value) >= 10 * msg.value
    require maxCap >= supply + (10 * msg.value)
    supply += 10 * msg.value
    balanceOf[address(msg.sender)] += 10 * msg.value
    emit MPYCreation((10 * msg.value), msg.sender);
}



}
