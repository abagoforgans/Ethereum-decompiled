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
uint256 stor12;
uint256 stor14;
uint256 stor15;
address stor16;
address stor17;
address stor18;

function _fallback() payable {
    uint8(stor7.field_160) = 0
    require not msg.value
    require code.data[12905 len 32] >= block.number
    require code.data[12969 len 32] >= code.data[12905 len 32]
    require code.data[13001 len 32] > 0
    require code.data[13109 len 20]
    create contract with 0 wei
                    code: code.data[9851 len 3054]
    require create.new_address
    stor0 = address(create.new_address)
    stor1 = code.data[12905 len 32]
    stor2 = code.data[12969 len 32]
    stor4 = code.data[13001 len 32]
    stor3 = code.data[13109 len 20]
    require code.data[13225 len 32] > 0
    stor6 = code.data[13225 len 32]
    address(stor7.field_0) = msg.sender
    require code.data[13129 len 32] > 0
    create contract with 0 wei
                    code: code.data[7630 len 1562], stor3
    require create.new_address
    stor9 = address(create.new_address)
    stor8 = code.data[13129 len 32]
    stor17 = code.data[13077 len 20]
    stor16 = code.data[13109 len 20]
    require code.data[13129 len 32] > 0
    require code.data[13161 len 32] > 0
    require code.data[13033 len 32] > 0
    require code.data[13225 len 32] + code.data[13257 len 32] < code.data[13193 len 32]
    require code.data[12905 len 32] < code.data[12937 len 32]
    require code.data[12937 len 32] < code.data[12969 len 32]
    stor10 = code.data[13193 len 32]
    stor11 = code.data[13257 len 32]
    stor12 = code.data[13033 len 32]
    stor15 = code.data[13161 len 32]
    stor14 = code.data[12937 len 32]
    create contract with 0 wei
                    code: code.data[9192 len 659], stor0, stor17, block.timestamp + (13128 * 24 * 3600)
    require create.new_address
    stor18 = address(create.new_address)
    return code.data[872 len 6758]
}



// =====================  Runtime code  =====================


address tokenAddress;
uint256 startBlock;
uint256 endBlock;
uint256 rate;
uint256 weiRaised;
uint256 sub_cadb97ad;
uint8 stor7; offset 160
address owner;
uint256 goal;
address vaultAddress;
uint256 stor10;
uint256 stor11;
uint256 sub_bc284c5c;
uint256 stor13;
uint256 preIcoEndBlock;
uint256 stor15;
address walletAddress;
address stor17;
address timeVaultAddress;

function endBlock() {
    return endBlock
}

function preIcoEndBlock() {
    return preIcoEndBlock
}

function rate() {
    return rate
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

function sub_bc284c5c(?) {
    return sub_bc284c5c
}

function sub_cadb97ad(?) {
    return sub_cadb97ad
}

function timeVault() {
    return timeVaultAddress
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

function setRate(uint256 arg1) {
    require owner == msg.sender
    require arg1 > 0
    rate = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
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

function hasEnded() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if block.number > endBlock:
        return (block.number > endBlock)
    return ext_call.return_data[0] >= sub_cadb97ad
}

function _fallback() payable {
    require msg.sender
    require msg.value > sub_bc284c5c
    if block.number <= preIcoEndBlock:
        require msg.value + weiRaised >= weiRaised
        require msg.value + weiRaised <= stor15
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require (msg.value * rate) + ext_call.return_data[0] >= ext_call.return_data[0]
    require block.number >= startBlock
    require block.number <= endBlock
    require msg.value
    require (msg.value * rate) + ext_call.return_data[0] <= sub_cadb97ad
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
    require msg.value > sub_bc284c5c
    if block.number <= preIcoEndBlock:
        require msg.value + weiRaised >= weiRaised
        require msg.value + weiRaised <= stor15
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require (msg.value * rate) + ext_call.return_data[0] >= ext_call.return_data[0]
    require block.number >= startBlock
    require block.number <= endBlock
    require msg.value
    require (msg.value * rate) + ext_call.return_data[0] <= sub_cadb97ad
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
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if block.number <= endBlock:
        require ext_call.return_data[0] >= sub_cadb97ad
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require stor11 + ext_call.return_data[0] >= ext_call.return_data[0]
    require stor11 + ext_call.return_data[0] <= stor10
    stor13 = stor10 - stor11 - ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args timeVaultAddress, stor11
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args stor17, stor13
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
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args stor17
    require ext_call.success
    emit Finalized()
    stor7 = 1
}



}
