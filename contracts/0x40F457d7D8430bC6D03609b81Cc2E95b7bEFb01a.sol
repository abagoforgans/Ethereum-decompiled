contract main {


// =======================  Init code  ======================


const _fallback = code.data[19 len 906]




// =====================  Runtime code  =====================


array of struct stor0;

function _fallback() payable {
  stop
}

function sub_5f5961f5(?) payable {
    if stor0[arg1].field_0:
        mem[128] = stor0[arg1].field_0
        idx = 128
        s = 0
        while stor0[arg1].field_0 + 96 > idx:
            mem[idx + 32] = stor0[arg1][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=stor0[arg1].field_0, data=mem[128 len stor0[arg1].field_0])
}

function sub_7888a781(?) payable {
    if stor0[address(arg1)].field_0:
        mem[160] = stor0[address(arg1)].field_0
        idx = 160
        s = 0
        while stor0[address(arg1)].field_0 + 128 > idx:
            mem[idx + 32] = stor0[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=stor0[address(arg1)].field_0, data=mem[160 len stor0[address(arg1)].field_0])
}

function sub_5e28ed7f(?) payable {
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
    return 1
}



}
