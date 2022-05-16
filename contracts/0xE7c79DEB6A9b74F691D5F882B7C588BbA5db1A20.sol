contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor3;
uint256 stor5;
uint256 stor6;
address stor7;
uint256 stor8;
address stor9;

function _fallback() {
    stor0 = msg.sender
    stor3 = 0
    stor5 = 200000000 * 10^18
    stor6 = 12500 * 10^18 * 3600
    stor7 = 0
    stor8 = 5000000 * 10^18
    stor9 = 0
    return code.data[288 len 5446]
}



// =====================  Runtime code  =====================


const MAX_UINT256 = -1


address owner;
address newOwner;
address tokenAddress;
uint256 tokensAlreadyMinted;
uint8 mintingState;
address crowdsaleContractAddress; offset 8
uint256 crowdsaleMintingCap;
uint256 teamTokensCap;
address teamTokenAddress;
uint256 communityTokensCap;
address communityAddress;
uint256 comunityMintedTokens;

function mintingState() {
    require mintingState <= 2
    return mintingState
}

function tokensAlreadyMinted() {
    return tokensAlreadyMinted
}

function teamTokenAddress() {
    return teamTokenAddress
}

function teamTokensCap() {
    return teamTokensCap
}

function communityAddress() {
    return communityAddress
}

function owner() {
    return owner
}

function crowdsaleContractAddress() {
    return crowdsaleContractAddress
}

function tokenAddress() {
    return tokenAddress
}

function communityTokensCap() {
    return communityTokensCap
}

function crowdsaleMintingCap() {
    return crowdsaleMintingCap
}

function newOwner() {
    return newOwner
}

function comunityMintedTokens() {
    return comunityMintedTokens
}

function _fallback() payable {
    revert
}

function finishCrowdsaleMinting() {
    require msg.sender == owner
    mintingState = 1
}

function setTokenAddress(address arg1) {
    require msg.sender == owner
    tokenAddress = arg1
}

function setTeamTokenAddress(address arg1) {
    require msg.sender == owner
    teamTokenAddress = arg1
}

function setCommunityAddress(address arg1) {
    require msg.sender == owner
    communityAddress = arg1
}

function setCrowdsaleContractAddress(address arg1) {
    require msg.sender == owner
    crowdsaleContractAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1 != owner
    newOwner = arg1
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnerUpdate(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function doCommunityMinting(address arg1, uint256 arg2) {
    if communityAddress != msg.sender:
        require msg.sender == owner
    require comunityMintedTokens <= -arg2 - 1
    require comunityMintedTokens + arg2 <= communityTokensCap
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), arg2
    require ext_call.success
    require comunityMintedTokens <= -arg2 - 1
    comunityMintedTokens += arg2
}

function doPresaleMinting(address arg1, uint256 arg2) {
    require msg.sender == owner
    require mintingState <= 2
    require not mintingState
    require tokensAlreadyMinted <= -arg2 - 1
    require tokensAlreadyMinted + arg2 <= crowdsaleMintingCap
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), arg2
    require ext_call.success
    require tokensAlreadyMinted <= -arg2 - 1
    tokensAlreadyMinted += arg2
}

function doCrowdsaleMinting(address arg1, uint256 arg2) {
    require msg.sender == crowdsaleContractAddress
    require mintingState <= 2
    require not mintingState
    require tokensAlreadyMinted <= -arg2 - 1
    require tokensAlreadyMinted + arg2 <= crowdsaleMintingCap
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), arg2
    require ext_call.success
    require tokensAlreadyMinted <= -arg2 - 1
    tokensAlreadyMinted += arg2
}

function doTeamMinting() {
    require mintingState <= 2
    require mintingState == 1
    require crowdsaleMintingCap >= tokensAlreadyMinted
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args teamTokenAddress, crowdsaleMintingCap - tokensAlreadyMinted
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args teamTokenAddress, teamTokensCap
    require ext_call.success
    mintingState = 2
}



}
