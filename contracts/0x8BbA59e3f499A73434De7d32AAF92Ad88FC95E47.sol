contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;

function _fallback() {
    stor0 = code.data[1742 len 20]
    stor1 = code.data[1774 len 20]
    stor2 += msg.value
    return code.data[121 len 1609]
}



// =====================  Runtime code  =====================


const WEI_PER_ETHER = 10^18


address stor0;
address stor1;
uint256 stor2;
mapping of uint256 stor3;

function sub_cf4f1ed5(?) {
    return sub_cf4f1ed5[arg1][arg2][0 len sub_cf4f1ed5[arg1][arg2].length]
}

function _fallback() payable {
    revert 
}

function withdraw() {
    if stor0 == msg.sender:
        call stor0 with:
           value stor2 - 2 * 10^17 wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
    else:
        if stor1 == msg.sender:
            call stor0 with:
               value stor2 - 2 * 10^17 wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
    revert 
}

function signature(string arg1, bytes32 arg2) {
    mem[128 len arg1.length] = arg1[all]
    if stor0 == msg.sender:
        sub_cf4f1ed5[arg2]++
        if not sub_cf4f1ed5[arg2] <= sub_cf4f1ed5[arg2] + 1:
            mem[0] = sha3(arg2, 4)
            idx = sub_cf4f1ed5[arg2] + 1
            while sha3(sha3(arg2, 4)) + sub_cf4f1ed5[arg2] > idx + sha3(mem[0]):
                stor[idx + sha3(mem[0])] = 0
                if 31 < stor[idx + sha3(mem[0])].length:
                    mem[0] = idx + sha3(mem[0])
                    if sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > sha3(idx + sha3(mem[0])):
                        stor[sha3(idx + sha3(mem[0]))] = 0
                        s = sha3(idx + sha3(mem[0])) + 1
                        while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                idx = idx + 1
                continue 
        sub_cf4f1ed5[arg2][sub_cf4f1ed5[arg2]] = (2 * arg1.length) + 1
        s = 0
        idx = 128
        while arg1.length + 128 > idx:
            sub_cf4f1ed5[arg2][sub_cf4f1ed5[arg2] + s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        if sub_cf4f1ed5[arg2][sub_cf4f1ed5[arg2]].length + 31 / 32 > Mask(251, 0, arg1.length + 31) >> 5:
            stor[('array', ('stor', ('map', ('param', 'arg2'), ('name', 'sub_cf4f1ed5', 4))), ('map', ('param', 'arg2'), ('name', 'sub_cf4f1ed5', 4))) + (Mask(251, 0, arg1.length + 31) >> 5)] = 0
            idx = (Mask(251, 0, arg1.length + 31) >> 5) + 1
            while sub_cf4f1ed5[arg2][sub_cf4f1ed5[arg2]].length + 31 / 32 > idx:
                sub_cf4f1ed5[arg2][sub_cf4f1ed5[arg2] + idx] = 0
                idx = idx + 1
                continue 
    else:
        require stor1 == msg.sender
        sub_cf4f1ed5[arg2]++
        if not sub_cf4f1ed5[arg2] <= sub_cf4f1ed5[arg2] + 1:
            mem[0] = sha3(arg2, 4)
            idx = sub_cf4f1ed5[arg2] + 1
            while sha3(sha3(arg2, 4)) + sub_cf4f1ed5[arg2] > idx + sha3(mem[0]):
                stor[idx + sha3(mem[0])] = 0
                if 31 < stor[idx + sha3(mem[0])].length:
                    mem[0] = idx + sha3(mem[0])
                    s = sha3(idx + sha3(mem[0]))
                    while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                idx = idx + 1
                continue 
        sub_cf4f1ed5[arg2][sub_cf4f1ed5[arg2]] = (2 * arg1.length) + 1
        s = 0
        idx = 128
        while arg1.length + 128 > idx:
            sub_cf4f1ed5[arg2][sub_cf4f1ed5[arg2] + s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        if sub_cf4f1ed5[arg2][sub_cf4f1ed5[arg2]].length + 31 / 32 > Mask(251, 0, arg1.length + 31) >> 5:
            stor[('array', ('stor', ('map', ('param', 'arg2'), ('name', 'sub_cf4f1ed5', 4))), ('map', ('param', 'arg2'), ('name', 'sub_cf4f1ed5', 4))) + (Mask(251, 0, arg1.length + 31) >> 5)] = 0
            idx = (Mask(251, 0, arg1.length + 31) >> 5) + 1
            while sub_cf4f1ed5[arg2][sub_cf4f1ed5[arg2]].length + 31 / 32 > idx:
                sub_cf4f1ed5[arg2][sub_cf4f1ed5[arg2] + idx] = 0
                idx = idx + 1
                continue 
    stor3[arg1[all]] = block.timestamp
}



}
