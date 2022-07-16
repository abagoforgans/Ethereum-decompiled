contract main {




// =====================  Runtime code  =====================


#
#  - getOrder()
#
array of struct stor0;
array of struct stor1;
array of uint256 stor2;

function _fallback() payable {
    revert
}

function sub_eef0a391(?) {
    emit 0x6b635cc4: Array(len=7, data='cooking')
}

function sub_e277a44a(?) {
    emit 0x6b635cc4: Array(len=arg1.length, data=arg1[all])
    stor2[].field_0 = Array(len=arg1.length, data=arg1[all])
}

function sub_dba29122(?) {
    mem[192] = uint256(stor0.field_0)
    idx = 192
    s = 0
    while stor0.length + 192 > idx + 32:
        mem[idx + 32] = stor0[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor0.length + (floor32(stor0.length - 1) + -stor0.length + 32 % 32) + 192] = stor1.length
    mem[stor0.length + (floor32(stor0.length - 1) + -stor0.length + 32 % 32) + 224] = uint256(stor1.field_0)
    idx = stor0.length + (floor32(stor0.length - 1) + -stor0.length + 32 % 32) + 224
    s = 0
    while stor0.length + (floor32(stor0.length - 1) + -stor0.length + 32 % 32) + stor1.length + 224 > idx + 32:
        mem[idx + 32] = stor1[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit 0xf05c41a4: Array(len=stor0.length, data=mem[192 len stor0.length + (floor32(stor0.length - 1) + -stor0.length + 32 % 32) + stor1.length + (floor32(stor1.length - 1) + -stor1.length + 32 % 32) + 32]), stor0.length + (floor32(stor0.length - 1) + -stor0.length + 32 % 32) + 96
    emit 0x6b635cc4: 'finished'
    bool(stor2.length) = 0
    stor2.length.field_1 = 8
    stor2.length.field_8 = 'finished' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor0.length) = 0
    stor0.length.field_1 = 4
    stor0.length.field_8 = 'none' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 4
    stor1.length.field_8 = 'none' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 8
    stor2.length.field_8 = 'finished' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
}

function sub_619d2290(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 64
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 256 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 256] = arg2.length
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 288 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        emit 0xd2535c2e: Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 256 len arg2.length + arg1.length + -ceil32(arg1.length) + 32]), arg1.length + 96
    else:
        mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 288] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 320 len arg2.length % 32]
        emit 0xd2535c2e: Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 256 len floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 64]), arg1.length + 96
    emit 0x6b635cc4: 'received'
    bool(stor2.length) = 0
    stor2.length.field_1 = 8
    stor2.length.field_8 = 'received' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor0[].field_0 = Array(len=arg1.length, data=arg1[all])
    stor1[].field_0 = Array(len=arg2.length, data=arg2[all])
}



}
