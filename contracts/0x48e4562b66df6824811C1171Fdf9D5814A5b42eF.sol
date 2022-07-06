contract main {




// =====================  Runtime code  =====================


const name = 32, 21, 0xaae59d8ae59fbae987910000000000000000000000

const decimals = 0

const _totalLimit = 10^14

const sub_7143ddab(?) = 0

const symbol = 'HXETH'


uint8 stor0; offset 160
address owner;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 sub_a80987f0;
uint256 sub_4b66a7cf;
uint256 sub_18996fd3;
uint256 sub_26de0634;
uint256 sub_76ccb1d3;
uint256 sub_73786c0a;
address sub_da3ed960Address;

function totalSupply() {
    return totalSupply
}

function sub_18996fd3(?) {
    return sub_18996fd3
}

function sub_26de0634(?) {
    return sub_26de0634
}

function sub_4b66a7cf(?) {
    return sub_4b66a7cf
}

function paused() {
    return bool(stor0)
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function sub_73786c0a(?) {
    return sub_73786c0a
}

function sub_76ccb1d3(?) {
    return sub_76ccb1d3
}

function owner() {
    return owner
}

function sub_a80987f0(?) {
    return sub_a80987f0
}

function sub_da3ed960(?) {
    return sub_da3ed960Address
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function unpause() {
    require msg.sender == owner
    require stor0
    stor0 = 0
    emit Unpaused(msg.sender);
}

function pause() {
    require msg.sender == owner
    require not stor0
    stor0 = 1
    emit Paused(msg.sender);
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

function approve(address arg1, uint256 arg2) {
    require not stor0
    require arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require not stor0
    require arg1 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function sub_d66f547c(?) {
    require msg.sender == owner
    require arg2 <= 999999999
    sub_18996fd3 = arg1
    sub_26de0634 = arg2
    sub_76ccb1d3 = arg3
    sub_73786c0a = arg4
    sub_da3ed960Address = arg5
    emit 0xcb1ecaaf: arg1, arg2, arg3, arg4, arg5
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require not stor0
    require arg1
    require arg2 <= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] -= arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function withdraw() {
    call sub_da3ed960Address with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Withdraw(eth.balance(this.address), msg.sender, sub_da3ed960Address);
}

function increaseAllowance(address arg1, uint256 arg2) {
    require not stor0
    require arg1
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor0
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require not stor0
    require arg2 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor0
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function invest() payable {
    require block.timestamp >= sub_76ccb1d3
    require block.timestamp <= sub_73786c0a
    require msg.value >= sub_18996fd3
    require msg.value * sub_26de0634 / 10^18 > 0
    require (msg.value * sub_26de0634 / 10^18) + sub_a80987f0 >= sub_a80987f0
    sub_a80987f0 += msg.value * sub_26de0634 / 10^18
    require msg.value + sub_4b66a7cf >= sub_4b66a7cf
    sub_4b66a7cf += msg.value
    require msg.sender
    require (msg.value * sub_26de0634 / 10^18) + totalSupply >= totalSupply
    totalSupply += msg.value * sub_26de0634 / 10^18
    require 10^14 >= (msg.value * sub_26de0634 / 10^18) + totalSupply
    require (msg.value * sub_26de0634 / 10^18) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += msg.value * sub_26de0634 / 10^18
    emit Transfer((msg.value * sub_26de0634 / 10^18), 0, msg.sender);
    emit Invest(msg.value, msg.value * sub_26de0634 / 10^18, msg.sender, sub_26de0634);
}

function _fallback() payable {
    require block.timestamp >= sub_76ccb1d3
    require block.timestamp <= sub_73786c0a
    require msg.value >= sub_18996fd3
    require msg.value * sub_26de0634 / 10^18 > 0
    require (msg.value * sub_26de0634 / 10^18) + sub_a80987f0 >= sub_a80987f0
    sub_a80987f0 += msg.value * sub_26de0634 / 10^18
    require msg.value + sub_4b66a7cf >= sub_4b66a7cf
    sub_4b66a7cf += msg.value
    require msg.sender
    require (msg.value * sub_26de0634 / 10^18) + totalSupply >= totalSupply
    totalSupply += msg.value * sub_26de0634 / 10^18
    require 10^14 >= (msg.value * sub_26de0634 / 10^18) + totalSupply
    require (msg.value * sub_26de0634 / 10^18) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += msg.value * sub_26de0634 / 10^18
    emit Transfer((msg.value * sub_26de0634 / 10^18), 0, msg.sender);
    emit Invest(msg.value, msg.value * sub_26de0634 / 10^18, msg.sender, sub_26de0634);
}



}
