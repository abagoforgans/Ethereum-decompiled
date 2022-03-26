contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor0 = code.data[1853 len 32]
    stor1 = code.data[1885 len 32]
    stor2 += msg.value
    return code.data[163 len 1690]
}



// =====================  Runtime code  =====================


const WEI_PER_ETHER = 10^18


address stor0;
address stor1;
mapping of uint256 stor3;
array of uint256 sub_cf4f1ed5;

function sub_cf4f1ed5(?) payable {
    return sub_cf4f1ed5[arg1][arg2][0 len sub_cf4f1ed5[arg1][arg2].length]
}

function _fallback() payable {
  stop
}

function signature(string arg1, bytes32 arg2) payable {
    if stor0 == msg.sender:
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
    sub_cf4f1ed5[arg2][sub_cf4f1ed5[arg2]][] = Array(len=arg1.length, data=arg1[all])
    stor3[arg1[all]] = block.timestamp
}



}
