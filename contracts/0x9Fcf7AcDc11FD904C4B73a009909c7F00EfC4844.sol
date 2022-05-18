contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor2;
array of uint256 stor3;
uint8 stor4;
uint256 stor5;
mapping of uint256 stor8;

function _fallback() {
    stor0 = msg.sender
    bool(stor2.length) = 0
    stor2.length.field_1 = 4
    stor2.length.field_8 = 'INO8' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor3.length) = 0
    stor3.length.field_1 = 13
    stor3.length.field_8 = 'InnovateToken' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 18
    stor5 = 250 * 10^6 * 10^18
    stor8[stor0] = 250 * 10^6 * 10^18
    emit Transfer(250000000 * 10^18, 0, stor0);
    return code.data[497 len 4885]
}



// =====================  Runtime code  =====================


address owner;
address newOwner;
array of uint256 symbol;
array of uint256 name;
uint8 decimals;
uint256 _totalSupply;
uint256 sellPrice;
uint256 buyPrice;
mapping of uint256 balances;
mapping of uint256 allowed;
mapping of uint8 stor10;

function name() {
    return name[0 len name.length]
}

function balances(address arg1) {
    return balances[arg1]
}

function decimals() {
    return decimals
}

function _totalSupply() {
    return _totalSupply
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

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) {
    return bool(stor10[arg1])
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    return allowed[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    newOwner = arg1
}

function safeSub(uint256 arg1, uint256 arg2) {
    require arg2 <= arg1
    return (arg1 - arg2)
}

function safeAdd(uint256 arg1, uint256 arg2) {
    require arg2 + arg1 >= arg1
    return (arg2 + arg1)
}

function totalSupply() {
    require balances[0] <= _totalSupply
    return (_totalSupply - balances[0])
}

function safeDiv(uint256 arg1, uint256 arg2) {
    require arg2 > 0
    require arg2
    return (arg1 / arg2)
}

function setPrices(uint256 arg1, uint256 arg2) {
    require owner == msg.sender
    sellPrice = arg1
    buyPrice = arg2
}

function safeMul(uint256 arg1, uint256 arg2) {
    if arg1:
        require arg1
        require arg2 * arg1 / arg1 == arg2
    return (arg2 * arg1)
}

function acceptOwnership() {
    require newOwner == msg.sender
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function approve(address arg1, uint256 arg2) {
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function freezeAccount(address arg1, bool arg2) {
    require owner == msg.sender
    stor10[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function burn(uint256 arg1) {
    require balances[address(msg.sender)] >= arg1
    require arg1 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg1
    require arg1 <= _totalSupply
    _totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function transferAnyERC20Token(address arg1, uint256 arg2) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function mintToken(address arg1, uint256 arg2) {
    require owner == msg.sender
    require arg2 + balances[address(arg1)] >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    require arg2 + _totalSupply >= _totalSupply
    _totalSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require balances[address(arg1)] >= arg2
    require arg2 <= allowed[address(arg1)][address(msg.sender)]
    require arg2 <= balances[address(arg1)]
    balances[address(arg1)] -= arg2
    require arg2 <= allowed[address(arg1)][address(msg.sender)]
    allowed[address(arg1)][address(msg.sender)] -= arg2
    require arg2 <= _totalSupply
    _totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require arg1
    require balances[address(msg.sender)] >= arg2
    require arg2 + balances[address(arg1)] >= balances[address(arg1)]
    require not stor10[address(msg.sender)]
    require not stor10[address(arg1)]
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require arg2 + balances[arg1] >= balances[arg1]
    balances[address(arg1)] = arg2 + balances[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    require arg2
    require balances[address(arg1)] >= arg3
    require arg3 + balances[address(arg2)] >= balances[address(arg2)]
    require not stor10[address(arg1)]
    require not stor10[address(arg2)]
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require arg3 <= allowed[address(arg1)][address(msg.sender)]
    allowed[address(arg1)][address(msg.sender)] -= arg3
    require arg3 + balances[address(arg2)] >= balances[address(arg2)]
    balances[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function buy() payable {
    require buyPrice > 0
    require buyPrice
    require msg.sender
    require balances[address(this.address)] >= msg.value / buyPrice
    require (msg.value / buyPrice) + balances[address(msg.sender)] >= balances[address(msg.sender)]
    require not stor10[address(this.address)]
    require not stor10[address(msg.sender)]
    require msg.value / buyPrice <= balances[address(this.address)]
    balances[address(this.address)] -= msg.value / buyPrice
    require (msg.value / buyPrice) + balances[msg.sender] >= balances[msg.sender]
    balances[address(msg.sender)] = (msg.value / buyPrice) + balances[msg.sender]
    emit Transfer((msg.value / buyPrice), this.address, msg.sender);
}

function sell(uint256 arg1) {
    if arg1:
        require arg1
        require sellPrice * arg1 / arg1 == sellPrice
    require eth.balance(this.address) >= sellPrice * arg1
    require this.address
    require balances[address(msg.sender)] >= arg1
    require arg1 + balances[address(this.address)] >= balances[address(this.address)]
    require not stor10[address(msg.sender)]
    require not stor10[address(this.address)]
    require arg1 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg1
    require arg1 + balances[this.address] >= balances[this.address]
    balances[address(this.address)] = arg1 + balances[this.address]
    emit Transfer(arg1, msg.sender, this.address);
    if arg1:
        require arg1
        require sellPrice * arg1 / arg1 == sellPrice
    call msg.sender with:
       value sellPrice * arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
