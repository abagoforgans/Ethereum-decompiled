contract main {


// =======================  Init code  ======================


address stor0;
address stor2;
address stor3;

function _fallback() {
    stor0 = msg.sender
    stor0 = code.data[4108 len 20]
    stor2 = code.data[4140 len 20]
    stor3 = code.data[4172 len 20]
    return code.data[341 len 3755]
}



// =====================  Runtime code  =====================


const proxyPayment(address arg1) = 0


address owner;
address newOwner;
address fccAddress;
address contributionAddress;
uint256 activationTime;
mapping of uint8 stor5;

function contribution() {
    return contributionAddress
}

function fcc() {
    return fccAddress
}

function owner() {
    return owner
}

function whitelist(address arg1) {
    return bool(stor5[arg1])
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

function changeController(address arg1) {
    require msg.sender == owner
    require ext_code.size(fccAddress)
    call fccAddress.0x3cebb823 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    emit ControllerChanged(arg1);
}

function onApprove(address arg1, address arg2, uint256 arg3) {
    if not activationTime:
        require ext_code.size(contributionAddress)
        call contributionAddress.0xfe67a189 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if ext_call.return_data[0] <= 0:
            return 0
        require ext_call.return_data[0] + 60 >= ext_call.return_data[0]
        activationTime = ext_call.return_data[0] + 60
    if block.timestamp > activationTime:
        return (block.timestamp > activationTime)
    return (bool(stor5[address(arg1)]) == 1)
}

function onTransfer(address arg1, address arg2, uint256 arg3) {
    if not activationTime:
        require ext_code.size(contributionAddress)
        call contributionAddress.0xfe67a189 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if ext_call.return_data[0] <= 0:
            return 0
        require ext_call.return_data[0] + 60 >= ext_call.return_data[0]
        activationTime = ext_call.return_data[0] + 60
    if block.timestamp > activationTime:
        return (block.timestamp > activationTime)
    return (bool(stor5[address(arg1)]) == 1)
}

function claimTokens(address arg1) {
    require msg.sender == owner
    require ext_code.size(fccAddress)
    call fccAddress.0xf77c4791 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[12 len 20] == this.address:
        require ext_code.size(fccAddress)
        call fccAddress.0xdf8de3e7 with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
    if not arg1:
        call owner with:
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
        args owner, ext_call.return_data[0]
    require ext_call.success
    emit ClaimedTokens(ext_call.return_data[0], arg1, owner);
}



}
