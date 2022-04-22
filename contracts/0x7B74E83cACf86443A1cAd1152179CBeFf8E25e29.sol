contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
array of uint256 stor2;
uint256 stor3;
uint8 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;

function _fallback() {
    mem[96 len -2653] = code.data[3175 len -2653]
    mem[64] = -2557
    require mem[108 len 20]
    require mem[160] > 0
    stor0 = msg.sender
    stor1 = mem[108 len 20]
    stor2[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor3 = mem[160]
    stor4 = 0
    stor6 = 0
    stor7 = 0
    stor8 = 0
    stor5 = block.timestamp
    return code.data[522 len 2653]
}



// =====================  Runtime code  =====================


address owner;
address receiverAddress;
array of uint256 cause;
uint256 expirationInSeconds;
uint8 stor4;
uint256 timeStarted;
uint256 minimumAmountRequired;
uint256 numPayments;
uint256 totalAmountRaised;
mapping of uint256 stor9;

function numPayments() {
    return numPayments
}

function totalAmountRaised() {
    return totalAmountRaised
}

function minimumAmountRequired() {
    return minimumAmountRequired
}

function expirationInSeconds() {
    return expirationInSeconds
}

function timeStarted() {
    return timeStarted
}

function cause() {
    return cause[0 len cause.length]
}

function owner() {
    return owner
}

function receiver() {
    return receiverAddress
}

function hasBeenClaimed() {
    return bool(stor4)
}

function _fallback() {
    revert
}

function expirationTimestamp() {
    require timeStarted + expirationInSeconds >= timeStarted
    return (timeStarted + expirationInSeconds)
}

function currentTotalExcess() {
    if totalAmountRaised <= minimumAmountRequired:
        return 0
    return (totalAmountRaised - minimumAmountRequired)
}

function receiverSetAmountRequired(uint256 arg1) {
    require msg.sender == receiverAddress
    require not minimumAmountRequired
    require arg1 > 0
    minimumAmountRequired = arg1
}

function withdraw() {
    require stor9[address(msg.sender)] > 0
    require block.timestamp > timeStarted + expirationInSeconds
    require not stor4
    stor9[address(msg.sender)] = 0
    call msg.sender with:
       value stor9[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function receiverWithdraw() {
    require msg.sender == receiverAddress
    require totalAmountRaised >= minimumAmountRequired
    require eth.balance(this.address) > 0
    require block.timestamp < timeStarted + expirationInSeconds
    require not stor4
    stor4 = 1
    call receiverAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function donate() payable {
    require receiverAddress != msg.sender
    require block.timestamp < timeStarted + expirationInSeconds
    require msg.value > 0
    require minimumAmountRequired
    require not stor4
    require stor9[address(msg.sender)] + msg.value >= stor9[address(msg.sender)]
    require totalAmountRaised + msg.value >= totalAmountRaised
    require numPayments + 1 >= numPayments
    stor9[address(msg.sender)] += msg.value
    totalAmountRaised += msg.value
    numPayments++
}



}
