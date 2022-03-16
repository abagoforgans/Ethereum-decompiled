contract main {


// =======================  Init code  ======================


const _fallback = code.data[19 len 1086]




// =====================  Runtime code  =====================


array of struct sub_a29fc1e6;

function sub_a29fc1e6(?) payable {
    return sub_a29fc1e6[address(arg1)].field_256
}

function _fallback() payable {
  stop
}

function sub_69021a5f(?) payable {
    sub_a29fc1e6[tx.origin].field_0 = 0
    idx = 0
    while sub_a29fc1e6[tx.origin].field_0 + 31 / 32 > idx:
        sub_a29fc1e6[tx.origin][idx].field_0 = 0
        idx = idx + 1
        continue 
    sub_a29fc1e6[tx.origin].field_256 = 0
}

function sub_428b5ca8(?) payable {
    if sub_a29fc1e6[address(arg1)].field_0:
        mem[160] = sub_a29fc1e6[address(arg1)].field_0
        idx = 160
        s = 0
        while sub_a29fc1e6[address(arg1)].field_0 + 128 > idx:
            mem[idx + 32] = sub_a29fc1e6[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=sub_a29fc1e6[address(arg1)].field_0, data=mem[160 len sub_a29fc1e6[address(arg1)].field_0])
}

function setKey(string arg1) payable {
    mem[128 len arg1.length] = arg1[all]
    sub_a29fc1e6[tx.origin].field_0 = arg1.length
    if not arg1.length:
        idx = 0
        while sub_a29fc1e6[tx.origin].field_0 + 31 / 32 > idx:
            sub_a29fc1e6[tx.origin][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while arg1.length + 128 > idx:
            sub_a29fc1e6[tx.origin][s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, arg1.length + 31) >> 5
        while sub_a29fc1e6[tx.origin].field_0 + 31 / 32 > idx:
            sub_a29fc1e6[tx.origin][idx].field_0 = 0
            idx = idx + 1
            continue 
    sub_a29fc1e6[tx.origin].field_256 = block.timestamp
}



}
