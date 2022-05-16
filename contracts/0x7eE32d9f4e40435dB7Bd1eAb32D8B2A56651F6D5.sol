contract main {




// =====================  Runtime code  =====================


address owner;
address pendingOwner;
uint8 stor2; offset 160
uint128 stor2; offset 160
address congressAddress;
uint256 singleWithdrawMin;
uint256 singleWithdrawMax;
uint256 dayWithdraw;
uint256 monthWithdraw;
uint256 dayWithdrawCount;
uint256 chargeFee;
address chargeFeePoolAddress;

function singleWithdrawMin() {
    return singleWithdrawMin
}

function dayWithdraw() {
    return dayWithdraw
}

function singleWithdrawMax() {
    return singleWithdrawMax
}

function chargeFee() {
    return chargeFee
}

function congress() {
    return congressAddress
}

function owner() {
    return owner
}

function monthWithdraw() {
    return monthWithdraw
}

function chargeFeePool() {
    return chargeFeePoolAddress
}

function pendingOwner() {
    return pendingOwner
}

function dayWithdrawCount() {
    return dayWithdrawCount
}

function destroy() {
    require msg.sender == owner
    selfdestruct(owner)
}

function destroyAndSend(address arg1) {
    require msg.sender == owner
    selfdestruct(arg1)
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    pendingOwner = arg1
}

function setChargeFee(uint256 arg1) {
    require msg.sender == congressAddress
    chargeFee = arg1
}

function setDayWithdraw(uint256 arg1) {
    require msg.sender == congressAddress
    dayWithdraw = arg1
}

function setMonthWithdraw(uint256 arg1) {
    require msg.sender == congressAddress
    monthWithdraw = arg1
}

function setDayWithdrawCount(uint256 arg1) {
    require msg.sender == congressAddress
    dayWithdrawCount = arg1
}

function setChargeFeePool(address arg1) {
    require msg.sender == congressAddress
    chargeFeePoolAddress = arg1
}

function setSingleWithdrawMin(uint256 arg1) {
    require msg.sender == congressAddress
    singleWithdrawMin = arg1
}

function setSingleWithdrawMax(uint256 arg1) {
    require msg.sender == congressAddress
    singleWithdrawMax = arg1
}

function changeCongress(address arg1) {
    require msg.sender == congressAddress
    require arg1
    congressAddress = arg1
}

function initialChargeFee(uint256 arg1) {
    require msg.sender == owner
    require not uint8(stor2.field_160)
    chargeFee = arg1
}

function initialDayWithdraw(uint256 arg1) {
    require msg.sender == owner
    require not uint8(stor2.field_160)
    dayWithdraw = arg1
}

function initialMonthWithdraw(uint256 arg1) {
    require msg.sender == owner
    require not uint8(stor2.field_160)
    monthWithdraw = arg1
}

function initialDayWithdrawCount(uint256 arg1) {
    require msg.sender == owner
    require not uint8(stor2.field_160)
    dayWithdrawCount = arg1
}

function initialChargeFeePool(address arg1) {
    require msg.sender == owner
    require not uint8(stor2.field_160)
    chargeFeePoolAddress = arg1
}

function initialSingleWithdrawMin(uint256 arg1) {
    require msg.sender == owner
    require not uint8(stor2.field_160)
    singleWithdrawMin = arg1
}

function initialSingleWithdrawMax(uint256 arg1) {
    require msg.sender == owner
    require not uint8(stor2.field_160)
    singleWithdrawMax = arg1
}

function claimOwnership() {
    require msg.sender == pendingOwner
    emit OwnershipTransferred(owner, pendingOwner);
    owner = pendingOwner
    pendingOwner = 0
}

function initialCongress(address arg1) {
    require msg.sender == owner
    require not uint8(stor2.field_160)
    require arg1
    congressAddress = arg1
    Mask(96, 0, stor2.field_160) = 1
}



}
