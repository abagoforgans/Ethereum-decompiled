contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 3148]
}



// =====================  Runtime code  =====================


#
#  - sub_07fb556a(?)
#
const help = Array(len=47, data='contract for contribution servic', Mask(120, 136, 'e by Beyondsoft') >> 136, mem[320])


address stor0;
array of struct stor1;

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function sub_3e6c3ab7(?) payable {
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len arg1.length] = arg1[all]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224] = 1
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224] = stor1[arg1[all]][1].field_0
    idx = ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224
    s = 0
    while ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + stor1[arg1[all]][1].length + 224 > idx + 32:
        mem[idx + 32] = stor1[arg1[all]][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    _136 = sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len stor1[arg1[all]][1].length])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len arg2.length] = arg2[all]
    if sha3(arg2[all]) == _136:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len arg1.length] = arg1[all]
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224] = 1
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224] = stor1[arg1[all]][2].field_0
        idx = ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224
        s = 0
        while ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + stor1[arg1[all]][2].length + 224 > idx + 32:
            mem[idx + 32] = stor1[arg1[all]][s + 2].field_256
            idx = idx + 32
            s = s + 1
            continue 
        _229 = sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len stor1[arg1[all]][2].length])
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len arg3.length] = arg3[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 352] = mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 371 len 13]
    return Array(len=13, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 352])
}



}
