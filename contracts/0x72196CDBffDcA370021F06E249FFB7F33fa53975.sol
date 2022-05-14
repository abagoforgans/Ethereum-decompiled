contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
address stor1;
address stor2;
uint256 stor3;
uint256 stor5;
uint256 stor6;
uint8 stor8;

function _fallback() payable {
    uint8(stor0.field_160) = 0
    stor1 = msg.sender
    stor5 = 1527328200
    stor6 = 1532815199
    stor8 = 0
    require not msg.value
    address(stor0.field_0) = msg.sender
    stor2 = code.data[1704 len 20]
    stor3 = 10^18 * code.data[1724 len 32]
    return code.data[188 len 1504]
}



// =====================  Runtime code  =====================


const sub_18147a43(?) = 33000 * 10^18

const MINIMUM_PARTICIPATION_AMOUNT = 10^16

const MAXIMUM_PARTICIPATION_AMOUNT = 1000 * 10^18


uint8 stor0; offset 160
address owner;
address stor1;
address beneficiaryAddress;
uint256 fundingGoal;
uint256 amountRaised;
uint256 START_DATE;
uint256 deadline;
mapping of uint256 balanceOf;
uint8 stor8;

function deadline() {
    return deadline
}

function START_DATE() {
    return START_DATE
}

function beneficiary() {
    return beneficiaryAddress
}

function paused() {
    return bool(stor0)
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function fundingGoal() {
    return fundingGoal
}

function amountRaised() {
    return amountRaised
}

function owner() {
    return owner
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function unpause() {
    require owner == msg.sender
    require stor0
    stor0 = 0
    emit Unpause()
}

function pause() {
    require owner == msg.sender
    require not stor0
    stor0 = 1
    emit Pause()
}

function ownerWithdraw(uint256 arg1) {
    require owner == msg.sender
    call stor1 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require block.timestamp >= START_DATE
    require deadline >= block.timestamp
    require msg.value >= 10^16
    require msg.value <= 1000 * 10^18
    require amountRaised + msg.value <= 33000 * 10^18
    require not stor8
    balanceOf[address(msg.sender)] += msg.value
    amountRaised += msg.value
    emit FundTransfer(msg.sender, msg.value, 1);
}



}
