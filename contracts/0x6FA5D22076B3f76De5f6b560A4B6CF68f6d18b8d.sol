contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[54 len 647]
}



// =====================  Runtime code  =====================


address bankAddress;

function bank() {
    return bankAddress
}

function _fallback() payable {
    revert 
}

function sub_521aa856(?) payable {
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.value >= 100 * arg1.length
    s = 0
    s = 0
    idx = 0
    s = msg.value
    while idx < arg1.length:
        require idx < mem[96]
        _21 = mem[(32 * idx) + 128]
        if s <= 0:
            mem[mem[64]] = mem[(32 * idx) + 140 len 20]
            mem[mem[64] + 32] = 0
            mem[mem[64] + 64] = 0
            emit 0xc617312e: mem[mem[64]], 0, 0
            s = 0
            s = _21
            idx = idx + 1
            s = s
            continue 
        _25 = sha3(block.hash(block.number - 42), mem[(32 * idx) + 140 len 20])
        if sha3(block.hash(block.number - 42), mem[(32 * idx) + 140 len 20]) % 101 * s / 100 > 0:
            call mem[(32 * idx) + 140 len 20] with:
               value sha3(block.hash(block.number - 42), mem[(32 * idx) + 140 len 20]) % 101 * s / 100 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        mem[mem[64]] = mem[(32 * idx) + 140 len 20]
        mem[mem[64] + 32] = _25 % 101 * s / 100
        mem[mem[64] + 64] = _25 % 101 * s / 100 > 0
        emit 0xc617312e: mem[mem[64]], _25 % 101 * s / 100, _25 % 101 * s / 100 > 0
        s = _25 % 101 * s / 100
        s = _21
        idx = idx + 1
        s = s - (_25 % 101 * s / 100)
        continue 
    if s > 0:
        call bankAddress with:
           value s wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit 0x4161165d: s
}



}
