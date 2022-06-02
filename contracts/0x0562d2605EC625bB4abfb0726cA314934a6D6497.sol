contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
address tokenAddress;
mapping of uint8 stor3;

function airdrops(address arg1) {
    return bool(stor3[arg1])
}

function owner() {
    return owner
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

function transferOwnership(address arg1) {
    require msg.sender == owner
    newOwner = arg1
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function airdropTokens(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 3
        stor3[mem[(32 * idx) + 140 len 20]] = 1
        require idx < arg1.length
        _22 = mem[(32 * idx) + 128]
        require idx < arg2.length
        _24 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg2.length) + (32 * arg1.length) + 164] = msg.sender
        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = address(_22)
        mem[(32 * arg2.length) + (32 * arg1.length) + 228] = 10^18 * _24
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(_22), 10^18 * _24
        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require idx < arg2.length
        require (10^18 * mem[(32 * arg1.length) + (32 * idx) + 160]) + s >= s
        idx = idx + 1
        s = (10^18 * mem[(32 * arg1.length) + (32 * idx) + 160]) + s
        continue 
}



}
