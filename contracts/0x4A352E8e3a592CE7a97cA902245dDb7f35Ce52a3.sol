contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 4041]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
mapping of uint256 sub_5296a4cc;
mapping of uint256 sub_a5399607;
array of address stor3;
array of address stor4;
array of uint256 stor5;
array of address stor6;
array of uint256 stor9;
array of uint256 stor10;
array of uint8 stor11;
array of address stor705;
array of uint256 stor706;
array of uint256 stor707;

function sub_5296a4cc(?) payable {
    return sub_5296a4cc[arg1]
}

function owner() payable {
    return address(owner)
}

function sub_a5399607(?) payable {
    return sub_a5399607[arg1]
}

function _fallback() payable {
  stop
}

function sub_4e896258(?) payable {
    require arg1 < 100
    return address(stor705[arg1]), stor706[arg1], stor707[arg1]
}

function transferOwnership(address arg1) payable {
    require msg.sender == address(owner)
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function sub_41ff9d11(?) payable {
    require sub_a5399607[address(msg.sender)] != 0
    require arg1 < 100
    require address(stor6[arg1]) == msg.sender
    stor10[arg1] = arg2
    stor11[arg1] = 1
    emit 0xfb687044: arg1, arg2
}

function sub_9c6ee8a9(?) payable {
    require sub_a5399607[address(msg.sender)] != 0
    require arg1 < 100
    uint256(stor[sha3((7 * arg1) + 7)][]) = Array(len=arg2.length, data=arg2[all])
    uint256(stor[sha3((7 * arg1) + 8)][]) = Array(len=arg3.length, data=arg3[all])
    uint256(stor6[arg1]) = msg.sender or Mask(96, 160, uint256(stor6[arg1]))
    stor11[arg1] = 0
    stor5[arg1] = arg1
    emit 0x72ed8e81: arg1, msg.sender, Array(len=arg2.length, data=arg2[all]), arg2.length + 160
}

function sub_56ec48fa(?) payable {
    require sub_5296a4cc[address(msg.sender)] != 0
    require arg1 < 100
    require stor11[arg1] != 1
    require arg2 < 100
    uint256(stor705[arg2]) = msg.sender or Mask(96, 160, uint256(stor705[arg2]))
    stor706[arg2] = arg3
    stor707[arg2] = arg4
    stor9[arg1]++
    if not stor9[arg1] <= stor9[arg1] + 1:
        idx = stor9[arg1] + 1
        while stor9[arg1] > idx:
            uint256(stor[idx + sha3((7 * arg1) + 9)]) = 0
            idx = idx + 1
            continue 
    require stor9[arg1] < stor9[arg1]
    uint256(stor[stor9[arg1] + sha3((7 * arg1) + 9)]) = arg2
    emit 0xcc774c99: arg1, arg2, arg3, arg4
}

function users(uint256 arg1) payable {
    require arg1 < stor3.length
    mem[192] = uint256(stor[sha3((2 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4)])
    idx = 192
    s = 0
    while stor[(2 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length + 192 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((2 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    return address(stor3[arg1]), 
           Array(len=stor[(2 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length, data=mem[192 len stor[(2 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length + (floor32(stor[(2 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length - 1) + -stor[(2 * arg1) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length + 32 % 32)])
}

function drivers(uint256 arg1) payable {
    require arg1 < stor4.length
    mem[192] = uint256(stor[sha3((2 * arg1) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)])
    idx = 192
    s = 0
    while stor[(2 * arg1) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64].length + 192 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((2 * arg1) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    return address(stor4[arg1]), 
           Array(len=stor[(2 * arg1) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64].length, data=mem[192 len stor[(2 * arg1) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64].length + (floor32(stor[(2 * arg1) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64].length - 1) + -stor[(2 * arg1) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64].length + 32 % 32)])
}

function sub_f9bcd545(?) payable {
    stor3.length++
    if not stor3.length <= stor3.length + 1:
        mem[0] = 3
        idx = 2 * stor3.length + 1
        while sha3(3) + (2 * stor3.length) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 1].length:
                mem[0] = idx + sha3(mem[0]) + 1
                s = sha3(idx + sha3(mem[0]) + 1)
                while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
    require stor3.length < stor3.length
    uint256(stor3[stor3.length]) = arg1 or Mask(96, 160, uint256(stor3[stor3.length]))
    uint256(stor[sha3((2 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4)][]) = Array(len=arg2.length, data=arg2[all])
    emit 0x2da9ad27: stor3.length, address(arg1), Array(len=arg2.length, data=arg2[all])
    emit 0xf8637c84: Array(len=12, data='user created')
}

function sub_41b8fdd9(?) payable {
    require msg.sender == address(owner)
    stor4.length++
    if not stor4.length <= stor4.length + 1:
        mem[0] = 4
        idx = 2 * stor4.length + 1
        while sha3(4) + (2 * stor4.length) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 1].length:
                mem[0] = idx + sha3(mem[0]) + 1
                s = sha3(idx + sha3(mem[0]) + 1)
                while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
    require stor4.length < stor4.length
    uint256(stor4[stor4.length]) = arg1 or Mask(96, 160, uint256(stor4[stor4.length]))
    uint256(stor[sha3((2 * stor4.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64)][]) = Array(len=arg2.length, data=arg2[all])
    emit 0x441eaec9: stor4.length, address(arg1), Array(len=arg2.length, data=arg2[all])
    emit 0xf8637c84: Array(len=14, data='driver created')
}

function sub_5205f112(?) payable {
    require arg1 < 100
    mem[320] = uint256(stor[sha3((7 * arg1) + 7)])
    idx = 320
    s = 0
    while stor[(7 * arg1) + 7].length + 320 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((7 * arg1) + 7) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor[(7 * arg1) + 7].length + (floor32(stor[(7 * arg1) + 7].length - 1) + -stor[(7 * arg1) + 7].length + 32 % 32) + 320] = stor[(7 * arg1) + 8].length
    mem[stor[(7 * arg1) + 7].length + (floor32(stor[(7 * arg1) + 7].length - 1) + -stor[(7 * arg1) + 7].length + 32 % 32) + 352] = uint256(stor[sha3((7 * arg1) + 8)])
    idx = stor[(7 * arg1) + 7].length + (floor32(stor[(7 * arg1) + 7].length - 1) + -stor[(7 * arg1) + 7].length + 32 % 32) + 352
    s = 0
    while stor[(7 * arg1) + 7].length + (floor32(stor[(7 * arg1) + 7].length - 1) + -stor[(7 * arg1) + 7].length + 32 % 32) + stor[(7 * arg1) + 8].length + 352 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((7 * arg1) + 8) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    return stor5[arg1], 
           address(stor6[arg1]),
           Array(len=stor[(7 * arg1) + 7].length, data=mem[320 len stor[(7 * arg1) + 7].length + (floor32(stor[(7 * arg1) + 7].length - 1) + -stor[(7 * arg1) + 7].length + 32 % 32) + stor[(7 * arg1) + 8].length + (floor32(stor[(7 * arg1) + 8].length - 1) + -stor[(7 * arg1) + 8].length + 32 % 32) + 32]),
           stor[(7 * arg1) + 7].length + (floor32(stor[(7 * arg1) + 7].length - 1) + -stor[(7 * arg1) + 7].length + 32 % 32) + 224,
           stor10[arg1],
           stor11[arg1]
}



}
