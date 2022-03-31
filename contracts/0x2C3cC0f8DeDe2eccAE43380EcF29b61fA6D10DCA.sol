contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
address stor3;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[1722 len 20]
    stor2 = code.data[1754 len 20]
    stor3 = code.data[1690 len 20]
    return code.data[173 len 1505]
}



// =====================  Runtime code  =====================


address owner;
address escapeHatchCallerAddress;
address escapeHatchDestinationAddress;
address beneficiaryAddress;

function escapeHatchCaller() {
    return escapeHatchCallerAddress
}

function beneficiary() {
    return beneficiaryAddress
}

function owner() {
    return owner
}

function escapeHatchDestination() {
    return escapeHatchDestinationAddress
}

function depositETH() payable {
    emit DonationDeposited4Doubling(msg.value, msg.sender);
}

function changeOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
    emit NewOwner(msg.sender, arg1);
}

function changeEscapeCaller(address arg1) {
    if escapeHatchCallerAddress != msg.sender:
        require owner == msg.sender
    escapeHatchCallerAddress = arg1
}

function escapeHatch() {
    if escapeHatchCallerAddress != msg.sender:
        require owner == msg.sender
    call escapeHatchDestinationAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit EscapeHatchCalled(eth.balance(this.address));
}

function _fallback() payable {
    if msg.value:
        require msg.value
        require 2 * msg.value / msg.value == 2
    if eth.balance(this.address) < 2 * msg.value:
        require ext_code.size(beneficiaryAddress)
        call beneficiaryAddress.proxyPayment(address rg1) with:
           value eth.balance(this.address) wei
             gas gas_remaining - 9710 wei
            args msg.sender
        require ext_call.success
        require ext_call.return_data[0]
        emit DonationSentButNotDoubled(eth.balance(this.address), msg.sender);
    else:
        if msg.value:
            require msg.value
            require 2 * msg.value / msg.value == 2
        require ext_code.size(beneficiaryAddress)
        call beneficiaryAddress.proxyPayment(address rg1) with:
           value 2 * msg.value wei
             gas gas_remaining - 9710 wei
            args msg.sender
        require ext_call.success
        require ext_call.return_data[0]
        emit DonationDoubled((2 * msg.value), msg.sender);
}



}
