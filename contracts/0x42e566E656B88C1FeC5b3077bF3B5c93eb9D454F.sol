contract main {




// =====================  Runtime code  =====================


address stor0;

function close() {
    if stor0 != msg.sender:
        revert with 0, 'msg sender is not owner!'
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function multiTransfer(address[] arg1, uint256[] arg2) payable {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg1.length == arg2.length
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = arg1.length
    mem[64] = (32 * arg2.length) + (64 * arg1.length) + 192
    if not arg1.length:
        idx = 0
        s = msg.value
        while idx < arg1.length:
            require idx < mem[96]
            require idx < mem[(32 * arg1.length) + 128]
            require mem[(32 * idx) + 140 len 20]
            call mem[(32 * idx) + 140 len 20] with:
               value mem[(32 * idx) + (32 * arg1.length) + 160] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require idx < mem[(32 * arg1.length) + 128]
            _76 = mem[(32 * idx) + (32 * arg1.length) + 160]
            require mem[(32 * idx) + (32 * arg1.length) + 160] <= s
            require idx < mem[96]
            require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
            mem[mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192]] = mem[(32 * idx) + 140 len 20]
            require idx < mem[(32 * arg1.length) + 128]
            require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
            mem[mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
            idx = idx + 1
            s = s - _76
            continue 
        _55 = mem[64]
        mem[mem[64]] = msg.sender
        mem[mem[64] + 32] = msg.value
        mem[mem[64] + 64] = 96
        mem[mem[64] + 96] = mem[(32 * arg2.length) + (32 * arg1.length) + 160]
        _57 = mem[(32 * arg2.length) + (32 * arg1.length) + 160]
        s = mem[64] + 128
        idx = 0
        while idx < _57:
            mem[s] = mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192]
            s = s + 32
            idx = idx + 1
            continue 
        emit 0xf5cc1505: mem[mem[64] len _55 + (32 * _57) + -mem[64] + 128]
    else:
        mem[64] = (32 * arg2.length) + (64 * arg1.length) + 256
        mem[(32 * arg2.length) + (64 * arg1.length) + 192] = 0
        mem[(32 * arg2.length) + (64 * arg1.length) + 224] = 0
        mem[var8001] = (32 * arg2.length) + (64 * arg1.length) + 192
        s = var8001
        idx = var8002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(32 * arg2.length) + (64 * arg1.length) + 192] = 0
            mem[(32 * arg2.length) + (64 * arg1.length) + 224] = 0
            mem[s + 32] = (32 * arg2.length) + (64 * arg1.length) + 192
            s = s + 32
            idx = idx - 1
            continue 
        _129 = mem[96]
        idx = 0
        s = msg.value
        while idx < _129:
            require idx < mem[96]
            require idx < mem[(32 * arg1.length) + 128]
            require mem[(32 * idx) + 140 len 20]
            call mem[(32 * idx) + 140 len 20] with:
               value mem[(32 * idx) + (32 * arg1.length) + 160] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require idx < mem[(32 * arg1.length) + 128]
            _143 = mem[(32 * idx) + (32 * arg1.length) + 160]
            require mem[(32 * idx) + (32 * arg1.length) + 160] <= s
            require idx < mem[96]
            require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
            mem[mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192]] = mem[(32 * idx) + 140 len 20]
            require idx < mem[(32 * arg1.length) + 128]
            require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
            mem[mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192] + 32] = mem[(32 * idx) + (32 * arg1.length) + 160]
            idx = idx + 1
            s = s - _143
            continue 
        _130 = mem[64]
        mem[mem[64]] = msg.sender
        mem[mem[64] + 32] = msg.value
        mem[mem[64] + 64] = 96
        mem[mem[64] + 96] = mem[(32 * arg2.length) + (32 * arg1.length) + 160]
        _132 = mem[(32 * arg2.length) + (32 * arg1.length) + 160]
        s = mem[64] + 128
        idx = 0
        while idx < _132:
            mem[s] = mem[(32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 192]
            s = s + 32
            idx = idx + 1
            continue 
        emit 0xf5cc1505: mem[mem[64] len _130 + (32 * _132) + -mem[64] + 128]
    return 1
}



}
