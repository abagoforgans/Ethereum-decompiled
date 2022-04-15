contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
address stor5;
uint8 stor6; offset 160
uint8 stor6; offset 168
address stor6;

function _fallback() payable {
    uint8(stor6.field_168) = 0
    require not msg.value
    stor0 = msg.sender
    require code.data[3604 len 32] > block.timestamp
    require code.data[3604 len 32] >= code.data[3572 len 32]
    require code.data[3648 len 20]
    require code.data[3680 len 20]
    stor1 = code.data[3572 len 32]
    stor2 = code.data[3604 len 32]
    stor5 = code.data[3680 len 20]
    address(stor6.field_0) = code.data[3648 len 20]
    uint8(stor6.field_160) = 0
    return code.data[261 len 3311]
}



// =====================  Runtime code  =====================


const maxCallFrequency = 100

const maxGasPrice = 5 * 10^10

const maximumFunding = (78125 * 10^14 * 3600)

const tokensPerEther = 1200


address controllerAddress;
uint256 startFundingTime;
uint256 endFundingTime;
mapping of uint256 lastCallBlock;
uint256 totalCollected;
address tokenContractAddress;
uint8 stor6; offset 160
uint8 stor6; offset 168
address vaultAddress;

function vaultAddress() {
    return vaultAddress
}

function lastCallBlock(address arg1) {
    return lastCallBlock[arg1]
}

function tokenContract() {
    return tokenContractAddress
}

function paused() {
    return bool(uint8(stor6.field_160))
}

function finalized() {
    return bool(uint8(stor6.field_168))
}

function startFundingTime() {
    return startFundingTime
}

function totalCollected() {
    return totalCollected
}

function endFundingTime() {
    return endFundingTime
}

function controller() {
    return controllerAddress
}

function pauseContribution() {
    require controllerAddress == msg.sender
    uint8(stor6.field_160) = 1
}

function resumeContribution() {
    require controllerAddress == msg.sender
    uint8(stor6.field_160) = 0
}

function changeController(address arg1) {
    require controllerAddress == msg.sender
    controllerAddress = arg1
}

function onApprove(address arg1, address arg2, uint256 arg3) {
    if vaultAddress != arg1:
        return 0
    return 1
}

function onTransfer(address arg1, address arg2, uint256 arg3) {
    if vaultAddress != arg1:
        return 0
    return 1
}

function changeTokenController(address arg1) {
    require controllerAddress == msg.sender
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x3cebb823 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function finalizeSale() {
    require controllerAddress == msg.sender
    if block.timestamp <= endFundingTime:
        require totalCollected >= 78125 * 10^14 * 3600
    require not uint8(stor6.field_168)
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x827f32c0 with:
         gas gas_remaining - 710 wei
        args vaultAddress, 21875 * 10^18 * 3600
    require ext_call.success
    require ext_call.return_data[0]
    uint8(stor6.field_168) = 1
}

function claimTokens(address arg1) {
    require controllerAddress == msg.sender
    if not arg1:
        call controllerAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args controllerAddress, ext_call.return_data[0]
        require ext_call.success
        emit ClaimedTokens(ext_call.return_data[0], arg1, controllerAddress);
}

function _fallback() payable {
    require not uint8(stor6.field_160)
    require block.gasprice <= 5 * 10^10
    if msg.sender:
        require ext_code.size(msg.sender) <= 0
    require lastCallBlock[address(msg.sender)] <= block.number
    require block.number - lastCallBlock[address(msg.sender)] >= 100
    lastCallBlock[address(msg.sender)] = block.number
    if controllerAddress != msg.sender:
        require startFundingTime <= block.timestamp
    require endFundingTime > block.timestamp
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xf77c4791 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20]
    require msg.value > 0
    require msg.value + totalCollected >= totalCollected
    require msg.value + totalCollected <= 78125 * 10^14 * 3600
    require msg.value + totalCollected >= totalCollected
    totalCollected += msg.value
    call vaultAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require 1200 * msg.value / 1200 == msg.value
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x827f32c0 with:
         gas gas_remaining - 710 wei
        args msg.sender, 1200 * msg.value
    require ext_call.success
    require ext_call.return_data[0]
}

function proxyPayment(address arg1) payable {
    require not uint8(stor6.field_160)
    require block.gasprice <= 5 * 10^10
    if msg.sender:
        require ext_code.size(msg.sender) <= 0
    require lastCallBlock[address(msg.sender)] <= block.number
    require block.number - lastCallBlock[address(msg.sender)] >= 100
    lastCallBlock[address(msg.sender)] = block.number
    if controllerAddress != msg.sender:
        require startFundingTime <= block.timestamp
    require endFundingTime > block.timestamp
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xf77c4791 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20]
    require msg.value > 0
    require msg.value + totalCollected >= totalCollected
    require msg.value + totalCollected <= 78125 * 10^14 * 3600
    require msg.value + totalCollected >= totalCollected
    totalCollected += msg.value
    call vaultAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require 1200 * msg.value / 1200 == msg.value
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x827f32c0 with:
         gas gas_remaining - 710 wei
        args address(arg1), 1200 * msg.value
    require ext_call.success
    require ext_call.return_data[0]
    return 1
}



}
