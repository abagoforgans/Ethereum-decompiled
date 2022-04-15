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
    stor4 = 4280666
    stor5 = 4305463
    stor6 = 1184834 * 10^18
    stor7 = 0
    stor8 = 5 * 10^16
    stor9 = 0x16f697cd6acb7a56a6d6667a57564be67df133d9
    require not msg.value
    stor0 = msg.sender
    return code.data[385 len 1946]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint256 stor1;
uint256 stor2;
array of uint256 version;
uint256 startBlock;
uint256 endBlock;
uint256 totalEtherCap;
uint256 weiRaised;
uint256 minContrib;
address walletAddress;

function endBlock() {
    return endBlock
}

function totalEtherCap() {
    return totalEtherCap
}

function weiRaised() {
    return weiRaised
}

function startBlock() {
    return startBlock
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

function hasEnded() {
    return block.number >= endBlock
}

function setEndBlock(uint256 arg1) {
    require owner == msg.sender
    endBlock = arg1
}

function setWallet(address arg1) {
    require owner == msg.sender
    walletAddress = arg1
}

function setStartBlock(uint256 arg1) {
    require owner == msg.sender
    startBlock = arg1
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

function isActive() {
    if block.number < startBlock:
        return block.number >= startBlock
    return block.number <= endBlock
}

function setWeiRaised(uint256 arg1) {
    require owner == msg.sender
    require arg1 + weiRaised >= weiRaised
    weiRaised += arg1
}

function processContributions(address arg1, uint256 arg2) payable {
    require msg.value + weiRaised >= weiRaised
    if block.number < startBlock:
        require block.number >= startBlock
    else:
        require block.number <= endBlock
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
    if block.number < startBlock:
        require block.number >= startBlock
    else:
        require block.number <= endBlock
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
