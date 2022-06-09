contract main {




// =====================  Runtime code  =====================


uint256 totalSupply;
address stor1;
uint8 status; offset 160
address stor2;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 balances;
mapping of uint256 allowed;
uint256 sellPrice;
uint256 buyPrice;
uint8 stor10;
array of address stor11;
mapping of uint256 frozenBalances;

function name() {
    return name[0 len name.length]
}

function frozenBalances(address arg1) {
    return frozenBalances[arg1]
}

function totalSupply() {
    return totalSupply
}

function status() {
    return status
}

function balances(address arg1) {
    return balances[arg1]
}

function decimals() {
    return decimals
}

function sellPrice() {
    return sellPrice
}

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function buyPrice() {
    return buyPrice
}

function symbol() {
    return symbol[0 len symbol.length]
}

function frozenBalancesOf(address arg1) {
    return frozenBalances[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowed[address(arg1)][address(arg2)]
}

function destruct() {
    require stor1 == msg.sender
    selfdestruct(stor1)
}

function _fallback() payable {
    revert
}

function getManagers() {
    return stor1, stor2
}

function setOwner(address arg1) {
    require stor1 == msg.sender
    stor1 = arg1
}

function setAdmin(address arg1) {
    require stor1 == msg.sender
    stor2 = arg1
}

function close() {
    if stor1 != msg.sender:
        require stor2 == msg.sender
    require status != 3
    status = 3
}

function limit() {
    if stor1 != msg.sender:
        require stor2 == msg.sender
    require status != 1
    status = 1
}

function setFreezePercent(uint8 arg1) {
    if stor1 != msg.sender:
        require stor2 == msg.sender
    stor10 = arg1
}

function start() {
    if stor1 != msg.sender:
        require stor2 == msg.sender
    require status != 2
    status = 2
}

function setPrices(uint256 arg1, uint256 arg2) {
    if stor1 != msg.sender:
        require stor2 == msg.sender
    sellPrice = arg1
    buyPrice = arg2
    emit Price(sellPrice, buyPrice);
}

function burn(uint256 arg1) {
    require balances[address(msg.sender)] >= arg1
    balances[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require balances[address(arg1)] >= arg2
    require arg2 <= allowed[address(arg1)][address(msg.sender)]
    balances[address(arg1)] -= arg2
    allowed[address(arg1)][address(msg.sender)] -= arg2
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function increaseFrozenBalances(address arg1, uint256 arg2) {
    if stor1 != msg.sender:
        require stor2 == msg.sender
    require arg2 > 0
    if not frozenBalances[address(arg1)]:
        stor11.length++
        address(stor11[stor11.length]) = arg1
    frozenBalances[address(arg1)] += arg2
    emit FrozenBalance(frozenBalances[address(arg1)], arg1);
}

function freeze(address arg1, uint8 arg2) {
    if stor1 != msg.sender:
        require stor2 == msg.sender
    require arg2 > 0
    require arg2 <= 100
    if not frozenBalances[address(arg1)]:
        stor11.length++
        address(stor11[stor11.length]) = arg1
    frozenBalances[address(arg1)] = balances[address(arg1)] * arg2 / 100
    emit FrozenBalance((balances[address(arg1)] * arg2 / 100), arg1);
}

function changeFrozenBalanceAll(uint8 arg1) {
    if stor1 != msg.sender:
        require stor2 == msg.sender
    s = 0
    idx = 0
    while idx < stor11.length:
        require idx < stor11.length
        mem[0] = address(stor11[idx])
        mem[32] = 12
        frozenBalances[address(stor11[idx])] = balances[address(stor11[idx])] * arg1 / 100
        s = balances[address(stor11[idx])] * arg1 / 100
        idx = idx + 1
        continue 
}

function approve(address arg1, uint256 arg2) {
    if status != 2:
        if stor1 != msg.sender:
            if stor2 != msg.sender:
                require status == 1
                if stor1 != msg.sender:
                    require stor2 == msg.sender
    if arg2:
        require not allowed[address(msg.sender)][address(arg1)]
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    if status != 2:
        if stor1 != msg.sender:
            if stor2 != msg.sender:
                require status == 1
                if stor1 != msg.sender:
                    require stor2 == msg.sender
    require allowed[address(msg.sender)][address(arg1)] + arg2 >= allowed[address(msg.sender)][address(arg1)]
    require allowed[address(msg.sender)][address(arg1)] + arg2 >= arg2
    allowed[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowed[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function unfreezeAll() {
    if stor1 != msg.sender:
        require stor2 == msg.sender
    idx = 0
    while idx < stor11.length:
        mem[0] = address(stor11[idx])
        mem[32] = 12
        frozenBalances[address(stor11[idx])] = 0
        idx = idx + 1
        continue 
    stor11.length = 0
    idx = 0
    while stor11.length > idx:
        uint256(stor11[idx]) = 0
        idx = idx + 1
        continue 
    stor11.length = 0
    if stor11.length > 0:
        idx = 0
        while stor11.length > idx:
            uint256(stor11[idx]) = 0
            idx = idx + 1
            continue 
}

function decreaseApproval(address arg1, uint256 arg2) {
    if status != 2:
        if stor1 != msg.sender:
            if stor2 != msg.sender:
                require status == 1
                if stor1 != msg.sender:
                    require stor2 == msg.sender
    if arg2 >= allowed[address(msg.sender)][address(arg1)]:
        allowed[address(msg.sender)][address(arg1)] = 0
    else:
        require allowed[address(msg.sender)][address(arg1)] >= arg2
        allowed[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowed[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function unfreeze(address arg1) {
    if stor1 != msg.sender:
        require stor2 == msg.sender
    idx = 0
    while idx < stor11.length:
        mem[0] = 11
        if address(stor11[idx]) != arg1:
            idx = idx + 1
            continue 
        require stor11.length - 1 < stor11.length
        require idx < stor11.length
        address(stor11[idx]) = address(stor11[stor11.length])
        stor11.length--
        if stor11.length > stor11.length - 1:
            idx = sha3(11) + stor11.length - 1
            while sha3(11) + stor11.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        frozenBalances[address(arg1)] = 0
    require stor11.length - 1 < stor11.length
    require 0 < stor11.length
    address(stor11) = address(stor11[stor11.length])
    stor11.length--
    if stor11.length > stor11.length - 1:
        idx = stor11.length - 1
        while stor11.length > idx:
            uint256(stor11[idx]) = 0
            idx = idx + 1
            continue 
    frozenBalances[address(arg1)] = 0
}

function decreaseFrozenBalances(address arg1, uint256 arg2) {
    if stor1 != msg.sender:
        require stor2 == msg.sender
    require arg2 > 0
    require frozenBalances[address(arg1)] >= arg2
    frozenBalances[address(arg1)] -= arg2
    if not frozenBalances[address(arg1)]:
        idx = 0
        while idx < stor11.length:
            mem[0] = 11
            if address(stor11[idx]) != arg1:
                idx = idx + 1
                continue 
            require stor11.length - 1 < stor11.length
            require idx < stor11.length
            address(stor11[idx]) = address(stor11[stor11.length])
            stor11.length--
            if stor11.length > stor11.length - 1:
                idx = sha3(11) + stor11.length - 1
                while sha3(11) + stor11.length > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
            emit FrozenBalance(frozenBalances[address(arg1)], arg1);
        require stor11.length - 1 < stor11.length
        require 0 < stor11.length
        address(stor11) = address(stor11[stor11.length])
        stor11.length--
        if stor11.length > stor11.length - 1:
            idx = stor11.length - 1
            while stor11.length > idx:
                uint256(stor11[idx]) = 0
                idx = idx + 1
                continue 
    emit FrozenBalance(frozenBalances[address(arg1)], arg1);
}

function transfer(address arg1, uint256 arg2) {
    if status != 2:
        if stor1 != msg.sender:
            if stor2 != msg.sender:
                require status == 1
                if stor1 != msg.sender:
                    require stor2 == msg.sender
    require frozenBalances[address(msg.sender)] <= balances[address(msg.sender)] - arg2
    if status != 2:
        if stor1 != msg.sender:
            if stor2 != msg.sender:
                require status == 1
                if stor1 != msg.sender:
                    require stor2 == msg.sender
    require arg1 != 0
    require balances[address(msg.sender)] >= arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    require balances[address(msg.sender)] >= arg2
    balances[address(msg.sender)] -= arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    require balances[address(arg1)] + arg2 >= arg2
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balances[address(msg.sender)] + balances[address(arg1)] == balances[address(msg.sender)] + balances[address(arg1)]
    if status == 1:
        if stor1 != msg.sender:
            require stor2 == msg.sender
        require stor10 > 0
        require stor10 <= 100
        if not frozenBalances[address(arg1)]:
            stor11.length++
            address(stor11[stor11.length]) = arg1
        frozenBalances[address(arg1)] = balances[address(arg1)] * stor10 / 100
        emit FrozenBalance((balances[address(arg1)] * stor10 / 100), arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowed[address(arg1)][address(msg.sender)]
    allowed[address(arg1)][address(msg.sender)] -= arg3
    if status != 2:
        if stor1 != msg.sender:
            if stor2 != msg.sender:
                require status == 1
                if stor1 != msg.sender:
                    require stor2 == msg.sender
    require frozenBalances[address(arg1)] <= balances[address(arg1)] - arg3
    if status != 2:
        if stor1 != msg.sender:
            if stor2 != msg.sender:
                require status == 1
                if stor1 != msg.sender:
                    require stor2 == msg.sender
    require arg2 != 0
    require balances[address(arg1)] >= arg3
    require balances[address(arg2)] + arg3 >= balances[address(arg2)]
    require balances[address(arg1)] >= arg3
    balances[address(arg1)] -= arg3
    require balances[address(arg2)] + arg3 >= balances[address(arg2)]
    require balances[address(arg2)] + arg3 >= arg3
    balances[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require balances[address(arg1)] + balances[address(arg2)] == balances[address(arg1)] + balances[address(arg2)]
    if status == 1:
        if stor1 != msg.sender:
            require stor2 == msg.sender
        require stor10 > 0
        require stor10 <= 100
        if not frozenBalances[address(arg2)]:
            stor11.length++
            address(stor11[stor11.length]) = arg2
        frozenBalances[address(arg2)] = balances[address(arg2)] * stor10 / 100
        emit FrozenBalance((balances[address(arg2)] * stor10 / 100), arg2);
    return 1
}

function buy() payable {
    require buyPrice > 0
    require buyPrice
    if status != 2:
        if stor1 != msg.sender:
            if stor2 != msg.sender:
                require status == 1
                if stor1 != msg.sender:
                    require stor2 == msg.sender
    require frozenBalances[address(this.address)] <= balances[address(this.address)] - (msg.value / buyPrice)
    if status != 2:
        if stor1 != msg.sender:
            if stor2 != msg.sender:
                require status == 1
                if stor1 != msg.sender:
                    require stor2 == msg.sender
    require msg.sender != 0
    require balances[address(this.address)] >= msg.value / buyPrice
    require balances[address(msg.sender)] + (msg.value / buyPrice) >= balances[address(msg.sender)]
    require balances[address(this.address)] >= msg.value / buyPrice
    balances[address(this.address)] -= msg.value / buyPrice
    require balances[address(msg.sender)] + (msg.value / buyPrice) >= balances[address(msg.sender)]
    require balances[address(msg.sender)] + (msg.value / buyPrice) >= msg.value / buyPrice
    balances[address(msg.sender)] += msg.value / buyPrice
    emit Transfer((msg.value / buyPrice), this.address, msg.sender);
    require balances[address(this.address)] + balances[address(msg.sender)] == balances[address(this.address)] + balances[address(msg.sender)]
    if status == 1:
        if stor1 != msg.sender:
            require stor2 == msg.sender
        require stor10 > 0
        require stor10 <= 100
        if not frozenBalances[address(msg.sender)]:
            stor11.length++
            address(stor11[stor11.length]) = msg.sender
        frozenBalances[address(msg.sender)] = balances[address(msg.sender)] * stor10 / 100
        emit FrozenBalance((balances[address(msg.sender)] * stor10 / 100), msg.sender);
}

function sell(uint256 arg1) {
    require sellPrice > 0
    require eth.balance(this.address) >= arg1 * sellPrice
    if status != 2:
        if stor1 != msg.sender:
            if stor2 != msg.sender:
                require status == 1
                if stor1 != msg.sender:
                    require stor2 == msg.sender
    require frozenBalances[address(msg.sender)] <= balances[address(msg.sender)] - arg1
    if status != 2:
        if stor1 != msg.sender:
            if stor2 != msg.sender:
                require status == 1
                if stor1 != msg.sender:
                    require stor2 == msg.sender
    require this.address != 0
    require balances[address(msg.sender)] >= arg1
    require balances[address(this.address)] + arg1 >= balances[address(this.address)]
    require balances[address(msg.sender)] >= arg1
    balances[address(msg.sender)] -= arg1
    require balances[address(this.address)] + arg1 >= balances[address(this.address)]
    require balances[address(this.address)] + arg1 >= arg1
    balances[address(this.address)] += arg1
    emit Transfer(arg1, msg.sender, this.address);
    require balances[address(msg.sender)] + balances[address(this.address)] == balances[address(msg.sender)] + balances[address(this.address)]
    if status == 1:
        if stor1 != msg.sender:
            require stor2 == msg.sender
        require stor10 > 0
        require stor10 <= 100
        if not frozenBalances[address(this.address)]:
            stor11.length++
            address(stor11[stor11.length]) = this.address
        frozenBalances[address(this.address)] = balances[address(this.address)] * stor10 / 100
        emit FrozenBalance((balances[address(this.address)] * stor10 / 100), this.address);
    call msg.sender with:
       value arg1 * sellPrice wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
