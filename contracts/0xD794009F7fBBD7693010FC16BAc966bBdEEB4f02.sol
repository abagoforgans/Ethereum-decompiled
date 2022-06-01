contract main {




// =====================  Runtime code  =====================


address stor0;
address owner;

function owner() {
    return owner
}

function transferOwnership(address arg1) {
    require msg.sender == stor0
    require arg1
    emit OwnershipTransferred(stor0, arg1);
    stor0 = arg1
}

function _fallback() payable {
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sweep(address arg1, uint256 arg2) {
    require msg.sender == stor0
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
