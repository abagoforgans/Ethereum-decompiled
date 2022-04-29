contract main {


// =======================  Init code  ======================


uint128 stor0; offset 160
address stor0;
uint256 stor1;
uint256 stor2;
address stor3;
address stor4;
uint256 stor7;
uint256 stor8;
uint256 stor9;

function _fallback() payable {
    Mask(96, 0, stor0.field_160) = 0
    require not msg.value
    address(stor0.field_0) = msg.sender
    require code.data[3813 len 32] > code.data[3781 len 32]
    require code.data[3845 len 32] > 0
    require code.data[3877 len 32] > code.data[3845 len 32]
    require code.data[3985 len 20]
    stor1 = code.data[3781 len 32]
    stor2 = code.data[3813 len 32]
    stor4 = code.data[3953 len 20]
    stor8 = code.data[3845 len 32]
    stor9 = code.data[3877 len 32]
    stor7 = code.data[3909 len 32]
    stor3 = code.data[3985 len 20]
    return code.data[477 len 3304]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
uint256 startTime;
uint256 endTime;
address walletAddress;
address whitelisterAddress;
mapping of uint256 investments;
uint256 weiRaised;
uint256 minWeiWhitelistInvestment;
uint256 minWeiInvestment;
uint256 maxWeiInvestment;
mapping of uint8 stor10;

function investorWhitelist(address arg1) {
    return bool(stor10[arg1])
}

function whitelister() {
    return whitelisterAddress
}

function endTime() {
    return endTime
}

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function minWeiWhitelistInvestment() {
    return minWeiWhitelistInvestment
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function startTime() {
    return startTime
}

function minWeiInvestment() {
    return minWeiInvestment
}

function owner() {
    return owner
}

function investments(address arg1) {
    return investments[arg1]
}

function maxWeiInvestment() {
    return maxWeiInvestment
}

function hasEnded() {
    return (block.timestamp > endTime)
}

function hasStarted() {
    return block.timestamp >= startTime
}

function unpause() {
    require msg.sender == owner
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setInvestorWhitelist(address arg1, bool arg2) {
    require msg.sender == whitelisterAddress
    stor10[address(arg1)] = uint8(arg2)
    emit Whitelisted(address(arg1), arg2);
}

function buyTokens(address arg1) payable {
    require not uint8(stor0.field_160)
    require arg1
    require msg.value >= minWeiInvestment
    require msg.value <= maxWeiInvestment
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    if msg.value >= minWeiWhitelistInvestment:
        require stor10[address(arg1)]
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require investments[address(arg1)] + msg.value >= investments[address(arg1)]
    investments[address(arg1)] += msg.value
    emit Investment(msg.value, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require not uint8(stor0.field_160)
    require msg.sender
    require msg.value >= minWeiInvestment
    require msg.value <= maxWeiInvestment
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    if msg.value >= minWeiWhitelistInvestment:
        require stor10[address(msg.sender)]
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require investments[address(msg.sender)] + msg.value >= investments[address(msg.sender)]
    investments[address(msg.sender)] += msg.value
    emit Investment(msg.value, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
