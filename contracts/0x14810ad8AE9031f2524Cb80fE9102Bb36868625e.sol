contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
uint8 stor2; offset 160
uint128 stor2; offset 160
address stor2;
uint256 stor3;

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function destroyCrowdsale() payable {
    require msg.sender == owner
    selfdestruct(address(stor2.field_0))
}

function _fallback() payable {
    revert
}

function sub_91376df7(?) {
    require msg.sender == owner
    Mask(96, 0, stor2.field_160) = 0
}

function sub_d6af059f(?) {
    require msg.sender == owner
    Mask(96, 0, stor2.field_160) = 1
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

function sub_ef2797e8(?) {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
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

function destroyToken() payable {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.destroy(address arg1) with:
         gas gas_remaining wei
        args address(stor2.field_0)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function mintToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    if uint8(stor2.field_160):
        call tokenAddress.0x18160ddd with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require stor3 >= ext_call.return_data[0] + arg2
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
