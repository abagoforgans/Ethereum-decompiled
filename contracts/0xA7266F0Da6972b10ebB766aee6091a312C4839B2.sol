contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 1418]




// =====================  Runtime code  =====================


array of uint256 stor-1;

function sub_7f562d88(?) payable {
    return bool(uint8(stor[arg1 + 1][arg2]))
}

function sub_a69be3d7(?) payable {
    return uint256(stor[arg1])
}

function sub_c25ce2c1(?) payable {
    require arg2 < uint256(stor[arg1])
    return uint256(stor[arg2 + sha3(arg1)])
}

function sub_cce51144(?) payable {
    require uint256(stor[arg1])
    require uint256(stor[arg1]) - 1 < uint256(stor[arg1])
    return uint256(stor[uint256(stor[arg1]) + sha3(arg1) - 1])
}

function sub_e1ef7405(?) payable {
    require uint256(stor[arg1])
    require 0 < uint256(stor[arg1])
    return uint256(stor[sha3(arg1)])
}

function _fallback() payable {
    revert
}

function sub_53b42b59(?) payable {
    if uint8(stor[arg1 + 1][arg2]):
        return uint256(stor[arg1 + 2][arg2])
    return -1
}

function sub_f9c4ccd8(?) payable {
    require arg2 < uint256(stor[arg1])
    if uint8(stor[arg1 + 1][arg3]):
        return 0
    require arg2 < uint256(stor[arg1])
    uint256(stor[arg2 + sha3(arg1)]) = arg3
    uint8(stor[arg1 + 1][arg3]) = 1
    uint256(stor[arg1 + 2][arg3]) = arg2
    return 1
}

function sub_48d8aa13(?) payable {
    if uint8(stor[arg1 + 1][arg2]):
        return 0
    uint256(stor[arg1 + 2][arg2]) = uint256(stor[arg1])
    uint256(stor[arg1])++
    if not uint256(stor[arg1]) <= uint256(stor[arg1]) + 1:
        idx = uint256(stor[arg1]) + 1
        while uint256(stor[arg1]) > idx:
            uint256(stor[idx + sha3(arg1)]) = 0
            idx = idx + 1
            continue 
    uint256(stor[uint256(stor[arg1]) + sha3(arg1)]) = arg2
    uint8(stor[arg1 + 1][arg2]) = 1
    return 1
}

function sub_d5f94758(?) payable {
    require arg2 < uint256(stor[arg1])
    if arg2 != uint256(stor[arg1]) - 1:
        require uint256(stor[arg1])
        require uint256(stor[arg1]) - 1 < uint256(stor[arg1])
        uint8(stor[arg1 + 1][uint256(stor[uint256(stor[arg1]) + sha3(arg1) - 1])]) = 0
        require arg2 < uint256(stor[arg1])
        if not uint8(stor[arg1 + 1][uint256(stor[uint256(stor[arg1]) + sha3(arg1) - 1])]):
            require arg2 < uint256(stor[arg1])
            uint256(stor[arg2 + sha3(arg1)]) = uint256(stor[uint256(stor[arg1]) + sha3(arg1) - 1])
            uint8(stor[arg1 + 1][uint256(stor[uint256(stor[arg1]) + sha3(arg1) - 1])]) = 1
            uint256(stor[arg1 + 2][uint256(stor[uint256(stor[arg1]) + sha3(arg1) - 1])]) = arg2
        uint256(stor[arg1 + 2][uint256(stor[uint256(stor[arg1]) + sha3(arg1) - 1])]) = arg2
    uint256(stor[arg1])--
    if not uint256(stor[arg1]) <= uint256(stor[arg1]) - 1:
        idx = uint256(stor[arg1]) - 1
        while uint256(stor[arg1]) > idx:
            uint256(stor[idx + sha3(arg1)]) = 0
            idx = idx + 1
            continue 
    uint256(stor[arg1 + 2][uint256(stor[arg2 + sha3(arg1)])]) = 0
    uint8(stor[arg1 + 1][uint256(stor[arg2 + sha3(arg1)])]) = 0
    return uint256(stor[arg2 + sha3(arg1)])
}

