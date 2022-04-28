contract main {


// =======================  Init code  ======================


address stor0;
address stor2;
address stor3;

function _fallback() {
    stor0 = msg.sender
    stor0 = code.data[4425 len 20]
    stor2 = code.data[4457 len 20]
    stor3 = code.data[4489 len 20]
    return code.data[337 len 4076]
}



// =====================  Runtime code  =====================


const proxyPayment(address arg1) = 0


address owner;
address newOwner;
address sub_6fb66e0fAddress;
address contributionAddress;
uint256 activationTime;

function contribution() {
    return contributionAddress
}

function sub_6fb66e0f(?) {
    return sub_6fb66e0fAddress
}

function owner() {
    return owner
}

function newOwner() {
    return newOwner
}

function activationTime() {
    return activationTime
}

function _fallback() payable {
    revert
}

function acceptOwnership() {
    if msg.sender == newOwner:
        owner = newOwner
}

function changeOwner(address arg1) {
    require msg.sender == owner
    newOwner = arg1
}

function generateTokens(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(sub_6fb66e0fAddress)
    call sub_6fb66e0fAddress.0x827f32c0 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function changeController(address arg1) {
    require msg.sender == owner
    require ext_code.size(sub_6fb66e0fAddress)
    call sub_6fb66e0fAddress.0x3cebb823 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    emit ControllerChanged(arg1);
}

function onApprove(address arg1, address arg2, uint256 arg3) {
    if not activationTime:
        require ext_code.size(contributionAddress)
        call contributionAddress.finalizedTime() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if ext_call.return_data[0] <= 0:
            return 0
        require ext_call.return_data[0] + (168 * 24 * 3600) >= ext_call.return_data[0]
        activationTime = ext_call.return_data[0] + (168 * 24 * 3600)
    if block.timestamp > activationTime:
        return (block.timestamp > activationTime)
    return (arg1 == owner)
}

function onTransfer(address arg1, address arg2, uint256 arg3) {
    if not activationTime:
        require ext_code.size(contributionAddress)
        call contributionAddress.finalizedTime() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if ext_call.return_data[0] <= 0:
            return 0
        require ext_call.return_data[0] + (168 * 24 * 3600) >= ext_call.return_data[0]
        activationTime = ext_call.return_data[0] + (168 * 24 * 3600)
    if block.timestamp > activationTime:
        return (block.timestamp > activationTime)
    return (arg1 == owner)
}

function claimTokens(address arg1) {
    require msg.sender == owner
    require ext_code.size(sub_6fb66e0fAddress)
    call sub_6fb66e0fAddress.controller() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[12 len 20] == this.address:
        require ext_code.size(sub_6fb66e0fAddress)
        call sub_6fb66e0fAddress.0xdf8de3e7 with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
    if not arg1:
        call owner with:
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
            args owner, ext_call.return_data[0]
        require ext_call.success
        emit ClaimedTokens(ext_call.return_data[0], arg1, owner);
}



}
