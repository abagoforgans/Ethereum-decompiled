contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor8;
uint8 stor9;
uint256 stor10;
uint8 stor13;

function _fallback() payable {
    stor9 = 0
    require not msg.value
    stor0 = msg.sender
    bool(stor1.length) = 0
    stor1.length.field_1 = 10
    stor1.length.field_8 = 'Bitfincoin' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 3
    stor2.length.field_8 = 'BIC' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = 18
    stor4 = 39000000 * 10^18
    stor5 = 0
    stor8 = 125 * 10^18
    stor10 = 10^14
    stor13 = 0
    return code.data[456 len 4982]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 totalSold;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 rate;
uint8 stor9;
uint256 minAcceptEther;
uint256 sellPrice;
uint256 buyPrice;
uint8 stor13;
mapping of uint8 stor14;

function name() {
    return name[0 len name.length]
}

function isContractFrozen() {
    return bool(stor9)
}

function totalSupply() {
    return totalSupply
}

function rate() {
    return rate
}

function decimals() {
    return decimals
}

function isOpenForSale() {
    return bool(stor13)
}

function minAcceptEther() {
    return minAcceptEther
}

function sellPrice() {
    return sellPrice
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function buyPrice() {
    return buyPrice
}

function owner() {
    return owner
}

function totalSold() {
    return totalSold
}

function symbol() {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) {
    return bool(stor14[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function setOpenForSale(bool arg1) {
    require owner == msg.sender
    stor13 = uint8(arg1)
}

function setRate(uint256 arg1) {
    require owner == msg.sender
    rate = 10^decimals * arg1
}

function setMinAcceptEther(uint256 arg1) {
    require owner == msg.sender
    minAcceptEther = arg1
}

function setTotalSupply(uint256 arg1) {
    require owner == msg.sender
    totalSupply = 10^decimals * arg1
}

function setName(string arg1) {
    require owner == msg.sender
    name[] = Array(len=arg1.length, data=arg1[all])
}

function setSymbol(string arg1) {
    require owner == msg.sender
    symbol[] = Array(len=arg1.length, data=arg1[all])
}

function setPrices(uint256 arg1, uint256 arg2) {
    require owner == msg.sender
    sellPrice = arg1
    buyPrice = arg2
}

function setContractFrozen(bool arg1) {
    require owner == msg.sender
    stor9 = uint8(arg1)
    emit ContractFrozen(arg1);
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function freezeAccount(address arg1, bool arg2) {
    require owner == msg.sender
    stor14[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function burn(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require balanceOf[address(arg1)] >= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg2
    allowance[address(arg1)][address(msg.sender)] -= arg2
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function mintToken(address arg1, uint256 arg2) {
    require owner == msg.sender
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] > arg2
    require not stor14[address(msg.sender)]
    require not stor14[address(arg1)]
    require not stor9
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require balanceOf[address(arg1)] > arg3
    require not stor14[address(arg1)]
    require not stor14[address(arg2)]
    require not stor9
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function buy() payable {
    require not stor9
    require buyPrice
    require msg.sender
    require balanceOf[address(this.address)] > msg.value / buyPrice
    require not stor14[address(this.address)]
    require not stor14[address(msg.sender)]
    require not stor9
    require msg.value / buyPrice <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] -= msg.value / buyPrice
    require (msg.value / buyPrice) + balanceOf[msg.sender] >= balanceOf[msg.sender]
    balanceOf[address(msg.sender)] = (msg.value / buyPrice) + balanceOf[msg.sender]
    emit Transfer((msg.value / buyPrice), this.address, msg.sender);
}

function sell(uint256 arg1) {
    require not stor9
    require eth.balance(this.address) >= arg1 * sellPrice
    require this.address
    require balanceOf[address(msg.sender)] > arg1
    require not stor14[address(msg.sender)]
    require not stor14[address(this.address)]
    require not stor9
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 + balanceOf[this.address] >= balanceOf[this.address]
    balanceOf[address(this.address)] = arg1 + balanceOf[this.address]
    emit Transfer(arg1, msg.sender, this.address);
    call msg.sender with:
       value arg1 * sellPrice wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function createTokens() payable {
    require msg.value >= minAcceptEther
    require totalSupply > 0
    if not msg.value:
        if 0 >= totalSupply:
            require 0 == totalSupply
        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        require 0 <= balanceOf[stor0]
        balanceOf[stor0] = balanceOf[stor0]
        require 0 <= totalSupply
        require totalSold >= totalSold
    else:
        require rate * msg.value / msg.value == rate
        if rate * msg.value >= totalSupply:
            require rate * msg.value == totalSupply
        require (rate * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += rate * msg.value
        require rate * msg.value <= balanceOf[stor0]
        balanceOf[stor0] += -1 * rate * msg.value
        require rate * msg.value <= totalSupply
        totalSupply += -1 * rate * msg.value
        require (rate * msg.value) + totalSold >= totalSold
        totalSold += rate * msg.value
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require not stor13
    require msg.value >= minAcceptEther
    require totalSupply > 0
    if not msg.value:
        if 0 >= totalSupply:
            require 0 == totalSupply
        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        require 0 <= balanceOf[stor0]
        balanceOf[stor0] = balanceOf[stor0]
        require 0 <= totalSupply
        require totalSold >= totalSold
    else:
        require rate * msg.value / msg.value == rate
        if rate * msg.value >= totalSupply:
            require rate * msg.value == totalSupply
        require (rate * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += rate * msg.value
        require rate * msg.value <= balanceOf[stor0]
        balanceOf[stor0] += -1 * rate * msg.value
        require rate * msg.value <= totalSupply
        totalSupply += -1 * rate * msg.value
        require (rate * msg.value) + totalSold >= totalSold
        totalSold += rate * msg.value
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
