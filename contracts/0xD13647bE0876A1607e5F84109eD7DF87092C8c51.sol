contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[59 len 906]
}



// =====================  Runtime code  =====================


address owner;
address tokenAddress;
address distributorWalletAddress;

function owner() {
    return owner
}

function distributorWallet() {
    return distributorWalletAddress
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function setToken(address arg1) {
    require owner == msg.sender
    tokenAddress = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function distributeToken(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require owner == msg.sender
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _14 = mem[(32 * idx) + 128]
        require idx < arg2.length
        _16 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = address(_14)
        mem[(32 * arg1.length) + (32 * arg2.length) + 196] = _16
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(_14), _16
        require ext_call.success
        idx = idx + 1
        continue 
}



}
