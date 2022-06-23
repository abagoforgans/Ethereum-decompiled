contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint256 sub_9040cd79;
mapping of uint8 stor2;

function sub_6873c96f(?) {
    return bool(stor2[address(arg1)])
}

function sub_9040cd79(?) {
    return sub_9040cd79[arg1]
}

function sub_d0131d54(?) {
    return bool(stor2[arg1])
}

function _fallback() payable {
    revert
}

function sub_0b5606f0(?) {
    sub_9040cd79[address(msg.sender)] = arg1
    emit 0x399bda61: arg1, msg.sender
    return 1
}

function sub_011f882d(?) {
    if not sub_9040cd79[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'That Wallet has not requested verification'
    if stor2[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'That Wallet has already been verified'
    stor2[address(arg1)] = 1
    emit 0x442cb5e7: sub_9040cd79[address(arg1)], arg1
    return 1
}

function sub_8b8a1732(?) {
    require ext_code.size(stor0)
    call stor0.0x24d7806c with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Must be an Administrator'
    if not stor2[address(arg1)]:
        revert with 0, 'That Wallet is not verified'
    stor2[address(arg1)] = 0
    emit 0x83bfd2e9: arg1
    return 1
}



}
