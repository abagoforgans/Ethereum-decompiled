contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address adminAddress;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 INITIAL_SUPPLY;
mapping of uint8 stor8;
mapping of uint256 frozenTimestamp;
uint8 exchangeFlag;
uint256 minWei;
uint256 maxWei;
uint256 maxRaiseAmount;
uint256 raisedAmount;
uint256 raiseRatio;

function maxWei() {
    return maxWei
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function INITIAL_SUPPLY() {
    return INITIAL_SUPPLY
}

function decimals() {
    return decimals
}

function maxRaiseAmount() {
    return maxRaiseAmount
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function exchangeFlag() {
    return bool(exchangeFlag)
}

function raiseRatio() {
    return raiseRatio
}

function minWei() {
    return minWei
}

function frozenAccount(address arg1) {
    return bool(stor8[arg1])
}

function getFrozenAccount(address arg1) {
    require arg1
    return bool(stor8[address(arg1)])
}

function raisedAmount() {
    return raisedAmount
}

function frozenTimestamp(address arg1) {
    return frozenTimestamp[arg1]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function getFrozenTimestamp(address arg1) {
    require arg1
    return frozenTimestamp[address(arg1)]
}

function admin() {
    return adminAddress
}

function kill() {
    if adminAddress != msg.sender:
    selfdestruct(adminAddress)
}

function setMinWei(uint256 arg1) {
    if adminAddress != msg.sender:
        return 0
    minWei = arg1
    return 1
}

function setMaxWei(uint256 arg1) {
    if adminAddress != msg.sender:
        return 0
    maxWei = arg1
    return 1
}

function setRaiseRatio(uint256 arg1) {
    if adminAddress != msg.sender:
        return 0
    raiseRatio = arg1
    return 1
}

function setRaisedAmount(uint256 arg1) {
    if adminAddress != msg.sender:
        return 0
    raisedAmount = arg1
    return 1
}

function setExchangeFlag(bool arg1) {
    if adminAddress != msg.sender:
        return 0
    exchangeFlag = uint8(arg1)
    return 1
}

function setMaxRaiseAmount(uint256 arg1) {
    if adminAddress != msg.sender:
        return 0
    maxRaiseAmount = arg1
    return 1
}

function setName(string arg1) {
    if adminAddress != msg.sender:
        return 0
    name[] = Array(len=arg1.length, data=arg1[all])
    return 1
}

function setSymbol(string arg1) {
    if adminAddress != msg.sender:
        return 0
    symbol[] = Array(len=arg1.length, data=arg1[all])
    return 1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function freeze(address arg1, bool arg2) {
    if adminAddress != msg.sender:
        return 0
    require arg1
    stor8[address(arg1)] = uint8(arg2)
    return 1
}

function freezeWithTimestamp(address arg1, uint256 arg2) {
    if adminAddress != msg.sender:
        return 0
    require arg1
    frozenTimestamp[address(arg1)] = arg2
    return 1
}

function withdraw(uint256 arg1) {
    if adminAddress != msg.sender:
        return 0
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function changeAdmin(address arg1) {
    if adminAddress != msg.sender:
        return 0
    require balanceOf[address(arg1)] + balanceOf[stor3] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += balanceOf[stor3]
    balanceOf[stor3] = 0
    adminAddress = arg1
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function generateToken(address arg1, uint256 arg2) {
    if adminAddress != msg.sender:
        return 0
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    INITIAL_SUPPLY = totalSupply
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor8[address(msg.sender)]
    require block.timestamp > frozenTimestamp[address(msg.sender)]
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor8[address(arg1)]
    require block.timestamp > frozenTimestamp[address(msg.sender)]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function multiFreeze(address[] arg1, bool[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if adminAddress != msg.sender:
        return 0
    require arg1.length == arg2.length
    require arg1.length > 0
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require mem[(32 * idx) + 140 len 20]
        require idx < arg2.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 8
        stor8[mem[(32 * idx) + 140 len 20]] = uint8(bool(mem[(32 * idx) + (32 * arg1.length) + 160]))
        require idx + 1 >= idx
        s = mem[(32 * idx) + (32 * arg1.length) + 160]
        s = mem[(32 * idx) + 128]
        idx = idx + 1
        continue 
    return 1
}

function multiFreezeWithTimestamp(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if adminAddress != msg.sender:
        return 0
    require arg1.length == arg2.length
    require arg1.length > 0
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require mem[(32 * idx) + 140 len 20]
        require idx < arg2.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 9
        frozenTimestamp[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx + 1 >= idx
        s = mem[(32 * idx) + (32 * arg1.length) + 160]
        s = mem[(32 * idx) + 128]
        idx = idx + 1
        continue 
    return 1
}

function multiTransfer(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require not stor8[address(msg.sender)]
    require block.timestamp > frozenTimestamp[address(msg.sender)]
    require arg1.length == arg2.length
    require arg1.length > 0
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg2.length
        require s + mem[(32 * idx) + (32 * arg1.length) + 160] >= s
        require idx + 1 >= idx
        idx = idx + 1
        s = s + mem[(32 * idx) + (32 * arg1.length) + 160]
        continue 
    require s * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length * arg1.length <= balanceOf[address(msg.sender)]
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _49 = mem[(32 * idx) + 128]
        require mem[(32 * idx) + 140 len 20]
        require idx < arg2.length
        require balanceOf[mem[(32 * idx) + 140 len 20]] + mem[(32 * idx) + (32 * arg1.length) + 160] >= balanceOf[mem[(32 * idx) + 140 len 20]]
        balanceOf[address(mem[(32 * idx) + 128])] = balanceOf[mem[(32 * idx) + 140 len 20]] + mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg2.length
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)]
        mem[0] = msg.sender
        mem[32] = 1
        balanceOf[address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg2.length
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_49));
        require idx + 1 >= idx
        s = _49
        idx = idx + 1
        continue 
    return 1
}

function _fallback() payable {
    require msg.value > 0
    if not exchangeFlag:
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if msg.value < minWei:
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            if msg.value > maxWei:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if raisedAmount < maxRaiseAmount:
                    require raisedAmount + msg.value >= raisedAmount
                    raisedAmount += msg.value
                    if raisedAmount <= maxRaiseAmount:
                        if raisedAmount >= maxRaiseAmount:
                            exchangeFlag = 0
                        if not msg.value:
                            require 0 <= balanceOf[stor3]
                            require 0 <= balanceOf[stor3]
                            require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            emit Transfer(0, adminAddress, msg.sender);
                        else:
                            require msg.value
                            require msg.value * raiseRatio / msg.value == raiseRatio
                            require msg.value * raiseRatio <= balanceOf[stor3]
                            require msg.value * raiseRatio <= balanceOf[stor3]
                            balanceOf[stor3] += -1 * msg.value * raiseRatio
                            require balanceOf[address(msg.sender)] + (msg.value * raiseRatio) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += msg.value * raiseRatio
                            emit Transfer((msg.value * raiseRatio), adminAddress, msg.sender);
                    else:
                        require maxRaiseAmount <= raisedAmount
                        require raisedAmount - maxRaiseAmount <= msg.value
                        call msg.sender with:
                           value raisedAmount - maxRaiseAmount wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        raisedAmount = maxRaiseAmount
                        if raisedAmount >= maxRaiseAmount:
                            exchangeFlag = 0
                        if not msg.value - raisedAmount + maxRaiseAmount:
                            require 0 <= balanceOf[stor3]
                            require 0 <= balanceOf[stor3]
                            require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            emit Transfer(0, adminAddress, msg.sender);
                        else:
                            require msg.value - raisedAmount + maxRaiseAmount
                            require (msg.value * raiseRatio) - (raisedAmount * raiseRatio) + (maxRaiseAmount * raiseRatio) / msg.value - raisedAmount + maxRaiseAmount == raiseRatio
                            require (msg.value * raiseRatio) - (raisedAmount * raiseRatio) + (maxRaiseAmount * raiseRatio) <= balanceOf[stor3]
                            require (msg.value * raiseRatio) - (raisedAmount * raiseRatio) + (maxRaiseAmount * raiseRatio) <= balanceOf[stor3]
                            balanceOf[stor3] = balanceOf[stor3] - (msg.value * raiseRatio) + (raisedAmount * raiseRatio) - (maxRaiseAmount * raiseRatio)
                            require balanceOf[address(msg.sender)] + (msg.value * raiseRatio) - (raisedAmount * raiseRatio) + (maxRaiseAmount * raiseRatio) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * raiseRatio) - (raisedAmount * raiseRatio) + (maxRaiseAmount * raiseRatio)
                            emit Transfer(((msg.value * raiseRatio) - (raisedAmount * raiseRatio) + (maxRaiseAmount * raiseRatio)), adminAddress, msg.sender);
}



}
