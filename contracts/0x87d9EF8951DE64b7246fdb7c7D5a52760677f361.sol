contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
address tokenAddress;
uint256 dailyRate;
uint256 stor4;
uint256 sub_db5084ab;
mapping of struct referral;
array of address recipient;

function getRecipientAddress(uint256 arg1) {
    require arg1 < recipient.length
    return recipient[arg1]
}

function getReferral(address arg1) {
    return referral[address(arg1)].field_768
}

function getReferredAddressesLength(address arg1) {
    return referred[address(arg1)].field_256
}

function dailyRate() {
    return dailyRate
}

function owner() {
    return owner
}

function lastUpdate(address arg1) {
    return referral[address(arg1)].field_512
}

function sub_db5084ab(?) {
    return sub_db5084ab
}

function getRecipientsLength() {
    return recipient.length
}

function receivedTokens(address arg1) {
    return referral[address(arg1)].field_256
}

function token() {
    return tokenAddress
}

function sub_fea5ed16(?) {
    return referred[address(arg1)].field_0
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function nextClaimTime(address arg1) {
    if not referral[address(arg1)].field_0:
        return 0
    return (referral[address(arg1)].field_512 + stor1)
}

function sub_9303b0b8(?) {
    if not dailyRate:
        return 0
    require stor4 * dailyRate / dailyRate == stor4
    return (stor4 * dailyRate / 1000)
}

function setRates(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1 > 0
    require arg2 > 0
    dailyRate = arg1
    stor4 = arg2
}

function remainingTokens() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function recoverERC20(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function getReferredAddresses(address arg1) {
    if not referred[address(arg1)].field_256:
        mem[(32 * referred[address(arg1)].field_256) + 128] = 32
        mem[(32 * referred[address(arg1)].field_256) + 160] = referred[address(arg1)].field_256
        mem[(32 * referred[address(arg1)].field_256) + 192 len floor32(referred[address(arg1)].field_256)] = mem[128 len floor32(referred[address(arg1)].field_256)]
        return memory
          from (32 * referred[address(arg1)].field_256) + 128
           len (96 * referred[address(arg1)].field_256) + 64
    mem[128] = referred[address(arg1)][1].field_0
    idx = 128
    s = 0
    while (32 * referred[address(arg1)].field_256) + 96 > idx:
        mem[idx + 32] = referred[address(arg1)][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * referred[address(arg1)].field_256) + 192 len floor32(referred[address(arg1)].field_256)] = mem[128 len floor32(referred[address(arg1)].field_256)]
    return Array(len=referred[address(arg1)].field_256, data=mem[128 len floor32(referred[address(arg1)].field_256)], mem[(32 * referred[address(arg1)].field_256) + floor32(referred[address(arg1)].field_256) + 192 len (32 * referred[address(arg1)].field_256) - floor32(referred[address(arg1)].field_256)]), 
}

function getTokens() {
    if not referral[address(msg.sender)].field_0:
        require 0 <= block.timestamp
    else:
        require referral[address(msg.sender)].field_512 + stor1 <= block.timestamp
    if not referral[address(msg.sender)].field_0:
        recipient.length++
        recipient[recipient.length] = msg.sender
        referral[address(msg.sender)].field_0 = 1
    referral[address(msg.sender)].field_512 = block.timestamp
    require dailyRate + referral[address(msg.sender)].field_256 >= referral[address(msg.sender)].field_256
    referral[address(msg.sender)].field_256 += dailyRate
    require dailyRate + sub_db5084ab >= sub_db5084ab
    sub_db5084ab += dailyRate
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, dailyRate
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if referral[address(msg.sender)].field_768:
        if not dailyRate:
            require referred[stor6[address(msg.sender)].field_768].field_0 >= referred[stor6[address(msg.sender)].field_768].field_0
            require sub_db5084ab >= sub_db5084ab
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args referral[address(msg.sender)].field_768, 0
        else:
            require stor4 * dailyRate / dailyRate == stor4
            require (stor4 * dailyRate / 1000) + referred[stor6[address(msg.sender)].field_768].field_0 >= referred[stor6[address(msg.sender)].field_768].field_0
            referred[stor6[address(msg.sender)].field_768].field_0 += stor4 * dailyRate / 1000
            require (stor4 * dailyRate / 1000) + sub_db5084ab >= sub_db5084ab
            sub_db5084ab += stor4 * dailyRate / 1000
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args referral[address(msg.sender)].field_768, stor4 * dailyRate / 1000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function _fallback() {
    if not referral[address(msg.sender)].field_0:
        require 0 <= block.timestamp
    else:
        require referral[address(msg.sender)].field_512 + stor1 <= block.timestamp
    if not referral[address(msg.sender)].field_0:
        recipient.length++
        recipient[recipient.length] = msg.sender
        referral[address(msg.sender)].field_0 = 1
    referral[address(msg.sender)].field_512 = block.timestamp
    require dailyRate + referral[address(msg.sender)].field_256 >= referral[address(msg.sender)].field_256
    referral[address(msg.sender)].field_256 += dailyRate
    require dailyRate + sub_db5084ab >= sub_db5084ab
    sub_db5084ab += dailyRate
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, dailyRate
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if referral[address(msg.sender)].field_768:
        if not dailyRate:
            require referred[stor6[address(msg.sender)].field_768].field_0 >= referred[stor6[address(msg.sender)].field_768].field_0
            require sub_db5084ab >= sub_db5084ab
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args referral[address(msg.sender)].field_768, 0
        else:
            require stor4 * dailyRate / dailyRate == stor4
            require (stor4 * dailyRate / 1000) + referred[stor6[address(msg.sender)].field_768].field_0 >= referred[stor6[address(msg.sender)].field_768].field_0
            referred[stor6[address(msg.sender)].field_768].field_0 += stor4 * dailyRate / 1000
            require (stor4 * dailyRate / 1000) + sub_db5084ab >= sub_db5084ab
            sub_db5084ab += stor4 * dailyRate / 1000
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args referral[address(msg.sender)].field_768, stor4 * dailyRate / 1000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function sub_d19c08ef(?) {
    require arg1 != msg.sender
    if not referral[address(msg.sender)].field_0:
        require 0 <= block.timestamp
    else:
        require referral[address(msg.sender)].field_512 + stor1 <= block.timestamp
    if not referral[address(msg.sender)].field_0:
        recipient.length++
        recipient[recipient.length] = msg.sender
        referral[address(msg.sender)].field_0 = 1
        if arg1:
            referral[address(msg.sender)].field_768 = arg1
            referred[address(arg1)].field_256++
            stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'referred', 8))) + referred[address(arg1)].field_256].field_0 = msg.sender
    referral[address(msg.sender)].field_512 = block.timestamp
    require dailyRate + referral[address(msg.sender)].field_256 >= referral[address(msg.sender)].field_256
    referral[address(msg.sender)].field_256 += dailyRate
    require dailyRate + sub_db5084ab >= sub_db5084ab
    sub_db5084ab += dailyRate
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, dailyRate
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if referral[address(msg.sender)].field_768:
        if not dailyRate:
            require referred[stor6[address(msg.sender)].field_768].field_0 >= referred[stor6[address(msg.sender)].field_768].field_0
            require sub_db5084ab >= sub_db5084ab
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args referral[address(msg.sender)].field_768, 0
        else:
            require stor4 * dailyRate / dailyRate == stor4
            require (stor4 * dailyRate / 1000) + referred[stor6[address(msg.sender)].field_768].field_0 >= referred[stor6[address(msg.sender)].field_768].field_0
            referred[stor6[address(msg.sender)].field_768].field_0 += stor4 * dailyRate / 1000
            require (stor4 * dailyRate / 1000) + sub_db5084ab >= sub_db5084ab
            sub_db5084ab += stor4 * dailyRate / 1000
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args referral[address(msg.sender)].field_768, stor4 * dailyRate / 1000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}



}
