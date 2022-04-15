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
address stor9;

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
    stor4 = 418352 * 3600
    stor5 = 418496 * 3600
    stor6 = 200222 * 10^18
    stor7 = 0
    stor8 = 5 * 10^16
    stor9 = 0xe53df71148021f280eb13fcd8679b01200e0c348
    require not msg.value
    stor0 = msg.sender
    return code.data[480 len 2866]
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
    require msg.sender == owner
    endTime = arg1
}

function setStartTime(uint256 arg1) {
    require msg.sender == owner
    startTime = arg1
}

function setWallet(address arg1) {
    require msg.sender == owner
    walletAddress = arg1
}

function setMinContribution(uint256 arg1) {
    require msg.sender == owner
    minContrib = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function setWeiRaised(uint256 arg1) {
    require msg.sender == owner
    require weiRaised + arg1 >= weiRaised
    weiRaised += arg1
}

function isActive() {
    if block.timestamp < startTime:
        return block.timestamp >= startTime
    return block.timestamp <= endTime
}

function processContributions(address arg1, uint256 arg2) payable {
    require weiRaised + msg.value >= weiRaised
    if block.timestamp < startTime:
        require block.timestamp >= startTime
    else:
        require block.timestamp <= endTime
    require msg.value >= minContrib
    require weiRaised + msg.value <= totalEtherCap
    require weiRaised + arg2 >= weiRaised
    weiRaised += arg2
    require stor1[address(arg1)] + arg2 >= stor1[address(arg1)]
    stor1[address(arg1)] += arg2
    stor2++
    emit Contribution(arg2, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require weiRaised + msg.value >= weiRaised
    if block.timestamp < startTime:
        require block.timestamp >= startTime
    else:
        require block.timestamp <= endTime
    require msg.value >= minContrib
    require weiRaised + msg.value <= totalEtherCap
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require stor1[address(msg.sender)] + msg.value >= stor1[address(msg.sender)]
    stor1[address(msg.sender)] += msg.value
    stor2++
    emit Contribution(msg.value, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
