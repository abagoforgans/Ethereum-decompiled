contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint8 stor7; offset 160
address stor7;
uint256 stor8;
uint8 stor9; offset 160
address stor9;

function _fallback() payable {
    uint8(stor7.field_160) = 0
    uint8(stor9.field_160) = 0
    require not msg.value
    require code.data[4968 len 32] > 0
    require code.data[5044 len 20]
    require code.data[5108 len 20]
    stor2 = code.data[4968 len 32]
    stor1 = code.data[5044 len 20]
    stor0 = code.data[5108 len 20]
    require code.data[5064 len 32] > 0
    stor4 = code.data[5064 len 32]
    require code.data[4904 len 32] >= block.timestamp
    require code.data[4936 len 32] >= code.data[4904 len 32]
    stor5 = code.data[4904 len 32]
    stor6 = code.data[4936 len 32]
    address(stor7.field_0) = msg.sender
    require code.data[5000 len 32] > 0
    create contract with 0 wei
                    code: code.data[3356 len 1548], stor1
    require create.new_address
    address(stor9.field_0) = address(create.new_address)
    stor8 = code.data[5000 len 32]
    require code.data[5000 len 32] <= code.data[5064 len 32]
    return code.data[458 len 2898]
}



// =====================  Runtime code  =====================


address tokenAddress;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint256 cap;
uint256 openingTime;
uint256 closingTime;
uint8 stor7; offset 160
address owner;
uint256 goal;
uint8 stor9; offset 160
address vaultAddress;

function rate() {
    return rate
}

function cap() {
    return cap
}

function goal() {
    return goal
}

function weiRaised() {
    return weiRaised
}

function closingTime() {
    return closingTime
}

function wallet() {
    return walletAddress
}

function isFinalized() {
    return bool(stor7)
}

function owner() {
    return owner
}

function openingTime() {
    return openingTime
}

function vault() {
    return vaultAddress
}

function token() {
    return tokenAddress
}

function capReached() {
    return weiRaised >= cap
}

function goalReached() {
    return weiRaised >= goal
}

function hasClosed() {
    return (block.timestamp > closingTime)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function claimRefund() {
    require stor7
    require weiRaised < goal
    require ext_code.size(vaultAddress)
    call vaultAddress.0xfa89401a with:
         gas gas_remaining wei
        args msg.sender
    require ext_call.success
}

function finalize() {
    require owner == msg.sender
    require not stor7
    require block.timestamp > closingTime
    require ext_code.size(vaultAddress)
    if weiRaised < goal:
        call vaultAddress.enableRefunds() with:
             gas gas_remaining wei
    else:
        call vaultAddress.0x43d726d6 with:
             gas gas_remaining wei
    require ext_call.success
    emit Finalized()
    stor7 = 1
}

function sub_f817a9d9(?) {
    require owner == msg.sender
    require block.timestamp > closingTime
    require not stor9
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining wei
    require ext_call.success
    if not ext_call.return_data[0]:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args address(arg1), 0
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args address(arg2), 0
    else:
        require 100 * ext_call.return_data[0] / ext_call.return_data[0] == 100
        if not 100 * ext_call.return_data[0] / 35:
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(arg1), 0
        else:
            require 15 * 100 * ext_call.return_data[0] / 35 / 100 * ext_call.return_data[0] / 35 == 15
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(arg1), 15 * 100 * ext_call.return_data[0] / 35 / 100
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args address(arg2), 100 * ext_call.return_data[0] / 35 / 2
    require ext_call.success
    stor9 = 1
}

function buyTokens(address arg1) payable {
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require arg1
    require msg.value
    require msg.value + weiRaised >= weiRaised
    require msg.value + weiRaised <= cap
    require openingTime + (24 * 3600) >= openingTime
    require openingTime + (48 * 24 * 3600) >= openingTime
    require openingTime + (72 * 24 * 3600) >= openingTime
    require openingTime + (96 * 24 * 3600) >= openingTime
    if block.timestamp > openingTime + (24 * 3600):
        if block.timestamp < openingTime + (48 * 24 * 3600):
            rate = 11500
        else:
            if block.timestamp > openingTime + (48 * 24 * 3600):
                if block.timestamp < openingTime + (72 * 24 * 3600):
                    rate = 11000
                else:
                    if block.timestamp > openingTime + (72 * 24 * 3600):
                        if block.timestamp < openingTime + (96 * 24 * 3600):
                            rate = 10500
                        else:
                            if block.timestamp > openingTime + (96 * 24 * 3600):
                                if block.timestamp < closingTime:
                                    rate = 10000
    if not msg.value:
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args address(arg1), 0
        require ext_call.success
        require ext_call.return_data[0]
        emit TokenPurchase(msg.value, 0, msg.sender, arg1);
    else:
        require rate * msg.value / msg.value == rate
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args address(arg1), rate * msg.value
        require ext_call.success
        require ext_call.return_data[0]
        emit TokenPurchase(msg.value, rate * msg.value, msg.sender, arg1);
    require ext_code.size(vaultAddress)
    call vaultAddress.deposit(address arg1) with:
       value msg.value wei
         gas gas_remaining wei
        args msg.sender
    require ext_call.success
}

function _fallback() payable {
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require msg.sender
    require msg.value
    require msg.value + weiRaised >= weiRaised
    require msg.value + weiRaised <= cap
    require openingTime + (24 * 3600) >= openingTime
    require openingTime + (48 * 24 * 3600) >= openingTime
    require openingTime + (72 * 24 * 3600) >= openingTime
    require openingTime + (96 * 24 * 3600) >= openingTime
    if block.timestamp > openingTime + (24 * 3600):
        if block.timestamp < openingTime + (48 * 24 * 3600):
            rate = 11500
        else:
            if block.timestamp > openingTime + (48 * 24 * 3600):
                if block.timestamp < openingTime + (72 * 24 * 3600):
                    rate = 11000
                else:
                    if block.timestamp > openingTime + (72 * 24 * 3600):
                        if block.timestamp < openingTime + (96 * 24 * 3600):
                            rate = 10500
                        else:
                            if block.timestamp > openingTime + (96 * 24 * 3600):
                                if block.timestamp < closingTime:
                                    rate = 10000
    if not msg.value:
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, 0
        require ext_call.success
        require ext_call.return_data[0]
        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
    else:
        require rate * msg.value / msg.value == rate
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, rate * msg.value
        require ext_call.success
        require ext_call.return_data[0]
        emit TokenPurchase(msg.value, rate * msg.value, msg.sender, msg.sender);
    require ext_code.size(vaultAddress)
    call vaultAddress.deposit(address arg1) with:
       value msg.value wei
         gas gas_remaining wei
        args msg.sender
    require ext_call.success
}



}
