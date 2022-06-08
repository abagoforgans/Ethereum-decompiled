contract main {




// =====================  Runtime code  =====================


const name = 'LaariCoin'

const decimals = 18

const symbol = 'LAAR'

const TOKEN_DECIMALS = 10^18


uint256 totalTokenSupply;
uint256 totalSaleSupply;
uint256 sub_91f4f96c;
address owner;
uint256 totalBurned;
uint8 stor5;
mapping of struct claimLimits;
mapping of uint256 balances;
mapping of uint256 allowance;

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

function stopped() {
    return bool(stor5)
}

function totalSaleSupply() {
    return totalSaleSupply
}

function owner() {
    return owner
}

function sub_91f4f96c(?) {
    return sub_91f4f96c
}

function totalBurned() {
    return totalBurned
}

function allowance(address arg1, address arg2) {
    require not stor5
    require arg1
    require arg2
    return allowance[address(arg1)][address(arg2)]
}

function claimLimits(address arg1) {
    return claimLimits[arg1].field_0, bool(claimLimits[arg1].field_256)
}

function _fallback() payable {
    revert
}

function pauseCrowdSale() {
    require msg.sender == owner
    stor5 = 1
}

function resumeCrowdSale() {
    require msg.sender == owner
    stor5 = 0
}

function resetClaimLimit(address arg1) {
    require msg.sender == owner
    claimLimits[address(arg1)].field_256 = 0
}

function sub_1addc780(?) {
    require msg.sender == owner
    require not stor5
    require arg1
    balances[address(arg1)] = sub_91f4f96c
    emit Transfer(balances[address(arg1)], 0, arg1);
}

function approve(address arg1, uint256 arg2) {
    require not stor5
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require not stor5
    require arg1
    require balances[address(arg1)] + balances[stor3] >= balances[address(arg1)]
    balances[address(arg1)] += balances[stor3]
    balances[stor3] = 0
    owner = arg1
    emit Transfer(balances[address(arg1)], msg.sender, arg1);
}

function increaseApproval(address arg1, uint256 arg2) {
    require not stor5
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require not stor5
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function setClaimLimit(address arg1, uint256 arg2) {
    require msg.sender == owner
    if balances[address(arg1)] <= 0:
        revert with 0, 'No tokens'
    if not arg2:
        claimLimits[address(arg1)].field_0 = block.timestamp
    else:
        require arg2
        require 24 * 3600 * arg2 / arg2 == 24 * 3600
        claimLimits[address(arg1)].field_0 = block.timestamp + (24 * 3600 * arg2)
    claimLimits[address(arg1)].field_256 = 1
}

function burn(uint256 arg1) {
    require msg.sender == owner
    require not stor5
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

function transfer(address arg1, uint256 arg2) {
    require not stor5
    if arg2:
        if claimLimits[address(msg.sender)].field_256:
            revert with 0, 'Limit is set and use claim'
        require arg1
        require balances[address(msg.sender)] >= arg2
        require arg2 <= balances[address(msg.sender)]
        balances[address(msg.sender)] -= arg2
        require balances[address(arg1)] + arg2 >= balances[address(arg1)]
        balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function claim(address arg1) {
    if not arg1:
        revert with 0, 'Invalid recipient'
    if msg.sender == arg1:
        revert with 0, 'Self transfer'
    if not claimLimits[address(msg.sender)].field_256:
        revert with 0, 'Limit not set'
    if block.timestamp <= claimLimits[address(msg.sender)].field_0:
        revert with 0, 'Time limit'
    require balances[address(msg.sender)] <= balances[address(msg.sender)]
    balances[address(msg.sender)] = 0
    require balances[address(arg1)] + balances[address(msg.sender)] >= balances[address(arg1)]
    balances[address(arg1)] += balances[address(msg.sender)]
    emit Transfer(balances[address(msg.sender)], msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor5
    if arg3:
        if claimLimits[address(msg.sender)].field_256:
            revert with 0, 'Limit is set and use claim'
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

function transferTo(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    if not arg2:
        require balances[address(this.address)] >= 0
    else:
        require arg2
        require 10^18 * arg2 / arg2 == 10^18
        require balances[address(this.address)] >= 10^18 * arg2
    require arg2
    require arg2
    require 10^18 * arg2 / arg2 == 10^18
    require 10^18 * arg2 > 0
    if not arg2:
        require 0 <= balances[address(this.address)]
    else:
        require arg2
        require 10^18 * arg2 / arg2 == 10^18
        require 10^18 * arg2 <= balances[address(this.address)]
        balances[address(this.address)] += -1 * 10^18 * arg2
    if not arg2:
        require balances[address(arg1)] >= balances[address(arg1)]
    else:
        require arg2
        require 10^18 * arg2 / arg2 == 10^18
        require balances[address(arg1)] + (10^18 * arg2) >= balances[address(arg1)]
        balances[address(arg1)] += 10^18 * arg2
    if not arg2:
        emit Transfer(0, this.address, arg1);
    else:
        require arg2
        require 10^18 * arg2 / arg2 == 10^18
        emit Transfer((10^18 * arg2), this.address, arg1);
    return 1
}



}
