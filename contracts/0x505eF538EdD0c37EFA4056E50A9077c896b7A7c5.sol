contract main {




// =====================  Runtime code  =====================


address owner;
address oldTokenAddress;
address newTokenAddress;
address sub_3d6a7219Address;
uint256 sub_a1e422b6;
uint256 sub_ae39515e;

function sub_3d6a7219(?) {
    return sub_3d6a7219Address
}

function owner() {
    return owner
}

function sub_a1e422b6(?) {
    return sub_a1e422b6
}

function sub_ae39515e(?) {
    return sub_ae39515e
}

function oldToken() {
    return oldTokenAddress
}

function newToken() {
    return newTokenAddress
}

function _fallback() payable {
    revert
}

function sub_9dfd13b2(?) {
    sub_a1e422b6 = arg1
}

function changeRate(uint256 arg1) {
    sub_ae39515e = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_afe7d954(?) {
    require msg.sender == owner
    require ext_code.size(newTokenAddress)
    call newTokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(newTokenAddress)
    call newTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_536fcc7b(?) {
    require block.timestamp <= sub_a1e422b6
    require ext_code.size(oldTokenAddress)
    call oldTokenAddress.0xdd62ed3e with:
         gas gas_remaining wei
        args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    if not ext_call.return_data[0]:
        require ext_code.size(oldTokenAddress)
        call oldTokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, sub_3d6a7219Address, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(newTokenAddress)
            call newTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    else:
        require sub_ae39515e * ext_call.return_data[0] / ext_call.return_data[0] == sub_ae39515e
        require ext_code.size(oldTokenAddress)
        call oldTokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, sub_3d6a7219Address, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(newTokenAddress)
            call newTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), sub_ae39515e * ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
}



}
