contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
address stor3;
uint256 stor4;
uint256 stor6;
uint8 stor7; offset 160
address stor7;
uint256 stor8;
address stor9;
uint256 stor10;
uint256 stor11;
address stor12;

function _fallback() payable {
    uint8(stor7.field_160) = 0
    stor10 = 10
    require not msg.value
    require code.data[11493 len 32] >= block.timestamp
    require code.data[11525 len 32] >= code.data[11493 len 32]
    require code.data[11557 len 32] > 0
    require code.data[11697 len 20]
    create contract with 0 wei
                    code: code.data[8296 len 3197]
    require create.new_address
    stor0 = address(create.new_address)
    stor1 = code.data[11493 len 32]
    stor2 = code.data[11525 len 32]
    stor4 = code.data[11557 len 32]
    stor3 = code.data[11697 len 20]
    require code.data[11621 len 32] > 0
    stor6 = code.data[11621 len 32]
    address(stor7.field_0) = msg.sender
    require code.data[11589 len 32] > 0
    create contract with 0 wei
                    code: code.data[6669 len 1627], stor3
    require create.new_address
    stor9 = address(create.new_address)
    stor8 = code.data[11589 len 32]
    require code.data[11589 len 32] <= code.data[11621 len 32]
    require code.data[11665 len 20]
    if code.data[11621 len 32]:
        require code.data[11621 len 32]
        require code.data[11557 len 32] * code.data[11621 len 32] / code.data[11621 len 32] == code.data[11557 len 32]
    stor11 = code.data[11557 len 32] * code.data[11621 len 32]
    stor12 = code.data[11665 len 20]
    return code.data[679 len 5990]
}



// =====================  Runtime code  =====================


address tokenAddress;
uint256 startTime;
uint256 endTime;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint256 cap;
uint8 stor7; offset 160
address owner;
uint256 goal;
address vaultAddress;
uint256 discount;
uint256 maximumTokenSupply;
address tokenOwner;

function maximumTokenSupply() {
    return maximumTokenSupply
}

function rate() {
    return rate
}

function endTime() {
    return endTime
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

function wallet() {
    return walletAddress
}

function discount() {
    return discount
}

function startTime() {
    return startTime
}

function isFinalized() {
    return bool(stor7)
}

function owner() {
    return owner
}

function tokenOwner() {
    return tokenOwner
}

function vault() {
    return vaultAddress
}

function token() {
    return tokenAddress
}

function goalReached() {
    return weiRaised >= goal
}

function hasStarted() {
    return (block.timestamp > startTime)
}

function hasEnded() {
    if block.timestamp > endTime:
        return (block.timestamp > endTime)
    return weiRaised >= cap
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
    call vaultAddress.refund(address rg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
}

function finalize() {
    require owner == msg.sender
    require not stor7
    if block.timestamp <= endTime:
        require weiRaised >= cap
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args tokenOwner
    require ext_call.success
    require ext_code.size(vaultAddress)
    if weiRaised < goal:
        call vaultAddress.enableRefunds() with:
             gas gas_remaining - 710 wei
    else:
        call vaultAddress.close() with:
             gas gas_remaining - 710 wei
    require ext_call.success
    emit Finalized()
    stor7 = 1
}

function _fallback() payable {
    require msg.sender
    require msg.value + weiRaised >= weiRaised
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require msg.value + weiRaised <= cap
    if msg.value:
        require msg.value
        require rate * msg.value / msg.value == rate
    require discount
    require (rate * msg.value / discount) + (rate * msg.value) >= rate * msg.value
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, (rate * msg.value / discount) + (rate * msg.value)
    require ext_call.success
    emit TokenPurchase(msg.value, (rate * msg.value / discount) + (rate * msg.value), msg.sender, msg.sender);
    require ext_code.size(vaultAddress)
    call vaultAddress.deposit(address rg1) with:
       value msg.value wei
         gas gas_remaining - 9710 wei
        args msg.sender
    require ext_call.success
}

function buyTokens(address arg1) payable {
    require arg1
    require msg.value + weiRaised >= weiRaised
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require msg.value + weiRaised <= cap
    if msg.value:
        require msg.value
        require rate * msg.value / msg.value == rate
    require discount
    require (rate * msg.value / discount) + (rate * msg.value) >= rate * msg.value
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), (rate * msg.value / discount) + (rate * msg.value)
    require ext_call.success
    emit TokenPurchase(msg.value, (rate * msg.value / discount) + (rate * msg.value), msg.sender, arg1);
    require ext_code.size(vaultAddress)
    call vaultAddress.deposit(address rg1) with:
       value msg.value wei
         gas gas_remaining - 9710 wei
        args msg.sender
    require ext_call.success
}



}
