contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
address stor3;

function _fallback() {
    stor0 = 0
    stor1 = code.data[2254 len 20]
    stor2 = code.data[2286 len 20]
    stor3 = code.data[2222 len 20]
    return code.data[169 len 2041]
}



// =====================  Runtime code  =====================


address baseTokenAddress;
address escapeHatchCallerAddress;
address escapeHatchDestinationAddress;
address beneficiaryAddress;

function escapeHatchCaller() {
    return escapeHatchCallerAddress
}

function beneficiary() {
    return beneficiaryAddress
}

function baseToken() {
    return baseTokenAddress
}

function escapeHatchDestination() {
    return escapeHatchDestinationAddress
}

function depositETH() payable {
    emit DonationDeposited4Matching(msg.value, msg.sender);
}

function receiveEther() payable {
    require not baseTokenAddress
    emit EtherReceived(msg.value, msg.sender);
}

function changeEscapeHatchCaller(address arg1) {
    require escapeHatchCallerAddress == msg.sender
    escapeHatchCallerAddress = arg1
    emit EscapeHatchCallerChanged(arg1);
}

function getBalance() {
    if not baseTokenAddress:
        return eth.balance(this.address)
    require ext_code.size(baseTokenAddress)
    call baseTokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function _fallback() payable {
    if eth.balance(this.address) < 2 * msg.value:
        call beneficiaryAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit DonationSentButNotMatched(eth.balance(this.address), msg.sender);
    else:
        call beneficiaryAddress with:
           value 2 * msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit DonationMatched((2 * msg.value), msg.sender);
}

function claimTokens(address arg1) {
    require escapeHatchCallerAddress == msg.sender
    if not arg1:
        call escapeHatchDestinationAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args escapeHatchDestinationAddress, ext_call.return_data[0]
        require ext_call.success
        emit ClaimedTokens(ext_call.return_data[0], arg1, escapeHatchDestinationAddress);
}

function escapeHatch() {
    require escapeHatchCallerAddress == msg.sender
    if not baseTokenAddress:
        call escapeHatchDestinationAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit EscapeHatchCalled(eth.balance(this.address));
    else:
        require ext_code.size(baseTokenAddress)
        call baseTokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        if not baseTokenAddress:
            call escapeHatchDestinationAddress with:
               value ext_call.return_data[0] wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        else:
            require ext_code.size(baseTokenAddress)
            call baseTokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args escapeHatchDestinationAddress, ext_call.return_data[0]
            require ext_call.success
            require ext_call.return_data[0]
        emit EscapeHatchCalled(ext_call.return_data[0]);
}



}
