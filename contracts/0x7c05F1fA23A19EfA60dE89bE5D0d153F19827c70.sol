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
    require code.data[10008 len 32] >= block.number
    require code.data[10040 len 32] >= code.data[10008 len 32]
    require code.data[10072 len 32] > 0
    require code.data[10116 len 20]
    create contract with 0 wei
                    code: code.data[7474 len 2534]
    require create.new_address
    stor0 = address(create.new_address)
    stor1 = code.data[10008 len 32]
    stor2 = code.data[10040 len 32]
    stor4 = code.data[10072 len 32]
    stor3 = code.data[10116 len 20]
    require code.data[10136 len 32] > 0
    stor6 = code.data[10136 len 32]
    address(stor7.field_0) = msg.sender
    require code.data[10200 len 32] > 0
    create contract with 0 wei
                    code: code.data[5912 len 1562], stor3
    require create.new_address
    stor9 = address(create.new_address)
    stor8 = code.data[10200 len 32]
    require ext_code.size(stor0)
    call stor0.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args stor3, code.data[10168 len 32]
    require ext_call.success
    return code.data[673 len 5239]
}



// =====================  Runtime code  =====================


address tokenAddress;
uint256 startBlock;
uint256 endBlock;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint256 cap;
uint8 stor7; offset 160
address owner;
uint256 goal;
address vaultAddress;

function endBlock() {
    return endBlock
}

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

function startBlock() {
    return startBlock
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
    if block.number > endBlock:
        return (block.number > endBlock)
    return weiRaised >= cap
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

function _fallback() payable {
    require msg.sender
    require msg.value + weiRaised >= weiRaised
    require block.number >= startBlock
    require block.number <= endBlock
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
    require block.number >= startBlock
    require block.number <= endBlock
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
    if block.number <= endBlock:
        require weiRaised >= cap
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] <= cap
    if cap - ext_call.return_data[0] > 0:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args walletAddress, cap - ext_call.return_data[0]
        require ext_call.success
    require ext_code.size(vaultAddress)
    if weiRaised < goal:
        call vaultAddress.enableRefunds() with:
             gas gas_remaining - 710 wei
    else:
        call vaultAddress.0x43d726d6 with:
             gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x7d64bcb4 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    emit Finalized()
    stor7 = 1
}



}
