contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
address holderAddress;
uint256 reward;
mapping of uint8 stor4;

function reward() {
    return reward
}

function distributed(address arg1) {
    return bool(stor4[arg1])
}

function owner() {
    return owner
}

function holder() {
    return holderAddress
}

function token() {
    return tokenAddress
}

function changeReward(uint256 arg1) {
    require msg.sender == owner
    reward = arg1
}

function sub_5b343191(?) {
    require msg.sender == owner
    tokenAddress = arg1
    holderAddress = arg2
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function _fallback() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0xdd62ed3e with:
         gas gas_remaining wei
        args holderAddress, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= reward
    require not stor4[msg.sender]
    stor4[msg.sender] = 1
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args holderAddress, msg.sender, reward
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function distribute(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    mem[(32 * arg1.length) + 132] = holderAddress
    mem[(32 * arg1.length) + 164] = this.address
    require ext_code.size(tokenAddress)
    call tokenAddress.0xdd62ed3e with:
         gas gas_remaining wei
        args holderAddress, this.address
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= reward * arg1.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        if not stor4[mem[(32 * idx) + 140 len 20]]:
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 4
            stor4[mem[(32 * idx) + 140 len 20]] = 1
            require idx < arg1.length
            _27 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + 132] = holderAddress
            mem[(32 * arg1.length) + 164] = address(_27)
            mem[(32 * arg1.length) + 196] = reward
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining wei
                args holderAddress, address(_27), reward
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        idx = idx + 1
        continue 
}



}
