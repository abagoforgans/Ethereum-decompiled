contract main {


// =======================  Init code  ======================


uint128 stor0; offset 160
address stor0;
address stor1;
address stor2;

function _fallback() payable {
    Mask(96, 0, stor0.field_160) = 0
    require not msg.value
    address(stor0.field_0) = msg.sender
    stor1 = code.data[4071 len 20]
    stor2 = code.data[4103 len 20]
    return code.data[289 len 3770]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address debtRegistryAddress;
address tokenTransferProxyAddress;

function tokenTransferProxy() {
    return tokenTransferProxyAddress
}

function debtRegistry() {
    return debtRegistryAddress
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function unpause() {
    require msg.sender == owner
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function repay(bytes32 arg1, uint256 arg2, address arg3) {
    require not uint8(stor0.field_160)
    require arg3
    require arg2 > 0
    require ext_code.size(debtRegistryAddress)
    call debtRegistryAddress.0x9758af1e with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    if not ext_call.return_data[0]:
        emit LogError(0, arg1);
        return 0
    require ext_code.size(arg3)
    call arg3.0x70a08231 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    if ext_call.return_data[0] < arg2:
        emit LogError(1, arg1);
        return 0
    require ext_code.size(arg3)
    call arg3.0xdd62ed3e with:
         gas gas_remaining - 710 wei
        args msg.sender, tokenTransferProxyAddress
    require ext_call.success
    if ext_call.return_data[0] < arg2:
        emit LogError(1, arg1);
        return 0
    require ext_code.size(debtRegistryAddress)
    call debtRegistryAddress.0xf6f494c9 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(debtRegistryAddress)
    call debtRegistryAddress.0xba20dda4 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x5f0280ba with:
         gas gas_remaining - 710 wei
        args 0, 0, uint32(msg.sender), address(ext_call.return_data[0]), arg2, arg3
    require ext_call.success
    if not ext_call.return_data[0]:
        emit LogError(2, arg1);
        return 0
    require ext_code.size(tokenTransferProxyAddress)
    call tokenTransferProxyAddress.0x15dacbea with:
         gas gas_remaining - 710 wei
        args 0, 0, msg.sender, address(ext_call.return_data[0]), arg2
    require ext_call.success
    require ext_call.return_data[0]
    emit LogRepayment(arg2, arg3, arg1, msg.sender, address(ext_call.return_data[0]));
    return arg2
}



}
