contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
address meAddress;
address stor2;
uint32 round; offset 160
address stor3;

function round() {
    return round
}

function isAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor0[address(arg1)])
}

function me() {
    return meAddress
}

function close() payable {
    if meAddress != msg.sender:
        revert with 0, 'sender is not owner'
    selfdestruct(meAddress)
}

function sub_b7c3f24a(?) {
    require calldata.size - 4 >= 32
    if arg1 == 10:
        return True
    return (arg1 == 30)
}

function renounceAdmin() {
    require msg.sender
    require stor0[address(msg.sender)]
    stor0[address(msg.sender)] = 0
    emit AdminRemoved(msg.sender);
}

function sub_8ac9eafe(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender
    if not stor0[address(msg.sender)]:
        revert with 0, 'sender is not an admin'
    round = arg1 % 16777216
}

function _fallback() payable {
    call meAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function addAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    if not stor0[address(msg.sender)]:
        revert with 0, 'sender is not an admin'
    require arg1
    require not stor0[address(arg1)]
    stor0[address(arg1)] = 1
    emit AdminAdded(arg1);
}

function sub_f261ddc5(?) {
    require calldata.size - 4 >= 160
    require msg.sender
    if not stor0[address(msg.sender)]:
        revert with 0, 'sender is not an admin'
    require ext_code.size(stor2)
    call stor2.0x826749e3 with:
         gas gas_remaining wei
        args address(arg2), address(arg3), arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor3)
    call stor3.safeTransfer(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg2), address(arg3), arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xf679695e: arg5, arg1, arg2, arg4
}



}
