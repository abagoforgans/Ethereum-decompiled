contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
array of uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint8 stor9;
address stor9; offset 8

function _fallback() payable {
    stor2 = 0
    bool(stor3.length) = 0
    stor3.length.field_1 = 5
    stor3.length.field_8 = '0.1.2' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 418336 * 3600
    stor5 = 418480 * 3600
    stor6 = 200222 * 10^18
    stor7 = 0
    stor8 = 5 * 10^16
    uint8(stor9.field_0) = 0
    Mask(152, 0, stor9.field_8) = 0x2e0fc8e431cc1b4721698c9e82820d7a71b884
    require not msg.value
    stor0 = msg.sender
    return code.data[387 len 1941]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint256 stor1;
uint256 stor2;
array of uint256 version;
uint256 startTime;
uint256 endTime;
uint256 totalEtherCap;
uint256 weiRaised;
uint256 minContrib;
address walletAddress;

function EndTime() {
    return endTime
}

function totalEtherCap() {
    return totalEtherCap
}

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function version() {
    return version[0 len version.length]
}

function owner() {
    return owner
}

function minContrib() {
    return minContrib
}

function StartTime() {
    return startTime
}

function hasEnded() {
    return block.timestamp <= endTime
}

function setEndTime(uint256 arg1) {
    require owner == msg.sender
    endTime = arg1
}

function setStartTime(uint256 arg1) {
    require owner == msg.sender
    startTime = arg1
}

function setWallet(address arg1) {
    require owner == msg.sender
    walletAddress = arg1
}

function setMinContribution(uint256 arg1) {
    require owner == msg.sender
    minContrib = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function setWeiRaised(uint256 arg1) {
    require owner == msg.sender
    require arg1 + weiRaised >= weiRaised
    weiRaised += arg1
}

function isActive() {
    if block.timestamp < startTime:
        return block.timestamp >= startTime
    return block.timestamp <= endTime
}

function processContributions(address arg1, uint256 arg2) payable {
    require msg.value + weiRaised >= weiRaised
    if block.timestamp < startTime:
        require block.timestamp >= startTime
    else:
        require block.timestamp <= endTime
    require msg.value >= minContrib
    require msg.value + weiRaised <= totalEtherCap
    require arg2 + weiRaised >= weiRaised
    weiRaised += arg2
    require arg2 + stor1[address(arg1)] >= stor1[address(arg1)]
    stor1[address(arg1)] += arg2
    stor2++
    emit Contribution(arg2, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require msg.value + weiRaised >= weiRaised
    if block.timestamp < startTime:
        require block.timestamp >= startTime
    else:
        require block.timestamp <= endTime
    require msg.value >= minContrib
    require msg.value + weiRaised <= totalEtherCap
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require msg.value + stor1[address(msg.sender)] >= stor1[address(msg.sender)]
    stor1[address(msg.sender)] += msg.value
    stor2++
    emit Contribution(msg.value, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
