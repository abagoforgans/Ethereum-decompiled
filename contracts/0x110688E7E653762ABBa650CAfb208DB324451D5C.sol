contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[87 len 1556]
}



// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function _fallback() payable {
  stop
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function multisend(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg1.length > 0
    require msg.sender == owner
    idx = 0
    while uint32(idx) < arg1.length:
        require uint32(idx) < arg1.length
        require uint32(idx) < arg2.length
        call mem[(32 * uint32(idx)) + 140 len 20] with:
           value mem[(32 * uint32(idx)) + (32 * arg1.length) + 160] wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        idx = idx + 1
        continue 
    return 1
}

function multisendToken(address arg1, address[] arg2, uint256[] arg3) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require msg.sender == owner
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        _14 = mem[(32 * idx) + 128]
        require idx < arg3.length
        _16 = mem[(32 * idx) + (32 * arg2.length) + 160]
        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg2.length) + (32 * arg3.length) + 164] = address(_14)
        mem[(32 * arg2.length) + (32 * arg3.length) + 196] = _16
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining - 50 wei
            args address(_14), _16
        require ext_call.success
        idx = idx + 1
        continue 
    return arg2.length
}



}
