contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint8 stor5;

function _fallback() {
    stor0 = msg.sender
    stor1 = 10^18
    stor2 = 500 * 10^18
    stor3 = block.timestamp
    stor4 = block.timestamp + (336 * 24 * 3600)
    stor5 = 0
    return code.data[176 len 2762]
}



// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address owner;
uint256 miniumInputEther;
uint256 maxiumInputEther;
uint256 stor3;
uint256 stor4;
uint8 stor5;

function getIsStopFunding() {
    return bool(stor5)
}

function owner() {
    return owner
}

function getMiniumInputEther() {
    return miniumInputEther
}

function getMaxiumInputEther() {
    return maxiumInputEther
}

function getIcoTime() {
    return stor3, stor4
}

function setIcoEndTime(uint256 arg1) {
    require msg.sender == owner
    stor4 = arg1
}

function setIcoStartTime(uint256 arg1) {
    require msg.sender == owner
    stor3 = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function setStopFunding(bool arg1) {
    require msg.sender == owner
    stor5 = uint8(arg1)
}

function setMiniumInputEther(uint256 arg1) {
    require msg.sender == owner
    miniumInputEther = arg1
}

function setMaxiumInputEther(uint256 arg1) {
    require msg.sender == owner
    maxiumInputEther = arg1
}

function isFundingNow() {
    if block.timestamp <= stor3:
        return (block.timestamp > stor3)
    return (block.timestamp < stor4)
}

function setIcoTimeStartEnd(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    if arg1 <= arg2:
        stor3 = arg1
        stor4 = arg2
}

function _fallback() payable {
    require msg.value >= miniumInputEther
    require msg.value <= maxiumInputEther
    require block.timestamp > stor3
    require block.timestamp < stor4
    require not stor5
    emit ReceivedEther(msg.value, msg.sender);
}

function withdrawEtherAll() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit WithdrawEther(eth.balance(this.address), eth.balance(this.address), msg.sender);
    return 1
}

function withdrawEther(uint256 arg1) {
    require msg.sender == owner
    if arg1 > eth.balance(this.address):
        return 0
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit WithdrawEther(arg1, eth.balance(this.address), msg.sender);
    return 1
}



}
