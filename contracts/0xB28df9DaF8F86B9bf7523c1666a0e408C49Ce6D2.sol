contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 2192]




// =====================  Runtime code  =====================


mapping of struct stor0;

function _fallback() payable {
    revert 
}

function sub_d8d00cd3(?) payable {
    stor0[address(msg.sender)][].field_0 = Array(len=arg1.length, data=arg1[all])
    stor0[address(msg.sender)][1][].field_0 = Array(len=arg2.length, data=arg2[all])
    return 0
}

function sub_57aace3b(?) payable {
    if stor0[address(msg.sender)].length != 0:
        stor0[address(msg.sender)][2][arg1[all]].field_0 = arg2 or Mask(96, 160, stor0[address(msg.sender)][2][arg1[all]].field_0)
        stor0[address(msg.sender)][2][arg1[all]][1][].field_0 = Array(len=arg3.length, data=arg3[all])
        stor0[address(msg.sender)][2][arg1[all]].field_160 = Mask(96, 0, block.timestamp)
}

function sub_36783cf9(?) payable {
    mem[ceil32(arg2.length) + 160 len arg2.length] = arg2[all]
    mem[arg2.length + ceil32(arg2.length) + 160] = sha3(address(arg1), 0) + 2
    mem[ceil32(arg2.length) + 192] = stor0[address(arg1)][2][arg2[all]][1].field_0
    idx = ceil32(arg2.length) + 192
    s = 0
    while ceil32(arg2.length) + stor0[address(arg1)][2][arg2[all]][1].length + 160 > idx:
        mem[idx + 32] = stor0[address(arg1)][2][arg2[all]][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor0[address(arg1)][2][arg2[all]].field_0, 
           Array(len=stor0[address(arg1)][2][arg2[all]][1].length, data=mem[ceil32(arg2.length) + 192 len stor0[address(arg1)][2][arg2[all]][1].length]),
           stor0[address(arg1)][2][arg2[all]].field_0
}

function getEntity(address arg1) payable {
    mem[96] = 0
    mem[128] = 0
    mem[32] = 0
    mem[160] = stor0[address(arg1)].length
    mem[192] = stor0[address(arg1)].field_0
    idx = 192
    s = 0
    while stor0[address(arg1)].length + 160 > idx:
        mem[idx + 32] = stor0[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor0[address(arg1)].length) + ceil32(stor0[address(arg1)][1].length) + 224
    mem[ceil32(stor0[address(arg1)].length) + 192] = stor0[address(arg1)][1].length
    mem[0] = sha3(address(arg1), 0) + 1
    mem[ceil32(stor0[address(arg1)].length) + 224] = stor0[address(arg1)][1].field_0
    idx = ceil32(stor0[address(arg1)].length) + 224
    s = 0
    while ceil32(stor0[address(arg1)].length) + stor0[address(arg1)][1].length + 192 > idx:
        mem[idx + 32] = stor0[address(arg1)][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor0[address(arg1)].length) + ceil32(stor0[address(arg1)][1].length) + 224] = 64
    mem[ceil32(stor0[address(arg1)].length) + ceil32(stor0[address(arg1)][1].length) + 288] = stor0[address(arg1)].length
    mem[ceil32(stor0[address(arg1)].length) + ceil32(stor0[address(arg1)][1].length) + 320 len stor0[address(arg1)].length] = mem[192 len stor0[address(arg1)].length]
    mem[ceil32(stor0[address(arg1)].length) + ceil32(stor0[address(arg1)][1].length) + 256] = stor0[address(arg1)].length + 96
    mem[stor0[address(arg1)].length + ceil32(stor0[address(arg1)].length) + ceil32(stor0[address(arg1)][1].length) + 320] = stor0[address(arg1)][1].length
    mem[stor0[address(arg1)].length + ceil32(stor0[address(arg1)].length) + ceil32(stor0[address(arg1)][1].length) + 352 len stor0[address(arg1)][1].length] = mem[ceil32(stor0[address(arg1)].length) + 224 len stor0[address(arg1)][1].length]
    if not stor0[address(arg1)][1].length % 32:
        return Array(len=stor0[address(arg1)].length, data=mem[192 len stor0[address(arg1)].length], stor0[address(arg1)][1].length, mem[ceil32(stor0[address(arg1)].length) + 224 len stor0[address(arg1)][1].length]), 
               stor0[address(arg1)].length + 96
    mem[floor32(stor0[address(arg1)][1].length) + stor0[address(arg1)].length + ceil32(stor0[address(arg1)].length) + ceil32(stor0[address(arg1)][1].length) + 352] = mem[floor32(stor0[address(arg1)][1].length) + stor0[address(arg1)].length + ceil32(stor0[address(arg1)].length) + ceil32(stor0[address(arg1)][1].length) + -stor0[address(arg1)][1].length % 32 + 384 len stor0[address(arg1)][1].length % 32]
    return Array(len=stor0[address(arg1)].length, data=mem[192 len stor0[address(arg1)].length], stor0[address(arg1)][1].length, mem[ceil32(stor0[address(arg1)].length) + ceil32(stor0[address(arg1)][1].length) + stor0[address(arg1)].length + 352 len floor32(stor0[address(arg1)][1].length) + 32]), 
           stor0[address(arg1)].length + 96
}



}
