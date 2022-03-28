contract main {


// =======================  Init code  ======================


const _fallback = code.data[25 len 996]




// =====================  Runtime code  =====================


function sub_03a1718b(?) payable {
    require uint8(stor[arg1 + 2][arg2])
    return uint256(stor[arg1 + 1][arg2])
}

function sub_b32e9f25(?) payable {
    return uint256(stor[arg1])
}

function sub_c21b2209(?) payable {
    require arg2 < uint256(stor[arg1])
    return uint256(stor[arg2 + sha3(arg1)])
}

function sub_c2a48c0a(?) payable {
    return bool(uint8(stor[arg1 + 2][arg2]))
}

function _fallback() payable {
    revert 
}

function sub_53fe95de(?) payable {
    if not uint8(stor[arg1 + 2][arg2]):
        uint256(stor[arg1 + 1][arg2]) = uint256(stor[arg1])
        uint256(stor[arg1])++
        if not uint256(stor[arg1]) <= uint256(stor[arg1]) + 1:
            idx = uint256(stor[arg1]) + 1
            while uint256(stor[arg1]) > idx:
                uint256(stor[idx + sha3(arg1)]) = 0
                idx = idx + 1
                continue 
        uint256(stor[uint256(stor[arg1]) + sha3(arg1)]) = arg2
        uint8(stor[arg1 + 2][arg2]) = 1
    return 1
}

function sub_5ee64f69(?) payable {
    require arg2 < uint256(stor[arg1])
    if arg2 != uint256(stor[arg1]) - 1:
        require uint256(stor[arg1]) - 1 < uint256(stor[arg1])
        require arg2 < uint256(stor[arg1])
        uint256(stor[arg2 + sha3(arg1)]) = uint256(stor[uint256(stor[arg1]) + sha3(arg1) - 1])
        uint256(stor[arg1 + 1][uint256(stor[uint256(stor[arg1]) + sha3(arg1) - 1])]) = arg2
    uint256(stor[arg1])--
    if not uint256(stor[arg1]) <= uint256(stor[arg1]) - 1:
        uint256(stor[uint256(stor[arg1]) + sha3(arg1) - 1]) = 0
        idx = uint256(stor[arg1])
        while uint256(stor[arg1]) > idx:
            uint256(stor[idx + sha3(arg1)]) = 0
            idx = idx + 1
            continue 
    uint256(stor[arg1 + 1][uint256(stor[arg2 + sha3(arg1)])]) = 0
    uint8(stor[arg1 + 2][uint256(stor[arg2 + sha3(arg1)])]) = 0
    return uint256(stor[arg2 + sha3(arg1)])
}

function sub_75dd5dcb(?) payable {
    require uint8(stor[arg1 + 2][arg2])
    require uint8(stor[arg1 + 2][arg2])
    require uint256(stor[arg1 + 1][arg2]) < uint256(stor[arg1])
    if uint256(stor[arg1 + 1][arg2]) != uint256(stor[arg1]) - 1:
        require uint256(stor[arg1]) - 1 < uint256(stor[arg1])
        require uint256(stor[arg1 + 1][arg2]) < uint256(stor[arg1])
        uint256(stor[uint256(stor[arg1 + 1][arg2]) + sha3(arg1)]) = uint256(stor[uint256(stor[arg1]) + sha3(arg1) - 1])
        uint256(stor[arg1 + 1][uint256(stor[uint256(stor[arg1]) + sha3(arg1) - 1])]) = uint256(stor[arg1 + 1][arg2])
    uint256(stor[arg1])--
    if not uint256(stor[arg1]) <= uint256(stor[arg1]) - 1:
        uint256(stor[uint256(stor[arg1]) + sha3(arg1) - 1]) = 0
        idx = uint256(stor[arg1])
        while uint256(stor[arg1]) > idx:
            uint256(stor[idx + sha3(arg1)]) = 0
            idx = idx + 1
            continue 
    uint256(stor[arg1 + 1][uint256(stor[uint256(stor[arg1 + 1][arg2]) + sha3(arg1)])]) = 0
    uint8(stor[arg1 + 2][uint256(stor[uint256(stor[arg1 + 1][arg2]) + sha3(arg1)])]) = 0
    return 1
}



}
