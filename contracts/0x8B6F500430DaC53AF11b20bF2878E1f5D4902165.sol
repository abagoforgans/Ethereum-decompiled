contract main {


// =======================  Init code  ======================


const _fallback = code.data[19 len 1738]




// =====================  Runtime code  =====================


array of struct stor0;

function _fallback() payable {
  stop
}

function sub_1fea2519(?) payable {
    stor0[address(msg.sender)][1][arg1[all]].field_0 = 0
    idx = 0
    while stor0[address(msg.sender)][1][arg1[all]].field_0 + 31 / 32 > idx:
        stor0[address(msg.sender)][1][arg1[all]][idx].field_0 = 0
        idx = idx + 1
        continue 
}

function name() payable {
    if stor0[address(msg.sender)].field_0:
        mem[160] = stor0[address(msg.sender)].field_0
        idx = 160
        s = 0
        while stor0[address(msg.sender)].field_0 + 128 > idx:
            mem[idx + 32] = stor0[address(msg.sender)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=stor0[address(msg.sender)].field_0, data=mem[160 len stor0[address(msg.sender)].field_0])
}

function rename(string arg1) payable {
    mem[128 len arg1.length] = arg1[all]
    stor0[address(msg.sender)].field_0 = arg1.length
    if not arg1.length:
        idx = 0
        while stor0[address(msg.sender)].field_0 + 31 / 32 > idx:
            stor0[address(msg.sender)][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while arg1.length + 128 > idx:
            stor0[address(msg.sender)][s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, arg1.length + 31) >> 5
        while stor0[address(msg.sender)].field_0 + 31 / 32 > idx:
            stor0[address(msg.sender)][idx].field_0 = 0
            idx = idx + 1
            continue 
}

function sub_95b737b3(?) payable {
    mem[ceil32(arg1.length) + 160 len arg1.length] = arg1[all]
    mem[arg1.length + ceil32(arg1.length) + 160] = sha3(address(msg.sender), 0) + 1
    if stor0[address(msg.sender)][1][arg1[all]].field_0:
        mem[ceil32(arg1.length) + 192] = stor0[address(msg.sender)][1][arg1[all]].field_0
        idx = ceil32(arg1.length) + 192
        s = 0
        while ceil32(arg1.length) + stor0[address(msg.sender)][1][arg1[all]].field_0 + 160 > idx:
            mem[idx + 32] = stor0[address(msg.sender)][1][arg1[all]][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=stor0[address(msg.sender)][1][arg1[all]].field_0, data=mem[ceil32(arg1.length) + 192 len stor0[address(msg.sender)][1][arg1[all]].field_0]), 
}

function sub_91b0c210(?) payable {
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len arg1.length] = arg1[all]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 160] = sha3(address(msg.sender), 0) + 1
    stor0[address(msg.sender)][1][arg1[all]].field_0 = arg2.length
    if not arg2.length:
        idx = 0
        while stor0[address(msg.sender)][1][arg1[all]].field_0 + 31 / 32 > idx:
            stor0[address(msg.sender)][1][arg1[all]][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = ceil32(arg1.length) + 160
        while ceil32(arg1.length) + arg2.length + 160 > idx:
            stor0[address(msg.sender)][1][arg1[all]][s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, arg2.length + 31) >> 5
        while stor0[address(msg.sender)][1][arg1[all]].field_0 + 31 / 32 > idx:
            stor0[address(msg.sender)][1][arg1[all]][idx].field_0 = 0
            idx = idx + 1
            continue 
}



}
