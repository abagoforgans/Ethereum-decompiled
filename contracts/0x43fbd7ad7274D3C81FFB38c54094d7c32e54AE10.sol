contract main {


// =======================  Init code  ======================


address stor6;
uint256 stor7;
uint8 stor8;
uint256 stor8; offset 8

function _fallback() {
    stor6 = msg.sender
    stor7 = block.timestamp
    uint8(stor8.field_0) = 0
    Mask(248, 0, stor8.field_8) = 0
    return code.data[156 len 1660]
}



// =====================  Runtime code  =====================


address beneficiaryAddress;
mapping of uint256 contributionsETH;
mapping of uint256 payoutsETH;
uint256 fundingGoal;
uint256 payoutETH;
uint256 amountRaised;
address owner;
uint256 creationTime;
uint8 filled;
uint8 sub_80c8525a; offset 8
uint256 stor8; offset 8

function payoutsETH(address arg1) {
    return payoutsETH[arg1]
}

function beneficiary() {
    return beneficiaryAddress
}

function contributionsETH(address arg1) {
    return contributionsETH[arg1]
}

function filled() {
    return bool(filled)
}

function payoutETH() {
    return payoutETH
}

function fundingGoal() {
    return fundingGoal
}

function amountRaised() {
    return amountRaised
}

function sub_80c8525a(?) {
    return bool(sub_80c8525a)
}

function owner() {
    return owner
}

function creationTime() {
    return creationTime
}

function _fallback() payable {
    if not payoutsETH[address(msg.sender)]:
        contributionsETH[address(msg.sender)] += msg.value
        amountRaised += msg.value
}

function initialize(uint256 arg1, address arg2) {
    require not filled
    require msg.sender == owner
    beneficiaryAddress = arg2
    payoutETH = 0
    amountRaised = 0
    fundingGoal = arg1
    filled = 0
    stor8 = 0
}

function safeWithdrawal() {
    if not payoutETH:
        payoutETH += amountRaised
        call beneficiaryAddress with:
           value amountRaised wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            payoutETH = 0
        else:
            stor8 = 1
}



}
