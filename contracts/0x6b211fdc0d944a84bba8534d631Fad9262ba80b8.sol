contract main {


// =======================  Init code  ======================


const _fallback = code.data[19 len 851]




// =====================  Runtime code  =====================


array of struct stor0;

function _fallback() payable {
  stop
}

function sub_a8fd3e3e(?) payable {
    emit 0x4e65eeae: arg1
    emit 0x60: arg1
}

function sub_dd181c73(?) payable {
    if stor0[arg1].field_0:
        mem[128] = stor0[arg1].field_0
        idx = 128
        s = 0
        while stor0[arg1].field_0 + 128 > idx + 32:
            mem[idx + 32] = stor0[arg1][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=stor0[arg1].field_0, data=mem[128 len stor0[arg1].field_0])
}

function commit(bytes arg1, string arg2) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    stor0[arg1[all]].field_0 = arg1.length
    if not arg1.length:
        idx = 0
        while stor0[arg1[all]].field_0 + 31 / 32 > idx:
            stor0[arg1[all]][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while arg1.length + 128 > idx:
            stor0[arg1[all]][s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, arg1.length + 31) >> 5
        while stor0[arg1[all]].field_0 + 31 / 32 > idx:
            stor0[arg1[all]][idx].field_0 = 0
            idx = idx + 1
            continue 
    emit 0x65c3cdd0: Array(len=arg2.length, data=arg2[all]), sha3(arg1[all])
    return sha3(arg1[all])
}



}
