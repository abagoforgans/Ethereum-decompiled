contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 startTime;
uint256 endTime;
uint256 exchangeRate;
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

function endTime() {
    return endTime
}

function exchangeRate() {
    return exchangeRate
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function startTime() {
    return startTime
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

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function setICOExchangeRate(uint256 arg1) {
    require msg.sender == owner
    exchangeRate = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function isICORunning() {
    if endTime <= block.timestamp:
        return 0
    if startTime >= block.timestamp:
        return 0
    return 1
}

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == owner
    stor10[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function manualWithdrawEther() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function burn(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function mintToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
}

function burnFrom(address arg1, uint256 arg2) {
    require balanceOf[address(arg1)] >= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
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

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require not stor10[address(msg.sender)]
    require not stor10[address(arg1)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require not stor10[address(arg1)]
    require not stor10[address(arg2)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function stopICO() {
    require msg.sender == owner
    endTime = 0
    require msg.sender
    require balanceOf[address(this.address)] >= balanceOf[address(this.address)]
    require balanceOf[address(msg.sender)] + balanceOf[address(this.address)] >= balanceOf[address(msg.sender)]
    require balanceOf[address(msg.sender)] + balanceOf[address(this.address)] >= balanceOf[address(msg.sender)]
    require not stor10[address(this.address)]
    require not stor10[address(msg.sender)]
    require balanceOf[address(this.address)] <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] = 0
    require balanceOf[address(msg.sender)] + balanceOf[address(this.address)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
    emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
}

function manualWithdrawToken(uint256 arg1) {
    require msg.sender == owner
    if not arg1:
        require msg.sender
        require balanceOf[address(this.address)] >= 0
        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        require not stor10[address(this.address)]
        require not stor10[address(msg.sender)]
        require 0 <= balanceOf[address(this.address)]
        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        emit Transfer(0, this.address, msg.sender);
    else:
        require arg1
        require 10^18 * arg1 / arg1 == 10^18
        require msg.sender
        require balanceOf[address(this.address)] >= 10^18 * arg1
        require balanceOf[address(msg.sender)] + (10^18 * arg1) >= balanceOf[address(msg.sender)]
        require balanceOf[address(msg.sender)] + (10^18 * arg1) >= balanceOf[address(msg.sender)]
        require not stor10[address(this.address)]
        require not stor10[address(msg.sender)]
        require 10^18 * arg1 <= balanceOf[address(this.address)]
        balanceOf[address(this.address)] += -1 * 10^18 * arg1
        require balanceOf[address(msg.sender)] + (10^18 * arg1) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += 10^18 * arg1
        emit Transfer((10^18 * arg1), this.address, msg.sender);
}

function _fallback() payable {
    require endTime > block.timestamp
    require startTime < block.timestamp
    if not msg.value:
        require msg.sender
        require balanceOf[address(this.address)] >= 0
        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        require not stor10[address(this.address)]
        require not stor10[address(msg.sender)]
        require 0 <= balanceOf[address(this.address)]
        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        emit Transfer(0, this.address, msg.sender);
    else:
        require msg.value
        require msg.value * exchangeRate / msg.value == exchangeRate
        require msg.sender
        require balanceOf[address(this.address)] >= msg.value * exchangeRate
        require balanceOf[address(msg.sender)] + (msg.value * exchangeRate) >= balanceOf[address(msg.sender)]
        require balanceOf[address(msg.sender)] + (msg.value * exchangeRate) >= balanceOf[address(msg.sender)]
        require not stor10[address(this.address)]
        require not stor10[address(msg.sender)]
        require msg.value * exchangeRate <= balanceOf[address(this.address)]
        balanceOf[address(this.address)] += -1 * msg.value * exchangeRate
        require balanceOf[address(msg.sender)] + (msg.value * exchangeRate) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += msg.value * exchangeRate
        emit Transfer((msg.value * exchangeRate), this.address, msg.sender);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function startIco(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require msg.sender == owner
    require arg1 < arg2
    if not arg4:
        require balanceOf[address(msg.sender)] > 0
        startTime = arg1
        endTime = arg2
        exchangeRate = arg3
        allowance[address(msg.sender)][address(this.address)] = 0
        require this.address
        require balanceOf[address(msg.sender)] >= 0
        require balanceOf[address(this.address)] >= balanceOf[address(this.address)]
        require balanceOf[address(this.address)] >= balanceOf[address(this.address)]
        require not stor10[address(msg.sender)]
        require not stor10[address(this.address)]
        require 0 <= balanceOf[address(msg.sender)]
        require balanceOf[address(this.address)] >= balanceOf[address(this.address)]
        emit Transfer(0, msg.sender, this.address);
    else:
        require arg4
        require 10^18 * arg4 / arg4 == 10^18
        require balanceOf[address(msg.sender)] > 10^18 * arg4
        startTime = arg1
        endTime = arg2
        exchangeRate = arg3
        allowance[address(msg.sender)][address(this.address)] = 10^18 * arg4
        require this.address
        require balanceOf[address(msg.sender)] >= 10^18 * arg4
        require balanceOf[address(this.address)] + (10^18 * arg4) >= balanceOf[address(this.address)]
        require balanceOf[address(this.address)] + (10^18 * arg4) >= balanceOf[address(this.address)]
        require not stor10[address(msg.sender)]
        require not stor10[address(this.address)]
        require 10^18 * arg4 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += -1 * 10^18 * arg4
        require balanceOf[address(this.address)] + (10^18 * arg4) >= balanceOf[address(this.address)]
        balanceOf[address(this.address)] += 10^18 * arg4
        emit Transfer((10^18 * arg4), msg.sender, this.address);
}



}
