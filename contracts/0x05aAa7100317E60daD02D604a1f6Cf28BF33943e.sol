contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
address backendAddress;
address teamAddress;
address partnersAddress;
address toSendFromStorageAddress;
address rewardsAddress;
address tokenAddress;
address vestingAddress;
uint8 emergencyPaused; offset 160
uint8 finalizedHoldingsAndTeamTokens; offset 168
uint8 mintingFinished; offset 176
uint128 stor9; offset 176
uint128 stor9; offset 168
uint128 stor9; offset 160
address coldStorageAddress;
uint256 stor10;

function mintingFinished() {
    return bool(mintingFinished)
}

function backend() {
    return backendAddress
}

function finalizedHoldingsAndTeamTokens() {
    return bool(finalizedHoldingsAndTeamTokens)
}

function emergencyPaused() {
    return bool(emergencyPaused)
}

function toSendFromStorage() {
    return toSendFromStorageAddress
}

function vesting() {
    return vestingAddress
}

function partners() {
    return partnersAddress
}

function team() {
    return teamAddress
}

function owner() {
    return owner
}

function rewards() {
    return rewardsAddress
}

function coldStorage() {
    return coldStorageAddress
}

function newOwner() {
    return newOwner
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function emergencyUnpause() {
    require msg.sender == owner
    require emergencyPaused
    Mask(96, 0, stor9.field_160) = 0
}

function emergencyPause() {
    require msg.sender == owner
    require not emergencyPaused
    Mask(96, 0, stor9.field_160) = 1
}

function updateTeam(address arg1) {
    require msg.sender == owner
    require arg1
    teamAddress = arg1
    emit TeamUpdated(teamAddress, arg1);
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, msg.sender);
    owner = msg.sender
    newOwner = 0
}

function transferOwnershipAtomic(address arg1) {
    require msg.sender == owner
    owner = arg1
    newOwner = 0
    emit OwnershipTransferred(owner, arg1);
}

function updateBackend(address arg1) {
    require msg.sender == owner
    require arg1
    backendAddress = arg1
    emit BackendUpdated(backendAddress, arg1);
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    newOwner = arg1
    emit OwnershipTransferInitiated(owner, arg1);
}

function updatePartners(address arg1) {
    require msg.sender == owner
    require arg1
    partnersAddress = arg1
    emit PartnersUpdated(partnersAddress, arg1);
}

function updateToSendFromStorage(address arg1) {
    require msg.sender == owner
    require arg1
    toSendFromStorageAddress = arg1
    emit ToSendFromStorageUpdated(toSendFromStorageAddress, arg1);
}

function allocate(address arg1, uint256 arg2) {
    require msg.sender == backendAddress
    require not mintingFinished
    require not emergencyPaused
    require arg1
    require stor10 + arg2 >= stor10
    require stor10 + arg2 <= 550000000 * 10^18
    stor10 += arg2
    require ext_code.size(tokenAddress)
    call tokenAddress.mint(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit TokensAllocated(address(arg1), arg2);
}

function sub_0e8eafb9(?) {
    require msg.sender == backendAddress
    require not emergencyPaused
    require not finalizedHoldingsAndTeamTokens
    Mask(88, 0, stor9.field_168) = 1
    require ext_code.size(tokenAddress)
    call tokenAddress.mint(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args vestingAddress, 550000000 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(vestingAddress)
    call vestingAddress.initializeVesting(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args teamAddress, 550000000 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit TokensSentIntoVesting(vestingAddress, teamAddress, 550000000 * 10^18);
    require ext_code.size(tokenAddress)
    call tokenAddress.mint(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args coldStorageAddress, 75000000 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(coldStorageAddress)
    call coldStorageAddress.initializeHolding(address arg1) with:
         gas gas_remaining wei
        args toSendFromStorageAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit TokensSentIntoHolding(coldStorageAddress, toSendFromStorageAddress, 75000000 * 10^18);
    require ext_code.size(tokenAddress)
    call tokenAddress.mint(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args partnersAddress, 175000000 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.mint(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args rewardsAddress, 150000000 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(vestingAddress)
    call vestingAddress.0x7b78ee5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    Mask(80, 0, stor9.field_176) = 1
    require ext_code.size(tokenAddress)
    call tokenAddress.finishMinting() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit HoldingAndTeamTokensFinalized()
}



}
