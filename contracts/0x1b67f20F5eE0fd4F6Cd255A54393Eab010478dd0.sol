contract main {




// =====================  Runtime code  =====================


address contractOwner;
mapping of uint8 stor1;
mapping of struct sub_601cd710;
mapping of struct sub_c32fdf34;

function sub_601cd710(?) {
    return sub_601cd710[arg1].field_0, sub_601cd710[arg1].field_256, bool(sub_601cd710[arg1].field_512)
}

function sub_c32fdf34(?) {
    return sub_c32fdf34[arg1].field_0, sub_c32fdf34[arg1].field_256, sub_c32fdf34[arg1].field_512
}

function contractOwner() {
    return contractOwner
}

function _fallback() payable {
    revert
}

function sub_e02ac569(?) {
    if not sub_601cd710[address(arg1)].field_512:
        return 0
    return sub_601cd710[address(arg1)].field_256
}

function whitelistAddress(address arg1) {
    if contractOwner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only contractOwner can call this.'
    stor1[address(arg1)] = 1
}

function removeWhitelistAddress(address arg1) {
    if contractOwner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only contractOwner can call this.'
    stor1[address(arg1)] = 0
}

function sub_8a333d65(?) {
    if contractOwner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only contractOwner can call this.'
    sub_601cd710[address(arg1)].field_0 = arg1
    if not sub_601cd710[address(arg1)].field_512:
        sub_601cd710[address(arg1)].field_256 = arg2
    else:
        sub_601cd710[address(arg1)].field_256 += arg2
    sub_601cd710[address(arg1)].field_512 = 1
    emit 0xe8c22b47: address(arg1), arg2
}

function sub_d1389f35(?) {
    if contractOwner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only contractOwner can call this.'
    if not sub_601cd710[address(arg1)].field_512:
        return 0
    if sub_601cd710[address(arg1)].field_256 < arg2:
        return 0
    sub_601cd710[address(arg1)].field_0 = arg1
    sub_601cd710[address(arg1)].field_256 -= arg2
    sub_601cd710[address(arg1)].field_512 = 1
    emit 0xd2ef8540: address(arg1), arg2
    return 1
}

function sub_61b7bc4b(?) {
    require stor1[address(msg.sender)]
    if not sub_601cd710[address(arg1)].field_512:
        return 0
    if sub_601cd710[address(arg1)].field_256 < arg3:
        return 0
    sub_601cd710[address(arg1)].field_0 = arg1
    sub_601cd710[address(arg1)].field_256 -= arg3
    sub_601cd710[address(arg1)].field_512 = 1
    sub_601cd710[address(arg2)].field_0 = arg2
    if not sub_601cd710[address(arg2)].field_512:
        sub_601cd710[address(arg2)].field_256 = arg3
    else:
        sub_601cd710[address(arg2)].field_256 += arg3
    sub_601cd710[address(arg2)].field_512 = 1
    emit 0x12ba3318: address(arg1), address(arg2), arg3
    return 1
}

function addTransaction(address arg1, uint256 arg2) {
    if not sub_601cd710[address(msg.sender)].field_512:
        return 0
    if sub_601cd710[address(msg.sender)].field_256 < arg2:
        return 0
    sub_601cd710[address(msg.sender)].field_0 = msg.sender
    sub_601cd710[address(msg.sender)].field_256 -= arg2
    sub_601cd710[address(msg.sender)].field_512 = 1
    sub_601cd710[address(arg1)].field_0 = arg1
    if not sub_601cd710[address(arg1)].field_512:
        sub_601cd710[address(arg1)].field_256 = arg2
    else:
        sub_601cd710[address(arg1)].field_256 += arg2
    sub_601cd710[address(arg1)].field_512 = 1
    emit 0x12ba3318: msg.sender, address(arg1), arg2
    return 1
}



}
