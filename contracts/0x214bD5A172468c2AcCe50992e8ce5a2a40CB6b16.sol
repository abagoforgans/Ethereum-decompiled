contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address newContractAddr;
uint256 sellPrice;
uint256 buyPrice;
mapping of uint8 stor10;
uint8 isFunding;
uint256 fundingStartBlock;
uint256 fundingStopBlock;
uint256 tokenRaised;
uint256 currentSupply;

function name() {
    return name[0 len name.length]
}

function isFunding() {
    return bool(isFunding)
}

function totalSupply() {
    return totalSupply
}

function tokenRaised() {
    return tokenRaised
}

function decimals() {
    return decimals
}

function newContractAddr() {
    return newContractAddr
}

function sellPrice() {
    return sellPrice
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function currentSupply() {
    return currentSupply
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

function fundingStartBlock() {
    return fundingStartBlock
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function fundingStopBlock() {
    return fundingStopBlock
}

function kill() {
    if owner != msg.sender:
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function stopFunding() {
    require msg.sender == owner
    require isFunding
    isFunding = 0
}

function changeOwner(address arg1) {
    require msg.sender == owner
    require arg1
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

function setMigrateContract(address arg1) {
    require msg.sender == owner
    require arg1 != newContractAddr
    newContractAddr = arg1
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

function transferETH() {
    require msg.sender == owner
    require eth.balance(this.address)
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function mintToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
}

function startFunding(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    require not isFunding
    require arg1 < arg2
    require block.number < arg1
    fundingStartBlock = arg1
    fundingStopBlock = arg2
    isFunding = 1
}

function decreaseSupply(uint256 arg1) {
    require msg.sender == owner
    require (arg1 * uint8(10^decimals)) + tokenRaised <= currentSupply
    require currentSupply >= arg1 * uint8(10^decimals)
    currentSupply += -1 * arg1 * uint8(10^decimals)
    emit DecreaseSupply((arg1 * uint8(10^decimals)));
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
}

function increaseSupply(uint256 arg1) {
    require msg.sender == owner
    require (arg1 * uint8(10^decimals)) + currentSupply <= totalSupply
    require currentSupply + (arg1 * uint8(10^decimals)) >= currentSupply
    require currentSupply + (arg1 * uint8(10^decimals)) >= arg1 * uint8(10^decimals)
    currentSupply += arg1 * uint8(10^decimals)
    emit IncreaseSupply((arg1 * uint8(10^decimals)));
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function buy() payable {
    require buyPrice
    require msg.sender
    require balanceOf[address(this.address)] >= msg.value / buyPrice
    require balanceOf[address(msg.sender)] + (msg.value / buyPrice) >= balanceOf[address(msg.sender)]
    require not stor10[address(this.address)]
    require not stor10[address(msg.sender)]
    balanceOf[address(this.address)] -= msg.value / buyPrice
    balanceOf[address(msg.sender)] += msg.value / buyPrice
    emit Transfer((msg.value / buyPrice), this.address, msg.sender);
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
    require eth.balance(this.address) >= arg1 * sellPrice
    require this.address
    require balanceOf[address(msg.sender)] >= arg1
    require balanceOf[address(this.address)] + arg1 >= balanceOf[address(this.address)]
    require not stor10[address(msg.sender)]
    require not stor10[address(this.address)]
    balanceOf[address(msg.sender)] -= arg1
    balanceOf[address(this.address)] += arg1
    emit Transfer(arg1, msg.sender, this.address);
    call msg.sender with:
       value arg1 * sellPrice wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
