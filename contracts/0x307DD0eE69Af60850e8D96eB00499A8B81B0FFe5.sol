contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor1;
mapping of uint8 sub_d35108ab;

function sub_d35108ab(?) {
    require calldata.size - 4 >= 32
    return sub_d35108ab[Mask(128, 128, arg1)]
}

function _fallback() payable {
    revert
}

function addOwner(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'Senser not authorized.'
    stor1[address(arg1)] = 1
}

function sub_e1bedd3b(?) {
    require calldata.size - 4 >= 32
    if bool(stor1[address(msg.sender)]) != 1:
        revert with 0, 'Senser not authorized.'
    sub_d35108ab[Mask(128, 128, arg1)] = 1
    emit 0x3ea3d27a: mem[96 len 64], sub_d35108ab[Mask(128, 128, arg1)], block.timestamp, Mask(128, 128, arg1)
}

function sub_8dd33ef0(?) {
    require calldata.size - 4 >= 96
    if bool(stor1[address(msg.sender)]) != 1:
        revert with 0, 'Senser not authorized.'
    sub_d35108ab[Mask(128, 128, arg1)] = uint8(sub_d35108ab[Mask(128, 128, arg1)] + 1)
    emit 0x3ea3d27a: Mask(128, 128, arg2), Mask(128, 128, arg3), sub_d35108ab[Mask(128, 128, arg1)], block.timestamp, Mask(128, 128, arg1)
}



}
