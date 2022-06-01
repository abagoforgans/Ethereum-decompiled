contract main {




// =====================  Runtime code  =====================


address wethAddress;
address pethAddress;
address daiAddress;
address tubAddress;
address mathAddress;

function tub() {
    return tubAddress
}

function weth() {
    return wethAddress
}

function peth() {
    return pethAddress
}

function math() {
    return mathAddress
}

function dai() {
    return daiAddress
}

function _fallback() payable {
    require msg.sender == wethAddress
}

function sub_cb490a79(?) payable {
    require msg.value == arg1
    call wethAddress with:
       value msg.value wei
         gas gas_remaining wei
    require ext_call.success
    require ext_code.size(wethAddress)
    call wethAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args tubAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tubAddress)
    call tubAddress.ask(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(tubAddress)
    call tubAddress.join(uint256 arg1) with:
         gas gas_remaining wei
        args (arg1^2 / ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(pethAddress)
    call pethAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1^2 / ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_f39f7cb4(?) {
    require ext_code.size(pethAddress)
    call pethAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(pethAddress)
    call pethAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args tubAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tubAddress)
    call tubAddress.bid(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tubAddress)
    call tubAddress.exit(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(wethAddress)
    call wethAddress.0x2e1a7d4d with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
}

function sub_b1e1a2a9(?) payable {
    require msg.value == arg2
    call wethAddress with:
       value msg.value wei
         gas gas_remaining wei
    require ext_call.success
    require ext_code.size(wethAddress)
    call wethAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args tubAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tubAddress)
    call tubAddress.ask(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(tubAddress)
    call tubAddress.join(uint256 arg1) with:
         gas gas_remaining wei
        args (arg2^2 / ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(pethAddress)
    call pethAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args tubAddress, arg2^2 / ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tubAddress)
    call tubAddress.lock(bytes32 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg1, arg2^2 / ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c3af7f4b(?) payable {
    require arg1 >= 5 * 10^15
    require msg.value == arg1
    call wethAddress with:
       value msg.value wei
         gas gas_remaining wei
    require ext_call.success
    require ext_code.size(wethAddress)
    call wethAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args tubAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tubAddress)
    call tubAddress.ask(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(tubAddress)
    call tubAddress.join(uint256 arg1) with:
         gas gas_remaining wei
        args (arg1^2 / ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tubAddress)
    call tubAddress.open() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(pethAddress)
    call pethAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args tubAddress, arg1^2 / ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tubAddress)
    call tubAddress.lock(bytes32 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], arg1^2 / ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tubAddress)
    call tubAddress.draw(bytes32 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tubAddress)
    call tubAddress.give(bytes32 arg1, address arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(daiAddress)
    call daiAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x39636be0: ext_call.return_data[0], msg.sender, arg2
}



}
