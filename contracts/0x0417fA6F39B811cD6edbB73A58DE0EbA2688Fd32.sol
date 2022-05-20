contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
uint8 stor2; offset 160
uint8 stor2; offset 168
address beneficiaryAddress;
uint256 start_time;
uint256 end_time;
uint256 fifty_two_weeks;

function end_time() {
    return end_time
}

function beneficiary() {
    return beneficiaryAddress
}

function fifty_two_weeks() {
    return fifty_two_weeks
}

function start_time() {
    return start_time
}

function owner() {
    return owner
}

function isLocked() {
    return bool(uint8(stor2.field_160))
}

function isReleased() {
    return bool(uint8(stor2.field_168))
}

function _fallback() payable {
    revert
}

function lockOver() {
    return (block.timestamp > end_time)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function tokenBalance() {
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function lock() {
    require msg.sender == owner
    require not uint8(stor2.field_160)
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    start_time = block.timestamp
    require fifty_two_weeks + block.timestamp >= block.timestamp
    end_time = fifty_two_weeks + block.timestamp
    uint8(stor2.field_160) = 1
    return 0
}

function release() {
    require msg.sender == owner
    require uint8(stor2.field_160)
    require not uint8(stor2.field_168)
    require block.timestamp > end_time
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args beneficiaryAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit TokenReleased(beneficiaryAddress, ext_call.return_data[0]);
    uint8(stor2.field_168) = 1
}



}
