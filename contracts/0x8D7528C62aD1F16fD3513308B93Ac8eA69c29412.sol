contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner; offset 8
uint256 price;
uint8 status;
uint64 gameTime; offset 8
uint64 finishTime; offset 72
uint128 stor7;
uint256 stor7; offset 8
address feeOwner;
address gameOpponentAddress;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function status() {
    return status
}

function decimals() {
    return decimals
}

function finishTime() {
    return finishTime
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function price() {
    return price
}

function gameTime() {
    return gameTime
}

function feeOwner() {
    return feeOwner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function gameOpponent() {
    return gameOpponentAddress
}

function changeFeeOwner(address arg1) {
    require owner == msg.sender
    require feeOwner != arg1
    require arg1
    feeOwner = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function changeStatus(uint8 arg1) {
    require owner == msg.sender
    require status != arg1
    status = arg1
    emit ChangeStatus(arg1, this.address);
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function finish() {
    require owner == msg.sender
    require block.timestamp >= finishTime
    call feeOwner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function beginGame(address arg1, uint64 arg2) {
    require owner == msg.sender
    require arg1 != this.address
    if arg2:
        require arg2 > 420768 * 24 * 3600
    gameOpponentAddress = arg1
    status = 0
    gameTime = arg2
    Mask(248, 0, stor7.field_8) = 0
    emit BeginGame(arg2, this.address, arg1);
}

function transferFundAndEndGame() payable {
    require gameOpponentAddress
    require gameOpponentAddress == msg.sender
    if msg.value > 0:
        if totalSupply > 0:
            require totalSupply
            price = eth.balance(this.address) / totalSupply
    gameOpponentAddress = 0
    Mask(72, 0, stor7.field_0) = 0
}

function _fallback() payable {
    require not status
    require price > 0
    require gameTime > block.timestamp
    require price
    require (msg.value / price) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += msg.value / price
    require (msg.value / price) + totalSupply >= totalSupply
    totalSupply += msg.value / price
    emit Transfer((msg.value / price), this.address, msg.sender);
    emit Buy(msg.value / price, msg.value, this.address, msg.sender);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if arg1 != this.address:
        require arg1
        require arg2 <= balanceOf[address(msg.sender)]
        require arg2 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg2
        require arg2 + balanceOf[arg1] >= balanceOf[arg1]
        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
        emit Transfer(arg2, msg.sender, arg1);
    else:
        require arg2 <= balanceOf[address(msg.sender)]
        require not status
        require not gameTime
        require arg2 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg2
        require arg2 <= totalSupply
        totalSupply -= arg2
        if not price:
            call msg.sender with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Transfer(arg2, msg.sender, arg1);
            emit Sell(arg2, 0, arg1, msg.sender);
        else:
            require arg2 * price / price == arg2
            call msg.sender with:
               value arg2 * price wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Transfer(arg2, msg.sender, arg1);
            emit Sell(arg2, arg2 * price, arg1, msg.sender);
    return 1
}

function endGame(address arg1, uint8 arg2) {
    require owner == msg.sender
    require gameOpponentAddress
    require gameOpponentAddress == arg1
    if 1 == arg2:
        require ext_code.size(gameOpponentAddress)
        if eth.balance(this.address) <= 0:
            call gameOpponentAddress.0xc8a5e6d7 with:
                 gas gas_remaining wei
        else:
            if totalSupply <= 0:
                call gameOpponentAddress.0xc8a5e6d7 with:
                     gas gas_remaining wei
            else:
                call gameOpponentAddress.0x18160ddd with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= 0:
                    call feeOwner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(gameOpponentAddress)
                    call gameOpponentAddress.0xc8a5e6d7 with:
                         gas gas_remaining wei
                else:
                    require eth.balance(this.address) / 20 <= eth.balance(this.address)
                    call feeOwner with:
                       value eth.balance(this.address) / 20 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(gameOpponentAddress)
                    call gameOpponentAddress.0xc8a5e6d7 with:
                       value eth.balance(this.address) - (eth.balance(this.address) / 20) wei
                         gas gas_remaining wei
    else:
        if arg2 != 2:
            require 3 == arg2
        else:
            if eth.balance(this.address) < eth.balance(gameOpponentAddress):
                require 3 == arg2
        if 1 == arg2:
            require ext_code.size(gameOpponentAddress)
            if eth.balance(this.address) <= 0:
                call gameOpponentAddress.0xc8a5e6d7 with:
                     gas gas_remaining wei
            else:
                if totalSupply <= 0:
                    call gameOpponentAddress.0xc8a5e6d7 with:
                         gas gas_remaining wei
                else:
                    call gameOpponentAddress.0x18160ddd with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= 0:
                        call feeOwner with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(gameOpponentAddress)
                        call gameOpponentAddress.0xc8a5e6d7 with:
                             gas gas_remaining wei
                    else:
                        require eth.balance(this.address) / 20 <= eth.balance(this.address)
                        call feeOwner with:
                           value eth.balance(this.address) / 20 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(gameOpponentAddress)
                        call gameOpponentAddress.0xc8a5e6d7 with:
                           value eth.balance(this.address) - (eth.balance(this.address) / 20) wei
                             gas gas_remaining wei
        else:
            if arg2 != 2:
                require 3 == arg2
                require ext_code.size(gameOpponentAddress)
                call gameOpponentAddress.0xc8a5e6d7 with:
                     gas gas_remaining wei
            else:
                if eth.balance(this.address) <= eth.balance(gameOpponentAddress):
                    require eth.balance(this.address) == eth.balance(gameOpponentAddress)
                    require ext_code.size(gameOpponentAddress)
                    call gameOpponentAddress.0xc8a5e6d7 with:
                         gas gas_remaining wei
                else:
                    require eth.balance(gameOpponentAddress) <= eth.balance(this.address)
                    require ext_code.size(gameOpponentAddress)
                    call gameOpponentAddress.0x18160ddd with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= 0:
                        call feeOwner with:
                           value eth.balance(this.address) - eth.balance(gameOpponentAddress) / 2 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(gameOpponentAddress)
                        call gameOpponentAddress.0xc8a5e6d7 with:
                             gas gas_remaining wei
                    else:
                        require eth.balance(this.address) - eth.balance(gameOpponentAddress) / 2 / 20 <= eth.balance(this.address) - eth.balance(gameOpponentAddress) / 2
                        call feeOwner with:
                           value eth.balance(this.address) - eth.balance(gameOpponentAddress) / 2 / 20 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(gameOpponentAddress)
                        call gameOpponentAddress.0xc8a5e6d7 with:
                           value (eth.balance(this.address) - eth.balance(gameOpponentAddress) / 2) - (eth.balance(this.address) - eth.balance(gameOpponentAddress) / 2 / 20) wei
                             gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    gameOpponentAddress = 0
    Mask(72, 0, stor7.field_0) = 0
    if totalSupply > 0:
        require totalSupply
        price = eth.balance(this.address) / totalSupply
    emit EndGame(arg2, this.address, arg1);
}



}
