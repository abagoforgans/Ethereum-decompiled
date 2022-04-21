contract main {


// =======================  Init code  ======================


uint8 stor0;
address stor0; offset 8
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint8 stor5;
uint128 stor5; offset 184
uint128 stor5; offset 176
uint128 stor5; offset 168
address stor6;

function _fallback() payable {
    uint8(stor0.field_0) = 0
    stor3 = 22200
    stor4 = 0
    Mask(88, 0, stor5.field_168) = 0
    Mask(80, 0, stor5.field_176) = 1
    Mask(72, 0, stor5.field_184) = 0
    require not msg.value
    require not uint8(stor0.field_0)
    address(stor0.field_8) = msg.sender
    uint8(stor0.field_0) = 1
    require code.data[5409 len 32] > block.timestamp
    require code.data[5409 len 32] >= code.data[5377 len 32]
    require code.data[5453 len 20]
    require code.data[5485 len 20]
    stor1 = code.data[5377 len 32]
    stor2 = code.data[5409 len 32]
    stor6 = code.data[5453 len 20]
    uint8(stor5.field_0) = 0
    return code.data[536 len 4841]
}



// =====================  Runtime code  =====================


const maxGasPrice = 5 * 10^10

const maximumFunding = 20000 * 10^18


address stor0;
address controllerAddress; offset 8
uint256 startFundingTime;
uint256 endFundingTime;
uint256 tokensPerEther;
uint256 totalCollected;
uint8 paused;
uint8 finalized; offset 168
uint8 allowChange; offset 176
uint8 stor5; offset 184
uint128 stor5; offset 184
uint128 stor5; offset 176
uint128 stor5; offset 168
address tokenContractAddress; offset 8
address stor6;

function tokenContract() {
    return tokenContractAddress
}

function paused() {
    return bool(paused)
}

function finalized() {
    return bool(finalized)
}

function startFundingTime() {
    return startFundingTime
}

function allowChange() {
    return bool(allowChange)
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

function tokensPerEther() {
    return tokensPerEther
}

function pauseContribution() {
    require msg.sender == controllerAddress
    paused = 1
}

function resumeContribution() {
    require msg.sender == controllerAddress
    paused = 0
}

function changeController(address arg1) {
    require msg.sender == controllerAddress
    controllerAddress = arg1
}

function onApprove(address arg1, address arg2, uint256 arg3) {
    if arg1 != stor6:
        return 0
    return 1
}

function changeTokensPerEther(uint256 arg1) {
    require msg.sender == controllerAddress
    require allowChange
    tokensPerEther = arg1
}

function allowTransfersEnabled(bool arg1) {
    require msg.sender == controllerAddress
    Mask(72, 0, stor5.field_184) = Mask(72, 0, arg1)
}

function onTransfer(address arg1, address arg2, uint256 arg3) {
    if arg1 != stor6:
        if not uint8(stor5.field_184):
            return 0
    return 1
}

function setTime(uint256 arg1, uint256 arg2) {
    require msg.sender == controllerAddress
    require endFundingTime > block.timestamp
    require startFundingTime < endFundingTime
    startFundingTime = arg1
    endFundingTime = arg2
}

function changeTokenController(address arg1) {
    require msg.sender == controllerAddress
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x3cebb823 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function finalizeSale() {
    require msg.sender == controllerAddress
    if block.timestamp <= endFundingTime:
        require totalCollected >= 20000 * 10^18
    require not finalized
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.generateTokens(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args stor6, 21875 * 10^18 * 3600
    require ext_call.success
    require ext_call.return_data[0]
    Mask(88, 0, stor5.field_168) = 1
    Mask(80, 0, stor5.field_176) = 0
}

function _fallback() payable {
    require not paused
    require block.gasprice <= 5 * 10^10
    require msg.value >= 10^15
    require msg.value <= 10^16
    require endFundingTime > block.timestamp
    require totalCollected < 20000 * 10^18
    require totalCollected + msg.value >= totalCollected
    totalCollected += msg.value
    call stor6 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if not tokensPerEther:
    require tokensPerEther
    require tokensPerEther * msg.value / tokensPerEther == msg.value
}

function proxyPayment(address arg1) payable {
    require not paused
    require block.gasprice <= 5 * 10^10
    require msg.value >= 10^15
    require msg.value <= 10^16
    require endFundingTime > block.timestamp
    require totalCollected < 20000 * 10^18
    require totalCollected + msg.value >= totalCollected
    totalCollected += msg.value
    call stor6 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if not tokensPerEther:
        return 1
    require tokensPerEther
    require tokensPerEther * msg.value / tokensPerEther == msg.value
    return 1
}

function claimTokens(address arg1) {
    require msg.sender == controllerAddress
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
            args stor0, ext_call.return_data[0]
        require ext_call.success
        emit ClaimedTokens(ext_call.return_data[0], arg1, controllerAddress);
}



}
