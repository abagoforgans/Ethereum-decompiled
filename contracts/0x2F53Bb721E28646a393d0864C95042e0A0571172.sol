contract main {


// =======================  Init code  ======================


address stor0;
address stor2;
address stor3;
uint256 stor5;
uint256 stor6;
uint256 stor7;
address stor9;
address stor10;

function _fallback() {
    stor0 = msg.sender
    stor2 = code.data[3064 len 20]
    stor3 = code.data[3096 len 20]
    require code.data[3148 len 32] > block.timestamp
    require code.data[3148 len 32] > code.data[3116 len 32]
    require code.data[3180 len 32] <= 1000000 * 10^18
    require code.data[3224 len 20]
    stor5 = code.data[3116 len 32]
    stor6 = code.data[3148 len 32]
    stor7 = code.data[3180 len 32]
    stor9 = code.data[3256 len 20]
    stor10 = code.data[3224 len 20]
    return code.data[284 len 2768]
}



// =====================  Runtime code  =====================


const onTransfer(address arg1, address arg2, uint256 arg3) = 1

const onApprove(address arg1, address arg2, uint256 arg3) = 1


address owner;
address newOwnerCandidate;
address escapeHatchCallerAddress;
address escapeHatchDestinationAddress;
mapping of uint8 stor4;
uint256 startFundingTime;
uint256 endFundingTime;
uint256 maximumFunding;
uint256 totalCollected;
address tokenContractAddress;
address vaultAddress;

function escapeHatchCaller() {
    return escapeHatchCallerAddress
}

function vaultAddress() {
    return vaultAddress
}

function tokenContract() {
    return tokenContractAddress
}

function owner() {
    return owner
}

function maximumFunding() {
    return maximumFunding
}

function startFundingTime() {
    return startFundingTime
}

function newOwnerCandidate() {
    return newOwnerCandidate
}

function totalCollected() {
    return totalCollected
}

function endFundingTime() {
    return endFundingTime
}

function escapeHatchDestination() {
    return escapeHatchDestinationAddress
}

function isTokenEscapable(address arg1) {
    return not bool(stor4[address(arg1)])
}

function setVault(address arg1) {
    require owner == msg.sender
    vaultAddress = arg1
}

function proposeOwnership(address arg1) {
    require owner == msg.sender
    newOwnerCandidate = arg1
    emit OwnershipRequested(msg.sender, arg1);
}

function removeOwnership(uint256 arg1) {
    require owner == msg.sender
    require arg1 == 3500
    owner = 0
    newOwnerCandidate = 0
    emit OwnershipRemoved()
}

function changeHatchEscapeCaller(address arg1) {
    if escapeHatchCallerAddress != msg.sender:
        require owner == msg.sender
    escapeHatchCallerAddress = arg1
}

function changeOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
    newOwnerCandidate = 0
    emit OwnershipTransferred(owner, arg1);
}

function acceptOwnership() {
    require newOwnerCandidate == msg.sender
    owner = newOwnerCandidate
    newOwnerCandidate = 0
    emit OwnershipTransferred(owner, newOwnerCandidate);
}

function finalizeFunding() {
    require block.timestamp >= endFundingTime
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x3cebb823 with:
         gas gas_remaining - 710 wei
        args 0
    require ext_call.success
}

function _fallback() payable {
    require block.timestamp >= startFundingTime
    require block.timestamp <= endFundingTime
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xf77c4791 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20]
    require msg.value
    require msg.value + totalCollected <= maximumFunding
    totalCollected += msg.value
    call vaultAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x827f32c0 with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value
    require ext_call.success
    require ext_call.return_data[0]
}

function proxyPayment(address arg1) payable {
    require block.timestamp >= startFundingTime
    require block.timestamp <= endFundingTime
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xf77c4791 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20]
    require msg.value
    require msg.value + totalCollected <= maximumFunding
    totalCollected += msg.value
    call vaultAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x827f32c0 with:
         gas gas_remaining - 710 wei
        args address(arg1), msg.value
    require ext_call.success
    require ext_call.return_data[0]
    return 1
}

function escapeHatch(address arg1) {
    if escapeHatchCallerAddress != msg.sender:
        require owner == msg.sender
    require not stor4[address(arg1)]
    if not arg1:
        call escapeHatchDestinationAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit EscapeHatchCalled(address(arg1), eth.balance(this.address));
    else:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args escapeHatchDestinationAddress, ext_call.return_data[0]
        require ext_call.success
        emit EscapeHatchCalled(address(arg1), ext_call.return_data[0]);
}



}
