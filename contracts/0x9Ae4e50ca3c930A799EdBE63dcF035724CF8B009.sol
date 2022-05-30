contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
uint256 jackpotSize;

function jackpotSize() {
    return jackpotSize
}

function owner() {
    return owner
}

function _fallback() payable {
    require msg.value > 0
}

function sub_4e45351f(?) {
    return owner, jackpotSize, eth.balance(this.address)
}

function acceptNextOwner() {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only accept preapproved new owner.'
    owner = stor1
}

function sub_6100d922(?) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by nonowner.'
    require arg2 + jackpotSize >= jackpotSize
    jackpotSize += arg2
    emit 0x7297b46a: arg1, arg2
}

function approveNextOwner(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by nonowner.'
    if owner == arg1:
        revert with 0, 'Cannot approve current owner.'
    stor1 = arg1
}

function withdrawAllFunds() {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by nonowner.'
    jackpotSize = 0
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b7f9ec46(?) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by nonowner.'
    require arg2 <= jackpotSize
    jackpotSize -= arg2
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_2a518024(?) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by nonowner.'
    require arg2 <= jackpotSize
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        emit FailedPayment(arg2, arg1);
    else:
        require arg2 <= jackpotSize
        jackpotSize -= arg2
        emit JackpotPayment(arg2, arg1);
}

function increaseJackpot(uint256 arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyOwner methods called by nonowner.'
    if arg1 > eth.balance(this.address):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Increase amount larger than balance.'
    if arg1 + jackpotSize > eth.balance(this.address):
        revert with 0, 'Not enough funds.'
    require uint128(arg1) + jackpotSize >= jackpotSize
    jackpotSize += uint128(arg1)
}



}
