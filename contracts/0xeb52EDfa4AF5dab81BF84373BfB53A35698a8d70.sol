contract main {




// =====================  Runtime code  =====================


address validatorAddress;
address tokenAddress;
uint256 startTime;
uint256 endTime;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint256 totalSupply;
uint256 tokenCap;
uint8 stor9; offset 160
address owner;
address whiteListingContractAddress;
mapping of struct pendingMints;
uint256 currentMintNonce;
mapping of uint256 rejectedMintBalance;

function totalSupply() {
    return totalSupply
}

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
    return bool(stor9)
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

function tokenCap() {
    return tokenCap
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

function finalize() {
    require msg.sender == owner
    require not stor9
    require block.timestamp > endTime
    require msg.sender == owner
    require validatorAddress
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining wei
        args validatorAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Finalized()
    stor9 = 1
}

function rejectMint(uint256 arg1, uint256 arg2) {
    require msg.sender == validatorAddress
    require pendingMints[arg1].field_0
    require pendingMints[arg1].field_512 + rejectedMintBalance[stor11[arg1].field_0] >= rejectedMintBalance[stor11[arg1].field_0]
    rejectedMintBalance[stor11[arg1].field_0] += pendingMints[arg1].field_512
    emit MintRejected(pendingMints[arg1].field_256, pendingMints[arg1].field_512, arg2, pendingMints[arg1].field_0, arg1);
    pendingMints[arg1].field_0 = 0
    pendingMints[arg1].field_256 = 0
    pendingMints[arg1].field_512 = 0
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
    if not msg.value:
        require totalSupply >= totalSupply
        require totalSupply <= tokenCap
    else:
        require rate * msg.value / msg.value == rate
        require (rate * msg.value) + totalSupply >= totalSupply
        require (rate * msg.value) + totalSupply <= tokenCap
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    if not msg.value:
        pendingMints[stor12].field_0 = arg1
        pendingMints[stor12].field_256 = 0
        pendingMints[stor12].field_512 = msg.value
        emit ContributionRegistered(address(arg1), 0, msg.value, currentMintNonce);
    else:
        require rate * msg.value / msg.value == rate
        pendingMints[stor12].field_0 = arg1
        pendingMints[stor12].field_256 = rate * msg.value
        pendingMints[stor12].field_512 = msg.value
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
    if not msg.value:
        require totalSupply >= totalSupply
        require totalSupply <= tokenCap
    else:
        require rate * msg.value / msg.value == rate
        require (rate * msg.value) + totalSupply >= totalSupply
        require (rate * msg.value) + totalSupply <= tokenCap
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    if not msg.value:
        pendingMints[stor12].field_0 = msg.sender
        pendingMints[stor12].field_256 = 0
        pendingMints[stor12].field_512 = msg.value
        emit ContributionRegistered(msg.sender, 0, msg.value, currentMintNonce);
    else:
        require rate * msg.value / msg.value == rate
        pendingMints[stor12].field_0 = msg.sender
        pendingMints[stor12].field_256 = rate * msg.value
        pendingMints[stor12].field_512 = msg.value
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
    require pendingMints[arg1].field_256 + totalSupply >= totalSupply
    totalSupply += pendingMints[arg1].field_256
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
    return 1
}



}
