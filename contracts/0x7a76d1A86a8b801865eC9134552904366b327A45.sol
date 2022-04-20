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

function _fallback() payable {
    uint8(stor7.field_160) = 0
    require not msg.value
    require block.timestamp >= block.timestamp
    require block.timestamp + (60 * code.data[13315 len 32]) >= block.timestamp
    require code.data[13347 len 32] > 0
    require code.data[13455 len 20]
    create contract with 0 wei
                    code: code.data[10114 len 3201]
    require create.new_address
    stor0 = address(create.new_address)
    stor1 = block.timestamp
    stor2 = block.timestamp + (60 * code.data[13315 len 32])
    stor4 = code.data[13347 len 32]
    stor3 = code.data[13455 len 20]
    require 10^18 * code.data[13411 len 32] > 0
    stor6 = 10^18 * code.data[13411 len 32]
    address(stor7.field_0) = msg.sender
    require 10^18 * code.data[13379 len 32] > 0
    create contract with 0 wei
                    code: code.data[8487 len 1627], stor3
    require create.new_address
    stor9 = address(create.new_address)
    stor8 = 10^18 * code.data[13379 len 32]
    require code.data[13379 len 32] <= code.data[13411 len 32]
    return code.data[538 len 7949]
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

function startTime() {
    return startTime
}

function isFinalized() {
    return bool(stor7)
}

function owner() {
    return owner
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

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function hasEnded() {
    if block.timestamp > endTime:
        return (block.timestamp > endTime)
    if weiRaised >= cap:
        return weiRaised >= cap
    return weiRaised >= goal
}

function sub_787872e1(?) {
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args walletAddress, arg1
    require ext_call.success
}

function transferTokenOwnership(address arg1) {
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
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

function sub_4e2fb1f6(?) {
    require owner == msg.sender
    require stor7
    require weiRaised >= goal
    require arg1 > 0
    require arg2 > 0
    require arg3 > 0
    require arg4 >= arg3
    startTime = block.timestamp
    endTime = (60 * arg1) + block.timestamp
    rate = arg2
    weiRaised = 0
    stor7 = 0
    create contract with 0 wei
                    code: code.data[3078 len 1627], walletAddress
    require create.new_address
    vaultAddress = address(create.new_address)
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
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, rate * msg.value
    require ext_call.success
    emit TokenPurchase(msg.value, rate * msg.value, msg.sender, msg.sender);
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
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), rate * msg.value
    require ext_call.success
    emit TokenPurchase(msg.value, rate * msg.value, msg.sender, arg1);
    require ext_code.size(vaultAddress)
    call vaultAddress.deposit(address rg1) with:
       value msg.value wei
         gas gas_remaining - 9710 wei
        args msg.sender
    require ext_call.success
}

function finalize() {
    require owner == msg.sender
    require not stor7
    if block.timestamp > endTime:
        require ext_code.size(vaultAddress)
        if weiRaised < goal:
            call vaultAddress.enableRefunds() with:
                 gas gas_remaining - 710 wei
        else:
            call vaultAddress.close() with:
                 gas gas_remaining - 710 wei
    else:
        if weiRaised >= cap:
            require ext_code.size(vaultAddress)
            if weiRaised < goal:
                call vaultAddress.enableRefunds() with:
                     gas gas_remaining - 710 wei
            else:
                call vaultAddress.close() with:
                     gas gas_remaining - 710 wei
        else:
            require weiRaised >= goal
            require ext_code.size(vaultAddress)
            call vaultAddress.close() with:
                 gas gas_remaining - 710 wei
    require ext_call.success
    emit Finalized()
    stor7 = 1
}



}
