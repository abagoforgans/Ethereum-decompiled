contract main {


// =======================  Init code  ======================


uint256 stor1;
mapping of uint8 stor2;
array of struct stor3;

function _fallback() {
    mem[96 len -2188] = code.data[2836 len -2188]
    _2 = mem[96]
    _3 = mem[128]
    mem[64] = -2060
    mem[-2092] = 0
    require mem[mem[128] + 96] <= 10
    require mem[96] <= mem[mem[128] + 96]
    require mem[96]
    mem[64] = (32 * stor3.length) - 2028
    mem[-2060] = stor3.length
    if not stor3.length:
        idx = 0
        while idx < stor3.length:
            require idx < stor3.length
            mem[0] = mem[(32 * idx) - 2016 len 20]
            mem[32] = 2
            stor2[mem[0]] = 0
            idx = idx + 1
            continue 
        s = 0
        s = 0
        idx = 0
        while idx < mem[mem[128] + 96]:
            require idx < mem[mem[128] + 96]
            require mem[(32 * idx) + mem[128] + 140 len 20] > address(s)
            mem[0] = mem[(32 * idx) + mem[128] + 140 len 20]
            mem[32] = 2
            stor2[mem[(32 * idx) + mem[128] + 140 len 20]] = 1
            s = mem[(32 * idx) + mem[128] + 128]
            s = mem[(32 * idx) + mem[128] + 128]
            idx = idx + 1
            continue 
        stor3.length = mem[mem[128] + 96]
        if not mem[mem[128] + 96]:
            idx = 0
            while stor3.length > idx:
                stor3[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = mem[128] + 128
            while mem[128] + (32 * mem[mem[128] + 96]) + 128 > idx:
                stor3[s].field_0 = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * mem[mem[128] + 96]) + 31) >> 5
            while stor3.length > idx:
                stor3[idx].field_0 = 0
                idx = idx + 1
                continue 
        stor1 = mem[96]
    else:
        mem[0] = 3
        mem[-2028] = address(stor3.field_0)
        idx = -2028
        s = 0
        while (32 * stor3.length) - 2060 > idx:
            mem[idx + 32] = stor3[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        idx = 0
        while idx < stor3.length:
            require idx < stor3.length
            mem[0] = mem[(32 * idx) - 2016 len 20]
            mem[32] = 2
            stor2[mem[0]] = 0
            idx = idx + 1
            continue 
        s = 0
        s = 0
        idx = 0
        while idx < mem[_3 + 96]:
            require idx < mem[_3 + 96]
            require mem[(32 * idx) + _3 + 140 len 20] > address(s)
            mem[0] = mem[(32 * idx) + _3 + 140 len 20]
            mem[32] = 2
            stor2[mem[(32 * idx) + _3 + 140 len 20]] = 1
            s = mem[(32 * idx) + _3 + 128]
            s = mem[(32 * idx) + _3 + 128]
            idx = idx + 1
            continue 
        stor3.length = mem[_3 + 96]
        if not mem[_3 + 96]:
            idx = 0
            while stor3.length > idx:
                stor3[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = _3 + 128
            while _3 + (32 * mem[_3 + 96]) + 128 > idx:
                stor3[s].field_0 = mem[idx + 12 len 20]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * mem[_3 + 96]) + 31) >> 5
            while stor3.length > idx:
                stor3[idx].field_0 = 0
                idx = idx + 1
                continue 
        stor1 = _2
    return code.data[648 len 2188]
}



// =====================  Runtime code  =====================


uint256 nonce;
uint256 threshold;
mapping of uint8 stor2;
array of struct owners;

function owners(uint256 arg1) {
    require arg1 < owners.length
    return owners[arg1].field_0
}

function threshold() {
    return threshold
}

function nonce() {
    return nonce
}

function _fallback() payable {
  stop
}

function execute(uint8[] arg1, bytes32[] arg2, bytes32[] arg3, address arg4, uint256 arg5, bytes arg6) {
    nonce++
    mem[118] = nonce
    mem[150] = address(arg4)
    mem[170] = arg5
    mem[202 len arg6.length] = arg6[all]
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require threshold == arg2.length
    require threshold == arg3.length
    require threshold == arg1.length
    s = 0
    idx = 0
    s = 0
    while idx < threshold:
        require idx < mem[96]
        _28 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _30 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        _32 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
        _33 = mem[64]
        mem[64] = mem[64] + 32
        mem[_33 + 32] = sha3(0, 0, this.address, nonce, arg4, arg5, arg6[all])
        mem[_33 + 64] = uint8(_28)
        mem[_33 + 96] = _30
        mem[_33 + 128] = _32
        signer = erecover(sha3(0, 0, this.address, nonce, arg4, arg5, arg6[all]), _28 << 248, _30, _32) 
        mem[_33] = signer
        require erecover.result
        require address(signer) > address(s)
        mem[0] = address(signer)
        mem[32] = 2
        require stor2[address(signer)]
        s = signer
        idx = idx + 1
        s = signer
        continue 
    call arg4 with:
       value arg5 wei
         gas gas_remaining - 34710 wei
        args arg6[all]
    require ext_call.success
}

