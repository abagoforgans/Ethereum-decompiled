contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;

function _fallback() payable {
    revert
}

function sub_4958a7a6(?) payable {
    require calldata.size - 4 >= 32
    return stor0[Mask(128, 128, arg1)].field_0, stor0[Mask(128, 128, arg1)].field_256, stor0[Mask(128, 128, arg1)].field_512
}

function sub_ab8910c8(?) payable {
    require calldata.size - 4 >= 64
    if stor0[Mask(128, 128, arg1)].field_0 != arg2:
        return 0
    return 1, stor0[Mask(128, 128, arg1)].field_256, stor0[Mask(128, 128, arg1)].field_512
}

function sub_30f047ee(?) payable {
    require calldata.size - 4 >= 64
    if not stor0[Mask(128, 128, arg1)].field_256:
        stor0[Mask(128, 128, arg1)].field_0 = arg2
        stor0[Mask(128, 128, arg1)].field_256 = msg.sender
        stor0[Mask(128, 128, arg1)].field_512 = block.timestamp
    else:
        if stor0[Mask(128, 128, arg1)].field_256 == msg.sender:
            stor0[Mask(128, 128, arg1)].field_0 = arg2
            stor0[Mask(128, 128, arg1)].field_256 = msg.sender
            stor0[Mask(128, 128, arg1)].field_512 = block.timestamp
}



}
