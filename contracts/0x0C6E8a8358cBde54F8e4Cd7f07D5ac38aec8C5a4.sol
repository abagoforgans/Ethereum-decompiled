contract main {




// =====================  Runtime code  =====================


const name = 'PlatonCoin'

const decimals = 18

const symbol = 'PLTC'

const TOKEN_DECIMALS = 10^18


uint256 totalTokenSupply;
uint256 totalSaleSupply;
uint256 totalTeamSupply;
uint256 totalAdvisorsSupply;
uint256 totalBountySupply;
uint256 totalEarlyInvSupply;
address owner;
uint256 totalBurned;
uint8 stor8;
mapping of uint256 balances;
mapping of uint256 allowance;

function totalTeamSupply() {
    return totalTeamSupply
}

function totalSupply() {
    return totalTokenSupply
}

function totalTokenSupply() {
    return totalTokenSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function totalSaleSupply() {
    return totalSaleSupply
}

function totalEarlyInvSupply() {
    return totalEarlyInvSupply
}

function owner() {
    return owner
}

function totalBountySupply() {
    return totalBountySupply
}

function totalAdvisorsSupply() {
    return totalAdvisorsSupply
}

function totalBurned() {
    return totalBurned
}

function allowance(address arg1, address arg2) {
    require not stor8
    require arg1
    require arg2
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function pauseCrowdSale() {
    require msg.sender == owner
    stor8 = 1
}

function resumeCrowdSale() {
    require msg.sender == owner
    stor8 = 0
}

function renounceOwnership() {
    require msg.sender == owner
    require not stor8
    owner = 0
    emit OwnershipRenounced(owner);
}

function approve(address arg1, uint256 arg2) {
    require not stor8
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require not stor8
    require arg1
    require balances[address(arg1)] + balances[stor6] >= balances[address(arg1)]
    balances[address(arg1)] += balances[stor6]
    balances[stor6] = 0
    owner = arg1
    emit Transfer(balances[address(arg1)], msg.sender, arg1);
}

function increaseApproval(address arg1, uint256 arg2) {
    require not stor8
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require not stor8
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transferAnyERC20Token(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not stor8
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function transfer(address arg1, uint256 arg2) {
    require not stor8
    if arg2:
        require arg1
        require balances[address(msg.sender)] >= arg2
        require arg2 <= balances[address(msg.sender)]
        balances[address(msg.sender)] -= arg2
        require balances[address(arg1)] + arg2 >= balances[address(arg1)]
        balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require msg.sender == owner
    require not stor8
    require arg1 <= balances[address(msg.sender)]
    require arg1 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg1
    require arg1 <= totalTokenSupply
    totalTokenSupply -= arg1
    require totalBurned + arg1 >= totalBurned
    totalBurned += arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
    return 1
}

function initWallets(address arg1, address arg2, address arg3, address arg4) {
    require msg.sender == owner
    require not stor8
    require arg1
    require arg2
    require arg3
    require arg4
    balances[address(arg1)] = totalTeamSupply
    balances[address(arg2)] = totalAdvisorsSupply
    balances[address(arg3)] = totalBountySupply
    balances[address(arg4)] = totalEarlyInvSupply
    emit Transfer(balances[address(arg1)], 0, arg1);
    emit Transfer(balances[address(arg2)], 0, arg2);
    emit Transfer(balances[address(arg3)], 0, arg3);
    emit Transfer(balances[address(arg4)], 0, arg4);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor8
    if arg3:
        require arg2
        require balances[address(arg1)] >= arg3
        require allowance[address(arg1)][address(msg.sender)] >= arg3
        require arg3 >= 0
        require arg3 <= balances[address(arg1)]
        balances[address(arg1)] -= arg3
        require arg3 <= allowance[address(arg1)][address(msg.sender)]
        allowance[address(arg1)][address(msg.sender)] -= arg3
        require balances[address(arg2)] + arg3 >= balances[address(arg2)]
        balances[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
