contract main {


// =======================  Init code  ======================


uint256 stor6;

function _fallback() {
    stor6 = block.timestamp + (60 * code.data[3491 len 32])
    return code.data[71 len 3420]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address highestBidderAddress;
mapping of uint256 bids;
uint8 stor5;
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

function endAuction() {
    require block.timestamp > endTime
    require not stor5
    balanceOf[stor3] = 1
    stor5 = 1
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

function bid(string arg1) payable {
    require endTime > block.timestamp
    require msg.value > 0
    if not bids[address(msg.sender)]:
        emit Bid(msg.sender, Array(len=arg1.length, data=arg1[all]));
    bids[address(msg.sender)] += msg.value
    if bids[address(msg.sender)] > bids[stor3]:
        highestBidderAddress = msg.sender
}

function _fallback() {
    require endTime > block.timestamp
    require msg.value > 0
    if not bids[address(msg.sender)]:
        emit Bid(address rg1, string rg2):
                 msg.sender,
                 64,
                 0,
    bids[address(msg.sender)] += msg.value
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
