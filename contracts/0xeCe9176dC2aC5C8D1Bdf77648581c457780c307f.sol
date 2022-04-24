contract main {


// =======================  Init code  ======================


mapping of uint256 stor1;
mapping of uint256 stor2;
uint256 stor4;
uint8 stor5; offset 160
address stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;

function _fallback() payable {
    uint8(stor5.field_160) = 2
    require not msg.value
    address(stor5.field_0) = msg.sender
    stor4 = 10^9
    stor1[address(msg.sender)] = 10^9
    stor6 = block.timestamp + (8760 * 24 * 3600)
    stor7 = 150 * 10^6
    stor8 = 60 * 10^6
    require address(stor5.field_0) == msg.sender
    stor1[address(stor5.field_0)] -= 150 * 10^6
    stor2[0x1306bfbc0c20beadeec30000f634d08985d87de] += 150 * 10^6
    stor1[address(stor5.field_0)] -= stor8
    stor2[0x1e9822fc82b23fcd965e7515be5861261f282c5] += stor8
    return code.data[347 len 2120]
}



// =====================  Runtime code  =====================


const name = 'AdMine TEST CONTRACT'

const symbol = 'MCNTST'


mapping of uint256 balances;
mapping of uint256 freezeBalances;
mapping of uint256 allowance;
uint256 totalSupply;
uint8 decimals; offset 160
address owner;
uint256 unfreezeTime;
uint256 sub_e564f8f0;
uint256 admineAdvisorTokens;

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function decimals() {
    return decimals
}

function FreezeBalances(address arg1) {
    return freezeBalances[arg1]
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
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

function sub_e564f8f0(?) {
    return sub_e564f8f0
}

function AdmineAdvisorTokens() {
    return admineAdvisorTokens
}

function _fallback() payable {
    revert
}

function add_tokens(address arg1, uint256 arg2) {
    require owner == msg.sender
    balances[stor5] -= arg2
    balances[arg1] += arg2
}

function freeze(address arg1, uint256 arg2) {
    require owner == msg.sender
    balances[stor5] -= arg2
    freezeBalances[address(arg1)] += arg2
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balances[address(msg.sender)] >= arg2
    balances[address(msg.sender)] -= arg2
    balances[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function all_unfreeze() {
    require owner == msg.sender
    require block.timestamp >= unfreezeTime
    balances[0x1306bfbc0c20beadeec30000f634d08985d87de] += freezeBalances[0x1306bfbc0c20beadeec30000f634d08985d87de]
    balances[0x1e9822fc82b23fcd965e7515be5861261f282c5] += freezeBalances[0x1e9822fc82b23fcd965e7515be5861261f282c5]
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
