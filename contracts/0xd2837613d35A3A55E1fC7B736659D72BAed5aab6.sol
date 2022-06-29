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

function sub_e1cd61bd(?) {
    require msg.sender == adminOwner
    require arg1
    sub_44aa49a5Address = arg1
}

function transferAdminOwnership(address arg1) {
    require msg.sender == adminOwner
    require arg1
    adminOwner = arg1
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

function tokenAllowAll(address arg1, address arg2) {
    require msg.sender == adminOwner
    if ext_code.size(arg1) > 0:
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FAILED_LIQUIDATE_ASSET_ALLOWANCE_FAILED'
}

function sub_1fc2b883(?) {
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

function sub_fd14ceb4(?) {
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
            args address(arg2), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            require return_data.size == 32
            if not ext_call.return_data[0]:
                revert with 0, 'FAILED_2'
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
                revert with 0, 'FAILED_1'
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

function sub_ada43b15(?) {
    require msg.sender == sub_44aa49a5Address
    idx = 0
    while idx < cd[132]:
        require idx < ('cd', 36).length
        if address(cd[((32 * idx) + cd[36] + 36)]) == batAddress:
            require ext_code.size(batAddress)
            call batAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args liquidatorAddress, 10^9
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if return_data.size:
                require return_data.size == 32
                mem[0] = ext_call.return_data[0]
        require idx < ('cd', 4).length
        require idx < ('cd', 36).length
        require idx < ('cd', 68).length
        require idx < ('cd', 100).length
        mem[100] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[132] = address(cd[((32 * idx) + cd[36] + 36)])
        mem[164] = address(cd[((32 * idx) + cd[68] + 36)])
        mem[196] = cd[((32 * idx) + cd[100] + 36)]
        require ext_code.size(liquidatorAddress)
        call liquidatorAddress.0xe61604cf with:
             gas gas_remaining wei
            args address(cd[((32 * idx) + cd[4] + 36)]), address(cd[((32 * idx) + cd[36] + 36)]), address(cd[((32 * idx) + cd[68] + 36)]), cd[((32 * idx) + cd[100] + 36)]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
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
                revert with 0, 'FAILED_1'
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
                revert with 0, 'FAILED_1'
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
                revert with 0, 'FAILED_1'
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
                revert with 0, 'FAILED_1'
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
                revert with 0, 'FAILED_1'
}



}
