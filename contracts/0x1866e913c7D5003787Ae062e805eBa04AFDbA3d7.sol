contract main {




// =====================  Runtime code  =====================


const depositEther = 1


address commissionGetterAddress;
uint256 minimumEtherCommission;
uint256 minimumTokenCommission;
address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 buyPrice;
uint256 sellPrice;
uint8 closeSell;
mapping of uint8 stor13;

function name() {
    return name[0 len name.length]
}

function minimumTokenCommission() {
    return minimumTokenCommission
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function commissionGetter() {
    return commissionGetterAddress
}

function sellPrice() {
    return sellPrice
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
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

function minimumEtherCommission() {
    return minimumEtherCommission
}

function frozenAccount(address arg1) {
    return bool(stor13[arg1])
}

function closeSell() {
    return bool(closeSell)
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function setStatus(bool arg1) {
    require msg.sender == owner
    closeSell = uint8(arg1)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function setPrices(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    sellPrice = arg1
    buyPrice = arg2
}

function transferCommissionGetter(address arg1) {
    require msg.sender == commissionGetterAddress
    commissionGetterAddress = arg1
}

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == owner
    stor13[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function changeMinimumCommission(uint256 arg1, uint256 arg2) {
    require msg.sender == commissionGetterAddress
    minimumEtherCommission = arg1
    minimumTokenCommission = arg2
}

function withdrawEther(uint256 arg1) {
    require msg.sender == owner
    require eth.balance(this.address) >= arg1
    emit Withdrawal(msg.sender, arg1);
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function refillTokens(uint256 arg1) {
    require msg.sender == owner
    require this.address
    require not stor13[address(msg.sender)]
    require not stor13[address(this.address)]
    require balanceOf[address(msg.sender)] >= arg1
    require balanceOf[address(this.address)] + arg1 > balanceOf[address(this.address)]
    balanceOf[address(msg.sender)] -= arg1
    balanceOf[address(this.address)] += arg1
    emit Transfer(arg1, msg.sender, this.address);
    require balanceOf[address(msg.sender)] + balanceOf[address(this.address)] == balanceOf[address(msg.sender)] + balanceOf[address(this.address)]
}

function buy() payable {
    require buyPrice
    if msg.value / buyPrice * buyPrice / 100 >= minimumEtherCommission:
        require eth.balance(this.address) >= msg.value / buyPrice * buyPrice / 100
        call commissionGetterAddress with:
           value msg.value / buyPrice * buyPrice / 100 wei
             gas 2300 * is_zero(value) wei
    else:
        require eth.balance(this.address) >= minimumEtherCommission
        call commissionGetterAddress with:
           value minimumEtherCommission wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require msg.sender
    require not stor13[address(this.address)]
    require not stor13[address(msg.sender)]
    require balanceOf[address(this.address)] >= msg.value / buyPrice
    require balanceOf[address(msg.sender)] + (msg.value / buyPrice) > balanceOf[address(msg.sender)]
    balanceOf[address(this.address)] -= msg.value / buyPrice
    balanceOf[address(msg.sender)] += msg.value / buyPrice
    emit Transfer((msg.value / buyPrice), this.address, msg.sender);
    require balanceOf[address(this.address)] + balanceOf[address(msg.sender)] == balanceOf[address(this.address)] + balanceOf[address(msg.sender)]
}

function _fallback() payable {
    require buyPrice
    if msg.value / buyPrice * buyPrice / 100 >= minimumEtherCommission:
        require eth.balance(this.address) >= msg.value / buyPrice * buyPrice / 100
        call commissionGetterAddress with:
           value msg.value / buyPrice * buyPrice / 100 wei
             gas 2300 * is_zero(value) wei
    else:
        require eth.balance(this.address) >= minimumEtherCommission
        call commissionGetterAddress with:
           value minimumEtherCommission wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require msg.sender
    require not stor13[address(this.address)]
    require not stor13[address(msg.sender)]
    require balanceOf[address(this.address)] >= msg.value / buyPrice
    require balanceOf[address(msg.sender)] + (msg.value / buyPrice) > balanceOf[address(msg.sender)]
    balanceOf[address(this.address)] -= msg.value / buyPrice
    balanceOf[address(msg.sender)] += msg.value / buyPrice
    emit Transfer((msg.value / buyPrice), this.address, msg.sender);
    require balanceOf[address(this.address)] + balanceOf[address(msg.sender)] == balanceOf[address(this.address)] + balanceOf[address(msg.sender)]
}

function transfer(address arg1, uint256 arg2) {
    require sellPrice
    require commissionGetterAddress
    require not stor13[address(this.address)]
    require not stor13[stor0]
    if arg2 * sellPrice / 100 / sellPrice >= minimumTokenCommission:
        require balanceOf[address(this.address)] >= arg2 * sellPrice / 100 / sellPrice
        require balanceOf[stor0] + (arg2 * sellPrice / 100 / sellPrice) > balanceOf[stor0]
        balanceOf[address(this.address)] -= arg2 * sellPrice / 100 / sellPrice
        balanceOf[stor0] += arg2 * sellPrice / 100 / sellPrice
        emit Transfer((arg2 * sellPrice / 100 / sellPrice), this.address, commissionGetterAddress);
    else:
        require balanceOf[address(this.address)] >= minimumTokenCommission
        require balanceOf[stor0] + minimumTokenCommission > balanceOf[stor0]
        balanceOf[address(this.address)] -= minimumTokenCommission
        balanceOf[stor0] += minimumTokenCommission
        emit Transfer(minimumTokenCommission, this.address, commissionGetterAddress);
    require balanceOf[address(this.address)] + balanceOf[stor0] == balanceOf[address(this.address)] + balanceOf[stor0]
    require arg1
    require not stor13[address(msg.sender)]
    require not stor13[address(arg1)]
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require sellPrice
    require commissionGetterAddress
    require not stor13[address(this.address)]
    require not stor13[stor0]
    if arg3 * sellPrice / 100 / sellPrice >= minimumTokenCommission:
        require balanceOf[address(this.address)] >= arg3 * sellPrice / 100 / sellPrice
        require balanceOf[stor0] + (arg3 * sellPrice / 100 / sellPrice) > balanceOf[stor0]
        balanceOf[address(this.address)] -= arg3 * sellPrice / 100 / sellPrice
        balanceOf[stor0] += arg3 * sellPrice / 100 / sellPrice
        emit Transfer((arg3 * sellPrice / 100 / sellPrice), this.address, commissionGetterAddress);
    else:
        require balanceOf[address(this.address)] >= minimumTokenCommission
        require balanceOf[stor0] + minimumTokenCommission > balanceOf[stor0]
        balanceOf[address(this.address)] -= minimumTokenCommission
        balanceOf[stor0] += minimumTokenCommission
        emit Transfer(minimumTokenCommission, this.address, commissionGetterAddress);
    require balanceOf[address(this.address)] + balanceOf[stor0] == balanceOf[address(this.address)] + balanceOf[stor0]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require not stor13[address(arg1)]
    require not stor13[address(arg2)]
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require balanceOf[address(arg1)] + balanceOf[address(arg2)] == balanceOf[address(arg1)] + balanceOf[address(arg2)]
    return 1
}

function sell(uint256 arg1) {
    require not closeSell
    require sellPrice
    require commissionGetterAddress
    require not stor13[address(this.address)]
    require not stor13[stor0]
    if arg1 * sellPrice / 100 / sellPrice >= minimumTokenCommission:
        require balanceOf[address(this.address)] >= arg1 * sellPrice / 100 / sellPrice
        require balanceOf[stor0] + (arg1 * sellPrice / 100 / sellPrice) > balanceOf[stor0]
        balanceOf[address(this.address)] -= arg1 * sellPrice / 100 / sellPrice
        balanceOf[stor0] += arg1 * sellPrice / 100 / sellPrice
        emit Transfer((arg1 * sellPrice / 100 / sellPrice), this.address, commissionGetterAddress);
    else:
        require balanceOf[address(this.address)] >= minimumTokenCommission
        require balanceOf[stor0] + minimumTokenCommission > balanceOf[stor0]
        balanceOf[address(this.address)] -= minimumTokenCommission
        balanceOf[stor0] += minimumTokenCommission
        emit Transfer(minimumTokenCommission, this.address, commissionGetterAddress);
    require balanceOf[address(this.address)] + balanceOf[stor0] == balanceOf[address(this.address)] + balanceOf[stor0]
    require this.address
    require not stor13[address(msg.sender)]
    require not stor13[address(this.address)]
    require balanceOf[address(msg.sender)] >= arg1
    require balanceOf[address(this.address)] + arg1 > balanceOf[address(this.address)]
    balanceOf[address(msg.sender)] -= arg1
    balanceOf[address(this.address)] += arg1
    emit Transfer(arg1, msg.sender, this.address);
    require balanceOf[address(msg.sender)] + balanceOf[address(this.address)] == balanceOf[address(msg.sender)] + balanceOf[address(this.address)]
    require eth.balance(this.address) >= arg1 * sellPrice
    call msg.sender with:
       value arg1 * sellPrice wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
