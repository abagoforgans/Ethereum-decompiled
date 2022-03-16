contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 1587]




// =====================  Runtime code  =====================


array of struct stor0;
uint256 count;

function count() payable {
    return count
}

function _fallback() payable {
  stop
}

function sub_5498453d(?) payable {
    return (stor0[arg1[all]][1].length > 0)
}

function sub_9e3db5d3(?) payable {
    if stor0[arg1[all]][1].length > 0:
        return 0
    if 0 == arg3.length:
        return 0
    stor0[arg1[all]][].field_0 = Array(len=arg2.length, data=arg2[all])
    stor0[arg1[all]][1][].field_0 = Array(len=arg3.length, data=arg3[all])
    count++
    return 1
}

function getDocument(string arg1) payable {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 160] = 0
    mem[ceil32(arg1.length) + 192 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + arg1.length + 192] = 0
    mem[ceil32(arg1.length) + 192] = stor0[arg1[all]].length
    mem[ceil32(arg1.length) + 224] = stor0[arg1[all]].field_0
    idx = ceil32(arg1.length) + 224
    s = 0
    while ceil32(arg1.length) + stor0[arg1[all]].length + 192 > idx:
        mem[idx + 32] = stor0[arg1[all]][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(arg1.length) + ceil32(stor0[arg1[all]].length) + ceil32(stor0[arg1[all]][1].length) + 256
    mem[ceil32(arg1.length) + ceil32(stor0[arg1[all]].length) + 224] = stor0[arg1[all]][1].length
    mem[0] = sha3(arg1[all], 0) + 1
    mem[ceil32(arg1.length) + ceil32(stor0[arg1[all]].length) + 256] = stor0[arg1[all]][1].field_0
    idx = ceil32(arg1.length) + ceil32(stor0[arg1[all]].length) + 256
    s = 0
    while ceil32(arg1.length) + ceil32(stor0[arg1[all]].length) + stor0[arg1[all]][1].length + 224 > idx:
        mem[idx + 32] = stor0[arg1[all]][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    _213 = mem[64]
    mem[mem[64]] = 64
    mem[mem[64] + 64] = stor0[arg1[all]].length
    mem[mem[64] + 96 len stor0[arg1[all]].length] = mem[ceil32(arg1.length) + 224 len stor0[arg1[all]].length]
    if not stor0[arg1[all]].length % 32:
        mem[mem[64] + 32] = stor0[arg1[all]].length + 96
        mem[stor0[arg1[all]].length + _213 + 96] = stor0[arg1[all]][1].length
        mem[stor0[arg1[all]].length + _213 + 128 len stor0[arg1[all]][1].length] = mem[ceil32(arg1.length) + ceil32(stor0[arg1[all]].length) + 256 len stor0[arg1[all]][1].length]
        if not stor0[arg1[all]][1].length % 32:
            return memory
              from mem[64]
               len stor0[arg1[all]][1].length + stor0[arg1[all]].length + _213 + -mem[64] + 128
        mem[floor32(stor0[arg1[all]][1].length) + stor0[arg1[all]].length + _213 + 128] = mem[floor32(stor0[arg1[all]][1].length) + stor0[arg1[all]].length + _213 + -stor0[arg1[all]][1].length % 32 + 160 len stor0[arg1[all]][1].length % 32]
        return memory
          from mem[64]
           len floor32(stor0[arg1[all]][1].length) + stor0[arg1[all]].length + _213 + -mem[64] + 160
    mem[floor32(stor0[arg1[all]].length) + mem[64] + 96] = mem[floor32(stor0[arg1[all]].length) + mem[64] + -stor0[arg1[all]].length % 32 + 128 len stor0[arg1[all]].length % 32]
    mem[mem[64] + 32] = floor32(stor0[arg1[all]].length) + 128
    mem[floor32(stor0[arg1[all]].length) + _213 + 128] = stor0[arg1[all]][1].length
    mem[floor32(stor0[arg1[all]].length) + _213 + 160 len stor0[arg1[all]][1].length] = mem[ceil32(arg1.length) + ceil32(stor0[arg1[all]].length) + 256 len stor0[arg1[all]][1].length]
    if not stor0[arg1[all]][1].length % 32:
        return memory
          from mem[64]
           len stor0[arg1[all]][1].length + floor32(stor0[arg1[all]].length) + _213 + -mem[64] + 160
    mem[floor32(stor0[arg1[all]][1].length) + floor32(stor0[arg1[all]].length) + _213 + 160] = mem[floor32(stor0[arg1[all]][1].length) + floor32(stor0[arg1[all]].length) + _213 + -stor0[arg1[all]][1].length % 32 + 192 len stor0[arg1[all]][1].length % 32]
    return memory
      from mem[64]
       len floor32(stor0[arg1[all]][1].length) + floor32(stor0[arg1[all]].length) + _213 + -mem[64] + 192
}



}
