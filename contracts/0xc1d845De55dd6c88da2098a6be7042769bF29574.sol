contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor8;
uint256 stor10;
uint256 stor11;

function _fallback() payable {
    stor11 = 10^10
    require not msg.value
    stor0 = msg.sender
    stor1 = 0x7bf08cb1732e1246c65b51b83ac092f9b4ebb8c6
    stor8 = 2 * 10^6 * stor11
    stor3 = 0
    stor6 = 10^18
    stor4 = 0
    stor5 = 0
    stor10 = 2 * 10^11 * 3600
    return code.data[158 len 2562]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
address multisigETHAddress;
uint256 eTHReceived;
uint256 sOCXSentToETH;
uint256 startBlock;
uint256 endBlock;
uint256 minContributeETH;
uint8 stor7;
uint256 maxCap;
uint256 stor10;
uint256 stor11;
mapping of struct backers;
array of address backersIndex;

function minContributeETH() {
    return minContributeETH
}

function endBlock() {
    return endBlock
}

function numberOfBackers() {
    return backersIndex.length
}

function maxCap() {
    return maxCap
}

function startBlock() {
    return startBlock
}

function ETHReceived() {
    return eTHReceived
}

function stopped() {
    return bool(stor0)
}

function multisigETH() {
    return multisigETHAddress
}

function owner() {
    return owner
}

function presaleClosed() {
    return bool(stor7)
}

function SOCXSentToETH() {
    return sOCXSentToETH
}

function backers(address arg1) {
    return backers[arg1].field_0, backers[arg1].field_256, bool(backers[arg1].field_512)
}

function backersIndex(uint256 arg1) {
    require arg1 < backersIndex.length
    return address(backersIndex[arg1])
}

function kill() {
    if owner != msg.sender:
    selfdestruct(owner)
}

function emergencyStop() {
    require owner == msg.sender
    stor0 = 1
}

function release() {
    require owner == msg.sender
    require stor0
    stor0 = 0
}

function updateMultiSig(address arg1) {
    require owner == msg.sender
    multisigETHAddress = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function process(address arg1) {
    require owner == msg.sender
    backers[address(arg1)].field_512 = 1
    return 1
}

function start() {
    require owner == msg.sender
    startBlock = block.number
    endBlock = block.number + (16 * 3600)
}

function drain() {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function finalize() {
    require owner == msg.sender
    if block.number < endBlock:
        require sOCXSentToETH >= maxCap
    call multisigETHAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stor7 = 1
}

function _fallback() payable {
    require block.number <= endBlock
    require not stor0
    require block.number >= startBlock
    require block.number <= endBlock
    require msg.value >= minContributeETH
    require stor10
    require (msg.value / stor10 * stor11) + sOCXSentToETH >= sOCXSentToETH
    require (msg.value / stor10 * stor11) + sOCXSentToETH >= msg.value / stor10 * stor11
    require (msg.value / stor10 * stor11) + sOCXSentToETH <= maxCap
    require (msg.value / stor10 * stor11) + backers[address(msg.sender)].field_256 >= backers[address(msg.sender)].field_256
    require (msg.value / stor10 * stor11) + backers[address(msg.sender)].field_256 >= msg.value / stor10 * stor11
    backers[address(msg.sender)].field_256 += msg.value / stor10 * stor11
    require msg.value + backers[address(msg.sender)].field_0 >= backers[address(msg.sender)].field_0
    require msg.value + backers[address(msg.sender)].field_0 >= msg.value
    backers[address(msg.sender)].field_0 += msg.value
    require msg.value + eTHReceived >= eTHReceived
    require msg.value + eTHReceived >= msg.value
    eTHReceived += msg.value
    require (msg.value / stor10 * stor11) + sOCXSentToETH >= sOCXSentToETH
    require (msg.value / stor10 * stor11) + sOCXSentToETH >= msg.value / stor10 * stor11
    sOCXSentToETH += msg.value / stor10 * stor11
    backersIndex.length++
    if not backersIndex.length <= backersIndex.length + 1:
        idx = backersIndex.length + 1
        while backersIndex.length > idx:
            uint256(backersIndex[idx]) = 0
            idx = idx + 1
            continue 
    address(backersIndex[backersIndex.length]) = msg.sender
    emit ReceivedETH(msg.sender, msg.value, msg.value / stor10 * stor11);
}



}
