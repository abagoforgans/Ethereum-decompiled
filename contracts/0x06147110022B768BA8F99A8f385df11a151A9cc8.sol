contract main {


// =======================  Init code  ======================


uint128 stor3; offset 160
address stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
address stor7;
uint128 stor8; offset 160
address stor8;

function _fallback() payable {
    Mask(96, 0, stor3.field_160) = 0
    stor4 = 0
    stor5 = 0
    stor6 = 0
    Mask(96, 0, stor8.field_160) = 0
    require not msg.value
    address(stor3.field_0) = msg.sender
    stor7 = msg.sender
    address(stor8.field_0) = msg.sender
    emit ChangeTeamHolder(0, stor7);
    emit ChangeCommunityHolder(0, address(stor8.field_0));
    return code.data[500 len 10281]
}



// =====================  Runtime code  =====================


const name = 'ACE Token'

const decimals = 0

const symbol = 'ACE'

const DISTRIBUTION_INVESTORS = 60

const DISTRIBUTION_TEAM = 20

const MAXSOLD_SUPPLY = (27500 * 3600)

const DISTRIBUTION_COMMUNITY = 20

const HARDCAPPED_SUPPLY = 165 * 10^6


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor3; offset 160
uint128 stor3; offset 160
address owner;
uint256 investorSupply;
uint256 extraSupply;
uint256 freeToExtraMinting;
address teamTokensHolderAddress;
uint8 stor8; offset 160
uint128 stor8; offset 160
address communityTokensHolderAddress;
mapping of uint8 stor9;

function mintingFinished() {
    return bool(uint8(stor3.field_160))
}

function totalSupply() {
    return totalSupply
}

function specialAllowed(address arg1) {
    return bool(uint8(stor9[arg1]))
}

function transferAllowed() {
    return bool(uint8(stor8.field_160))
}

function communityTokensHolder() {
    return communityTokensHolderAddress
}

function freeToExtraMinting() {
    return freeToExtraMinting
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function extraSupply() {
    return extraSupply
}

function investorSupply() {
    return investorSupply
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function teamTokensHolder() {
    return teamTokensHolderAddress
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function finishMinting() {
    require msg.sender == owner
    Mask(96, 0, stor3.field_160) = 1
    emit MintFinished()
    return 1
}

function finilize() {
    require msg.sender == owner
    require uint8(stor3.field_160)
    require uint8(stor8.field_160)
    owner = 0
    return 1
}

function openTransfer() {
    require msg.sender == owner
    require not uint8(stor8.field_160)
    Mask(96, 0, stor8.field_160) = 1
    emit TransferAllowed()
    return 1
}

function setTeamTokensHolder(address arg1) {
    require msg.sender == owner
    require arg1
    teamTokensHolderAddress = arg1
    emit ChangeTeamHolder(teamTokensHolderAddress, teamTokensHolderAddress);
    return 1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setCommunityTokensHolder(address arg1) {
    require msg.sender == owner
    require arg1
    communityTokensHolderAddress = arg1
    emit ChangeCommunityHolder(communityTokensHolderAddress, communityTokensHolderAddress);
    return 1
}

function toggleTransferFor(address arg1) {
    require msg.sender == owner
    uint256(stor9[address(arg1)]) = not bool(uint8(stor9[address(arg1)])) or Mask(248, 8, uint256(stor9[address(arg1)]))
    emit TransferAllowanceFor(arg1, bool(uint8(stor9[address(arg1)])));
    return bool(uint8(stor9[address(arg1)]))
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if not uint8(stor8.field_160):
        require uint8(stor9[address(msg.sender)])
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not uint8(stor8.field_160):
        require uint8(stor9[address(msg.sender)])
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    require arg2 > 0
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require investorSupply + arg2 >= investorSupply
    investorSupply += arg2
    require freeToExtraMinting + arg2 >= freeToExtraMinting
    freeToExtraMinting += arg2
    require investorSupply <= 27500 * 3600
    require totalSupply <= 165 * 10^6
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, this.address, arg1);
    return 1
}

function extraMint() {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    require freeToExtraMinting > 0
    require 40 * freeToExtraMinting / 60 >= 20 * freeToExtraMinting / 60
    require totalSupply + (40 * freeToExtraMinting / 60) >= totalSupply
    totalSupply += 40 * freeToExtraMinting / 60
    require extraSupply + (40 * freeToExtraMinting / 60) >= extraSupply
    extraSupply += 40 * freeToExtraMinting / 60
    freeToExtraMinting = freeToExtraMinting % 60
    require totalSupply <= 165 * 10^6
    require extraSupply <= 66 * 10^6
    require balanceOf[stor7] + (20 * freeToExtraMinting / 60) >= balanceOf[stor7]
    balanceOf[stor7] += 20 * freeToExtraMinting / 60
    require balanceOf[address(stor8.field_0)] + (20 * freeToExtraMinting / 60) >= balanceOf[address(stor8.field_0)]
    balanceOf[address(stor8.field_0)] += 20 * freeToExtraMinting / 60
    emit Mint((20 * freeToExtraMinting / 60), teamTokensHolderAddress);
    emit Transfer((20 * freeToExtraMinting / 60), this.address, teamTokensHolderAddress);
    emit Mint((20 * freeToExtraMinting / 60), communityTokensHolderAddress);
    emit Transfer((20 * freeToExtraMinting / 60), this.address, communityTokensHolderAddress);
    return 1
}



}
