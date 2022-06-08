contract main {




// =====================  Runtime code  =====================


#
#  - sub_079a65db(?)
#  - sub_cc69ff00(?)
#
address owner;
address signerAddress;
address supervisorAddress;
address walletAddress;
address tokenAddress;
address vaultAddress;
uint256 baseRate;
uint256 startTime;
uint256 softCap;
uint256 hardCap;
uint8 status;
mapping of uint256 balances;
uint8 stor12;

function baseRate() {
    return baseRate
}

function status() {
    require status <= 3
    return status
}

function signer() {
    return signerAddress
}

function balances(address arg1) {
    return balances[arg1]
}

function wallet() {
    return walletAddress
}

function supervisor() {
    return supervisorAddress
}

function startTime() {
    return startTime
}

function sub_7ae91d8c(?) {
    return bool(stor12)
}

function owner() {
    return owner
}

function softCap() {
    return softCap
}

function sub_c034d539(?) {
    return vaultAddress
}

function hardCap() {
    return hardCap
}

function vault() {
    return vaultAddress
}

function token() {
    return tokenAddress
}

function getEtherRaised() {
    return eth.balance(vaultAddress)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_59ce7d4c(?) {
    require supervisorAddress == msg.sender
    require bool(stor12) != arg1
    emit AccessChanged(arg1);
    stor12 = uint8(arg1)
}

function pauseCrowdsale() {
    require supervisorAddress == msg.sender
    require status <= 3
    require status == 1
    require status <= 3
    emit 0xe1377aa2: status, 3
    status = 3
}

function resumeCrowdsale() {
    require supervisorAddress == msg.sender
    require status <= 3
    require status == 3
    require status <= 3
    emit 0xe1377aa2: status, 1
    status = 1
}

function changeSigner(address arg1) {
    require supervisorAddress == msg.sender
    require status <= 3
    require status == 3
    require arg1
    emit SignerChanged(signerAddress, arg1);
    signerAddress = arg1
}

function startCrowdsale() {
    require stor12
    require msg.sender == owner
    require status <= 3
    require not status
    require status <= 3
    emit 0xe1377aa2: status, 1
    status = 1
    startTime = block.timestamp
}

function _fallback() payable {
    emit 0x1cd5f056: msg.sender
    call msg.sender with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_39ed6344(?) {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args tokenAddress, 10^12
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function cancelCrowdsale() {
    require supervisorAddress == msg.sender
    require status <= 3
    require status == 3
    require status <= 3
    emit 0xe1377aa2: status, 2
    status = 2
    require ext_code.size(vaultAddress)
    call vaultAddress.enableRefunds() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c089a192(?) {
    require balances[address(msg.sender)] + 10^18 >= balances[address(msg.sender)]
    balances[address(msg.sender)] += 10^18
    require ext_code.size(vaultAddress)
    call vaultAddress.deposit(address arg1) with:
       value msg.value wei
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approveInvestor(address arg1) {
    require stor12
    require msg.sender == owner
    require balances[address(arg1)] > 0
    balances[address(arg1)] = 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), balances[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function sub_bfdfae5e(?) {
    require status <= 3
    require status
    require block.timestamp > startTime + (8760 * 24 * 3600)
    status = 2
    require ext_code.size(vaultAddress)
    if eth.balance(vaultAddress) < softCap:
        call vaultAddress.enableRefunds() with:
             gas gas_remaining wei
    else:
        call vaultAddress.close() with:
             gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function endCrowdsale() {
    require stor12
    require msg.sender == owner
    require status <= 3
    require status == 1
    require status <= 3
    emit 0xe1377aa2: status, 2
    status = 2
    require ext_code.size(vaultAddress)
    if eth.balance(vaultAddress) < softCap:
        call vaultAddress.enableRefunds() with:
             gas gas_remaining wei
    else:
        call vaultAddress.close() with:
             gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1ad40076(?) {
    require stor12
    require msg.sender == owner
    s = 0
    idx = 0
    while idx < ('cd', 4).length:
        require address(cd[((32 * idx) + cd[4] + 36)])
        require idx < ('cd', 4).length
        require balances[address(cd[((32 * idx) + cd[4] + 36)])] > 0
        require idx < ('cd', 4).length
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 11
        balances[address(cd[((32 * idx) + cd[4] + 36)])] = 0
        mem[100] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[132] = balances[address(cd[((32 * idx) + cd[4] + 36)])]
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args address(cd[((32 * idx) + cd[4] + 36)]), balances[address(cd[((32 * idx) + cd[4] + 36)])]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        s = balances[address(cd[((32 * idx) + cd[4] + 36)])]
        idx = idx + 1
        continue 
}

function sub_0ed5b156(?) {
    require stor12
    require msg.sender == owner
    require status <= 3
    require status == 2
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args walletAddress, 0
    else:
        require ext_call.return_data[0]
        require 49 * ext_call.return_data[0] / ext_call.return_data[0] == 49
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args walletAddress, 49 * ext_call.return_data[0] / 51
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.finishMinting() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function sub_a3319ea4(?) {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(this.address), 10^10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0xd73dd623 with:
         gas gas_remaining wei
        args tokenAddress, 10000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0x66188463 with:
         gas gas_remaining wei
        args tokenAddress, 1000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0xd73dd623 with:
         gas gas_remaining wei
        args address(this.address), 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), tokenAddress, 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
