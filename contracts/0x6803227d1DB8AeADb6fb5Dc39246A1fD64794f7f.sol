contract main {




// =====================  Runtime code  =====================


address validatorAddress;
address tokenAddress;
uint256 startTime;
uint256 endTime;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint256 hardCap;
uint8 stor8; offset 160
address owner;
address whiteListingContractAddress;
mapping of struct pendingMints;
uint256 currentMintNonce;
mapping of uint256 rejectedMintBalance;

function rate() {
    return rate
}

function endTime() {
    return endTime
}

function validator() {
    return validatorAddress
}

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function pendingMints(uint256 arg1) {
    return pendingMints[arg1].field_0, pendingMints[arg1].field_256, pendingMints[arg1].field_512
}

function startTime() {
    return startTime
}

function currentMintNonce() {
    return currentMintNonce
}

function isFinalized() {
    return bool(stor8)
}

function owner() {
    return owner
}

function whiteListingContract() {
    return whiteListingContractAddress
}

function rejectedMintBalance(address arg1) {
    return rejectedMintBalance[arg1]
}

function hardCap() {
    return hardCap
}

function token() {
    return tokenAddress
}

function hasEnded() {
    return (block.timestamp > endTime)
}

function setTokenContract(address arg1) {
    require msg.sender == owner
    require arg1
    tokenAddress = arg1
}

function updateRate(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    rate = arg1
    emit RateUpdated(arg1);
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setNewValidator(address arg1) {
    require msg.sender == validatorAddress
    require arg1
    emit NewValidatorSet(validatorAddress, arg1);
    validatorAddress = arg1
}

function setWhitelistContract(address arg1) {
    require msg.sender == validatorAddress
    require arg1
    whiteListingContractAddress = arg1
    emit WhiteListingContractSet(arg1);
}

function transferTokenOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function claim() {
    require 0 < rejectedMintBalance[msg.sender]
    rejectedMintBalance[msg.sender] = 0
    call msg.sender with:
       value rejectedMintBalance[msg.sender] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Claimed(rejectedMintBalance[msg.sender], msg.sender);
}

function rejectMint(uint256 arg1, uint256 arg2) {
    require msg.sender == validatorAddress
    require pendingMints[arg1].field_0
    require pendingMints[arg1].field_512 + rejectedMintBalance[stor10[arg1].field_0] >= rejectedMintBalance[stor10[arg1].field_0]
    rejectedMintBalance[stor10[arg1].field_0] += pendingMints[arg1].field_512
    emit MintRejected(pendingMints[arg1].field_256, pendingMints[arg1].field_512, arg2, pendingMints[arg1].field_0, arg1);
    pendingMints[arg1].field_0 = 0
    pendingMints[arg1].field_256 = 0
    pendingMints[arg1].field_512 = 0
}

function finalize() {
    require msg.sender == owner
    require not stor8
    require block.timestamp > endTime
    require ext_code.size(tokenAddress)
    call tokenAddress.0x7d64bcb4 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == owner
    require owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining wei
        args owner
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Finalized()
    stor8 = 1
}

function buyTokens(address arg1) payable {
    require ext_code.size(whiteListingContractAddress)
    call whiteListingContractAddress.isInvestorApproved(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require msg.value + weiRaised >= weiRaised
    require msg.value + weiRaised <= hardCap
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    if not msg.value:
        pendingMints[stor11].field_0 = arg1
        pendingMints[stor11].field_256 = 0
        pendingMints[stor11].field_512 = msg.value
        emit ContributionRegistered(address(arg1), 0, msg.value, currentMintNonce);
    else:
        require rate * msg.value / msg.value == rate
        pendingMints[stor11].field_0 = arg1
        pendingMints[stor11].field_256 = rate * msg.value
        pendingMints[stor11].field_512 = msg.value
        emit ContributionRegistered(address(arg1), rate * msg.value, msg.value, currentMintNonce);
    currentMintNonce++
}

function _fallback() payable {
    require ext_code.size(whiteListingContractAddress)
    call whiteListingContractAddress.isInvestorApproved(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require msg.value + weiRaised >= weiRaised
    require msg.value + weiRaised <= hardCap
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    if not msg.value:
        pendingMints[stor11].field_0 = msg.sender
        pendingMints[stor11].field_256 = 0
        pendingMints[stor11].field_512 = msg.value
        emit ContributionRegistered(msg.sender, 0, msg.value, currentMintNonce);
    else:
        require rate * msg.value / msg.value == rate
        pendingMints[stor11].field_0 = msg.sender
        pendingMints[stor11].field_256 = rate * msg.value
        pendingMints[stor11].field_512 = msg.value
        emit ContributionRegistered(msg.sender, rate * msg.value, msg.value, currentMintNonce);
    currentMintNonce++
}

function approveMint(uint256 arg1) {
    require msg.sender == validatorAddress
    require ext_code.size(whiteListingContractAddress)
    call whiteListingContractAddress.isInvestorApproved(address arg1) with:
         gas gas_remaining wei
        args pendingMints[arg1].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require pendingMints[arg1].field_512 + weiRaised >= weiRaised
    weiRaised += pendingMints[arg1].field_512
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args pendingMints[arg1].field_0, pendingMints[arg1].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit TokenPurchase(pendingMints[arg1].field_512, pendingMints[arg1].field_256, msg.sender, pendingMints[arg1].field_0);
    call walletAddress with:
       value pendingMints[arg1].field_512 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    pendingMints[arg1].field_0 = 0
    pendingMints[arg1].field_256 = 0
    pendingMints[arg1].field_512 = 0
}

function bulkRejectMints(uint256[] arg1, uint256[] arg2) payable {
    mem[64] = 96
    require not msg.value
    require msg.sender == validatorAddress
    require arg2.length == arg1.length
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require pendingMints[cd[((32 * idx) + arg1 + 36)]].field_0
        require pendingMints[cd[((32 * idx) + arg1 + 36)]].field_512 + rejectedMintBalance[stor10[cd[((32 * idx) + arg1 + 36)]].field_0] >= rejectedMintBalance[stor10[cd[((32 * idx) + arg1 + 36)]].field_0]
        rejectedMintBalance[stor10[cd[((32 * idx) + arg1 + 36)]].field_0] += pendingMints[cd[((32 * idx) + arg1 + 36)]].field_512
        mem[32] = 10
        mem[mem[64]] = pendingMints[cd[((32 * idx) + arg1 + 36)]].field_256
        mem[mem[64] + 32] = pendingMints[cd[((32 * idx) + arg1 + 36)]].field_512
        mem[mem[64] + 64] = cd[((32 * idx) + arg2 + 36)]
        emit MintRejected(pendingMints[cd[((32 * idx) + arg1 + 36)]].field_256, pendingMints[cd[((32 * idx) + arg1 + 36)]].field_512, cd[((32 * idx) + arg2 + 36)], pendingMints[cd[((32 * idx) + arg1 + 36)]].field_0, cd[((32 * idx) + arg1 + 36)]);
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 10
        pendingMints[cd[((32 * idx) + arg1 + 36)]].field_0 = 0
        pendingMints[cd[((32 * idx) + arg1 + 36)]].field_256 = 0
        pendingMints[cd[((32 * idx) + arg1 + 36)]].field_512 = 0
        idx = idx + 1
        continue 
}

function bulkApproveMints(uint256[] arg1) {
    require msg.sender == validatorAddress
    idx = 0
    while idx < arg1.length:
        require ext_code.size(whiteListingContractAddress)
        call whiteListingContractAddress.isInvestorApproved(address arg1) with:
             gas gas_remaining wei
            args pendingMints[cd[((32 * idx) + arg1 + 36)]].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require pendingMints[cd[((32 * idx) + arg1 + 36)]].field_512 + weiRaised >= weiRaised
        weiRaised += pendingMints[cd[((32 * idx) + arg1 + 36)]].field_512
        mem[132] = pendingMints[cd[((32 * idx) + arg1 + 36)]].field_256
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args pendingMints[cd[((32 * idx) + arg1 + 36)]].field_0, pendingMints[cd[((32 * idx) + arg1 + 36)]].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[96] = pendingMints[cd[((32 * idx) + arg1 + 36)]].field_512
        mem[128] = pendingMints[cd[((32 * idx) + arg1 + 36)]].field_256
        emit TokenPurchase(pendingMints[cd[((32 * idx) + arg1 + 36)]].field_512, pendingMints[cd[((32 * idx) + arg1 + 36)]].field_256, msg.sender, pendingMints[cd[((32 * idx) + arg1 + 36)]].field_0);
        call walletAddress with:
           value pendingMints[cd[((32 * idx) + arg1 + 36)]].field_512 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 10
        pendingMints[cd[((32 * idx) + arg1 + 36)]].field_0 = 0
        pendingMints[cd[((32 * idx) + arg1 + 36)]].field_256 = 0
        pendingMints[cd[((32 * idx) + arg1 + 36)]].field_512 = 0
        idx = idx + 1
        continue 
}



}
