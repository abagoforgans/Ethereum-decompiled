contract main {


// =======================  Init code  ======================


const _fallback = code.data[19 len 562]




// =====================  Runtime code  =====================


array of struct stor0;

function _fallback() payable {
  stop
}

function transactions(uint256 arg1) payable {
    require arg1 < stor0.length
    if stor0[arg1].field_0:
        mem[128] = stor0[arg1].field_0
        idx = 128
        s = 0
        while stor0[arg1].field_0 + 96 > idx:
            mem[idx + 32] = stor0[arg1 + s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=stor0[arg1].field_0, data=mem[128 len stor0[arg1].field_0])
}

function addTransaction(bytes arg1) payable {
    mem[128 len arg1.length] = arg1[all]
    require stor0.length < stor0.length
    stor0[stor0.length].field_0 = arg1.length
    if not arg1.length:
        idx = 0
        while stor0[stor0.length].field_0 + 31 / 32 > idx:
            stor0[stor0.length + idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while arg1.length + 128 > idx:
            stor0[stor0.length + s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, arg1.length + 31) >> 5
        while stor0[stor0.length].field_0 + 31 / 32 > idx:
            stor0[stor0.length + idx].field_0 = 0
            idx = idx + 1
            continue 
}



}