function transferOwnership(uint8[] arg1, bytes32[] arg2, bytes32[] arg3, uint256 arg4, address[] arg5) {
    nonce++
    mem[118] = nonce
    mem[150] = arg4
    mem[182 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require threshold == arg2.length
    require threshold == arg3.length
    require threshold == arg1.length
    s = 0
    idx = 0
    s = 0
    while idx < threshold:
        require idx < mem[96]
        _42 = mem[(32 * idx) + 128]
        require idx < mem[(32 * arg1.length) + 128]
        _44 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
        _47 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
        _48 = mem[64]
        mem[64] = mem[64] + 32
        mem[_48 + 32] = sha3(0, 0, this.address, nonce, arg4, call.data[arg5 + 36 len 32 * arg5.length])
        mem[_48 + 64] = uint8(_42)
        mem[_48 + 96] = _44
        mem[_48 + 128] = _47
        signer = erecover(sha3(0, 0, this.address, nonce, arg4, call.data[arg5 + 36 len 32 * arg5.length]), _42 << 248, _44, _47) 
        mem[_48] = signer
        require erecover.result
        require address(signer) > address(s)
        mem[0] = address(signer)
        mem[32] = 2
        require stor2[address(signer)]
        s = signer
        idx = idx + 1
        s = signer
        continue 
    _41 = mem[64]
    mem[64] = mem[64] + (32 * arg5.length) + 32
    mem[_41] = arg5.length
    mem[_41 + 32 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    _46 = mem[64]
    mem[64] = mem[64] + 32
    mem[_46] = 0
    require arg5.length <= 10
    require arg4 <= arg5.length
    require arg4
    _57 = mem[64]
    mem[64] = mem[64] + (32 * owners.length) + 32
    mem[_57] = owners.length
    if not owners.length:
        idx = 0
        while idx < owners.length:
            require idx < mem[_57]
            mem[0] = mem[(32 * idx) + _57 + 44 len 20]
            mem[32] = 2
            stor2[mem[0]] = 0
            idx = idx + 1
            continue 
        _81 = mem[_41]
        s = 0
        s = 0
        idx = 0
        while idx < _81:
            require idx < mem[_41]
            _86 = mem[(32 * idx) + _41 + 32]
            require mem[(32 * idx) + _41 + 44 len 20] > address(s)
            mem[0] = mem[(32 * idx) + _41 + 44 len 20]
            mem[32] = 2
            stor2[mem[0]] = 1
            _81 = mem[_41]
            s = _86
            s = _86
            idx = idx + 1
            continue 
    else:
        mem[0] = 3
        mem[_57 + 32] = address(owners.field_0)
        idx = _57 + 32
        s = 0
        while _57 + (32 * owners.length) > idx:
            mem[idx + 32] = owners[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        idx = 0
        while idx < owners.length:
            require idx < mem[_57]
            mem[0] = mem[(32 * idx) + _57 + 44 len 20]
            mem[32] = 2
            stor2[mem[0]] = 0
            idx = idx + 1
            continue 
        _111 = mem[_41]
        s = 0
        s = 0
        idx = 0
        while idx < _111:
            require idx < mem[_41]
            _115 = mem[(32 * idx) + _41 + 32]
            require mem[(32 * idx) + _41 + 44 len 20] > address(s)
            mem[0] = mem[(32 * idx) + _41 + 44 len 20]
            mem[32] = 2
            stor2[mem[0]] = 1
            _111 = mem[_41]
            s = _115
            s = _115
            idx = idx + 1
            continue 
    owners.length = mem[_41]
    if not mem[_41]:
        idx = 0
        while owners.length > idx:
            owners[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = _41 + 32
        while _41 + (32 * mem[_41]) + 32 > idx:
            owners[s].field_0 = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[_41]) + 31) >> 5
        while owners.length > idx:
            owners[idx].field_0 = 0
            idx = idx + 1
            continue 
    threshold = arg4
}



}
