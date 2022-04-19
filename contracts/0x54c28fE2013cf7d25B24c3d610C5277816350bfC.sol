contract main {


// =======================  Init code  ======================


address stor4;
uint256 stor8;

function _fallback() {
    stor4 = msg.sender
    stor8 = block.timestamp + (60 * code.data[3682 len 32])
    return code.data[136 len 3546]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address highestBidderAddress;
address stor4;
mapping of uint256 bids;
uint256 stor6;
uint8 stor7;
uint256 endTime;

function totalSupply() {
    return totalSupply
}

function endTime() {
    return endTime
}

function bids(address arg1) {
    return bids[arg1]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function highestBidder() {
    return highestBidderAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function endAuction() {
    require block.timestamp > endTime
    require not stor7
    balanceOf[stor3] = 1
    call stor4 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stor7 = 1
}

function bid(string arg1) payable {
    require endTime > block.timestamp
    require msg.value > 0
    if not bids[address(msg.sender)]:
        emit Bid(msg.sender, Array(len=arg1.length, data=arg1[all]));
    bids[address(msg.sender)] += msg.value
    stor6 += msg.value
    if bids[address(msg.sender)] > bids[stor3]:
        highestBidderAddress = msg.sender
}

function _fallback() payable {
    require endTime > block.timestamp
    require msg.value > 0
    if not bids[address(msg.sender)]:
        emit Bid(address rg1, string rg2):
                 msg.sender,
                 64,
                 0,
    bids[address(msg.sender)] += msg.value
    stor6 += msg.value
    if bids[address(msg.sender)] > bids[stor3]:
        highestBidderAddress = msg.sender
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    if allowance[address(arg1)][address(msg.sender)] < -1:
        allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
