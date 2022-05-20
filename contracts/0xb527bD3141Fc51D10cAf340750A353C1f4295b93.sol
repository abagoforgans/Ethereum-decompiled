contract main {




// =====================  Runtime code  =====================


address kyberNetworkAddress;
uint256 sub_1a41dc8e;
uint256 stor2;
address walletIdAddress;

function sub_1a41dc8e(?) {
    return sub_1a41dc8e
}

function kyberNetwork() {
    return kyberNetworkAddress
}

function walletId() {
    return walletIdAddress
}

function _fallback() payable {
    revert
}

function sub_8df8e17c(?) {
    require ext_code.size(kyberNetworkAddress)
    call kyberNetworkAddress.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0], ext_call.return_data[32]
}

function trade(address arg1, address arg2, uint256 arg3) payable {
    if msg.value != 0:
        require msg.value == arg3
        require ext_code.size(kyberNetworkAddress)
        call kyberNetworkAddress.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
           value msg.value wei
             gas gas_remaining wei
            args 0, 0, msg.value, address(arg2), msg.sender, sub_1a41dc8e, stor2, walletIdAddress
    else:
        require ext_code.size(arg1)
        call arg1.transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args kyberNetworkAddress, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(kyberNetworkAddress)
        call kyberNetworkAddress.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
             gas gas_remaining wei
            args 0, 0, arg3, address(arg2), msg.sender, sub_1a41dc8e, stor2, walletIdAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Trade(address(arg1), arg3, address(arg2), ext_call.return_data[0]);
    return ext_call.return_data[0]
}



}
