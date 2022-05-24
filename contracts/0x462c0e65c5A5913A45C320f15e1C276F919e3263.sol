contract main {




// =====================  Runtime code  =====================


address owner;
address beneficiaryAddress;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 sellPrice;
uint256 buyPrice;
uint256 amountRaised;
mapping of uint8 stor11;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function beneficiary() {
    return beneficiaryAddress
}

function sellPrice() {
    return sellPrice
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
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

function symbol() {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) {
    return bool(stor11[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
    beneficiaryAddress = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == owner
    stor11[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function setPrices(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1 > 0
    require arg2 > 0
    sellPrice = arg1
    buyPrice = arg2
    emit PriceChanged(arg1, arg2);
}

function burn(uint256 arg1) {
    require msg.sender == owner
    require arg1 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function mintToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
}

function withdraw() {
    require msg.sender == owner
    require eth.balance(this.address) > 0
    call beneficiaryAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function burnFrom(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= allowance[address(arg1)][msg.sender]
    balanceOf[address(arg1)] -= arg2
    allowance[address(arg1)][msg.sender] -= arg2
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require not stor11[address(msg.sender)]
    require not stor11[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.0x8f4ffcb1 with:
         gas gas_remaining wei
        args msg.sender, arg2, this.address, Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require not stor11[address(arg1)]
    require not stor11[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function buy() payable {
    require buyPrice
    require msg.value / buyPrice > 0
    require msg.sender
    require 10^decimals * msg.value / buyPrice <= balanceOf[address(this.address)]
    require balanceOf[address(msg.sender)] + (10^decimals * msg.value / buyPrice) >= balanceOf[address(msg.sender)]
    require not stor11[address(this.address)]
    require not stor11[address(msg.sender)]
    balanceOf[address(this.address)] += -1 * 10^decimals * msg.value / buyPrice
    balanceOf[msg.sender] += 10^decimals * msg.value / buyPrice
    emit Transfer((10^decimals * msg.value / buyPrice), this.address, msg.sender);
    amountRaised += msg.value
    revert
}

function _fallback() payable {
    require buyPrice
    require msg.value / buyPrice > 0
    require msg.sender
    require 10^decimals * msg.value / buyPrice <= balanceOf[address(this.address)]
    require balanceOf[address(msg.sender)] + (10^decimals * msg.value / buyPrice) >= balanceOf[address(msg.sender)]
    require not stor11[address(this.address)]
    require not stor11[address(msg.sender)]
    balanceOf[address(this.address)] += -1 * 10^decimals * msg.value / buyPrice
    balanceOf[msg.sender] += 10^decimals * msg.value / buyPrice
    emit Transfer((10^decimals * msg.value / buyPrice), this.address, msg.sender);
    amountRaised += msg.value
    revert
}

function sell(uint256 arg1) {
    require msg.sender == owner
    require eth.balance(this.address) >= arg1 * sellPrice
    require this.address
    require arg1 <= balanceOf[address(msg.sender)]
    require balanceOf[address(this.address)] + arg1 >= balanceOf[address(this.address)]
    require not stor11[address(msg.sender)]
    require not stor11[address(this.address)]
    balanceOf[address(msg.sender)] -= arg1
    balanceOf[this.address] += arg1
    emit Transfer(arg1, msg.sender, this.address);
    call msg.sender with:
       value arg1 * sellPrice wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Sold(msg.sender, sellPrice, arg1);
}



}
