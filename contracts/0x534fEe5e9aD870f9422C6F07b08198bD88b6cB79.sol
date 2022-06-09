contract main {




// =====================  Runtime code  =====================


uint256 name;
uint8 decimals;
uint256 symbol;
array of uint256 stor3;
mapping of struct user;
mapping of struct stor6;
array of address stor7;

function name() payable {
    return name
}

function decimals() payable {
    return decimals
}

function getUser(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return user[arg1].field_256, user[arg1].field_512, user[arg1].field_768
}

function sub_71a1003a(?) payable {
    require calldata.size - 4 >= 32
    return user[arg1].field_768
}

function symbol() payable {
    return symbol
}

function _fallback() payable {
    revert
}

function sub_72d6a3c5(?) payable {
    require calldata.size - 4 >= 64
    user[arg1].field_768 += arg2
    return arg2
}

function sub_af572aac(?) payable {
    require calldata.size - 4 >= 64
    if user[arg1].field_512 != arg2:
        return 0
    return 1
}

function sub_918df00e(?) payable {
    require calldata.size - 4 >= 64
    require user[arg1].field_768 >= arg2
    user[arg1].field_768 -= arg2
    return arg2
}

function sub_7db527f9(?) payable {
    require calldata.size - 4 >= 96
    require user[arg1].field_768 >= arg2
    user[arg1].field_768 -= arg2
    user[arg3].field_768 += arg2
    return user[arg1].field_768, user[arg3].field_768
}

function sub_5104aa32(?) payable {
    require calldata.size - 4 >= 96
    idx = 0
    while uint16(idx) < stor3.length:
        mem[0] = 3
        if stor3[uint16(idx)] != arg1:
            idx = idx + 1
            continue 
        else:
            return 0
    user[arg1].field_0 = arg1
    user[arg1].field_256 = arg2
    user[arg1].field_512 = arg3
    stor3.length++
    stor3[stor3.length] = arg1
    return 1
}

function sub_673d443d(?) payable {
    require calldata.size - 4 >= 224
    idx = 0
    s = 1
    while uint16(idx) < stor7.length:
        mem[0] = 7
        if stor7[uint16(idx)] != arg1:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 0
        continue 
    if s:
        stor6[address(arg1)].field_0 = arg1
        stor6[address(arg1)].field_256 = arg2
        stor6[address(arg1)].field_512 = arg3
        stor6[address(arg1)].field_528 = arg4
        stor6[address(arg1)].field_768 = arg5
        stor6[address(arg1)].field_1024 = arg6
        stor6[address(arg1)].field_1280 = arg7
        stor7.length++
        stor7[stor7.length] = arg1
    return bool(s)
}

function getAirdrops() payable {
    idx = 0
    while uint16(idx) < stor7.length:
        require uint16(idx) < mem[96]
        require uint16(idx) < stor7.length
        require uint16(idx) < mem[96]
        require uint16(idx) < stor7.length
        require uint16(idx) < mem[96]
        require uint16(idx) < stor7.length
        require uint16(idx) < mem[96]
        require uint16(idx) < stor7.length
        require uint16(idx) < mem[96]
        require uint16(idx) < stor7.length
        mem[0] = stor7[uint16(idx)]
        mem[32] = 6
        require uint16(idx) < mem[96]
        mem[(32 * uint16(idx)) + 128] = stor6[stor7[uint16(idx)]].field_1280
        idx = idx + 1
        continue 
    mem[352 len 7168] = mem[128 len 192], 224, mem[352 len 6944]
    return 224, 
           7424,
           14624,
           21824,
           29024,
           36224,
           43424,
           224,
           mem[352 len 7168],
           224,
           7424,
           mem[160 len 160],
           224,
           mem[352 len 6944],
           224,
           7424,
           14624,
           mem[192 len 128],
           224,
           mem[352 len 6944],
           224,
           7424,
           14624,
           21824,
           mem[224 len 96],
           224,
           mem[352 len 6944],
           224,
           7424,
           14624,
           21824,
           29024,
           mem[256 len 64],
           224,
           mem[352 len 6944],
           224,
           7424,
           14624,
           21824,
           29024,
           36224,
           mem[288],
           224,
           mem[352 len 6944],
           224,
           7424,
           14624,
           21824,
           29024,
           36224,
           43424,
           224,
           mem[352 len 6944]
}



}
