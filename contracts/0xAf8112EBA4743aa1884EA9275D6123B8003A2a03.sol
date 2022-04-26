contract main {


// =======================  Init code  ======================


address stor0;
address stor2;
uint8 stor4;

function _fallback() payable {
    stor4 = 0
    require not msg.value
    stor0 = msg.sender
    require code.data[1813 len 20]
    stor2 = code.data[1813 len 20]
    return code.data[142 len 1659]
}



// =====================  Runtime code  =====================


address owner;
address pendingOwner;
address walletBeneficiaryAddress;
uint256 weiRaised;
uint8 stor4;

function weiRaised() {
    return weiRaised
}

function walletBeneficiary() {
    return walletBeneficiaryAddress
}

function isFinalized() {
    return bool(stor4)
}

function owner() {
    return owner
}

function pendingOwner() {
    return pendingOwner
}

function deposit() payable {
    require owner == msg.sender
    require not stor4
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

function claimBalanceByOwner(address arg1) {
    require owner == msg.sender
    require not stor4
    require arg1
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit ClaimBalance(eth.balance(this.address), arg1);
}

function finalizeDonation(address arg1) {
    require owner == msg.sender
    require not stor4
    require arg1
    require owner == msg.sender
    require not stor4
    require arg1
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit ClaimBalance(eth.balance(this.address), arg1);
    stor4 = 1
    emit Finalized()
}

function donate() payable {
    require not stor4
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    call walletBeneficiaryAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit DonateAdded(msg.value, msg.sender, walletBeneficiaryAddress);
    if eth.balance(this.address) < msg.value:
        require eth.balance(this.address) + weiRaised >= weiRaised
        weiRaised += eth.balance(this.address)
        call walletBeneficiaryAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit DonateAdded(eth.balance(this.address), this.address, walletBeneficiaryAddress);
    else:
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        call walletBeneficiaryAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit DonateAdded(msg.value, this.address, walletBeneficiaryAddress);
}

function _fallback() payable {
    require not stor4
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    call walletBeneficiaryAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit DonateAdded(msg.value, msg.sender, walletBeneficiaryAddress);
    if eth.balance(this.address) < msg.value:
        require eth.balance(this.address) + weiRaised >= weiRaised
        weiRaised += eth.balance(this.address)
        call walletBeneficiaryAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit DonateAdded(eth.balance(this.address), this.address, walletBeneficiaryAddress);
    else:
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        call walletBeneficiaryAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit DonateAdded(msg.value, this.address, walletBeneficiaryAddress);
}



}
