contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    require code.data[1250 len 20]
    stor0 = msg.sender
    stor1 = code.data[1250 len 20]
    return code.data[120 len 1118]
}



// =====================  Runtime code  =====================


address founderAddress;
address tokenRewardAddress;
mapping of uint256 tokenAmountOf;

function founder() {
    return founderAddress
}

function tokenReward() {
    return tokenRewardAddress
}

function tokenAmountOf(address arg1) {
    return tokenAmountOf[arg1]
}

function _fallback() payable {
    revert
}

function tokenWithdraw(address arg1, uint256 arg2) {
    require founderAddress == msg.sender
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    require ext_call.return_data[0]
}

function sendToken(address arg1, uint256 arg2) {
    require founderAddress == msg.sender
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    require ext_call.return_data[0]
    require arg2 + tokenAmountOf[address(arg1)] >= tokenAmountOf[address(arg1)]
    tokenAmountOf[address(arg1)] += arg2
}

function sub_3aa678ff(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require founderAddress == msg.sender
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _14 = mem[(32 * idx) + 128]
        require founderAddress == msg.sender
        mem[(32 * arg1.length) + 132] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg1.length) + 164] = 3 * 10^10
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args mem[(32 * arg1.length) + 132], 3 * 10^10
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
        require tokenAmountOf[address(_14)] + 3 * 10^10 >= tokenAmountOf[address(_14)]
        mem[0] = address(_14)
        mem[32] = 2
        tokenAmountOf[address(_14)] += 3 * 10^10
        idx = idx + 1
        continue 
}

function sub_d477c39f(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require founderAddress == msg.sender
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _14 = mem[(32 * idx) + 128]
        require founderAddress == msg.sender
        mem[(32 * arg1.length) + 132] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg1.length) + 164] = 26 * 10^9
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args mem[(32 * arg1.length) + 132], 26 * 10^9
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
        require tokenAmountOf[address(_14)] + 26 * 10^9 >= tokenAmountOf[address(_14)]
        mem[0] = address(_14)
        mem[32] = 2
        tokenAmountOf[address(_14)] += 26 * 10^9
        idx = idx + 1
        continue 
}



}
