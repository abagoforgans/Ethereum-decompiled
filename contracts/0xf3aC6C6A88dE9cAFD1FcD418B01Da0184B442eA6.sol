contract main {




// =====================  Runtime code  =====================


address company_tokenAddress;
address partnerAccount;

function PartnerAccount() {
    return partnerAccount
}

function company_token() {
    return company_tokenAddress
}

function _fallback() payable {
    revert
}

function sendCurrentPayment() {
    require ext_code.size(company_tokenAddress)
    call company_tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args partnerAccount, 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(partnerAccount, 10^18);
}



}
