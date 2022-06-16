contract main {




// =====================  Runtime code  =====================


address owner;
address sub_8cec13b8Address;
address tetherTokenAddress;
address sub_84f24dbdAddress;

function sub_84f24dbd(?) {
    return sub_84f24dbdAddress
}

function sub_8cec13b8(?) {
    return sub_8cec13b8Address
}

function owner() {
    return owner
}

function tetherToken() {
    return tetherTokenAddress
}

function _fallback() payable {
    revert
}

function sub_45facd8e(?) {
    require msg.sender == owner
    sub_8cec13b8Address = arg1
}

function sub_607d485c(?) {
    require msg.sender == owner
    sub_84f24dbdAddress = arg1
}

function setTetherAddress(address arg1) {
    require msg.sender == owner
    tetherTokenAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_60b483ee(?) {
    require msg.sender == owner
    require ext_code.size(tetherTokenAddress)
    call tetherTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function drainToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(sub_8cec13b8Address)
    call sub_8cec13b8Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function transferUSDT(address arg1, uint256 arg2) {
    require msg.sender == sub_84f24dbdAddress
    require ext_code.size(tetherTokenAddress)
    call tetherTokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'USDT is not enought amount'
    require ext_code.size(tetherTokenAddress)
    call tetherTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
