contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[1300 len 20]
    return code.data[95 len 1193]
}



// =====================  Runtime code  =====================


address owner;
address tokenAddress;

function owner() {
    return owner
}

function tokenAddress() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function updateTokenContract(address arg1) {
    require owner == msg.sender
    tokenAddress = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function airdrop(uint256 arg1, address[] arg2) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require owner == msg.sender
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        mem[(32 * arg2.length) + 132] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg2.length) + 164] = arg1
        require ext_code.size(tokenAddress)
        call tokenAddress.0x1d32ab99 with:
             gas gas_remaining - 710 wei
            args mem[(32 * arg2.length) + 132], arg1
        mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        idx = idx + 1
        continue 
    return arg2.length
}

function multisend(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require owner == msg.sender
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        _21 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg1.length) + (32 * arg2.length) + 196] = _21
        require ext_code.size(tokenAddress)
        call tokenAddress.0x1d32ab99 with:
             gas gas_remaining - 710 wei
            args mem[(32 * arg1.length) + (32 * arg2.length) + 164], _21
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
        require ext_call.success
        idx = idx + 1
        continue 
    return arg1.length
}



}
