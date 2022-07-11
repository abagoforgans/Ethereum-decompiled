contract main {




// =====================  Runtime code  =====================


address owner;
array of struct stor1;
mapping of uint8 stor2;

function sub_26dc64f4(?) {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function sub_27d33f72(?) {
    return stor1.length
}

function sub_611fbc80(?) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor2[address(arg1)])
}

function owner() {
    return owner
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

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_3254812a(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    require stor2[address(arg1)]
    stor2[address(arg1)] = 0
    emit 0x72d20b8b: arg1
}

function sub_33dcf20e(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    require not stor2[address(arg1)]
    stor2[address(arg1)] = 1
    emit 0xbc066de5: arg1
}

function sub_c3016067(?) {
    require calldata.size - 4 >= 128
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(arg2.length) + 128] = arg4.length
    mem[ceil32(arg2.length) + 160 len arg4.length] = arg4[all]
    mem[ceil32(arg2.length) + arg4.length + 160] = 0
    require msg.sender
    require stor2[address(msg.sender)]
    mem[ceil32(arg2.length) + ceil32(arg4.length) + 160] = arg1
    mem[ceil32(arg2.length) + ceil32(arg4.length) + 192] = 96
    mem[ceil32(arg2.length) + ceil32(arg4.length) + 224] = arg3
    mem[ceil32(arg2.length) + ceil32(arg4.length) + 256] = ceil32(arg2.length) + 128
    stor1.length++
    stor1[stor1.length].field_0 = arg1
    stor[sha3((4 * stor1.length) + ('name', 'stor1', 1) + 1)][].field_0 = Array(len=arg2.length, data=arg2[all])
    stor1[stor1.length].field_512 = arg3
    stor[sha3((4 * stor1.length) + ('name', 'stor1', 1) + 3)][].field_0 = Array(len=Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)], data=mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]])
    emit 0xc5c016fa: msg.sender, stor1.length - 1
    return (stor1.length - 1)
}

