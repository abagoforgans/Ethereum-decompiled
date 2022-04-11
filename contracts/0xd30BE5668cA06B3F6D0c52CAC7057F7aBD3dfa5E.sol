contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 2255]




// =====================  Runtime code  =====================


#
#  - sub_37756462(?)
#  - sub_49027dc5(?)
#
array of uint256 sub_f5b79462;
array of uint256 stor2;

function sub_1ad0c0f6(?) payable {
    require arg2 < sub_f5b79462[arg1]
    return address(stor[arg2 + sha3(arg1 + 1)].field_0)
}

function sub_f5b79462(?) payable {
    return sub_f5b79462[('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('param', 'arg1'))]
}

function _fallback() payable {
    revert
}

function sub_8169bc06(?) payable {
    return (arg2 < sub_f5b79462[arg1])
}

function sub_cbb69492(?) payable {
    return (sub_f5b79462[('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('param', 'arg1'))] > 0)
}

function sub_8cef15bd(?) payable {
    if uint256(stor[arg1][address(arg2)].field_0) < 0:
        return 0
    sub_f5b79462[('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('param', 'arg1'))] = arg3
    return 1
}

function sub_abcc477f(?) payable {
    if uint256(stor[arg1][address(arg2)].field_0):
        uint256(stor[arg1][address(arg2)].field_0) = 0
        sub_f5b79462[('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('param', 'arg1'))] = 0
        require uint256(stor[arg1][address(arg2)].field_0) - 1 < sub_f5b79462[arg1]
        Mask(96, 0, stor[uint256(stor[arg1][address(arg2)].field_0) + sha3(arg1 + 1) - 1].field_160) = 1
        stor2[arg1]--
        return 0
    else:
        return 0
}

function sub_3f94d1b0(?) payable {
    sub_f5b79462[('map', ('mask_shl', 160, 0, 0, ('param', 'arg2')), ('param', 'arg1'))] = arg3
    if uint256(stor[arg1][address(arg2)].field_0) > 0:
        return 1
    sub_f5b79462[arg1]++
    if not sub_f5b79462[arg1] <= sub_f5b79462[arg1] + 1:
        idx = sub_f5b79462[arg1] + 1
        while sub_f5b79462[arg1] > idx:
            address(stor[idx + sha3(arg1 + 1)].field_0) = 0
            uint8(stor[idx + sha3(arg1 + 1)].field_160) = 0
            idx = idx + 1
            continue 
    uint256(stor[arg1][address(arg2)].field_0) = sub_f5b79462[arg1] + 1
    require sub_f5b79462[arg1] < sub_f5b79462[arg1]
    address(stor[stor1[arg1] + sha3(arg1 + 1)].field_0) = arg2
    stor2[arg1]++
    return 0
}



}
