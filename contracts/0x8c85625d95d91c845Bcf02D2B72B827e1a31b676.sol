contract main {




// =====================  Runtime code  =====================


address owner;
address company_tokenAddress;
address partnerAccount;
uint256 originalBalance;
uint256 currentBalance;
uint256 alreadyTransfered;
uint256 startDateOfPayments;
uint256 endDateOfPayments;
uint256 periodOfOnePayments;
uint256 limitPerPeriod;
uint256 daysOfPayments;

function periodOfOnePayments() {
    return periodOfOnePayments
}

function owner() {
    return owner
}

function endDateOfPayments() {
    return endDateOfPayments
}

function alreadyTransfered() {
    return alreadyTransfered
}

function daysOfPayments() {
    return daysOfPayments
}

function PartnerAccount() {
    return partnerAccount
}

function currentBalance() {
    return currentBalance
}

function originalBalance() {
    return originalBalance
}

function limitPerPeriod() {
    return limitPerPeriod
}

function company_token() {
    return company_tokenAddress
}

function startDateOfPayments() {
    return startDateOfPayments
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
    emit OwnerChanged(owner);
}

function sendCurrentPayment() {
    if block.timestamp > startDateOfPayments:
        require ext_code.size(company_tokenAddress)
        call company_tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args partnerAccount, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}



}
