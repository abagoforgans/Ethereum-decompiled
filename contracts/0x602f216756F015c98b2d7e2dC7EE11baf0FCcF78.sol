contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
uint256 nonce;
address tokenAddress;

function owner() {
    return owner
}

function nonce() {
    return nonce
}

function newOwner() {
    return newOwner
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function reset() {
    require msg.sender == owner
    nonce = 0
    emit Complete()
}

function changeOwner(address arg1) {
    require msg.sender == owner
    newOwner = arg1
}

function setToken(address arg1) {
    require msg.sender == owner
    tokenAddress = arg1
}

function acceptOwnership() {
    if msg.sender == newOwner:
        owner = newOwner
        newOwner = 0
        emit ChangedOwner(owner);
}

function getBalance() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function refund() {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function batchTransfer(uint256 arg1, uint256[] arg2) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    require arg1 == nonce
    nonce++
    s = 0
    s = 0
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        _17 = mem[(32 * idx) + 128]
        require idx < arg2.length
        _19 = mem[(32 * idx) + 128]
        mem[(32 * arg2.length) + 132] = mem[(32 * idx) + 128 len 20]
        mem[(32 * arg2.length) + 164] = Mask(96, 0, _19)
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args mem[(32 * arg2.length) + 132], _19 << 160
        mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        s = Mask(96, 0, _19)
        s = Mask(160, 96, _17) >> 96
        idx = idx + 1
        continue 
    emit Batch(arg1);
}



}
