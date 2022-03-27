contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
address stor5;
address stor6;

function _fallback() {
    stor0 = msg.sender
    require code.data[1726 len 32] >= block.timestamp
    require code.data[1726 len 32] > code.data[1694 len 32]
    require code.data[1758 len 32] <= 10000 * 10^18
    require code.data[1802 len 20]
    stor1 = code.data[1694 len 32]
    stor2 = code.data[1726 len 32]
    stor3 = code.data[1758 len 32]
    stor5 = code.data[1834 len 20]
    stor6 = code.data[1802 len 20]
    return code.data[230 len 1464]
}



// =====================  Runtime code  =====================


const onTransfer(address arg1, address arg2, uint256 arg3) = 1

const onApprove(address arg1, address arg2, uint256 arg3) = 1


address owner;
uint256 startFundingTime;
uint256 endFundingTime;
uint256 maximumFunding;
uint256 totalCollected;
address tokenContractAddress;
address vaultAddress;

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

function totalCollected() {
    return totalCollected
}

function endFundingTime() {
    return endFundingTime
}

function changeOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function setVault(address arg1) {
    require owner == msg.sender
    vaultAddress = arg1
}

function finalizeFunding() {
    require block.timestamp >= endFundingTime
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.changeController(address rg1) with:
         gas gas_remaining - 50 wei
        args 0
    require ext_call.success
}

function _fallback() payable {
    require block.timestamp >= startFundingTime
    require block.timestamp <= endFundingTime
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.controller() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[12 len 20]
    require msg.value
    require totalCollected + msg.value <= maximumFunding
    totalCollected += msg.value
    call vaultAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.generateTokens(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args msg.sender, msg.value
    require ext_call.success
    require ext_call.return_data[0]
}

function proxyPayment(address arg1) payable {
    require block.timestamp >= startFundingTime
    require block.timestamp <= endFundingTime
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.controller() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_call.return_data[12 len 20]
    require msg.value
    require totalCollected + msg.value <= maximumFunding
    totalCollected += msg.value
    call vaultAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.generateTokens(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args address(arg1), msg.value
    require ext_call.success
    require ext_call.return_data[0]
    return 1
}



}
