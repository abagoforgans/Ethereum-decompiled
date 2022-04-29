contract main {


// =======================  Init code  ======================


uint128 stor0; offset 160
address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint8 stor7;

function _fallback() payable {
    Mask(96, 0, stor0.field_160) = 0
    require not msg.value
    address(stor0.field_0) = msg.sender
    stor5 = code.data[3672 len 32]
    stor6 = code.data[3704 len 32]
    stor2 = 10^18 * code.data[3736 len 32]
    stor3 = 10^17 * code.data[3768 len 32]
    stor4 = 10^18 * code.data[3800 len 32]
    stor7 = 0
    stor1 = 0
    return code.data[289 len 3383]
}



// =====================  Runtime code  =====================


const getNowTime = block.timestamp


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
uint256 weiRaised;
uint256 saleHardcap;
uint256 personalMincap;
uint256 personalMaxcap;
uint64 stor5;
uint256 stor5; offset 64
uint256 startTime;
uint64 stor6;
uint256 stor6; offset 64
uint256 endTime;
uint8 stor7;
mapping of uint256 beneficiaryFunded;

function personalMaxcap() {
    return personalMaxcap
}

function saleHardcap() {
    return saleHardcap
}

function endTime() {
    return endTime
}

function weiRaised() {
    return weiRaised
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function startTime() {
    return startTime
}

function isFinalized() {
    return bool(stor7)
}

function owner() {
    return owner
}

function beneficiaryFunded(address arg1) {
    return beneficiaryFunded[arg1]
}

function personalMincap() {
    return personalMincap
}

function maxReached() {
    return weiRaised >= saleHardcap
}

function changeSaleHardcap(uint256 arg1) {
    require msg.sender == owner
    saleHardcap = 10^18 * arg1
}

function changePersonalMaxcap(uint256 arg1) {
    require msg.sender == owner
    personalMaxcap = 10^18 * arg1
}

function changePersonalMincap(uint256 arg1) {
    require msg.sender == owner
    personalMincap = 10^17 * arg1
}

function changeEndTime(uint64 arg1) {
    require msg.sender == owner
    uint64(stor6.field_0) = arg1
    Mask(192, 0, stor6.field_64) = 0
}

function changeStartTime(uint64 arg1) {
    require msg.sender == owner
    uint64(stor5.field_0) = arg1
    Mask(192, 0, stor5.field_64) = 0
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

function sub_e8c39bd2(?) {
    require msg.sender == owner
    stor7 = 1
    call owner with:
       value weiRaised wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require not uint8(stor0.field_160)
    require not stor7
    require beneficiaryFunded[address(msg.sender)] + msg.value >= beneficiaryFunded[address(msg.sender)]
    require msg.value >= personalMincap
    require weiRaised < saleHardcap
    if block.timestamp < startTime:
        require block.timestamp >= startTime
    else:
        require block.timestamp <= endTime
    require beneficiaryFunded[address(msg.sender)] + msg.value <= personalMaxcap
    require weiRaised + msg.value >= weiRaised
    require weiRaised + msg.value <= saleHardcap
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require beneficiaryFunded[address(msg.sender)] + msg.value >= beneficiaryFunded[address(msg.sender)]
    beneficiaryFunded[address(msg.sender)] += msg.value
}

function buyPresale() payable {
    require not uint8(stor0.field_160)
    require not stor7
    require beneficiaryFunded[address(msg.sender)] + msg.value >= beneficiaryFunded[address(msg.sender)]
    require msg.value >= personalMincap
    require weiRaised < saleHardcap
    if block.timestamp < startTime:
        require block.timestamp >= startTime
    else:
        require block.timestamp <= endTime
    require beneficiaryFunded[address(msg.sender)] + msg.value <= personalMaxcap
    require weiRaised + msg.value >= weiRaised
    require weiRaised + msg.value <= saleHardcap
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require beneficiaryFunded[address(msg.sender)] + msg.value >= beneficiaryFunded[address(msg.sender)]
    beneficiaryFunded[address(msg.sender)] += msg.value
}



}
