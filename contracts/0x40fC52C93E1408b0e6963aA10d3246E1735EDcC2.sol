contract main {




// =====================  Runtime code  =====================


address owner;
uint8 stor1; offset 160
uint8 stor1; offset 168
uint128 stor1; offset 168
uint128 stor1; offset 160
address authorizedCallerAddress;

function owner() {
    return owner
}

function authorizedCaller() {
    return authorizedCallerAddress
}

function halted() {
    return bool(uint8(stor1.field_160))
}

function isPayable() {
    return bool(uint8(stor1.field_168))
}

function _fallback() payable {
    require uint8(stor1.field_168)
}

function sub_d996c57a(?) {
    require msg.sender == owner
    Mask(88, 0, stor1.field_168) = Mask(88, 0, arg1)
}

function setHalted(bool arg1) {
    require msg.sender == owner
    Mask(96, 0, stor1.field_160) = Mask(96, 0, arg1)
}

function transferAuthorizedCaller(address arg1) {
    require msg.sender == owner
    require arg1
    authorizedCallerAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sendEther(address arg1, uint256 arg2) payable {
    if owner != msg.sender:
        require msg.sender == authorizedCallerAddress
    require uint8(stor1.field_168)
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    return bool(ext_call.success)
}

function sweepAll(address arg1) {
    if owner != msg.sender:
        require msg.sender == authorizedCallerAddress
    require arg1
    require not uint8(stor1.field_160)
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sweep(address arg1, uint256 arg2) {
    if owner != msg.sender:
        require msg.sender == authorizedCallerAddress
    require arg1
    require not uint8(stor1.field_160)
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        return 0
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}



}
