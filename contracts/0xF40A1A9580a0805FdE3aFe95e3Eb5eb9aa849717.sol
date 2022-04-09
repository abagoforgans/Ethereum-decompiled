contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
address stor4;

function _fallback() {
    stor0 = msg.sender
    stor0 = code.data[4223 len 20]
    stor1 = code.data[4255 len 20]
    stor2 = code.data[4287 len 20]
    stor4 = code.data[4319 len 20]
    return code.data[416 len 3795]
}



// =====================  Runtime code  =====================


const proxyPayment(address arg1) = 0


address controllerAddress;
address mspAddress;
address contributionAddress;
uint256 activationTime;
address sitExchangerAddress;

function contribution() {
    return contributionAddress
}

function sitExchanger() {
    return sitExchangerAddress
}

function msp() {
    return mspAddress
}

function activationTime() {
    return activationTime
}

function controller() {
    return controllerAddress
}

function _fallback() payable {
    revert
}

function changeController(address arg1) {
    require msg.sender == controllerAddress
    require ext_code.size(mspAddress)
    call mspAddress.0x3cebb823 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    emit ControllerChanged(arg1);
}

function refund(address arg1, uint256 arg2) {
    require msg.sender == contributionAddress
    require ext_code.size(mspAddress)
    call mspAddress.0xd3ce77fe with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    return 1
}

function onApprove(address arg1, address arg2, uint256 arg3) {
    require ext_code.size(contributionAddress)
    call contributionAddress.0xb8087ac0 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if not activationTime:
        require ext_code.size(contributionAddress)
        call contributionAddress.0xfe67a189 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if ext_call.return_data[0] <= 0:
            return 0
        require ext_call.return_data[0] + (24 * 3600) >= ext_call.return_data[0]
        activationTime = ext_call.return_data[0] + (24 * 3600)
    if block.timestamp > activationTime:
        return (block.timestamp > activationTime)
    return (arg1 == sitExchangerAddress)
}

function onTransfer(address arg1, address arg2, uint256 arg3) {
    require ext_code.size(contributionAddress)
    call contributionAddress.0xb8087ac0 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    if not activationTime:
        require ext_code.size(contributionAddress)
        call contributionAddress.0xfe67a189 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if ext_call.return_data[0] <= 0:
            return 0
        require ext_call.return_data[0] + (24 * 3600) >= ext_call.return_data[0]
        activationTime = ext_call.return_data[0] + (24 * 3600)
    if block.timestamp > activationTime:
        return (block.timestamp > activationTime)
    return (arg1 == sitExchangerAddress)
}

function claimTokens(address arg1) {
    require msg.sender == controllerAddress
    require ext_code.size(mspAddress)
    call mspAddress.0xf77c4791 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[12 len 20] == this.address:
        require ext_code.size(mspAddress)
        call mspAddress.0xdf8de3e7 with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
    if not arg1:
        call controllerAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args controllerAddress, ext_call.return_data[0]
    require ext_call.success
    emit ClaimedTokens(ext_call.return_data[0], arg1, controllerAddress);
}



}
