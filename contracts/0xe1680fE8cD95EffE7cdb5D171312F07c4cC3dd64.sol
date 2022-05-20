contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
uint8 isLocked; offset 160
uint8 isReleased; offset 168
uint128 stor2; offset 168
uint128 stor2; offset 160
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
    return bool(isLocked)
}

function isReleased() {
    return bool(isReleased)
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
    call stor1.balanceOf(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function lock() {
    require msg.sender == owner
    require not isLocked
    require ext_code.size(stor1)
    call stor1.balanceOf(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    start_time = block.timestamp
    require start_time + fifty_two_weeks >= start_time
    end_time = start_time + fifty_two_weeks
    Mask(96, 0, stor2.field_160) = 1
    return 0
}

function release() {
    require msg.sender == owner
    require isLocked
    require not isReleased
    require block.timestamp > end_time
    require ext_code.size(stor1)
    call stor1.balanceOf(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    call stor1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args beneficiaryAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit TokenReleased(beneficiaryAddress, ext_call.return_data[0]);
    Mask(88, 0, stor2.field_168) = 1
}



}
