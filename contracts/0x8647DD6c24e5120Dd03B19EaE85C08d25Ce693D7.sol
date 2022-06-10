contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = 0xecab19228506a2e394cacc982e994477c8a48b77
    return code.data[107 len 1057]
}



// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function multisend(address arg1, address[] arg2, uint256[] arg3) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg2.length == arg3.length
    require arg2.length <= 150
    idx = 0
    while uint8(idx) < arg2.length:
        require uint8(idx) < arg2.length
        require uint8(idx) < arg3.length
        _24 = mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
        mem[(32 * arg2.length) + (32 * arg3.length) + 164] = mem[(32 * uint8(idx)) + 140 len 20]
        mem[(32 * arg2.length) + (32 * arg3.length) + 196] = _24
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args mem[(32 * arg2.length) + (32 * arg3.length) + 164], _24
        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
        require ext_call.success
        require bool(ext_call.return_data[0]) == 1
        idx = idx + 1
        continue 
    return 1
}



}
