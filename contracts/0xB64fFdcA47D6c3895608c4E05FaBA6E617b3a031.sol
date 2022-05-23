contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor7;
uint8 stor8;
uint256 buyPrice;
uint256 airdropTotalSupply;
uint256 airdropCurrentTotal;
uint256 airdropAmount;
mapping of uint8 stor13;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function airdropCurrentTotal() {
    return airdropCurrentTotal
}

function buyPrice() {
    return buyPrice
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) {
    return bool(stor7[arg1])
}

function airdropTotalSupply() {
    return airdropTotalSupply
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function touched(address arg1) {
    return bool(stor13[arg1])
}

function lock() {
    return bool(stor8)
}

function airdropAmount() {
    return airdropAmount
}

function setPrices(uint256 arg1) {
    require msg.sender == owner
    buyPrice = arg1
}

function setAirdropAmount(uint256 arg1) {
    require msg.sender == owner
    airdropAmount = 10^decimals * arg1
}

function setLock(bool arg1) {
    require msg.sender == owner
    stor8 = uint8(arg1)
    return bool(uint8(arg1))
}

function setAirdropTotalSupply(uint256 arg1) {
    require msg.sender == owner
    airdropTotalSupply = arg1 * 10^decimals
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == owner
    stor7[address(arg1)] = uint8(arg2)
    emit FrozenFunds(arg2, arg1);
}

function burn(uint256 arg1) {
    require msg.sender == owner
    require arg1 <= balanceOf[msg.sender]
    require arg1 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] -= arg2
    else:
        allowance[msg.sender][address(arg1)] = 0
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function mintToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    require (arg2 * 10^decimals) + totalSupply >= totalSupply
    totalSupply += arg2 * 10^decimals
    require (arg2 * 10^decimals) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2 * 10^decimals
    emit Transfer((arg2 * 10^decimals), this.address, arg1);
}

function burnFrom(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= allowance[address(arg1)][msg.sender]
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor8
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    require not stor7[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require not stor8
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    require not stor7[address(arg1)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    if msg.value:
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require not stor8
        require msg.sender
        require msg.value * buyPrice <= balanceOf[stor0]
        require balanceOf[address(msg.sender)] + (msg.value * buyPrice) > balanceOf[address(msg.sender)]
        require not stor7[stor0]
        require msg.value * buyPrice <= balanceOf[stor0]
        balanceOf[stor0] += -1 * msg.value * buyPrice
        require (msg.value * buyPrice) + balanceOf[msg.sender] >= balanceOf[msg.sender]
        balanceOf[address(msg.sender)] = (msg.value * buyPrice) + balanceOf[msg.sender]
        emit Transfer((msg.value * buyPrice), owner, msg.sender);
    else:
        if stor13[msg.sender]:
            call owner with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require not stor8
            require msg.sender
            require msg.value * buyPrice <= balanceOf[stor0]
            require balanceOf[address(msg.sender)] + (msg.value * buyPrice) > balanceOf[address(msg.sender)]
            require not stor7[stor0]
            require msg.value * buyPrice <= balanceOf[stor0]
            balanceOf[stor0] += -1 * msg.value * buyPrice
            require (msg.value * buyPrice) + balanceOf[msg.sender] >= balanceOf[msg.sender]
            balanceOf[address(msg.sender)] = (msg.value * buyPrice) + balanceOf[msg.sender]
            emit Transfer((msg.value * buyPrice), owner, msg.sender);
        else:
            if airdropAmount <= 0:
                call owner with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require not stor8
                require msg.sender
                require msg.value * buyPrice <= balanceOf[stor0]
                require balanceOf[address(msg.sender)] + (msg.value * buyPrice) > balanceOf[address(msg.sender)]
                require not stor7[stor0]
                require msg.value * buyPrice <= balanceOf[stor0]
                balanceOf[stor0] += -1 * msg.value * buyPrice
                require (msg.value * buyPrice) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                balanceOf[address(msg.sender)] = (msg.value * buyPrice) + balanceOf[msg.sender]
                emit Transfer((msg.value * buyPrice), owner, msg.sender);
            else:
                if airdropCurrentTotal >= airdropTotalSupply:
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require not stor8
                    require msg.sender
                    require msg.value * buyPrice <= balanceOf[stor0]
                    require balanceOf[address(msg.sender)] + (msg.value * buyPrice) > balanceOf[address(msg.sender)]
                    require not stor7[stor0]
                    require msg.value * buyPrice <= balanceOf[stor0]
                    balanceOf[stor0] += -1 * msg.value * buyPrice
                    require (msg.value * buyPrice) + balanceOf[msg.sender] >= balanceOf[msg.sender]
                    balanceOf[address(msg.sender)] = (msg.value * buyPrice) + balanceOf[msg.sender]
                    emit Transfer((msg.value * buyPrice), owner, msg.sender);
                else:
                    stor13[msg.sender] = 1
                    require airdropAmount + airdropCurrentTotal >= airdropCurrentTotal
                    airdropCurrentTotal += airdropAmount
                    require not stor8
                    require msg.sender
                    require airdropAmount <= balanceOf[stor0]
                    require balanceOf[address(msg.sender)] + airdropAmount > balanceOf[address(msg.sender)]
                    require not stor7[stor0]
                    require airdropAmount <= balanceOf[stor0]
                    balanceOf[stor0] -= airdropAmount
                    require airdropAmount + balanceOf[msg.sender] >= balanceOf[msg.sender]
                    balanceOf[address(msg.sender)] = airdropAmount + balanceOf[msg.sender]
                    emit Transfer(airdropAmount, owner, msg.sender);
                    emit Airdrop(msg.sender, airdropAmount);
}



}
