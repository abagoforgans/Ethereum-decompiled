contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
array of uint256 stor12;

function _fallback() payable {
    stor2 = 0
    stor3 = 0
    stor5 = 0
    mem[128 len 151] = code.data[4225 len 151]
    stor12.length = 303
    s = 0
    idx = 128
    while 279 > idx:
        stor12[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 5
    while stor12.length + 31 / 32 > idx:
        stor12[idx] = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor0 = msg.sender
    stor1 = 0
    stor4 = code.data[4376 len 32]
    stor6 = code.data[4408 len 32]
    stor7 = 10^18 * code.data[4440 len 32]
    return code.data[417 len 3808]
}



// =====================  Runtime code  =====================


#
#  - sub_3b0b0290(?)
#
address stor0;
uint256 stor1;
uint256 sub_c5ac6796;
uint256 sub_dfd70aa0;
uint256 sub_0cd3c903;
uint256 sub_058142c9;
uint256 sub_93de2598;
uint256 sub_6f13de33;
uint256 sub_e21240ae;
uint256 sub_80136e82;
address sub_767d4f69Address;
array of uint256 sub_9a716606;
array of struct sub_aaf3c6aa;

function sub_058142c9(?) {
    return sub_058142c9
}

function sub_0cd3c903(?) {
    return sub_0cd3c903
}

function sub_6f13de33(?) {
    return sub_6f13de33
}

function sub_767d4f69(?) {
    return sub_767d4f69Address
}

function sub_80136e82(?) {
    return sub_80136e82
}

function sub_93de2598(?) {
    return sub_93de2598
}

function sub_9a716606(?) {
    return sub_9a716606[0 len sub_9a716606.length]
}

function sub_aaf3c6aa(?) {
    require arg1 < sub_aaf3c6aa.length
    mem[224] = uint256(stor[sha3((3 * arg1) + ('name', 'sub_aaf3c6aa', 13) + 1)].field_0)
    idx = 224
    s = 0
    while stor[(3 * arg1) + ('name', 'sub_aaf3c6aa', 13) + 1].length + 224 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((3 * arg1) + ('name', 'sub_aaf3c6aa', 13) + 1)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return address(sub_aaf3c6aa[arg1].field_0), 
           Array(len=stor[(3 * arg1) + ('name', 'sub_aaf3c6aa', 13) + 1].length, data=mem[224 len stor[(3 * arg1) + ('name', 'sub_aaf3c6aa', 13) + 1].length + (floor32(stor[(3 * arg1) + ('name', 'sub_aaf3c6aa', 13) + 1].length - 1) + -stor[(3 * arg1) + ('name', 'sub_aaf3c6aa', 13) + 1].length + 32 % 32)]),
           uint256(sub_aaf3c6aa[arg1].field_512)
}

function sub_c5ac6796(?) {
    return sub_c5ac6796
}

function sub_dfd70aa0(?) {
    return sub_dfd70aa0
}

function sub_e21240ae(?) {
    return sub_e21240ae
}

function kill() {
    if stor0 != msg.sender:
    if sub_c5ac6796:
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function rand(uint256 arg1) {
    require arg1
    return (block.hash(block.number - 1) % arg1)
}

function sub_d710c01e(?) {
    if sub_c5ac6796 == 1:
        sub_80136e82 = sub_93de2598 - block.timestamp + sub_e21240ae
        if sub_80136e82 <= 0:
            stor1 = 3
            require sub_0cd3c903
            require block.hash(block.number - 1) % sub_0cd3c903 < sub_aaf3c6aa.length
            sub_767d4f69Address = address(sub_aaf3c6aa[block.hash(block.number - 1) % stor4].field_0)
            call address(sub_aaf3c6aa[block.hash(block.number - 1) % stor4].field_0) with:
               value sub_dfd70aa0 wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                stor1 = 4
                sub_c5ac6796 = 0
}

function sub_77237893(?) payable {
    if msg.value < sub_6f13de33:
        return 0
    if sub_c5ac6796 == 1:
        return 0
    if stor1 >= 3:
        return 0
    if arg1.length < 3:
        return 0
    sub_aaf3c6aa.length++
    if not sub_aaf3c6aa.length <= sub_aaf3c6aa.length + 1:
        mem[0] = 13
        idx = (3 * sub_aaf3c6aa.length) + 3
        while sha3(13) + (3 * sub_aaf3c6aa.length) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 1].length:
                mem[0] = idx + sha3(mem[0]) + 1
                s = sha3(idx + sha3(mem[0]) + 1)
                while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            idx = idx + 3
            continue 
    address(sub_aaf3c6aa[sub_aaf3c6aa.length].field_0) = msg.sender
    uint256(stor[sha3((3 * sub_aaf3c6aa.length) + ('name', 'sub_aaf3c6aa', 13) + 1)][].field_0) = Array(len=arg1.length, data=arg1[all])
    uint256(sub_aaf3c6aa[sub_aaf3c6aa.length].field_512) = msg.value
    sub_058142c9++
    sub_dfd70aa0 += msg.value
    if sub_058142c9 < sub_0cd3c903:
        stor1 = 1
    if sub_058142c9 == sub_0cd3c903:
        stor1 = 2
        sub_c5ac6796 = 1
        sub_e21240ae = block.timestamp
    return 1
}



}
