contract main {




// =====================  Runtime code  =====================


const TOTAL_TOKENs_SUPPLY = 33000000 * 10^18

const name = 'World Masonic Coin Solidus'

const sub_15c4c46d(?) = 11

const decimals = 18

const symbol = 'WMCS'

const sub_9a2454ab(?) = 9


mapping of uint256 balances;
uint256 totalSupply;
mapping of uint256 allowance;
address owner;
uint256 totalSoldTokens;
uint8 stor5; offset 160
uint128 stor5; offset 160
address stor5;

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function owner() {
    return owner
}

function enableTransfers() {
    return bool(uint8(stor5.field_160))
}

function totalSoldTokens() {
    return totalSoldTokens
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function getPrice() {
    if block.timestamp >= 1560124801:
        return 9
    return 11
}

function EnableTransfer() {
    require msg.sender == owner
    Mask(96, 0, stor5.field_160) = 1
}

function DisableTransfer() {
    require msg.sender == owner
    Mask(96, 0, stor5.field_160) = 0
}

function UpdateBeneficiary(address arg1) {
    require msg.sender == owner
    address(stor5.field_0) = arg1
    return 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require uint8(stor5.field_160)
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require arg1 <= balances[address(msg.sender)]
    require arg1 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
}

function transfer(address arg1, uint256 arg2) {
    require uint8(stor5.field_160)
    require arg1
    require arg2 <= balances[address(msg.sender)]
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require uint8(stor5.field_160)
    require arg2
    require arg3 <= balances[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require balances[address(arg2)] + arg3 >= balances[address(arg2)]
    balances[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 0
}

function _fallback() payable {
    require uint8(stor5.field_160)
    if block.timestamp >= 1560124801:
        require totalSoldTokens + (9 * msg.value) <= 33000000 * 10^18
        require msg.value >= 10^16
        call address(stor5.field_0) with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require balances[address(msg.sender)] + (9 * msg.value) >= balances[address(msg.sender)]
        balances[address(msg.sender)] += 9 * msg.value
        totalSoldTokens += 9 * msg.value
        emit Transfer((9 * msg.value), this.address, msg.sender);
    else:
        require totalSoldTokens + (11 * msg.value) <= 33000000 * 10^18
        require msg.value >= 10^16
        call address(stor5.field_0) with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require balances[address(msg.sender)] + (11 * msg.value) >= balances[address(msg.sender)]
        balances[address(msg.sender)] += 11 * msg.value
        totalSoldTokens += 11 * msg.value
        emit Transfer((11 * msg.value), this.address, msg.sender);
}



}
