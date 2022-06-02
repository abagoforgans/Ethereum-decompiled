contract main {




// =====================  Runtime code  =====================


const senderWeiBalance = eth.balance(this.address)


uint8 stor0; offset 160
address owner;
address senderAddress;
uint256 senderTokenBalance;
uint8 stor3;
address inxCrowdsaleAddress; offset 8
uint256 stor3;
address inxTokenAddress;

function senderTokenBalance() {
    return senderTokenBalance
}

function senderAddress() {
    return senderAddress
}

function paused() {
    return bool(stor0)
}

function owner() {
    return owner
}

function isRefunding() {
    return bool(uint8(stor3.field_0))
}

function inxCrowdsale() {
    return inxCrowdsaleAddress
}

function inxToken() {
    return inxTokenAddress
}

function unpause() {
    require msg.sender == owner
    require stor0
    stor0 = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not stor0
    stor0 = 1
    emit Pause()
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function toggleRefunding() {
    require msg.sender == owner
    uint256(stor3.field_0) = not uint8(stor3.field_0) or Mask(248, 8, uint256(stor3.field_0))
    emit RefundToggle(bool(uint8(not uint8(stor3.field_0))));
}

function refund() {
    require not stor0
    if not uint8(stor3.field_0):
        revert with 0, 'Must be in refunding state'
    if 0 >= senderTokenBalance:
        revert with 0, 'Token balance must be positive'
    senderTokenBalance = 0
    call senderAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Refund(eth.balance(this.address), senderAddress);
    return 1
}

function _fallback() payable {
    require not stor0
    if uint8(stor3.field_0):
        revert with 0, 'Must not be in refunding state'
    if senderAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only commit from the predefined sender address'
    require ext_code.size(inxCrowdsaleAddress)
    call inxCrowdsaleAddress.minContribution() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if msg.value < ext_call.return_data[0]:
        revert with 0, 'Commitment value below minimum'
    require ext_code.size(inxCrowdsaleAddress)
    call inxCrowdsaleAddress.getCurrentRate() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not msg.value:
        require senderTokenBalance >= senderTokenBalance
        emit Commit(msg.value, ext_call.return_data[0], 0, senderAddress);
    else:
        require ext_call.return_data[0] * msg.value / msg.value == ext_call.return_data[0]
        require (ext_call.return_data[0] * msg.value) + senderTokenBalance >= senderTokenBalance
        senderTokenBalance += ext_call.return_data[0] * msg.value
        emit Commit(msg.value, ext_call.return_data[0], ext_call.return_data[0] * msg.value, senderAddress);
}

function commit() payable {
    require not stor0
    if uint8(stor3.field_0):
        revert with 0, 'Must not be in refunding state'
    if senderAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only commit from the predefined sender address'
    require ext_code.size(inxCrowdsaleAddress)
    call inxCrowdsaleAddress.minContribution() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if msg.value < ext_call.return_data[0]:
        revert with 0, 'Commitment value below minimum'
    require ext_code.size(inxCrowdsaleAddress)
    call inxCrowdsaleAddress.getCurrentRate() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not msg.value:
        require senderTokenBalance >= senderTokenBalance
        emit Commit(msg.value, ext_call.return_data[0], 0, senderAddress);
    else:
        require ext_call.return_data[0] * msg.value / msg.value == ext_call.return_data[0]
        require (ext_call.return_data[0] * msg.value) + senderTokenBalance >= senderTokenBalance
        senderTokenBalance += ext_call.return_data[0] * msg.value
        emit Commit(msg.value, ext_call.return_data[0], ext_call.return_data[0] * msg.value, senderAddress);
    return 1
}

function redeem() {
    require not stor0
    if uint8(stor3.field_0):
        revert with 0, 'Must not be in refunding state'
    if 0 >= senderTokenBalance:
        revert with 0, 'Token balance must be positive'
    require ext_code.size(inxCrowdsaleAddress)
    call inxCrowdsaleAddress.kyc(address arg1) with:
         gas gas_remaining wei
        args senderAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Sender must have passed KYC'
    senderTokenBalance = 0
    require ext_code.size(inxCrowdsaleAddress)
    call inxCrowdsaleAddress.0x521eb273 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call ext_call.return_data[12 len 20] with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(inxTokenAddress)
    call inxTokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args senderAddress, senderTokenBalance
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Unable to mint INX tokens'
    emit Redeem(eth.balance(this.address), senderTokenBalance, senderAddress);
    return 1
}



}
