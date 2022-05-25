contract main {




// =====================  Runtime code  =====================


const name = 'LVU Token'

const decimals = 18

const symbol = 'LVU'

const INITIAL_SUPPLY = 10000000000 * 10^18


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
address owner;
mapping of uint256 balanceLocked;
mapping of uint256 sub_08354dca;
uint256 amountRaised;
uint256 buyPrice;
uint8 stor8;
uint8 stor8; offset 8
uint256 stor8; offset 8

function sub_08354dca(?) {
    return sub_08354dca[arg1]
}

function totalSupply() {
    return totalSupply
}

function transferEnabled() {
    return bool(uint8(stor8.field_8))
}

function balanceLocked(address arg1) {
    return balanceLocked[arg1]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function amountRaised() {
    return amountRaised
}

function buyPrice() {
    return buyPrice
}

function owner() {
    return owner
}

function crowdsaleClosed() {
    return bool(uint8(stor8.field_0))
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function setPrice(uint256 arg1) {
    require msg.sender == owner
    buyPrice = arg1
}

function closeBuy(bool arg1) {
    require msg.sender == owner
    uint8(stor8.field_0) = uint8(arg1)
}

function enableTransfer(bool arg1) {
    require msg.sender == owner
    Mask(248, 0, stor8.field_8) = Mask(248, 0, arg1)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function getFreeBalances(address arg1) {
    if balanceLocked[address(arg1)] > 0:
        if block.timestamp <= sub_08354dca[address(arg1)]:
            return (balanceOf[address(arg1)] - (6 * balanceLocked[address(arg1)] / 10))
    return balanceOf[address(arg1)]
}

function unlockAddress(address[] arg1) {
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 4
        balanceLocked[address(cd[((32 * idx) + arg1 + 36)])] = 0
        idx = idx + 1
        continue 
}

function burn(uint256 arg1) {
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
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

function safeWithdrawal(uint256 arg1) {
    require msg.sender == owner
    if arg1:
        call owner with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
    else:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferEx(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function lockAddress(address[] arg1) {
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        balanceLocked[address(cd[((32 * idx) + arg1 + 36)])] = balanceOf[address(cd[((32 * idx) + arg1 + 36)])]
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 5
        sub_08354dca[address(cd[((32 * idx) + arg1 + 36)])] = block.timestamp + (8640 * 24 * 3600)
        idx = idx + 1
        continue 
}

function transfer(address arg1, uint256 arg2) {
    require uint8(stor8.field_8)
    if balanceLocked[address(msg.sender)] > 0:
        if block.timestamp <= sub_08354dca[address(msg.sender)]:
            require balanceOf[address(msg.sender)] - arg2 >= 6 * balanceLocked[address(msg.sender)] / 10
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require uint8(stor8.field_8)
    if balanceLocked[address(arg1)] > 0:
        if block.timestamp <= sub_08354dca[address(arg1)]:
            require balanceOf[address(arg1)] - arg3 >= 6 * balanceLocked[address(arg1)] / 10
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require not uint8(stor8.field_0)
    require amountRaised + msg.value >= amountRaised
    amountRaised += msg.value
    if not msg.value:
        require balanceOf[stor3] >= 0
        require balanceOf[address(msg.sender)] > balanceOf[address(msg.sender)]
        require 0 <= balanceOf[stor3]
        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        balanceLocked[address(msg.sender)] = balanceOf[address(msg.sender)]
        sub_08354dca[address(msg.sender)] = block.timestamp + (8640 * 24 * 3600)
        emit Transfer(0, owner, msg.sender);
    else:
        require msg.value
        require msg.value * buyPrice / msg.value == buyPrice
        require balanceOf[stor3] >= msg.value * buyPrice
        require balanceOf[address(msg.sender)] + (msg.value * buyPrice) > balanceOf[address(msg.sender)]
        require msg.value * buyPrice <= balanceOf[stor3]
        balanceOf[stor3] += -1 * msg.value * buyPrice
        require balanceOf[address(msg.sender)] + (msg.value * buyPrice) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += msg.value * buyPrice
        balanceLocked[address(msg.sender)] = balanceOf[address(msg.sender)]
        sub_08354dca[address(msg.sender)] = block.timestamp + (8640 * 24 * 3600)
        emit Transfer((msg.value * buyPrice), owner, msg.sender);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
