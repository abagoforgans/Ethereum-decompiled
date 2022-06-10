contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;

function _fallback() payable {
    revert
}

function sub_72b0b64b(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor0[arg1].field_0), 
           bool(stor0[arg1].field_8),
           bool(stor0[arg1].field_16),
           bool(stor0[arg1].field_24),
           bool(stor0[arg1].field_32)
}

function sub_2155f940(?) payable {
    require calldata.size - 4 >= 160
    stor0[address(msg.sender)].field_0 = uint8(arg1)
    stor0[address(msg.sender)].field_8 = Mask(248, 0, arg2)
    stor0[address(msg.sender)].field_16 = Mask(240, 0, arg3)
    stor0[address(msg.sender)].field_24 = Mask(232, 0, arg4)
    stor0[address(msg.sender)].field_32 = Mask(224, 0, arg5)
    emit 0x227ac707: msg.sender
}



}
