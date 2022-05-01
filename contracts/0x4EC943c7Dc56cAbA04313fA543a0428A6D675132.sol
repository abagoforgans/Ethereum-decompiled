contract main {


// =======================  Init code  ======================


address stor0;
array of address stor1;
mapping of uint256 stor2;

function _fallback() {
    mem[96 len -1222] = code.data[2094 len -1222]
    mem[64] = -1126
    _3 = mem[128]
    _4 = mem[160]
    require mem[108 len 20]
    require mem[mem[128] + 96] == mem[mem[160] + 96]
    s = 0
    idx = 0
    while idx < mem[mem[160] + 96]:
        require idx < mem[mem[160] + 96]
        require mem[(32 * idx) + mem[160] + 128] > 0
        require idx < mem[mem[160] + 96]
        require mem[(32 * idx) + mem[160] + 128] <= 10000
        require idx < mem[mem[160] + 96]
        require mem[(32 * idx) + mem[160] + 128] + s >= s
        s = mem[(32 * idx) + mem[160] + 128] + s
        idx = idx + 1
        continue 
    require _51 * mem[mem[160] + 96] <= 1500
    stor0 = mem[108 len 20]
    _77 = mem[mem[128] + 96]
    idx = 0
    while idx < _77:
        require idx < mem[_3 + 96]
        require mem[(32 * idx) + _3 + 140 len 20]
        stor1.length++
        if not stor1.length <= stor1.length + 1:
            mem[0] = 1
            s = stor1.length + sha3(1) + 1
            while sha3(1) + stor1.length > s:
                stor[s] = 0
                _77 = mem[_3 + 96]
                s = s + 1
                continue 
        require idx < mem[_3 + 96]
        stor1[stor1.length] = mem[(32 * idx) + _3 + 140 len 20]
        require idx < mem[_4 + 96]
        require idx < stor1.length
        stor2[stor1[idx]] = mem[(32 * idx) + _4 + 128]
        mem[0] = stor1[idx]
        mem[32] = 2
        mem[mem[64]] = idx
        mem[mem[64] + 32] = stor1[idx]
        mem[mem[64] + 64] = stor2[stor1[idx]]
        emit 0xa59d03e1: idx, stor1[idx], stor2[stor1[idx]]
        _77 = mem[_3 + 96]
        idx = idx + 1
        continue 
    return code.data[872 len 1222]
}



// =====================  Runtime code  =====================


address sub_3b82fc20Address;
array of address sub_f24068a4;
mapping of uint256 sub_782e82e2;

function sub_3b82fc20(?) {
    return sub_3b82fc20Address
}

function sub_782e82e2(?) {
    return sub_782e82e2[arg1]
}

function sub_f24068a4(?) {
    require arg1 < sub_f24068a4.length
    return sub_f24068a4[arg1]
}

function _fallback() payable {
  stop
}

function triggerPayout() payable {
    mem[64] = 96
    require not msg.value
    s = 0
    idx = 0
    s = 10000
    while idx < sub_f24068a4.length:
        if eth.balance(this.address):
            require eth.balance(this.address)
            require sub_782e82e2[stor1[idx]] * eth.balance(this.address) / eth.balance(this.address) == sub_782e82e2[stor1[idx]]
        require idx < sub_f24068a4.length
        require sub_782e82e2[stor1[idx]] <= s
        require idx < sub_f24068a4.length
        call sub_f24068a4[idx] with:
           value sub_782e82e2[stor1[idx]] * eth.balance(this.address) / 10000 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require idx < sub_f24068a4.length
        mem[0] = sub_f24068a4[idx]
        mem[32] = 2
        mem[mem[64]] = sub_f24068a4[idx]
        mem[mem[64] + 32] = sub_782e82e2[stor1[idx]]
        mem[mem[64] + 64] = sub_782e82e2[stor1[idx]] * eth.balance(this.address) / 10000
        emit Credited(sub_f24068a4[idx], sub_782e82e2[stor1[idx]], sub_782e82e2[stor1[idx]] * eth.balance(this.address) / 10000);
        s = sub_782e82e2[stor1[idx]] * eth.balance(this.address) / 10000
        idx = idx + 1
        s = s - sub_782e82e2[stor1[idx]]
        continue 
    call sub_3b82fc20Address with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Credited(sub_3b82fc20Address, s, eth.balance(this.address));
}



}
