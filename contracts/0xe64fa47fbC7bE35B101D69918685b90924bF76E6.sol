contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
address sub_4a5043a1Address;
address poolFactoryAddress;
address sub_afcff50fAddress;

function poolFactory() {
    return poolFactoryAddress
}

function sub_4a5043a1(?) {
    return sub_4a5043a1Address
}

function paused() {
    return bool(stor0)
}

function owner() {
    return owner
}

function sub_afcff50f(?) {
    return sub_afcff50fAddress
}

function _fallback() {
  stop
}

function unpause() {
    require msg.sender == owner
    require stor0
    stor0 = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not stor0
    stor0 = 1
    emit Pause()
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function sub_7b77cd6a(?) {
    require msg.sender == owner
    emit 0x1cf6364c: arg1
    sub_afcff50fAddress = arg1
}

function sub_fe3312e2(?) {
    require msg.sender == owner
    emit 0xce1e86ae: arg1
    sub_4a5043a1Address = arg1
}

function setPoolFactory(address arg1) {
    require msg.sender == owner
    emit 0xbef2c37c: arg1
    poolFactoryAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function reclaimEther() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ffce3e20(?) {
    require not stor0
    require sub_4a5043a1Address
    require ext_code.size(poolFactoryAddress)
    call poolFactoryAddress.0xb99d320d with:
         gas gas_remaining wei
        args 0, arg2, arg3, arg4, arg5, address(msg.sender), address(arg6), sub_4a5043a1Address, 288, (32 * arg7.length) + 320, arg7.length, call.data[arg7 + 36 len 32 * arg7.length], arg8.length, call.data[arg8 + 36 len 32 * arg8.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(sub_afcff50fAddress)
    call sub_afcff50fAddress.0x2980f76c with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), address(ext_call.return_data[0]), ext_call.return_data[32], arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
