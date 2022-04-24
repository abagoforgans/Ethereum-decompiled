contract main {


// =======================  Init code  ======================


array of struct stor0;
array of uint256 stor1;
array of uint256 stor2;

function _fallback() {
    mem[96 len -1734] = code.data[2158 len -1734]
    mem[64] = -1638
    _2 = mem[96]
    _3 = mem[128]
    uint8(stor1.length) = 1
    _26 = mem[mem[96] + 96]
    idx = 0
    s = 0
    while idx < _26:
        require idx < mem[_3 + 96]
        _28 = mem[(32 * idx) + _3 + 128]
        stor0.length++
        if not stor0.length > stor0.length + 1:
            mem[0] = 0
            _31 = mem[64]
            mem[64] = mem[64] + 96
            require idx < mem[_2 + 96]
            mem[_31] = mem[(32 * idx) + _2 + 140 len 20]
            require idx < mem[_3 + 96]
            mem[_31 + 32] = mem[(32 * idx) + _3 + 128]
            mem[_31 + 64] = 0
            stor0[stor0.length].field_0 = mem[_31 + 12 len 20]
            uint256(stor0[stor0.length].field_256) = mem[_31 + 32]
        else:
            t = sha3(0) + (3 * stor0.length) + 3
            while sha3(0) + (3 * stor0.length) > t:
                stor[t] = 0
                uint256(stor1[t]) = 0
                stor2[t] = 0
                t = t + 3
                continue 
            mem[0] = 0
            _49 = mem[64]
            mem[64] = mem[64] + 96
            require idx < mem[_2 + 96]
            mem[_49] = mem[(32 * idx) + _2 + 140 len 20]
            require idx < mem[_3 + 96]
            mem[_49 + 32] = mem[(32 * idx) + _3 + 128]
            mem[_49 + 64] = 0
            stor0[stor0.length].field_0 = mem[_49 + 12 len 20]
            uint256(stor0[stor0.length].field_256) = mem[_49 + 32]
        uint256(stor0[stor0.length].field_512) = 0
        idx = idx + 1
        s = s + _28
        continue 
    require s == 100
    return code.data[424 len 1734]
}



// =====================  Runtime code  =====================


array of struct stor0;
uint8 stor1;

function terminateContract() {
    require 0 < stor0.length
    idx = 0
    while stor0[idx].field_0 != msg.sender:
        require idx + 1 < stor0.length
        mem[0] = 0
        idx = idx + 1
        continue 
    selfdestruct(msg.sender)
}

function _fallback() payable {
  stop
}

function sub_4e5e11cf(?) {
    require 0 < stor0.length
    idx = 0
    while stor0[idx].field_0 != msg.sender:
        require idx + 1 < stor0.length
        mem[0] = 0
        idx = idx + 1
        continue 
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0 != msg.sender:
            idx = idx + 1
            continue 
        require idx < stor0.length
        if arg1 > stor0[idx].field_512:
            return 0
        require idx < stor0.length
        stor0[idx].field_512 -= arg1
        return 1
    return 0
}

function sub_0fe329f5(?) {
    require 0 < stor0.length
    idx = 0
    while stor0[idx].field_0 != msg.sender:
        require idx + 1 < stor0.length
        mem[0] = 0
        idx = idx + 1
        continue 
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0 != msg.sender:
            idx = idx + 1
            continue 
        require idx < stor0.length
        require stor0[idx].field_256
        require 100 / stor0[idx].field_256
        require idx < stor0.length
        return (stor0[idx].field_512 + (eth.balance(this.address) / 100 / stor0[idx].field_256))
    return 0
}

function sub_baeea90c(?) {
    require 0 < stor0.length
    idx = 0
    while stor0[idx].field_0 != msg.sender:
        require idx + 1 < stor0.length
        mem[0] = 0
        idx = idx + 1
        continue 
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        require idx < stor0.length
        mem[(32 * idx) + 160] = stor0[idx].field_0
        idx = idx + 1
        continue 
    mem[(32 * stor0.length) + 224 len floor32(stor0.length)] = mem[160 len floor32(stor0.length)]
    return Array(len=stor0.length, data=mem[160 len floor32(stor0.length)], mem[(32 * stor0.length) + floor32(stor0.length) + 224 len (32 * stor0.length) - floor32(stor0.length)]), 
}

function sub_30204e80(?) {
    require 0 < stor0.length
    idx = 0
    while stor0[idx].field_0 != msg.sender:
        require idx + 1 < stor0.length
        mem[0] = 0
        idx = idx + 1
        continue 
    idx = 0
    s = eth.balance(this.address)
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0 != msg.sender:
            idx = idx + 1
            s = s
            continue 
        require idx < stor0.length
        mem[0] = 0
        idx = idx + 1
        s = s - stor0[idx].field_512
        continue 
    if arg1 <= s:
        idx = 0
        while idx < stor0.length:
            mem[0] = 0
            if stor0[idx].field_0 != msg.sender:
                idx = idx + 1
                continue 
            require idx < stor0.length
            stor0[idx].field_512 += arg1
            return 1
    return 0
}

function withdrawContractBalance() payable {
    require 0 < stor0.length
    idx = 0
    while stor0[idx].field_0 != msg.sender:
        require idx + 1 < stor0.length
        mem[0] = 0
        idx = idx + 1
        continue 
    require stor1
    stor1 = 0
    idx = 0
    s = eth.balance(this.address)
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0 != msg.sender:
            idx = idx + 1
            s = s
            continue 
        require idx < stor0.length
        mem[0] = 0
        idx = idx + 1
        s = s - stor0[idx].field_512
        continue 
    t = 0
    idx = 0
    while idx < stor0.length:
        require stor0[idx].field_256
        require 100 / stor0[idx].field_256
        require idx < stor0.length
        stor0[idx].field_512 = 0
        mem[0] = 0
        call stor0[idx].field_0 with:
           value stor0[idx].field_512 + (s / 100 / stor0[idx].field_256) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        t = stor0[idx].field_512 + (s / 100 / stor0[idx].field_256)
        idx = idx + 1
        continue 
    stor1 = 1
}



}
