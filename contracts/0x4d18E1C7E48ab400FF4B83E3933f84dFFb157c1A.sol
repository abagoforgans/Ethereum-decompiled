contract main {




// =====================  Runtime code  =====================


address owner;
address tokenRewardAddress;
mapping of uint256 sub_d95ee329;

function tokenReward() {
    return tokenRewardAddress
}

function owner() {
    return owner
}

function sub_d95ee329(?) {
    return sub_d95ee329[address(msg.sender)]
}

function balance(address arg1) {
    return sub_d95ee329[arg1]
}

function _fallback() payable {
    revert
}

function sub_131a4786(?) {
    require sub_d95ee329[address(msg.sender)] > 0
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 10^18 * sub_d95ee329[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_d95ee329[address(msg.sender)] = 0
    emit Send(msg.sender, sub_d95ee329[address(msg.sender)]);
}

function sub_af061f98(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        sub_d95ee329[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg1.length) + 160]
        idx = idx + 1
        continue 
}

function sub_78c7d439(?) {
    require msg.sender == owner
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
