contract main {




// =====================  Runtime code  =====================


mapping of uint256 stor0;
uint256 stor1;
uint8 stor3; offset 160
address stor3;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
address owner;
uint256 deploymentTime;
uint256 sub_ebf6cf9b;
uint256 sellPrice;
uint256 buyPrice;
mapping of uint8 stor13;
mapping of uint256 balanceOf;
mapping of uint256 freezeOf;
mapping of uint256 allowance;

function mintingFinished() {
    return bool(uint8(stor3.field_160))
}

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
    return bool(stor13[arg1])
}

function freezeOf(address arg1) {
    return freezeOf[arg1]
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function sub_ebf6cf9b(?) {
    return sub_ebf6cf9b
}

function deploymentTime() {
    return deploymentTime
}

function _fallback() payable {
  stop
}

function approve(address arg1, uint256 arg2) {
    require arg2 <= 0
    allowance[msg.sender][address(arg1)] = arg2
    return 1
}

function setPrices(uint256 arg1, uint256 arg2) {
    require msg.sender == address(stor3.field_0)
    sellPrice = arg1
    buyPrice = arg2
}

function renounceOwnership() {
    require msg.sender == address(stor3.field_0)
    emit OwnershipRenounced(address(stor3.field_0));
    address(stor3.field_0) = 0
}

function finishMinting() {
    require msg.sender == address(stor3.field_0)
    require not uint8(stor3.field_160)
    uint8(stor3.field_160) = 1
    emit MintFinished()
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == address(stor3.field_0)
    require arg1
    emit OwnershipTransferred(address(stor3.field_0), arg1);
    address(stor3.field_0) = arg1
}

function burn(uint256 arg1) {
    if sub_ebf6cf9b > block.timestamp:
        return 0
    require arg1 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function withdrawEther(uint256 arg1) {
    require owner != msg.sender
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function burnFrom(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= allowance[address(arg1)][msg.sender]
    balanceOf[address(arg1)] -= arg2
    allowance[address(arg1)][msg.sender] -= arg2
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function freeze(uint256 arg1) {
    require arg1 > balanceOf[msg.sender]
    require arg1 <= 0
    balanceOf[msg.sender] -= arg1
    require arg1 + freezeOf[msg.sender] >= freezeOf[msg.sender]
    require arg1 + freezeOf[msg.sender] >= arg1
    freezeOf[msg.sender] += arg1
    emit Freeze(arg1, msg.sender);
    return 1
}

function unfreeze(uint256 arg1) {
    require arg1 > freezeOf[msg.sender]
    require arg1 <= 0
    freezeOf[msg.sender] -= arg1
    require arg1 + balanceOf[msg.sender] >= balanceOf[msg.sender]
    require arg1 + balanceOf[msg.sender] >= arg1
    balanceOf[msg.sender] += arg1
    emit Unfreeze(arg1, msg.sender);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == address(stor3.field_0)
    require not uint8(stor3.field_160)
    require arg2 + stor1 >= stor1
    require arg2 + stor1 >= arg2
    stor1 += arg2
    require arg2 + stor0[address(arg1)] >= stor0[address(arg1)]
    require arg2 + stor0[address(arg1)] >= arg2
    stor0[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not arg1
    require arg2 <= 0
    require arg2 > balanceOf[msg.sender]
    require balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    require arg2 + balanceOf[arg1] >= arg2
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not arg2
    require arg3 <= 0
    require arg3 > balanceOf[address(arg1)]
    require balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]
    require arg3 > allowance[address(arg1)][msg.sender]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    require arg3 + balanceOf[arg2] >= arg3
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function buy() payable {
    require buyPrice
    require not msg.sender
    require msg.value / buyPrice <= 0
    require msg.value / buyPrice > balanceOf[address(this.address)]
    require balanceOf[address(msg.sender)] + (msg.value / buyPrice) < balanceOf[address(msg.sender)]
    require msg.value / buyPrice > allowance[address(this.address)][msg.sender]
    require msg.value / buyPrice <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] -= msg.value / buyPrice
    require (msg.value / buyPrice) + balanceOf[msg.sender] >= balanceOf[msg.sender]
    require (msg.value / buyPrice) + balanceOf[msg.sender] >= msg.value / buyPrice
    balanceOf[address(msg.sender)] = (msg.value / buyPrice) + balanceOf[msg.sender]
    require msg.value / buyPrice <= allowance[address(this.address)][msg.sender]
    allowance[address(this.address)][msg.sender] -= msg.value / buyPrice
    emit Transfer((msg.value / buyPrice), this.address, msg.sender);
}

function sell(uint256 arg1) {
    require eth.balance(this.address) >= arg1 * sellPrice
    require not this.address
    require arg1 <= 0
    require arg1 > balanceOf[address(msg.sender)]
    require balanceOf[address(this.address)] + arg1 < balanceOf[address(this.address)]
    require arg1 > allowance[address(msg.sender)][msg.sender]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 + balanceOf[this.address] >= balanceOf[this.address]
    require arg1 + balanceOf[this.address] >= arg1
    balanceOf[address(this.address)] = arg1 + balanceOf[this.address]
    require arg1 <= allowance[address(msg.sender)][msg.sender]
    allowance[address(msg.sender)][msg.sender] -= arg1
    emit Transfer(arg1, msg.sender, this.address);
    call msg.sender with:
       value arg1 * sellPrice wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
