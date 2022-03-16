contract main {


// =======================  Init code  ======================


const _fallback = code.data[19 len 497]




// =====================  Runtime code  =====================


array of struct stor0;

function _fallback() payable {
  stop
}

function sub_c8ebdb05(?) payable {
    if stor0[address(msg.sender)].field_256:
        mem[160] = stor0[address(msg.sender)][1].field_0
        idx = 160
        s = 0
        while stor0[address(msg.sender)].field_256 + 160 > idx + 32:
            mem[idx + 32] = stor0[address(msg.sender)][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=stor0[address(msg.sender)].field_256, data=mem[160 len stor0[address(msg.sender)].field_256])
}

function sub_26a8a1e8(?) payable {
    mem[128 len arg1.length] = arg1[all]
    stor0[address(msg.sender)].field_256 = arg1.length
    if not arg1.length:
        idx = 0
        while stor0[address(msg.sender)].field_256 + 31 / 32 > idx:
            stor0[address(msg.sender)][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while arg1.length + 128 > idx:
            stor0[address(msg.sender)][s + 1].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, arg1.length + 31) >> 5
        while stor0[address(msg.sender)].field_256 + 31 / 32 > idx:
            stor0[address(msg.sender)][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
}



}
