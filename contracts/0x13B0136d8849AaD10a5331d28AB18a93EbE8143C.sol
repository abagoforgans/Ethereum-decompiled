contract main {




// =====================  Runtime code  =====================


address owner;
address _tokenAddr;

function owner() {
    return owner
}

function _tokenAddr() {
    return _tokenAddr
}

function _fallback() payable {
    revert
}

function sub_c40450a8(?) {
    require msg.sender == owner
    _tokenAddr = arg1
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    emit Transfer(arg2, arg1, this.address);
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getBalance() {
    require ext_code.size(_tokenAddr)
    call _tokenAddr.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function airdrop(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        _19 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg2.length) + (32 * arg1.length) + 164] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = _19
        require ext_code.size(_tokenAddr)
        call _tokenAddr.0xa9059cbb with:
             gas gas_remaining wei
            args mem[(32 * arg2.length) + (32 * arg1.length) + 164], _19
        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
    return arg1.length
}



}
