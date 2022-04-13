contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
address stor4;
uint256 stor5;
uint16 stor6;
address stor6; offset 16
address stor7;
uint256 stor8;
uint256 stor9;

function _fallback() payable {
    stor5 = 0
    uint16(stor6.field_0) = 0
    stor8 = 10000 * 10^18
    stor9 = 300 * 10^18
    require not msg.value
    stor0 = msg.sender
    require code.data[3666 len 32] < code.data[3730 len 32]
    address(stor6.field_16) = code.data[3646 len 20]
    stor1 = code.data[3666 len 32]
    stor2 = code.data[3698 len 32]
    stor3 = code.data[3730 len 32]
    stor4 = code.data[3774 len 20]
    stor7 = code.data[3774 len 20]
    return code.data[266 len 3368]
}



// =====================  Runtime code  =====================


const minInvestment = 10^15


address owner;
uint256 initialBlock;
uint256 discountBlock;
uint256 finalBlock;
address bouleDevMultisigAddress;
uint256 totalCollected;
uint8 stor6;
uint8 stor6; offset 8
address tokenAddress; offset 16
uint256 stor6; offset 8
address stor7;
uint256 hardCap;
uint256 minFundingGoal;
mapping of uint8 stor10;
mapping of uint256 balances;

function minFundingGoal() {
    return minFundingGoal
}

function finalBlock() {
    return finalBlock
}

function balances(address arg1) {
    return balances[arg1]
}

function initialBlock() {
    return initialBlock
}

function bouleDevMultisig() {
    return bouleDevMultisigAddress
}

function saleStopped() {
    return bool(uint8(stor6.field_0))
}

function owner() {
    return owner
}

function whitelist(address arg1) {
    return bool(stor10[arg1])
}

function saleFinalized() {
    return bool(uint8(stor6.field_8))
}

function discountBlock() {
    return discountBlock
}

function totalCollected() {
    return totalCollected
}

function hardCap() {
    return hardCap
}

function token() {
    return tokenAddress
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function emergencyStopSale() {
    require not uint8(stor6.field_0)
    require owner == msg.sender
    uint8(stor6.field_0) = 1
}

function getPrice(uint256 arg1) {
    if arg1 >= finalBlock:
        return 0
    if arg1 > discountBlock:
        return 1400
    return 2000
}

function setWhitelistStatus(address arg1, bool arg2) {
    require owner == msg.sender
    stor10[address(arg1)] = uint8(arg2)
    emit Whitelisted(address(arg1), arg2);
}

function restartSale() {
    require block.number >= initialBlock
    require block.number < finalBlock
    require uint8(stor6.field_0)
    require owner == msg.sender
    uint8(stor6.field_0) = 0
}

function moveFunds() {
    require owner == msg.sender
    require totalCollected >= minFundingGoal
    call stor7 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function changeSaleBlocks(uint256 arg1, uint256 arg2, uint256 arg3) {
    require owner == msg.sender
    require not uint8(stor6.field_0)
    require arg1 < arg3
    require arg1 < arg2
    require not uint8(stor6.field_8)
    initialBlock = arg1
    discountBlock = arg2
    finalBlock = arg3
}

function refund() {
    require block.number >= finalBlock
    require totalCollected < minFundingGoal
    require balances[address(msg.sender)]
    balances[address(msg.sender)] = 0
    call msg.sender with:
       value balances[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Refunded(msg.sender, balances[address(msg.sender)]);
}

function finalizeSale() {
    require block.number >= finalBlock
    require owner == msg.sender
    if totalCollected >= minFundingGoal:
        call stor7 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.0x18160ddd with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args bouleDevMultisigAddress, ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args bouleDevMultisigAddress
    require ext_call.success
    uint8(stor6.field_0) = 1
    uint8(stor6.field_8) = 1
    Mask(248, 0, stor6.field_8) = 0
}

function _fallback() payable {
    if block.number < initialBlock:
        require stor10[address(msg.sender)]
    require block.number < finalBlock
    require not uint8(stor6.field_0)
    require msg.sender
    require msg.value >= 10^15
    require totalCollected + msg.value <= hardCap
    if totalCollected + msg.value >= minFundingGoal:
        call stor7 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        require msg.value + balances[address(msg.sender)] >= balances[address(msg.sender)]
        balances[address(msg.sender)] += msg.value
    if block.number >= finalBlock:
        if msg.value:
            require msg.value
            require not 0 / msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, 0
        require ext_call.success
        require ext_call.return_data[0]
        require msg.value + totalCollected >= totalCollected
        totalCollected += msg.value
        emit NewBuyer(0, msg.value, msg.sender);
    else:
        if block.number > discountBlock:
            if msg.value:
                require msg.value
                require 1400 * msg.value / msg.value == 1400
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, 1400 * msg.value
            require ext_call.success
            require ext_call.return_data[0]
            require msg.value + totalCollected >= totalCollected
            totalCollected += msg.value
            emit NewBuyer(1400 * msg.value, msg.value, msg.sender);
        else:
            if msg.value:
                require msg.value
                require 2000 * msg.value / msg.value == 2000
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, 2000 * msg.value
            require ext_call.success
            require ext_call.return_data[0]
            require msg.value + totalCollected >= totalCollected
            totalCollected += msg.value
            emit NewBuyer(2000 * msg.value, msg.value, msg.sender);
}



}