function reports(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < stor1.length
    mem[96] = stor[(4 * arg1) + ('name', 'stor1', 1) + 1].length
    mem[128] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_0
    idx = 128
    s = 0
    while stor[(4 * arg1) + ('name', 'stor1', 1) + 1].length + 96 > idx:
        mem[idx + 32] = stor[s + sha3((4 * arg1) + ('name', 'stor1', 1) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor[(4 * arg1) + ('name', 'stor1', 1) + 1].length) + ceil32(stor[(4 * arg1) + ('name', 'stor1', 1) + 3].length) + 160
    mem[ceil32(stor[(4 * arg1) + ('name', 'stor1', 1) + 1].length) + 128] = stor[(4 * arg1) + ('name', 'stor1', 1) + 3].length
    mem[0] = (4 * arg1) + sha3(1) + 3
    mem[ceil32(stor[(4 * arg1) + ('name', 'stor1', 1) + 1].length) + 160] = stor[sha3((4 * arg1) + ('name', 'stor1', 1) + 3)].field_0
    idx = ceil32(stor[(4 * arg1) + ('name', 'stor1', 1) + 1].length) + 160
    s = 0
    while ceil32(stor[(4 * arg1) + ('name', 'stor1', 1) + 1].length) + stor[(4 * arg1) + ('name', 'stor1', 1) + 3].length + 128 > idx:
        mem[idx + 32] = stor[s + sha3((4 * arg1) + ('name', 'stor1', 1) + 3)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor[(4 * arg1) + ('name', 'stor1', 1) + 1].length) + ceil32(stor[(4 * arg1) + ('name', 'stor1', 1) + 3].length) + 160] = stor1[arg1].field_0
    mem[ceil32(stor[(4 * arg1) + ('name', 'stor1', 1) + 1].length) + ceil32(stor[(4 * arg1) + ('name', 'stor1', 1) + 3].length) + 224] = stor1[arg1].field_512
    mem[ceil32(stor[(4 * arg1) + ('name', 'stor1', 1) + 1].length) + ceil32(stor[(4 * arg1) + ('name', 'stor1', 1) + 3].length) + 192] = 128
    mem[ceil32(stor[(4 * arg1) + ('name', 'stor1', 1) + 1].length) + ceil32(stor[(4 * arg1) + ('name', 'stor1', 1) + 3].length) + 288] = stor[(4 * arg1) + ('name', 'stor1', 1) + 1].length
    mem[ceil32(stor[(4 * arg1) + ('name', 'stor1', 1) + 1].length) + ceil32(stor[(4 * arg1) + ('name', 'stor1', 1) + 3].length) + 320 len ceil32(stor[(4 * arg1) + ('name', 'stor1', 1) + 1].length)] = mem[128 len ceil32(stor[(4 * arg1) + ('name', 'stor1', 1) + 1].length)]
    mem[ceil32(stor[(4 * arg1) + ('name', 'stor1', 1) + 1].length) + ceil32(stor[(4 * arg1) + ('name', 'stor1', 1) + 3].length) + 256] = stor[(4 * arg1) + ('name', 'stor1', 1) + 1].length + 160
    mem[stor[(4 * arg1) + ('name', 'stor1', 1) + 1].length + ceil32(stor[(4 * arg1) + ('name', 'stor1', 1) + 1].length) + ceil32(stor[(4 * arg1) + ('name', 'stor1', 1) + 3].length) + 320] = stor[(4 * arg1) + ('name', 'stor1', 1) + 3].length
    mem[stor[(4 * arg1) + ('name', 'stor1', 1) + 1].length + ceil32(stor[(4 * arg1) + ('name', 'stor1', 1) + 1].length) + ceil32(stor[(4 * arg1) + ('name', 'stor1', 1) + 3].length) + 352 len ceil32(stor[(4 * arg1) + ('name', 'stor1', 1) + 3].length)] = mem[ceil32(stor[(4 * arg1) + ('name', 'stor1', 1) + 1].length) + 160 len ceil32(stor[(4 * arg1) + ('name', 'stor1', 1) + 3].length)]
    if not stor[(4 * arg1) + ('name', 'stor1', 1) + 3].length % 32:
        return stor1[arg1].field_0, 
               Array(len=stor[(4 * arg1) + ('name', 'stor1', 1) + 1].length, data=mem[128 len ceil32(stor[(4 * arg1) + ('name', 'stor1', 1) + 1].length)], mem[(2 * ceil32(stor[(4 * arg1) + ('name', 'stor1', 1) + 1].length)) + ceil32(stor[(4 * arg1) + ('name', 'stor1', 1) + 3].length) + 320 len stor[(4 * arg1) + ('name', 'stor1', 1) + 1].length + -ceil32(stor[(4 * arg1) + ('name', 'stor1', 1) + 1].length) + 32], mem[ceil32(stor[(4 * arg1) + ('name', 'stor1', 1) + 1].length) + 160 len stor[(4 * arg1) + ('name', 'stor1', 1) + 3].length]),
               stor1[arg1].field_512,
               stor[(4 * arg1) + ('name', 'stor1', 1) + 1].length + 160
    mem[floor32(stor[(4 * arg1) + ('name', 'stor1', 1) + 3].length) + stor[(4 * arg1) + ('name', 'stor1', 1) + 1].length + ceil32(stor[(4 * arg1) + ('name', 'stor1', 1) + 1].length) + ceil32(stor[(4 * arg1) + ('name', 'stor1', 1) + 3].length) + 352] = mem[floor32(stor[(4 * arg1) + ('name', 'stor1', 1) + 3].length) + stor[(4 * arg1) + ('name', 'stor1', 1) + 1].length + ceil32(stor[(4 * arg1) + ('name', 'stor1', 1) + 1].length) + ceil32(stor[(4 * arg1) + ('name', 'stor1', 1) + 3].length) + -stor[(4 * arg1) + ('name', 'stor1', 1) + 3].length % 32 + 384 len stor[(4 * arg1) + ('name', 'stor1', 1) + 3].length % 32]
    return stor1[arg1].field_0, 
           Array(len=stor[(4 * arg1) + ('name', 'stor1', 1) + 1].length, data=mem[128 len ceil32(stor[(4 * arg1) + ('name', 'stor1', 1) + 1].length)], mem[(2 * ceil32(stor[(4 * arg1) + ('name', 'stor1', 1) + 1].length)) + ceil32(stor[(4 * arg1) + ('name', 'stor1', 1) + 3].length) + 320 len stor[(4 * arg1) + ('name', 'stor1', 1) + 1].length + -ceil32(stor[(4 * arg1) + ('name', 'stor1', 1) + 1].length) + 32], mem[ceil32(stor[(4 * arg1) + ('name', 'stor1', 1) + 1].length) + 160 len ceil32(stor[(4 * arg1) + ('name', 'stor1', 1) + 3].length)], mem[ceil32(stor[(4 * arg1) + ('name', 'stor1', 1) + 1].length) + (2 * ceil32(stor[(4 * arg1) + ('name', 'stor1', 1) + 3].length)) + stor[(4 * arg1) + ('name', 'stor1', 1) + 1].length + 352 len floor32(stor[(4 * arg1) + ('name', 'stor1', 1) + 3].length) + -ceil32(stor[(4 * arg1) + ('name', 'stor1', 1) + 3].length) + 32]),
           stor1[arg1].field_512,
           stor[(4 * arg1) + ('name', 'stor1', 1) + 1].length + 160
}



}
