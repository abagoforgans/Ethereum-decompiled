contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function sub_63992ad4(?) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_ff749c37(?) {
    require ext_code.size(tokenAddress)
    call tokenAddress.0xff749c37 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function pause() {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x8456cb59 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function unpause() {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x3f4ba83a with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function unlockAllTokens() {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x5e0be607 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_32c938f1(?) {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function burnToken(uint256 arg1) {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x42966c68 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function clearLock(address arg1) {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x8dc73521 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getTotalSupply() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_576511c6(?) {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x576511c6 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function getLockAmount(address arg1) {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x399d6465 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function addLock(address arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0xcc9ac376 with:
         gas gas_remaining wei
        args address(arg1), arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function mintToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function unlock(address arg1) {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.'/lI<' with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function lock(address arg1) {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf435f5a7 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_60ee8fb9(?) {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x60ee8fb9 with:
         gas gas_remaining wei
        args 0, 0, arg1, arg2, arg3, arg4, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function showTimeLockValue(address arg1) {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x3cf7cbdb with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    return ext_call.return_data[0], 
           ext_call.return_data[32],
           bool(ext_call.return_data[64]),
           ext_call.return_data[96],
           ext_call.return_data[128]
}



}
