contract main {




// =====================  Runtime code  =====================


const balance = eth.balance(this.address)


address owner;
array of struct stor1;
uint256 startTime;
uint256 endTime;
uint256 stor4;
uint256 potato;
uint256 stor6;
uint256 stor7;
uint8 stor8;
uint256 highestBindingBid;
uint8 stor10; offset 160
address highestBidderAddress;
uint256 stor10;
mapping of uint256 fundsByBidder;

function endTime() {
    return endTime
}

function canceled() {
    return bool(stor8)
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function highestBidder() {
    return highestBidderAddress
}

function fundsByBidder(address arg1) {
    return fundsByBidder[arg1]
}

function highestBindingBid() {
    return highestBindingBid
}

function potato() {
    return potato
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function nextBid() {
    require potato + highestBindingBid >= highestBindingBid
    return (potato + highestBindingBid)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setStartTime(uint256 arg1) {
    require msg.sender == owner
    require block.timestamp < startTime
    startTime = arg1
    endTime = stor4 + arg1
}

function withdraw() {
    require msg.sender == owner
    require block.timestamp > endTime
    emit Withdraw(msg.sender, eth.balance(this.address));
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function cancelAuction() {
    require msg.sender == owner
    require block.timestamp <= endTime
    require not stor8
    stor8 = 1
    emit LogCanceled()
    emit Withdraw(highestBidderAddress, eth.balance(this.address));
    call highestBidderAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function queryAuction() {
    require potato + highestBindingBid >= highestBindingBid
    mem[128] = uint256(stor1.field_0)
    idx = 128
    s = 0
    while stor1.length + 96 > idx:
        mem[idx + 32] = stor1[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor1.length, data=mem[128 len stor1.length]), 
           potato + highestBindingBid,
           highestBidderAddress,
           highestBindingBid,
           startTime,
           endTime
}

function nextNextBid() {
    require potato + highestBindingBid >= highestBindingBid
    if not potato + highestBindingBid:
        if potato + highestBindingBid >= highestBindingBid:
            return (potato + highestBindingBid)
    else:
        if 4 * potato + highestBindingBid / potato + highestBindingBid == 4:
            if potato + highestBindingBid >= highestBindingBid:
                if 4 * potato + highestBindingBid / 9 >= 0:
                    return ((4 * potato + highestBindingBid / 9) + potato + highestBindingBid)
    revert
}

function placeBid() payable {
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require not stor8
    require potato + highestBindingBid >= highestBindingBid
    require msg.value == potato + highestBindingBid
    require highestBidderAddress != msg.sender
    require block.timestamp > startTime
    require not uint8(stor10.field_160)
    uint8(stor10.field_160) = 1
    require highestBindingBid + fundsByBidder[msg.sender] >= fundsByBidder[msg.sender]
    fundsByBidder[msg.sender] += highestBindingBid
    require potato + fundsByBidder[address(stor10.field_0)] >= fundsByBidder[address(stor10.field_0)]
    fundsByBidder[address(stor10.field_0)] += potato
    call highestBidderAddress with:
       value fundsByBidder[address(stor10.field_0)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    fundsByBidder[address(stor10.field_0)] = 0
    stor7 = highestBindingBid
    uint256(stor10.field_0) = msg.sender or Mask(96, 160, uint256(stor10.field_0))
    require potato + highestBindingBid >= highestBindingBid
    highestBindingBid += potato
    stor6 = potato
    if not potato + highestBindingBid:
        potato = 0
    else:
        require 4 * potato + highestBindingBid / potato + highestBindingBid == 4
        potato = 4 * potato + highestBindingBid / 9
    emit LogBid(msg.sender, highestBidderAddress, stor7, highestBindingBid);
    uint8(stor10.field_160) = 0
}



}
