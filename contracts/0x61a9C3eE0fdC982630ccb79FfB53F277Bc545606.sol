contract main {


// =======================  Init code  ======================


const _fallback = code.data[19 len 397]




// =====================  Runtime code  =====================


mapping of uint256 stor0;
array of uint256 stor1;
uint256 stor2;

function _fallback() payable {
  stop
}

function vote(string arg1) payable {
    mem[128 len arg1.length] = arg1[all]
    if msg.value != 0:
        mem[ceil32(arg1.length) + 128 len arg1.length] = arg1[all]
        mem[ceil32(arg1.length) + arg1.length + 128] = 0
        if not stor0[arg1[all]]:
            stor2++
            require stor2 < stor1.length
            stor1[stor2] = arg1.length
            if not arg1.length:
                idx = 0
                while stor1[stor2] + 31 / 32 > idx:
                    stor1[stor2 + idx] = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 128
                while arg1.length + 128 > idx:
                    stor1[stor2 + s] = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, arg1.length + 31) >> 5
                while stor1[stor2] + 31 / 32 > idx:
                    stor1[stor2 + idx] = 0
                    idx = idx + 1
                    continue 
        stor0[arg1[all]] += msg.value
}



}
