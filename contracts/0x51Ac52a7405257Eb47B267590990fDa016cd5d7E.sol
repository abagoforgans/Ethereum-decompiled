contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
array of struct stor2;
array of struct sub_02098741;
uint256 sub_e439c099;

function sub_02098741(?) {
    require arg2 < sub_02098741[arg1].field_0
    return sub_02098741[arg1][arg2].field_0
}

function sub_0bf1a62e(?) {
    return sub_02098741[arg1].field_0
}

function sub_22d1b9db(?) {
    return bool(stor1[arg1][address(arg2)])
}

function owner() {
    return owner
}

function sub_e439c099(?) {
    return sub_e439c099
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function updateWhitelist(uint256 arg1, address arg2, bool arg3) {
    require msg.sender == owner
    stor1[arg1][address(arg2)] = uint8(arg3)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_cde54917(?) {
    require stor1[arg1][address(msg.sender)]
    sub_02098741[arg1].field_0++
    sub_02098741[arg1][sub_02098741[arg1].field_0].field_0 = msg.sender
    stor2[address(msg.sender)][arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
    stor2[address(msg.sender)][arg1].field_256 = sub_02098741[arg1].field_0
    stor2[address(msg.sender)][arg1].field_512 = arg3
    stor2[address(msg.sender)][arg1].field_768 = arg4
    stor2[address(msg.sender)][arg1][4][].field_0 = Array(len=arg5.length, data=arg5[all])
    if sub_e439c099 < arg1:
        sub_e439c099 = arg1
    emit NodeListed(msg.sender, arg1, sub_02098741[arg1].field_0);
}

function sub_13a7cd36(?) {
    idx = 0
    while idx < sub_02098741[arg1].field_0:
        require idx < sub_02098741[arg1].field_0
        require idx < sub_02098741[arg1].field_0
        mem[(32 * idx) + 128] = stor2[stor3[arg1][idx].field_0][arg1].field_256
        mem[0] = arg1
        mem[32] = 3
        idx = idx + 1
        continue 
    if sub_02098741[arg1].field_0:
        mem[(32 * sub_02098741[arg1].field_0) + 160] = sub_02098741[arg1].field_0
        idx = (32 * sub_02098741[arg1].field_0) + 160
        s = 0
        while (64 * sub_02098741[arg1].field_0) + 128 > idx:
            mem[idx + 32] = sub_02098741[arg1][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(64 * sub_02098741[arg1].field_0) + 160] = 64
    mem[(64 * sub_02098741[arg1].field_0) + 224] = sub_02098741[arg1].field_0
    mem[(64 * sub_02098741[arg1].field_0) + 256 len floor32(sub_02098741[arg1].field_0)] = mem[(32 * sub_02098741[arg1].field_0) + 160 len floor32(sub_02098741[arg1].field_0)]
    mem[(64 * sub_02098741[arg1].field_0) + 192] = (32 * sub_02098741[arg1].field_0) + 96
    mem[(98 * sub_02098741[arg1].field_0) + 256] = sub_02098741[arg1].field_0
    return Array(len=sub_02098741[arg1].field_0, data=mem[(32 * sub_02098741[arg1].field_0) + 160 len floor32(sub_02098741[arg1].field_0)], mem[(64 * sub_02098741[arg1].field_0) + floor32(sub_02098741[arg1].field_0) + 256 len (64 * sub_02098741[arg1].field_0) + -floor32(sub_02098741[arg1].field_0) + 32]), 
           (32 * sub_02098741[arg1].field_0) + 96
}

function sub_1bcd979d(?) {
    mem[32] = sha3(arg1, 2)
    mem[96] = stor2[arg1][arg2].length
    mem[128] = stor2[arg1][arg2].field_0
    idx = 128
    s = 0
    while stor2[arg1][arg2].length + 96 > idx:
        mem[idx + 32] = stor2[arg1][arg2][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor2[arg1][arg2].length) + ceil32(stor2[arg1][arg2][4].length) + 160
    mem[ceil32(stor2[arg1][arg2].length) + 128] = stor2[arg1][arg2][4].length
    mem[0] = sha3(arg2, sha3(arg1, 2)) + 4
    mem[ceil32(stor2[arg1][arg2].length) + 160] = stor2[arg1][arg2][4].field_0
    idx = ceil32(stor2[arg1][arg2].length) + 160
    s = 0
    while ceil32(stor2[arg1][arg2].length) + stor2[arg1][arg2][4].length + 128 > idx:
        mem[idx + 32] = stor2[arg1][arg2][s + 4].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor2[arg1][arg2].length) + ceil32(stor2[arg1][arg2][4].length) + 192] = stor2[arg1][arg2].field_256
    mem[ceil32(stor2[arg1][arg2].length) + ceil32(stor2[arg1][arg2][4].length) + 224] = stor2[arg1][arg2].field_512
    mem[ceil32(stor2[arg1][arg2].length) + ceil32(stor2[arg1][arg2][4].length) + 256] = stor2[arg1][arg2].field_768
    mem[ceil32(stor2[arg1][arg2].length) + ceil32(stor2[arg1][arg2][4].length) + 160] = 160
    mem[ceil32(stor2[arg1][arg2].length) + ceil32(stor2[arg1][arg2][4].length) + 320] = stor2[arg1][arg2].length
    mem[ceil32(stor2[arg1][arg2].length) + ceil32(stor2[arg1][arg2][4].length) + 352 len ceil32(stor2[arg1][arg2].length)] = mem[128 len ceil32(stor2[arg1][arg2].length)]
    mem[ceil32(stor2[arg1][arg2].length) + ceil32(stor2[arg1][arg2][4].length) + 288] = stor2[arg1][arg2].length + 192
    mem[stor2[arg1][arg2].length + ceil32(stor2[arg1][arg2].length) + ceil32(stor2[arg1][arg2][4].length) + 352] = stor2[arg1][arg2][4].length
    mem[stor2[arg1][arg2].length + ceil32(stor2[arg1][arg2].length) + ceil32(stor2[arg1][arg2][4].length) + 384 len ceil32(stor2[arg1][arg2][4].length)] = mem[ceil32(stor2[arg1][arg2].length) + 160 len ceil32(stor2[arg1][arg2][4].length)]
    if not stor2[arg1][arg2][4].length % 32:
        return Array(len=stor2[arg1][arg2].length, data=mem[128 len ceil32(stor2[arg1][arg2].length)], mem[(2 * ceil32(stor2[arg1][arg2].length)) + ceil32(stor2[arg1][arg2][4].length) + 352 len stor2[arg1][arg2][4].length + stor2[arg1][arg2].length + -ceil32(stor2[arg1][arg2].length) + 32]), 
               stor2[arg1][arg2].field_256,
               stor2[arg1][arg2].field_512,
               stor2[arg1][arg2].field_768,
               stor2[arg1][arg2].length + 192
    mem[floor32(stor2[arg1][arg2][4].length) + stor2[arg1][arg2].length + ceil32(stor2[arg1][arg2].length) + ceil32(stor2[arg1][arg2][4].length) + 384] = mem[floor32(stor2[arg1][arg2][4].length) + stor2[arg1][arg2].length + ceil32(stor2[arg1][arg2].length) + ceil32(stor2[arg1][arg2][4].length) + -stor2[arg1][arg2][4].length % 32 + 416 len stor2[arg1][arg2][4].length % 32]
    return Array(len=stor2[arg1][arg2].length, data=mem[128 len ceil32(stor2[arg1][arg2].length)], mem[(2 * ceil32(stor2[arg1][arg2].length)) + ceil32(stor2[arg1][arg2][4].length) + 352 len floor32(stor2[arg1][arg2][4].length) + stor2[arg1][arg2].length + -ceil32(stor2[arg1][arg2].length) + 64]), 
           stor2[arg1][arg2].field_256,
           stor2[arg1][arg2].field_512,
           stor2[arg1][arg2].field_768,
           stor2[arg1][arg2].length + 192
}

function sub_a93a0fb0(?) {
    mem[96] = stor2[address(arg2)][arg1].length
    mem[128] = stor2[address(arg2)][arg1].field_0
    idx = 128
    s = 0
    while stor2[address(arg2)][arg1].length + 96 > idx:
        mem[idx + 32] = stor2[address(arg2)][arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[32] = sha3(address(arg2), 2)
    mem[64] = ceil32(stor2[address(arg2)][arg1].length) + ceil32(stor2[address(arg2)][arg1][4].length) + 160
    mem[ceil32(stor2[address(arg2)][arg1].length) + 128] = stor2[address(arg2)][arg1][4].length
    mem[0] = sha3(arg1, sha3(address(arg2), 2)) + 4
    mem[ceil32(stor2[address(arg2)][arg1].length) + 160] = stor2[address(arg2)][arg1][4].field_0
    idx = ceil32(stor2[address(arg2)][arg1].length) + 160
    s = 0
    while ceil32(stor2[address(arg2)][arg1].length) + stor2[address(arg2)][arg1][4].length + 128 > idx:
        mem[idx + 32] = stor2[address(arg2)][arg1][s + 4].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor2[address(arg2)][arg1].length) + ceil32(stor2[address(arg2)][arg1][4].length) + 192] = stor2[address(arg2)][arg1].field_256
    mem[ceil32(stor2[address(arg2)][arg1].length) + ceil32(stor2[address(arg2)][arg1][4].length) + 160] = 96
    mem[ceil32(stor2[address(arg2)][arg1].length) + ceil32(stor2[address(arg2)][arg1][4].length) + 256] = stor2[address(arg2)][arg1].length
    mem[ceil32(stor2[address(arg2)][arg1].length) + ceil32(stor2[address(arg2)][arg1][4].length) + 288 len ceil32(stor2[address(arg2)][arg1].length)] = mem[128 len ceil32(stor2[address(arg2)][arg1].length)]
    mem[ceil32(stor2[address(arg2)][arg1].length) + ceil32(stor2[address(arg2)][arg1][4].length) + 224] = stor2[address(arg2)][arg1].length + 128
    mem[stor2[address(arg2)][arg1].length + ceil32(stor2[address(arg2)][arg1].length) + ceil32(stor2[address(arg2)][arg1][4].length) + 288] = stor2[address(arg2)][arg1][4].length
    mem[stor2[address(arg2)][arg1].length + ceil32(stor2[address(arg2)][arg1].length) + ceil32(stor2[address(arg2)][arg1][4].length) + 320 len ceil32(stor2[address(arg2)][arg1][4].length)] = mem[ceil32(stor2[address(arg2)][arg1].length) + 160 len ceil32(stor2[address(arg2)][arg1][4].length)]
    if not stor2[address(arg2)][arg1][4].length % 32:
        return Array(len=stor2[address(arg2)][arg1].length, data=mem[128 len ceil32(stor2[address(arg2)][arg1].length)], mem[(2 * ceil32(stor2[address(arg2)][arg1].length)) + ceil32(stor2[address(arg2)][arg1][4].length) + 288 len stor2[address(arg2)][arg1][4].length + stor2[address(arg2)][arg1].length + -ceil32(stor2[address(arg2)][arg1].length) + 32]), 
               stor2[address(arg2)][arg1].field_256,
               stor2[address(arg2)][arg1].length + 128
    mem[floor32(stor2[address(arg2)][arg1][4].length) + stor2[address(arg2)][arg1].length + ceil32(stor2[address(arg2)][arg1].length) + ceil32(stor2[address(arg2)][arg1][4].length) + 320] = mem[floor32(stor2[address(arg2)][arg1][4].length) + stor2[address(arg2)][arg1].length + ceil32(stor2[address(arg2)][arg1].length) + ceil32(stor2[address(arg2)][arg1][4].length) + -stor2[address(arg2)][arg1][4].length % 32 + 352 len stor2[address(arg2)][arg1][4].length % 32]
    return Array(len=stor2[address(arg2)][arg1].length, data=mem[128 len ceil32(stor2[address(arg2)][arg1].length)], mem[(2 * ceil32(stor2[address(arg2)][arg1].length)) + ceil32(stor2[address(arg2)][arg1][4].length) + 288 len floor32(stor2[address(arg2)][arg1][4].length) + stor2[address(arg2)][arg1].length + -ceil32(stor2[address(arg2)][arg1].length) + 64]), 
           stor2[address(arg2)][arg1].field_256,
           stor2[address(arg2)][arg1].length + 128
}



}
