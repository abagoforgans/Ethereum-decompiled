contract main {




// =====================  Runtime code  =====================


const finalized = 1

const sub_b7fbc8b4(?) = sha3(Mask(64, 192, 'registry') >> 192)


address owner;
array of uint256 sub_20822abc;
address stor2;
address stor2; offset 8
address stor3;
array of struct stor4;
uint256 hash;
array of struct stor6;
uint256 stor7;
uint64 stor8;
uint64 stor8; offset 64
uint64 stor8; offset 128
uint64 stor8; offset 192
uint256 stor9;
uint256 stor10;

function hash() {
    return hash
}

function sub_20822abc(?) {
    return sub_20822abc[arg1][0 len sub_20822abc[arg1].length]
}

function owner() {
    return owner
}

function sub_df15602a(?) {
    return sub_20822abc.length
}

function _fallback() payable {
    revert
}

function sub_df5ab96c(?) {
    return stor9, stor10
}

function sub_62e1e6a3(?) {
    require not owner
    owner = arg1
}

function getAddresses() {
    return address(stor2.field_0), stor3
}

function sub_6eaee6a7(?) {
    require msg.sender == owner
    stor9 = arg1
    stor10 = arg2
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function sub_08804083(?) {
    require msg.sender == owner
    address(stor2.field_8) = arg1
    stor3 = arg2
}

function sub_16441813(?) {
    return uint64(stor8.field_0), uint64(stor8.field_0), uint64(stor8.field_0), uint64(stor8.field_0), stor7
}

function sub_a963f760(?) {
    require msg.sender == owner
    uint64(stor8.field_0) = arg1
    uint64(stor8.field_64) = arg2
    uint64(stor8.field_128) = arg3
    uint64(stor8.field_192) = arg4
    stor7 = arg5
}

function sub_de0cc45b(?) {
    require msg.sender == owner
    if sub_20822abc.length >= 32:
        revert with 0, 'Tags is too many!'
    sub_20822abc.length++
    sub_20822abc[sub_20822abc.length][] = Array(len=arg1.length, data=arg1[all])
}

function getDocument() {
    mem[96] = stor4.length
    mem[128] = uint256(stor4.field_0)
    idx = 128
    s = 0
    while stor4.length + 96 > idx:
        mem[idx + 32] = stor4[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor4.length) + ceil32(stor6.length) + 160
    mem[ceil32(stor4.length) + 128] = stor6.length
    mem[0] = 6
    mem[ceil32(stor4.length) + 160] = uint256(stor6.field_0)
    idx = ceil32(stor4.length) + 160
    s = 0
    while ceil32(stor4.length) + stor6.length + 128 > idx:
        mem[idx + 32] = stor6[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor4.length) + ceil32(stor6.length) + 192] = hash
    mem[ceil32(stor4.length) + ceil32(stor6.length) + 160] = 96
    mem[ceil32(stor4.length) + ceil32(stor6.length) + 256] = stor4.length
    mem[ceil32(stor4.length) + ceil32(stor6.length) + 288 len ceil32(stor4.length)] = mem[128 len ceil32(stor4.length)]
    mem[ceil32(stor4.length) + ceil32(stor6.length) + 224] = stor4.length + 128
    mem[stor4.length + ceil32(stor4.length) + ceil32(stor6.length) + 288] = stor6.length
    mem[stor4.length + ceil32(stor4.length) + ceil32(stor6.length) + 320 len ceil32(stor6.length)] = mem[ceil32(stor4.length) + 160 len ceil32(stor6.length)]
    if not stor6.length % 32:
        return Array(len=stor4.length, data=mem[128 len ceil32(stor4.length)], mem[(2 * ceil32(stor4.length)) + ceil32(stor6.length) + 288 len stor6.length + stor4.length + -ceil32(stor4.length) + 32]), 
               hash,
               stor4.length + 128
    mem[floor32(stor6.length) + stor4.length + ceil32(stor4.length) + ceil32(stor6.length) + 320] = mem[floor32(stor6.length) + stor4.length + ceil32(stor4.length) + ceil32(stor6.length) + -stor6.length % 32 + 352 len stor6.length % 32]
    return Array(len=stor4.length, data=mem[128 len ceil32(stor4.length)], mem[(2 * ceil32(stor4.length)) + ceil32(stor6.length) + 288 len floor32(stor6.length) + stor4.length + -ceil32(stor4.length) + 64]), 
           hash,
           stor4.length + 128
}



}
