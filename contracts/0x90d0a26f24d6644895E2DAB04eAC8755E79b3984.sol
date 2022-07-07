contract main {




// =====================  Runtime code  =====================


address owner;
address azimuthAddress;
uint256 monthlyPrice;

function owner() {
    return owner
}

function monthlyPrice() {
    return monthlyPrice
}

function azimuth() {
    return azimuthAddress
}

function close(address arg1) {
    require msg.sender == owner
    require arg1
    selfdestruct(arg1)
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function setMonthlyPrice(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    monthlyPrice = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw(address arg1) {
    require msg.sender == owner
    require arg1
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b78b578f(?) payable {
    if not monthlyPrice:
        require not msg.value
    else:
        require arg3 * monthlyPrice / monthlyPrice == arg3
        require msg.value == arg3 * monthlyPrice
    require ext_code.size(azimuthAddress)
    call azimuthAddress.isOwner(uint32 arg1, address arg2) with:
         gas gas_remaining wei
        args arg1 << 224, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require 0 < arg3
    require ext_code.size(azimuthAddress)
    call azimuthAddress.setManagementProxy(uint32 arg1, address arg2) with:
         gas gas_remaining wei
        args arg1 << 224, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x87213c2b: arg1, arg3
}



}
