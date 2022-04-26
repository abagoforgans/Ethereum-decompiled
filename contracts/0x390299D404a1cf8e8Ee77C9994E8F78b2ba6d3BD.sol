contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = 0x5a82de3515fc4a4db9ba9e869f269a1e85300092
    return code.data[91 len 621]
}



// =====================  Runtime code  =====================


address owner;
address tokenRewardAddress;

function tokenReward() {
    return tokenRewardAddress
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function distributeToken(uint256 arg1, address[] arg2) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require owner == msg.sender
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
    require ext_call.success
    require arg1 <= ext_call.return_data[0]
    idx = 0
    s = 0
    while idx < arg2.length:
        require arg2.length
        require idx < arg2.length
        _16 = mem[(32 * idx) + 128]
        mem[(32 * arg2.length) + 128] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg2.length) + 132] = address(_16)
        mem[(32 * arg2.length) + 164] = arg1 / arg2.length
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(_16), arg1 / arg2.length
        require ext_call.success
        idx = idx + 1
        s = arg1 / arg2.length
        continue 
}



}
