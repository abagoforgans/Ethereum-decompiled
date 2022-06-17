contract main {




// =====================  Runtime code  =====================


address stor11;
mapping of uint256 stor1000;

function _fallback() payable {
    revert
}

function sub_0f947fb7(?) {
    require calldata.size - 4 >= 64
    return sha3(address(arg1), address(arg2) << 64, 1002)
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(stor11)
    call stor11.0x34153cd1 with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), address(arg1), msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Transfer was declined.'
    if not arg1:
        revert with 0, 'Invalid recipient address.'
    if arg2 <= 0:
        revert with 0, 'Invalid number of the tokens.'
    if stor3E8[msg.sender] < arg2:
        revert with 0, 'Insufficiency funds on the balance.'
    require stor3E8[address(arg1)] + arg2 >= stor3E8[address(arg1)]
    stor3E8[msg.sender] -= arg2
    stor3E8[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require ext_code.size(stor11)
    call stor11.0x34153cd1 with:
         gas gas_remaining wei
        args 0, 0, address(arg2), msg.sender, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Transfer was declined.'
    if not arg2:
        revert with 0, 'Invalid recipient address.'
    if arg3 <= 0:
        revert with 0, 'Invalid number of the tokens.'
    if stor[sha3(address(arg1), Mask(224, 32, msg.sender) >> 32, 1002)] < arg3:
        revert with 0, 'Transfer not allowed.'
    if stor3E8[address(arg1)] < arg3:
        revert with 0, 'Insufficiency funds on the balance.'
    require stor3E8[address(arg2)] + arg3 >= stor3E8[address(arg2)]
    stor3E8[address(arg1)] -= arg3
    stor3E8[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    stor[sha3(address(arg1), Mask(224, 32, msg.sender) >> 32, 1002)] -= arg3
    return 1
}



}