function sub_6bebc35a(?) payable {
    if not uint8(stor[arg1 + 1][arg2]):
        return 0
    if uint8(stor[arg1 + 1][arg2]):
        require uint256(stor[arg1 + 2][arg2]) < uint256(stor[arg1])
        if uint256(stor[arg1 + 2][arg2]) != uint256(stor[arg1]) - 1:
            require uint256(stor[arg1])
            require uint256(stor[arg1]) - 1 < uint256(stor[arg1])
            uint8(stor[arg1 + 1][uint256(stor[uint256(stor[arg1]) + sha3(arg1) - 1])]) = 0
            require uint256(stor[arg1 + 2][arg2]) < uint256(stor[arg1])
            if not uint8(stor[arg1 + 1][uint256(stor[uint256(stor[arg1]) + sha3(arg1) - 1])]):
                require uint256(stor[arg1 + 2][arg2]) < uint256(stor[arg1])
                uint256(stor[uint256(stor[arg1 + 2][arg2]) + sha3(arg1)]) = uint256(stor[uint256(stor[arg1]) + sha3(arg1) - 1])
                uint8(stor[arg1 + 1][uint256(stor[uint256(stor[arg1]) + sha3(arg1) - 1])]) = 1
                uint256(stor[arg1 + 2][uint256(stor[uint256(stor[arg1]) + sha3(arg1) - 1])]) = uint256(stor[arg1 + 2][arg2])
            uint256(stor[arg1 + 2][uint256(stor[uint256(stor[arg1]) + sha3(arg1) - 1])]) = uint256(stor[arg1 + 2][arg2])
        uint256(stor[arg1])--
        if not uint256(stor[arg1]) <= uint256(stor[arg1]) - 1:
            idx = uint256(stor[arg1]) - 1
            while uint256(stor[arg1]) > idx:
                uint256(stor[idx + sha3(arg1)]) = 0
                idx = idx + 1
                continue 
        uint256(stor[arg1 + 2][uint256(stor[uint256(stor[arg1 + 2][arg2]) + sha3(arg1)])]) = 0
        uint8(stor[arg1 + 1][uint256(stor[uint256(stor[arg1 + 2][arg2]) + sha3(arg1)])]) = 0
    else:
        require -1 < uint256(stor[arg1])
        if uint256(stor[arg1]) - 1 != -1:
            require uint256(stor[arg1])
            require uint256(stor[arg1]) - 1 < uint256(stor[arg1])
            uint8(stor[arg1 + 1][uint256(stor[uint256(stor[arg1]) + sha3(arg1) - 1])]) = 0
            require -1 < uint256(stor[arg1])
            if not uint8(stor[arg1 + 1][uint256(stor[uint256(stor[arg1]) + sha3(arg1) - 1])]):
                require -1 < uint256(stor[arg1])
                stor-1[sha3(arg1)] = uint256(stor[uint256(stor[arg1]) + sha3(arg1) - 1])
                uint8(stor[arg1 + 1][uint256(stor[uint256(stor[arg1]) + sha3(arg1) - 1])]) = 1
                uint256(stor[arg1 + 2][uint256(stor[uint256(stor[arg1]) + sha3(arg1) - 1])]) = -1
            uint256(stor[arg1 + 2][uint256(stor[uint256(stor[arg1]) + sha3(arg1) - 1])]) = -1
        uint256(stor[arg1])--
        if not uint256(stor[arg1]) <= uint256(stor[arg1]) - 1:
            idx = uint256(stor[arg1]) - 1
            while uint256(stor[arg1]) > idx:
                uint256(stor[idx + sha3(arg1)]) = 0
                idx = idx + 1
                continue 
        uint256(stor[arg1 + 2][stor-1[sha3(arg1)]]) = 0
        uint8(stor[arg1 + 1][stor-1[sha3(arg1)]]) = 0
    return 1
}



}
