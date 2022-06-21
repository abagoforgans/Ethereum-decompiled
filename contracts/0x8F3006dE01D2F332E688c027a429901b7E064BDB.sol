contract main {




// =====================  Runtime code  =====================


address adminOwner;
address sub_44aa49a5Address;
address batAddress;
address daiAddress;
address sub_ccc07959Address;
address wethAddress;
address sub_0cdd44a7Address;
address stor7;
uint256 stor8;
address liquidatorAddress;

function sub_0cdd44a7(?) {
    return sub_0cdd44a7Address
}

function adminOwner() {
    return adminOwner
}

function weth() {
    return wethAddress
}

function liquidator() {
    return liquidatorAddress
}

function sub_44aa49a5(?) {
    return sub_44aa49a5Address
}

function sub_ccc07959(?) {
    return sub_ccc07959Address
}

function dai() {
    return daiAddress
}

function bat() {
    return batAddress
}

function _fallback() payable {
  stop
}

function sub_e0f18c28(?) {
    return (msg.sender == adminOwner)
}

function sub_867b0870(?) {
    return (msg.sender == sub_44aa49a5Address)
}

function sub_34b753fd(?) {
    require msg.sender == adminOwner
    liquidatorAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == adminOwner
    require arg1
    sub_44aa49a5Address = arg1
}

function withdrawEth() {
    require msg.sender == adminOwner
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        return 0
}

function sub_1fc2b883(?) {
    if sub_44aa49a5Address != msg.sender:
        require msg.sender == adminOwner
    require ext_code.size(stor7)
    call stor7.getExchange(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).tokenToEthSwapInput(uint256 arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args arg2, 1, stor8
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_36040931(?) payable {
    if sub_44aa49a5Address != msg.sender:
        require msg.sender == adminOwner
    require ext_code.size(stor7)
    call stor7.getExchange(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).ethToTokenSwapInput(uint256 arg1, uint256 arg2) with:
       value msg.value wei
         gas gas_remaining wei
        args 1, stor8
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function liquidateBorrow(address arg1, address arg2, address arg3, uint256 arg4) {
    require msg.sender == sub_44aa49a5Address
    if batAddress == arg2:
        require ext_code.size(batAddress)
        call batAddress.0xa9059cbb with:
             gas gas_remaining wei
            args liquidatorAddress, 10^9
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            require return_data.size == 32
    require ext_code.size(liquidatorAddress)
    call liquidatorAddress.0xe61604cf with:
         gas gas_remaining wei
        args 0, 0, address(arg2), address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function returnToken(address arg1) {
    require msg.sender == adminOwner
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            require return_data.size == 32
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FAILED_LIQUIDATE_TRANSFER_OUT_FAILED'
}

function sub_93f7f632(?) {
    require msg.sender == sub_44aa49a5Address
    require ext_code.size(arg2)
    call arg2.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if batAddress == arg1:
        require ext_code.size(batAddress)
        call batAddress.0xa9059cbb with:
             gas gas_remaining wei
            args liquidatorAddress, 10^9
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            require return_data.size == 32
    require ext_code.size(liquidatorAddress)
    call liquidatorAddress.0xe61604cf with:
         gas gas_remaining wei
        args 0, 0, address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    call arg2.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 0
}

function returnAllTokens() {
    require msg.sender == adminOwner
    require ext_code.size(batAddress)
    call batAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(batAddress)
        call batAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            require return_data.size == 32
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FAILED_LIQUIDATE_TRANSFER_OUT_FAILED'
    require ext_code.size(daiAddress)
    call daiAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(daiAddress)
        call daiAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            require return_data.size == 32
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FAILED_LIQUIDATE_TRANSFER_OUT_FAILED'
    require ext_code.size(sub_ccc07959Address)
    call sub_ccc07959Address.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(sub_ccc07959Address)
        call sub_ccc07959Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            require return_data.size == 32
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FAILED_LIQUIDATE_TRANSFER_OUT_FAILED'
    require ext_code.size(wethAddress)
    call wethAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(wethAddress)
        call wethAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            require return_data.size == 32
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FAILED_LIQUIDATE_TRANSFER_OUT_FAILED'
    require ext_code.size(sub_0cdd44a7Address)
    call sub_0cdd44a7Address.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(sub_0cdd44a7Address)
        call sub_0cdd44a7Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            require return_data.size == 32
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FAILED_LIQUIDATE_TRANSFER_OUT_FAILED'
}



}
