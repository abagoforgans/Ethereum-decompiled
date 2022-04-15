contract main {


// =======================  Init code  ======================


uint256 stor0;
uint8 stor1; offset 160
address stor1;
mapping of uint256 stor2;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
address stor13;
address stor14;
uint128 stor15; offset 168
uint128 stor15; offset 160
address stor15;

function _fallback() payable {
    uint8(stor1.field_160) = 18
    Mask(96, 0, stor15.field_160) = 0
    Mask(88, 0, stor15.field_168) = 0
    require not msg.value
    address(stor1.field_0) = msg.sender
    stor10 = 419248 * 3600
    require stor10 + (4392 * 24 * 3600) >= stor10
    stor11 = stor10 + (4392 * 24 * 3600)
    stor0 = 1000000000 * 10^18
    stor4 = 50000000 * 10^18
    stor5 = 50000000 * 10^18
    stor9 = 100000000 * 10^18
    stor6 = 150000 * 10^18 * 24 * 3600
    stor8 = 260000000 * 10^18
    stor7 = stor6
    stor13 = 0xcf701d8ea4c727466d42651dda127c0c033076b0
    stor14 = 0xf5b5f6c1e233671b220c2a19af10fd18785d0744
    address(stor15.field_0) = 0x5584b17b40f6a2e412e65fcb1533f39fc7d8aa26
    require stor2[address(stor15.field_0)] + stor9 >= stor2[address(stor15.field_0)]
    stor2[address(stor15.field_0)] += stor9
    require stor2[stor14] + stor5 >= stor2[stor14]
    stor2[stor14] += stor5
    return code.data[952 len 6954]
}



// =====================  Runtime code  =====================


const name = 'Fuel Token'

const symbol = 'FUEL'


uint256 totalSupply;
uint8 decimals; offset 160
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 vanbexTeamSupply;
uint256 platformSupply;
uint256 presaleSupply;
uint256 presaleAmountRemaining;
uint256 icoSupply;
uint256 incentivisingEffortsSupply;
uint256 crowdfundEndsAt;
uint256 vanbexTeamVestingPeriod;
address crowdfundAddress;
address vanbexTeamAddress;
address platformAddress;
uint8 stor15; offset 160
uint8 stor15; offset 168
uint128 stor15; offset 168
uint128 stor15; offset 160
address incentivisingEffortsAddress;

function vanbexTeamAddress() {
    return vanbexTeamAddress
}

function totalSupply() {
    return totalSupply
}

function vanbexTeamVestingPeriod() {
    return vanbexTeamVestingPeriod
}

function decimals() {
    return decimals
}

function icoSupply() {
    return icoSupply
}

function presaleFinalized() {
    return bool(uint8(stor15.field_160))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function crowdfundAddress() {
    return crowdfundAddress
}

function platformSupply() {
    return platformSupply
}

function crowdfundEndsAt() {
    return crowdfundEndsAt
}

function presaleAmountRemaining() {
    return presaleAmountRemaining
}

function incentivisingEffortsAddress() {
    return incentivisingEffortsAddress
}

function crowdfundFinalized() {
    return bool(uint8(stor15.field_168))
}

function owner() {
    return owner
}

function vanbexTeamSupply() {
    return vanbexTeamSupply
}

function incentivisingEffortsSupply() {
    return incentivisingEffortsSupply
}

function presaleSupply() {
    return presaleSupply
}

function platformAddress() {
    return platformAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setCrowdfundAddress(address arg1) {
    require msg.sender == owner
    require arg1
    require not crowdfundAddress
    crowdfundAddress = arg1
    require balanceOf[stor12] + icoSupply >= balanceOf[stor12]
    balanceOf[stor12] += icoSupply
}

function releaseVanbexTeamTokens() {
    require block.timestamp >= vanbexTeamVestingPeriod
    require msg.sender == owner
    require vanbexTeamSupply > 0
    require balanceOf[stor13] + vanbexTeamSupply >= balanceOf[stor13]
    balanceOf[stor13] += vanbexTeamSupply
    emit Transfer(vanbexTeamSupply, 0, vanbexTeamAddress);
    vanbexTeamSupply = 0
    return 1
}

function finalizePresale() {
    require msg.sender == owner
    require not uint8(stor15.field_160)
    if presaleAmountRemaining:
        presaleAmountRemaining = 0
        require balanceOf[stor12] + presaleAmountRemaining >= balanceOf[stor12]
        balanceOf[stor12] += presaleAmountRemaining
    Mask(96, 0, stor15.field_160) = 1
    emit PresaleFinalized(presaleAmountRemaining);
    return 1
}

function transferFromCrowdfund(address arg1, uint256 arg2) {
    require msg.sender == crowdfundAddress
    require arg2 > 0
    require arg1
    require balanceOf[stor12] >= arg2
    require arg2 <= balanceOf[stor12]
    balanceOf[stor12] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require block.timestamp >= crowdfundEndsAt
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function finalizeCrowdfund() {
    require msg.sender == crowdfundAddress
    require bool(uint8(stor15.field_160)) == 1
    require not uint8(stor15.field_168)
    if balanceOf[stor12] > 0:
        balanceOf[stor12] = 0
        require balanceOf[stor14] + balanceOf[stor12] >= balanceOf[stor14]
        balanceOf[stor14] += balanceOf[stor12]
        emit Transfer(balanceOf[stor12], crowdfundAddress, platformAddress);
    Mask(88, 0, stor15.field_168) = 1
    emit CrowdfundFinalized(balanceOf[stor12]);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require block.timestamp >= crowdfundEndsAt
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function deliverPresaleFuelBalances(address[] arg1, uint256[] arg2) {
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require msg.sender == owner
        require presaleAmountRemaining > 0
        require balanceOf[address(cd[((32 * idx) + arg1 + 36)])] + cd[((32 * idx) + arg2 + 36)] >= balanceOf[address(cd[((32 * idx) + arg1 + 36)])]
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 2
        balanceOf[address(cd[((32 * idx) + arg1 + 36)])] += cd[((32 * idx) + arg2 + 36)]
        mem[96] = cd[((32 * idx) + arg2 + 36)]
        emit Transfer(cd[((32 * idx) + arg2 + 36)], 0, address(cd[((32 * idx) + arg1 + 36)]));
        require cd[((32 * idx) + arg2 + 36)] <= presaleAmountRemaining
        presaleAmountRemaining -= cd[((32 * idx) + arg2 + 36)]
        idx = idx + 1
        continue 
    return 1
}



}
