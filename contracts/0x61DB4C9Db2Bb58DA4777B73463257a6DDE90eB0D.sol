contract main {


// =======================  Init code  ======================


address stor0;
uint8 stor2;
uint256 stor3;
uint256 stor4;
address stor5;
address stor6;
uint256 stor7;
uint256 stor8;
address stor9;
uint256 stor11;

function _fallback() payable {
    stor2 = 0
    require not msg.value
    stor0 = msg.sender
    require code.data[5302 len 32] >= block.timestamp
    require code.data[5334 len 32] >= code.data[5302 len 32]
    require code.data[5366 len 32] > 0
    require code.data[5398 len 32] > 0
    require code.data[5474 len 20]
    require code.data[5430 len 32] > 0
    create contract with 0 wei
                    code: code.data[3708 len 1562], code.data[5474 len 20]
    require create.new_address
    stor5 = address(create.new_address)
    stor4 = code.data[5430 len 32]
    stor6 = code.data[5282 len 20]
    stor7 = code.data[5302 len 32]
    stor8 = code.data[5334 len 32]
    stor11 = code.data[5366 len 32]
    stor3 = code.data[5398 len 32]
    stor9 = code.data[5474 len 20]
    return code.data[380 len 3328]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint256 stor1;
uint8 stor2;
uint256 cap;
uint256 goal;
address vaultAddress;
address tokenAddress;
uint256 startTime;
uint256 endTime;
address walletAddress;
address safeAddress;
uint256 rate;
uint256 weiRaised;

function safe() {
    return safeAddress
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

function startTime() {
    return startTime
}

function isFinalized() {
    return bool(stor2)
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
    if arg1:
        owner = arg1
}

function hasEnded() {
    if block.timestamp > endTime:
        return (block.timestamp > endTime)
    return weiRaised >= cap
}

function claimRefund() {
    require stor2
    require weiRaised < goal
    require ext_code.size(vaultAddress)
    call vaultAddress.0xfa89401a with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
}

function finalize() {
    require owner == msg.sender
    require not stor2
    require ext_code.size(vaultAddress)
    if weiRaised < goal:
        call vaultAddress.0x8c52dc41 with:
             gas gas_remaining - 710 wei
    else:
        call vaultAddress.0x43d726d6 with:
             gas gas_remaining - 710 wei
    require ext_call.success
    emit Finalized()
    stor2 = 1
}

function unsoldCleanUp() {
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if ext_call.return_data[0] > 0:
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
}

function claimTokens() {
    require stor2
    require weiRaised >= goal
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] > 0
    stor1[address(msg.sender)] = 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, stor1[address(msg.sender)]
    require ext_call.success
    require ext_call.return_data[0]
    emit TokenRedeem(stor1[address(msg.sender)], msg.sender);
}

function sendTokens(address arg1) {
    require owner == msg.sender
    require stor2
    require weiRaised >= goal
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] > 0
    stor1[address(arg1)] = 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), stor1[address(arg1)]
    require ext_call.success
    require ext_call.return_data[0]
    emit TokenRedeem(stor1[address(arg1)], arg1);
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
    stor1[address(arg1)] = rate * msg.value
    emit TokenPurchase(msg.value, rate * msg.value, msg.sender, arg1);
    require ext_code.size(vaultAddress)
    call vaultAddress.0xf340fa01 with:
       value msg.value wei
         gas gas_remaining - 9710 wei
        args msg.sender
    require ext_call.success
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
    stor1[address(msg.sender)] = rate * msg.value
    emit TokenPurchase(msg.value, rate * msg.value, msg.sender, msg.sender);
    require ext_code.size(vaultAddress)
    call vaultAddress.0xf340fa01 with:
       value msg.value wei
         gas gas_remaining - 9710 wei
        args msg.sender
    require ext_call.success
}



}
