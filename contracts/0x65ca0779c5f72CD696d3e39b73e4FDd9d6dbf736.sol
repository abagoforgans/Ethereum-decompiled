contract main {




// =====================  Runtime code  =====================


address targetAddress;
address owner;

function owner() {
    return owner
}

function target() {
    return targetAddress
}

function _fallback() payable {
    revert
}

function unvest(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, bool arg6) {
    require calldata.size - 4 >= 32
    targetAddress = address(arg1)
}

function transferTo(address arg1) payable {
    require calldata.size - 4 >= 32
    call arg1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        return 0
}

function send(address arg1) payable {
    require calldata.size - 4 >= 32
    call arg1 with:
       value msg.value / 4 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(targetAddress)
    call targetAddress.0xa03fa7e3 with:
       value msg.value / 4 wei
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call msg.sender with:
       value msg.value / 2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
