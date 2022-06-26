contract main {




// =====================  Runtime code  =====================


address owner;
address dappAddress;
mapping of uint256 sub_86403125;
mapping of uint256 sub_d4e0228a;
uint256 sub_176797d0;
address sub_a82a6f41Address;

function sub_176797d0(?) {
    return sub_176797d0
}

function sub_86403125(?) {
    return sub_86403125[arg1]
}

function owner() {
    return owner
}

function sub_a82a6f41(?) {
    return sub_a82a6f41Address
}

function dapp() {
    return dappAddress
}

function sub_d4e0228a(?) {
    return sub_d4e0228a[arg1]
}

function suicide() {
    require msg.sender == owner
    emit 0x4c8f029a 
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function sub_e81a0aad(?) {
    require msg.sender == owner
    sub_a82a6f41Address = arg1
    return 1
}

function sub_20d7d3a0(?) {
    require msg.sender == owner
    dappAddress = arg1
    emit 0x1a454d97: arg1
    return 1
}

function sub_4ddee4d0(?) {
    if owner != msg.sender:
        require msg.sender == dappAddress
    require arg1
    if arg2:
        sub_86403125[address(arg1)] = arg2
    else:
        sub_86403125[address(arg1)] = 0
}

function withdraw() {
    require msg.sender == owner
    emit Withdraw(eth.balance(this.address), msg.sender, owner);
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function balanceOfTokens(address arg1) {
    require arg1
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdrawTokens(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        emit WithdrawTokens(arg2, msg.sender, owner, arg1);
    return bool(ext_call.return_data[0])
}

function receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) {
    require arg1
    require arg3
    require arg2 > 0
    require sub_86403125[address(arg3)] > 0
    require 10^18 * arg2 * sub_86403125[address(arg3)] / 10^18 / 10^18 / 10^18 > 0
    require ext_code.size(arg3)
    call arg3.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(sub_a82a6f41Address)
    call sub_a82a6f41Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), 10^18 * arg2 * sub_86403125[address(arg3)] / 10^18 / 10^18 / 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    sub_d4e0228a[address(arg1)] += 10^18 * arg2 * sub_86403125[address(arg3)] / 10^18 / 10^18 / 10^18
    sub_176797d0++
    emit 0x26ee7530: 10^18 * arg2 * sub_86403125[address(arg3)] / 10^18 / 10^18 / 10^18, block.timestamp, arg1
}



}
