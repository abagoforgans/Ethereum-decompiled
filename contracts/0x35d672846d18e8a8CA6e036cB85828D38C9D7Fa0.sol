contract main {




// =====================  Runtime code  =====================


address owner;
address wethAddress;

function wethAddress() {
    return wethAddress
}

function owner() {
    return owner
}

function _fallback() payable {
  stop
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        revert with 0, 'ONLY_CONTRACT_OWNER'
    if arg1:
        owner = arg1
}

function withdrawETH(uint256 arg1) {
    if owner != msg.sender:
        revert with 0, 'ONLY_CONTRACT_OWNER'
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(address arg1, uint256 arg2) {
    if owner != msg.sender:
        revert with 0, 'ONLY_CONTRACT_OWNER'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Withdraw token failed'
}

function sub_f80860b3(?) {
    if owner != msg.sender:
        revert with 0, 'ONLY_CONTRACT_OWNER'
    require ext_code.size(wethAddress)
    call wethAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Transfer weth failed'
    require ext_code.size(wethAddress)
    call wethAddress.withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg2)
    call arg2.ethToTokenSwapInput(uint256 arg1, uint256 arg2) with:
       value arg4 wei
         gas gas_remaining wei
        args arg3, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_040a6e57(?) {
    if owner != msg.sender:
        revert with 0, 'ONLY_CONTRACT_OWNER'
    require ext_code.size(arg1)
    call arg1.0xdd62ed3e with:
         gas gas_remaining wei
        args this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    if ext_call.return_data[0] < arg4:
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Approve failed'
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Transfer token failed'
    require ext_code.size(arg2)
    call arg2.tokenToEthSwapInput(uint256 arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args arg4, arg3, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wethAddress)
    call wethAddress.deposit() with:
       value ext_call.return_data[0] wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(wethAddress)
    call wethAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
