contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 1647]




// =====================  Runtime code  =====================


#
#  - sub_c52c9393(?)
#  - sub_f1b95a04(?)
#
array of address stor1;
array of uint256 stor2;

function _fallback() payable {
    revert
}

function sub_1f4b5bd0(?) payable {
    return (arg2 < uint256(stor1[arg1]))
}

function sub_6e4fb2a4(?) payable {
    return (uint256(stor[arg1][arg2]) > 0)
}

function sub_fb9d5721(?) payable {
    require arg2 < uint256(stor1[arg1])
    return uint256(stor[(2 * arg2) + sha3(arg1 + 1)]), 
           address(stor1[('map', ('type', 256, ('stor', ('add', ('mul', 2, ('param', 'arg2')), ('sha3', ('add', 1, ('param', 'arg1')))))), ('param', 'arg1'))]),
           stor2[('map', ('type', 256, ('stor', ('add', ('mul', 2, ('param', 'arg2')), ('sha3', ('add', 1, ('param', 'arg1')))))), ('param', 'arg1'))]
}

function sub_fff8d6c7(?) payable {
    if uint256(stor[arg1][arg2]):
        uint256(stor[arg1][arg2]) = 0
        address(stor1[('map', ('param', 'arg2'), ('param', 'arg1'))]) = 0
        stor2[('map', ('param', 'arg2'), ('param', 'arg1'))] = 0
        require uint256(stor[arg1][arg2]) - 1 < uint256(stor1[arg1])
        uint8(stor[(2 * uint256(stor[arg1][arg2]) - 1) + sha3(arg1 + 1) + 1]) = 1
        stor2[arg1]--
        return 0
    else:
        return 0
}

function sub_28275686(?) payable {
    address(stor1[('map', ('param', 'arg2'), ('param', 'arg1'))]) = arg3
    stor2[('map', ('param', 'arg2'), ('param', 'arg1'))] = arg4
    if uint256(stor[arg1][arg2]) > 0:
        return 1
    uint256(stor1[arg1])++
    if not uint256(stor1[arg1]) <= uint256(stor1[arg1]) + 1:
        idx = 2 * uint256(stor1[arg1]) + 1
        while 2 * uint256(stor1[arg1]) > idx:
            uint256(stor[idx + sha3(arg1 + 1)]) = 0
            uint8(stor[idx + sha3(arg1 + 1) + 1]) = 0
            idx = idx + 2
            continue 
    uint256(stor[arg1][arg2]) = uint256(stor1[arg1]) + 1
    require uint256(stor1[arg1]) < uint256(stor1[arg1])
    uint256(stor[(2 * uint256(stor1[arg1])) + sha3(arg1 + 1)]) = arg2
    stor2[arg1]++
    return 0
}



}
