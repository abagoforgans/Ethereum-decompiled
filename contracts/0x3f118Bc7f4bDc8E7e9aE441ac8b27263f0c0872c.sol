contract main {


// =======================  Init code  ======================


mapping of uint256 stor1;
mapping of uint256 stor2;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint8 stor11; offset 160
address stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;

function _fallback() payable {
    uint8(stor11.field_160) = 5
    require not msg.value
    address(stor11.field_0) = msg.sender
    stor4 = 10^13
    stor5 = 5 * 10^11
    stor6 = 6 * 10^12
    stor7 = 10^12
    stor13 = 15 * 10^11
    stor14 = 6 * 10^11
    stor8 = 2 * 10^11
    stor9 = 2 * 10^11
    stor10 = 10^13
    stor1[address(msg.sender)] = 10^13
    stor12 = block.timestamp + (8760 * 24 * 3600)
    require address(stor11.field_0) == msg.sender
    stor1[address(stor11.field_0)] -= stor13
    stor2[0x1306bfbc0c20beadeec30000f634d08985d87de] += stor13
    return code.data[351 len 3382]
}



// =====================  Runtime code  =====================


const name = 'AdMine'

const symbol = 'MCN'


mapping of uint256 balances;
mapping of uint256 freezeBalances;
mapping of uint256 allowance;
uint256 totalSupply;
uint256 preSaleSupply;
uint256 iCOSupply;
uint256 userGrowsPoolSupply;
uint256 auditSupply;
uint256 bountySupply;
uint256 totalTokensRemind;
uint8 decimals; offset 160
address owner;
uint256 unfreezeTime;
uint256 admineTeamTokens;
uint256 admineAdvisorTokens;

function ICOSupply() {
    return iCOSupply
}

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function preSaleSupply() {
    return preSaleSupply
}

function decimals() {
    return decimals
}

function totalTokensRemind() {
    return totalTokensRemind
}

function FreezeBalances(address arg1) {
    return freezeBalances[arg1]
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function bountySupply() {
    return bountySupply
}

function userGrowsPoolSupply() {
    return userGrowsPoolSupply
}

function owner() {
    return owner
}

function unfreezeTime() {
    return unfreezeTime
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function auditSupply() {
    return auditSupply
}

function AdmineTeamTokens() {
    return admineTeamTokens
}

function AdmineAdvisorTokens() {
    return admineAdvisorTokens
}

function _fallback() payable {
    revert
}

function eraseUnsoldPreSaleTokens() {
    require owner == msg.sender
    balances[stor11] -= preSaleSupply
    preSaleSupply = 0
}

function freeze(address arg1, uint256 arg2) {
    require owner == msg.sender
    balances[stor11] -= arg2
    freezeBalances[address(arg1)] += arg2
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function add_tokens(address arg1, uint256 arg2) {
    require owner == msg.sender
    balances[stor11] -= arg2
    balances[arg1] += arg2
    totalTokensRemind -= arg2
}

function all_unfreeze() {
    require owner == msg.sender
    require block.timestamp >= unfreezeTime
    balances[0x1306bfbc0c20beadeec30000f634d08985d87de] += freezeBalances[0x1306bfbc0c20beadeec30000f634d08985d87de]
}

function transferIcoTokens(address arg1, uint256 arg2) {
    require owner == msg.sender
    require iCOSupply >= arg2
    balances[stor11] -= arg2
    balances[arg1] += arg2
    iCOSupply -= arg2
    totalTokensRemind -= arg2
}

function transferAuditTokens(address arg1, uint256 arg2) {
    require owner == msg.sender
    require auditSupply >= arg2
    balances[stor11] -= arg2
    balances[arg1] += arg2
    auditSupply -= arg2
    totalTokensRemind -= arg2
}

function transferBountyTokens(address arg1, uint256 arg2) {
    require owner == msg.sender
    require bountySupply >= arg2
    balances[stor11] -= arg2
    balances[arg1] += arg2
    bountySupply -= arg2
    totalTokensRemind -= arg2
}

function transferPreSaleTokens(address arg1, uint256 arg2) {
    require owner == msg.sender
    require preSaleSupply >= arg2
    balances[stor11] -= arg2
    balances[arg1] += arg2
    preSaleSupply -= arg2
    totalTokensRemind -= arg2
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balances[address(msg.sender)] >= arg2
    balances[address(msg.sender)] -= arg2
    balances[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferAdvisorTokens(address arg1, uint256 arg2) {
    require owner == msg.sender
    require admineAdvisorTokens >= arg2
    balances[stor11] -= arg2
    balances[arg1] += arg2
    admineAdvisorTokens -= arg2
    totalTokensRemind -= arg2
}

function transferUserGrowthPoolTokens(address arg1, uint256 arg2) {
    require owner == msg.sender
    require userGrowsPoolSupply >= arg2
    balances[stor11] -= arg2
    balances[arg1] += arg2
    userGrowsPoolSupply -= arg2
    totalTokensRemind -= arg2
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    if balances[address(arg1)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balances[address(arg1)] -= arg3
    balances[arg2] += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
