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
    require code.data[2188 len 32] >= block.timestamp
    require code.data[2188 len 32] > code.data[2156 len 32]
    require code.data[2220 len 32] <= 10000 * 10^18
    require code.data[2264 len 20]
    stor1 = code.data[2156 len 32]
    stor2 = code.data[2188 len 32]
    stor3 = code.data[2220 len 32]
    stor5 = code.data[2296 len 20]
    stor6 = code.data[2264 len 20]
    return code.data[250 len 1906]
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
uint8 stor6; offset 160
address vaultAddress;

function vaultAddress() {
    return vaultAddress
}

function tokenContract() {
    return tokenContractAddress
}

function getOwner() {
    require msg.value <= 0
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

function sealed() {
    return bool(stor6)
}

function seal() {
    require not stor6
    stor6 = 1
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

function fill(uint256[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    require not stor6
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _14 = mem[(32 * idx) + 128]
        require idx + 1 < arg1.length
        _16 = mem[(32 * idx + 1) + 128]
        mem[(32 * arg1.length) + 132] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg1.length) + 164] = _16
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.generateTokens(address rg1, uint256 rg2) with:
             gas gas_remaining - 50 wei
            args mem[(32 * arg1.length) + 132], _16
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
        totalCollected += _16
        s = _16
        s = _14
        idx = idx + 2
        continue 
}



}
