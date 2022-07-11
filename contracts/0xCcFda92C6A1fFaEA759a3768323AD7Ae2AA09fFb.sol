contract main {




// =====================  Runtime code  =====================


const sub_707e1f43(?) = 0


address owner;
address sub_3177f530Address;

function sub_3177f530(?) {
    return sub_3177f530Address
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function sub_61cb4e77(?) {
    require msg.sender == owner
    sub_3177f530Address = arg1
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

function sub_8e378b0d(?) {
    if arg2 != 6:
        if arg2 != 5:
            if arg2 != 9:
                return (arg1 / 50)
            else:
                return 0
        else:
            return 0
    else:
        return 0
}

function sub_de112b9a(?) {
    require ext_code.size(sub_3177f530Address)
    call sub_3177f530Address.0x5477c4d8 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == arg3:
        return 0
    require ext_code.size(0xa27d2921114382974a07568a9dbf30801b97c902)
    if not arg1:
        delegate 0xa27d2921114382974a07568a9dbf30801b97c902.div(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args arg2, 133
    else:
        delegate 0xa27d2921114382974a07568a9dbf30801b97c902.div(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args arg2, 200
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}



}
