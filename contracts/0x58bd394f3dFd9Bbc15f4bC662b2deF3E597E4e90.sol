contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    require code.data[2398 len 20]
    stor1 = code.data[2398 len 20]
    return code.data[226 len 2160]
}



// =====================  Runtime code  =====================


address owner;
address tokenAddress;

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function returnOwnership() {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args owner
    require ext_call.success
    return 0
}

function extraMint() {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0xd862b611 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    emit ExtraMint()
    return 0
}

function bulkMint(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        _29 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg1.length) + (32 * arg2.length) + 196] = _29
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args mem[(32 * arg1.length) + (32 * arg2.length) + 164], _29
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
        require idx < arg1.length
        _36 = mem[(32 * idx) + 128]
        require idx < arg2.length
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit DistributionMint(mem[(32 * arg1.length) + (32 * arg2.length) + 160], address(_36));
        idx = idx + 1
        continue 
    return 0
}



}
