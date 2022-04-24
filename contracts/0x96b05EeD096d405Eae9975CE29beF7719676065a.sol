contract main {


// =======================  Init code  ======================


address stor0;
address stor2;

function _fallback() {
    stor0 = msg.sender
    stor2 = code.data[1119 len 20]
    return code.data[95 len 1012]
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

function resetOwnership() {
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
}

function distributeToken(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require distributorWalletAddress == msg.sender
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _14 = mem[(32 * idx) + 128]
        require idx < arg2.length
        _16 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0x238a3fe100000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = address(_14)
        mem[(32 * arg1.length) + (32 * arg2.length) + 196] = _16
        require ext_code.size(tokenAddress)
        call tokenAddress.transferDistribution(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args address(_14), _16
        require ext_call.success
        idx = idx + 1
        continue 
}



}
