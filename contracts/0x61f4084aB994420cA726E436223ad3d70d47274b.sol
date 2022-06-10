contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 hardCap;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 sellPrice;
uint256 buyPrice;
mapping of uint8 stor10;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
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

function frozenAccount(address arg1) {
    return bool(stor10[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function hardCap() {
    return hardCap
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function setPrices(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    sellPrice = arg1
    buyPrice = arg2
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == owner
    stor10[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function burn(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function collect() {
    require msg.sender == owner
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function mintToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    require totalSupply + arg2 <= hardCap
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
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

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require not stor10[address(msg.sender)]
    require not stor10[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function buy() payable {
    require msg.sender
    require balanceOf[address(this.address)] >= msg.value * buyPrice
    require balanceOf[address(msg.sender)] + (msg.value * buyPrice) >= balanceOf[address(msg.sender)]
    require not stor10[address(this.address)]
    require not stor10[address(msg.sender)]
    balanceOf[address(this.address)] += -1 * msg.value * buyPrice
    balanceOf[address(msg.sender)] += msg.value * buyPrice
    emit Transfer((msg.value * buyPrice), this.address, msg.sender);
}

function _fallback() payable {
    require msg.sender
    require balanceOf[address(this.address)] >= msg.value * buyPrice
    require balanceOf[address(msg.sender)] + (msg.value * buyPrice) >= balanceOf[address(msg.sender)]
    require not stor10[address(this.address)]
    require not stor10[address(msg.sender)]
    balanceOf[address(this.address)] += -1 * msg.value * buyPrice
    balanceOf[address(msg.sender)] += msg.value * buyPrice
    emit Transfer((msg.value * buyPrice), this.address, msg.sender);
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require not stor10[address(arg1)]
    require not stor10[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sell(uint256 arg1) {
    require sellPrice
    require eth.balance(this.address) >= arg1 / sellPrice
    require this.address
    require balanceOf[address(msg.sender)] >= arg1
    require balanceOf[address(this.address)] + arg1 >= balanceOf[address(this.address)]
    require not stor10[address(msg.sender)]
    require not stor10[address(this.address)]
    balanceOf[address(msg.sender)] -= arg1
    balanceOf[address(this.address)] += arg1
    emit Transfer(arg1, msg.sender, this.address);
    require sellPrice
    call msg.sender with:
       value arg1 / sellPrice wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
