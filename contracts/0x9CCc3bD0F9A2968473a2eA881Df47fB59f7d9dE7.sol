contract main {




// =====================  Runtime code  =====================


address sub_f14d0cffAddress;
address daiAddress;
address ethAddress;
address adminAddress;
uint256 fees;

function daiAddress() {
    return daiAddress
}

function ethAddress() {
    return ethAddress
}

function fees() {
    return fees
}

function sub_f14d0cff(?) {
    return sub_f14d0cffAddress
}

function admin() {
    return adminAddress
}

function _fallback() payable {
  stop
}

function setFees(uint256 arg1) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'Permission Denied'
    fees = arg1
}

function setAdmin(address arg1) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'Permission Denied'
    adminAddress = arg1
}

function collectFees(uint256 arg1) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'Permission Denied'
    require ext_code.size(daiAddress)
    call daiAddress.0xa9059cbb with:
         gas gas_remaining wei
        args adminAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function getExpectedPrice(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require ext_code.size(sub_f14d0cffAddress)
    staticcall sub_f14d0cffAddress.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
            gas gas_remaining wei
           args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0], ext_call.return_data[32]
}

function sub_dbe7b64d(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(daiAddress)
    call daiAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(daiAddress)
    call daiAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2 * fees / 1000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x7f57166b: address(msg.sender), address(arg1), arg2, daiAddress
}

function sub_115b4824(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_f14d0cffAddress)
    staticcall sub_f14d0cffAddress.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
            gas gas_remaining wei
           args ethAddress, daiAddress, msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(sub_f14d0cffAddress)
    call sub_f14d0cffAddress.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, ext_call.return_data[32], uint32(msg.value), daiAddress, address(this.address), arg2, ext_call.return_data[32], adminAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 != ext_call.return_data[0]:
        revert with 0, 'Can't pay less.'
    require ext_code.size(daiAddress)
    call daiAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2 * fees / 1000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x7f57166b: address(msg.sender), address(arg1), arg2, ethAddress
    return ext_call.return_data[0]
}



}
