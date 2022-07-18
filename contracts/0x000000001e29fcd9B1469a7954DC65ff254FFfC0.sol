contract main {




// =====================  Runtime code  =====================


#
#  - sub_00000036(?)
#  - sub_bf33f986(?)
#
const sub_b00328e5(?) = eth.balance(this.address)


mapping of uint8 stor0;
mapping of uint8 stor1;
array of uint256 stor3735936685;

function sub_0361b39c(?) {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function sub_7e28fac0(?) {
    require calldata.size - 4 >= 32
    return bool(stor0[arg1])
}

function _fallback() payable {
  stop
}

function sub_0000001d(?) {
    require calldata.size - 4 >= 32
    require stor1[msg.sender]
    storDEAD[arg1] = 0
}

function approveMiner(address arg1) {
    require calldata.size - 4 >= 32
    require stor1[msg.sender]
    stor0[address(arg1)] = 1
}

function sub_23882c6c(?) {
    require calldata.size - 4 >= 32
    if 0x67d1f31eeef182cfb40c0719a8c0000fa7ddcaa9 != msg.sender:
        require msg.sender == 0x6bc8f4b5ac7ea547fc6e5b1eb471e6ad94650e75
    stor1[address(arg1)] = 1
}

function sub_d8348122(?) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < arg1:
        mem[96] = 0x766f1e29fcd9b1469a7954dc65ff254fffc03318585733ff60005260176009f3
        create contract with 0 wei
                        code: 0x766f1e29fcd9b1469a7954dc65ff254fffc03318585733ff60005260176009f3
        idx = idx + 1
        continue 
}

function sub_07030ef8(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require stor1[msg.sender]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require stor1[msg.sender]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 0
        stor0[address(mem[(32 * idx) + 128])] = 1
        idx = idx + 1
        continue 
}

function sub_0e104e37(?) {
    require calldata.size - 4 >= 32
    require arg1 + 3735936685 >= 3735936685
    if not storDEAD[arg1]:
        s = storDEAD[arg1]
        idx = arg1 + 3735936684
        while idx >= 3735936685:
            if not stor[idx]:
                s = stor[idx]
                idx = idx - 1
                continue 
            return (idx - 3735936684)
    else:
        s = storDEAD[arg1]
        idx = arg1 + 3735936686
        while idx < 0x100000000000000000000000000000000:
            if stor[idx]:
                s = stor[idx]
                idx = idx + 1
                continue 
            return (idx - 3735936685)
    return 0
}

function sub_372d94c5(?) {
    require calldata.size - 4 >= 64
    require arg2 > 0
    require arg1 + 3735936685 >= 3735936685
    if not storDEAD[arg1]:
        s = storDEAD[arg1]
        idx = arg1 + 3735936684
        while idx >= 3735936685:
            if not stor[idx]:
                s = stor[idx]
                idx = idx - 1
                continue 
            require arg2 > 0
            require arg2 > 0
            s = idx + 1
            while s < idx + arg2 + 1:
                stor[s] = 1
                s = s + 1
                continue 
            return (arg2 + idx - 3735936684)
    else:
        s = storDEAD[arg1]
        idx = arg1 + 3735936686
        while idx < 0x100000000000000000000000000000000:
            if stor[idx]:
                s = stor[idx]
                idx = idx + 1
                continue 
            require arg2 > 0
            require idx + arg2 > idx
            s = idx
            while s < idx + arg2:
                stor[s] = 1
                s = s + 1
                continue 
            return (arg2 + idx - 3735936685)
    require arg2 > 0
    require arg2 + 3735936685 > 3735936685
    idx = 3735936685
    while idx < arg2 + 3735936685:
        stor[idx] = 1
        idx = idx + 1
        continue 
    return arg2
}



}
