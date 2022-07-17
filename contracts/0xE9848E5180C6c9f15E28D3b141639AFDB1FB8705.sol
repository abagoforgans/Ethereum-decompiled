contract main {




// =====================  Runtime code  =====================


address owner;
address NETAddress;
address sub_cd0d2e0cAddress;

function NET() {
    return NETAddress
}

function owner() {
    return owner
}

function sub_cd0d2e0c(?) {
    return sub_cd0d2e0cAddress
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw(address arg1, uint256 arg2) {
    require msg.sender == sub_cd0d2e0cAddress
    require ext_code.size(NETAddress)
    call NETAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg2
    require ext_code.size(NETAddress)
    call NETAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}



}
