contract main {




// =====================  Runtime code  =====================


uint128 storB4DC; offset 160
address storB4DC;
uint256 storB4DC;
uint128 storD568; offset 160
address storD568;

function _fallback() payable {
    if msg.sender == address(storD568.field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot call fallback function from the proxy admin'
    delegate uint256(storB4DC.field_0) with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function admin() {
    if msg.sender == address(storD568.field_0):
        return address(storD568.field_0)
    if msg.sender == address(storD568.field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot call fallback function from the proxy admin'
    delegate uint256(storB4DC.field_0) with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function implementation() {
    if msg.sender == address(storD568.field_0):
        return address(storB4DC.field_0)
    if msg.sender == address(storD568.field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot call fallback function from the proxy admin'
    delegate uint256(storB4DC.field_0) with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function upgradeTo(address arg1) {
    if address(storD568.field_0) != msg.sender:
        if msg.sender == address(storD568.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot call fallback function from the proxy admin'
        delegate uint256(storB4DC.field_0) with:
           funct call.data[0 len 4]
             gas gas_remaining wei
            args call.data[4 len calldata.size - 4]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        return ext_call.return_data[0 len return_data.size]
    if ext_code.size(arg1) <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Cannot set a proxy implementation to a non-contract address'
    address(storB4DC.field_0) = arg1
    Mask(96, 0, storB4DC.field_160) = 0
    emit Upgraded(arg1);
}

function changeAdmin(address arg1) {
    if address(storD568.field_0) != msg.sender:
        if msg.sender == address(storD568.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot call fallback function from the proxy admin'
        delegate uint256(storB4DC.field_0) with:
           funct call.data[0 len 4]
             gas gas_remaining wei
            args call.data[4 len calldata.size - 4]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        return ext_call.return_data[0 len return_data.size]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Cannot change the admin of a proxy to the zero address'
    emit AdminChanged(address(storD568.field_0), arg1);
    address(storD568.field_0) = arg1
    Mask(96, 0, storD568.field_160) = 0
}

function upgradeToAndCall(address arg1, bytes arg2) payable {
    if address(storD568.field_0) != msg.sender:
        if msg.sender == address(storD568.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot call fallback function from the proxy admin'
        delegate uint256(storB4DC.field_0) with:
           funct call.data[0 len 4]
             gas gas_remaining wei
            args call.data[4 len calldata.size - 4]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        return ext_call.return_data[0 len return_data.size]
    if ext_code.size(arg1) <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Cannot set a proxy implementation to a non-contract address'
    address(storB4DC.field_0) = arg1
    Mask(96, 0, storB4DC.field_160) = 0
    emit Upgraded(arg1);
    call this.address with:
       value msg.value wei
         gas gas_remaining wei
        args arg2[all]
    require ext_call.success
}



}
