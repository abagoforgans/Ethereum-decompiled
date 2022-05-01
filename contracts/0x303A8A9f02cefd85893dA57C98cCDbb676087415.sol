contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
address stor6;
uint256 stor8;

function _fallback() {
    stor0 = msg.sender
    require code.data[1711 len 32] < code.data[1743 len 32]
    if not code.data[1691 len 20]:
        stor6 = stor0
    else:
        stor6 = code.data[1691 len 20]
    stor3 = code.data[1711 len 32]
    stor4 = code.data[1743 len 32]
    stor2 = code.data[1775 len 32]
    stor5 = code.data[1807 len 32]
    stor8 = code.data[1839 len 32]
    return code.data[214 len 1465]
}



// =====================  Runtime code  =====================


address owner;
address pendingOwner;
uint256 rate;
uint256 sub_775f75df;
uint256 sub_3c9177cd;
uint256 min;
address beneficiaryAddress;
uint256 raisedAmount;
uint256 sub_fec241d6;

function rate() {
    return rate
}

function beneficiary() {
    return beneficiaryAddress
}

function sub_3c9177cd(?) {
    return sub_3c9177cd
}

function sub_775f75df(?) {
    return sub_775f75df
}

function owner() {
    return owner
}

function raisedAmount() {
    return raisedAmount
}

function pendingOwner() {
    return pendingOwner
}

function min() {
    return min
}

function sub_fec241d6(?) {
    return sub_fec241d6
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    pendingOwner = arg1
}

function claimOwnership() {
    require pendingOwner == msg.sender
    emit OwnershipTransferred(owner, pendingOwner);
    owner = pendingOwner
    pendingOwner = 0
}

function setBeneficiary(address arg1) {
    require owner == msg.sender
    require arg1
    require beneficiaryAddress != arg1
    beneficiaryAddress = arg1
    emit BeneficiaryUpdate(arg1);
}

function emergencyWithdraw() {
    require owner == msg.sender
    require block.timestamp >= sub_3c9177cd
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function withdraw() {
    require beneficiaryAddress == msg.sender
    require block.timestamp >= sub_3c9177cd
    emit 0xd79ef0d7: raisedAmount
    call beneficiaryAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require msg.value >= min
    require block.timestamp >= sub_775f75df
    require block.timestamp < sub_3c9177cd
    require msg.value + raisedAmount < sub_fec241d6
    raisedAmount += msg.value
    emit 0xd4f5ef8b: msg.value, msg.value * rate, msg.sender
}



}
