contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
uint256 stor1;

function _fallback() payable {
    uint8(stor0.field_160) = 0
    stor1 = 0
    address(stor0.field_0) = msg.sender
    return code.data[68 len 3336]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
uint256 totalSupply;
mapping of uint256 balanceOf;
array of address stor3;
address exchangeRateAddress;
mapping of uint256 sub_0fff4474;
mapping of uint8 stor6;
address multisigVaultAddress;
address mainSaleAddress;
address payTokenAddress;
uint256 stor9;

function mintingFinished() {
    return bool(stor0)
}

function sub_0fff4474(?) {
    return sub_0fff4474[arg1]
}

function totalSupply() {
    return totalSupply
}

function exchangeRate() {
    return exchangeRateAddress
}

function mainSale() {
    return mainSaleAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function payToken() {
    return address(payTokenAddress)
}

function multisigVault() {
    return multisigVaultAddress
}

function isVIP(address arg1) {
    return bool(stor6[arg1])
}

function setExchangeRate(address arg1) {
    require owner == msg.sender
    exchangeRateAddress = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function setMultisigVault(address arg1) {
    require owner == msg.sender
    if arg1:
        multisigVaultAddress = arg1
}

function addVIP(address arg1, uint256 arg2) {
    require owner == msg.sender
    stor6[address(arg1)] = 1
    sub_0fff4474[address(arg1)] = arg2
}

function sub_332fd111(?) {
    require owner == msg.sender
    if arg1:
        mainSaleAddress = arg1
        require ext_code.size(arg1)
        call arg1.0xfc0c546a with:
             gas gas_remaining - 710 wei
        require ext_call.success
        uint256(stor9) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor9))
}

function sub_7daca57b(?) {
    require not stor0
    require owner == msg.sender
    require mainSaleAddress
    require address(payTokenAddress)
    stor0 = 1
    emit SaleClosed()
    require ext_code.size(mainSaleAddress)
    call mainSaleAddress.authorizedCreateTokens(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(this.address), totalSupply
    require ext_call.success
}

function disburseTokens() {
    require owner == msg.sender
    require stor0
    s = 0
    while gas_remaining > 100000:
        if stor3.length <= 0:
        require stor3.length - 1 < stor3.length
        require ext_code.size(address(payTokenAddress))
        call address(payTokenAddress).tradingStarted() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[0]
        require stor0
        mem[132] = balanceOf[address(stor3[stor3.length])]
        require ext_code.size(address(payTokenAddress))
        call address(payTokenAddress).0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(stor3[stor3.length]), balanceOf[address(stor3[stor3.length])]
        require ext_call.success
        require balanceOf[address(stor3[stor3.length])] <= totalSupply
        totalSupply -= balanceOf[address(stor3[stor3.length])]
        mem[0] = address(stor3[stor3.length])
        mem[32] = 2
        balanceOf[address(stor3[stor3.length])] = 0
        mem[96] = address(stor3[stor3.length])
        mem[128] = balanceOf[address(stor3[stor3.length])]
        emit 0x2d987294: address(stor3[stor3.length]), balanceOf[address(stor3[stor3.length])]
        stor3.length--
        if not stor3.length <= stor3.length - 1:
            mem[0] = 3
            idx = stor3.length + sha3(3) - 1
            while sha3(3) + stor3.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        s = address(stor3[stor3.length])
        continue 
}

function createTokens(address arg1) payable {
    require multisigVaultAddress
    require exchangeRateAddress
    require stor6[address(arg1)]
    require ext_code.size(exchangeRateAddress)
    call exchangeRateAddress.getRate(string rg1) with:
         gas gas_remaining - 710 wei
        args 'ETH'
    require ext_call.success
    if ext_call.return_data[0]:
        require ext_call.return_data[0]
        require msg.value * ext_call.return_data[0] / ext_call.return_data[0] == msg.value
    if msg.value * ext_call.return_data[0] / 10^18:
        require msg.value * ext_call.return_data[0] / 10^18
        require 1000 * msg.value * ext_call.return_data[0] / 10^18 / msg.value * ext_call.return_data[0] / 10^18 == 1000
    require -sub_0fff4474[address(arg1)] + 1000
    require not stor0
    stor3.length++
    if not stor3.length <= stor3.length + 1:
        idx = stor3.length + 1
        while stor3.length > idx:
            uint256(stor3[idx]) = 0
            idx = idx + 1
            continue 
    address(stor3[stor3.length]) = arg1
    require (1000 * msg.value * ext_call.return_data[0] / 10^18 / -sub_0fff4474[address(arg1)] + 1000) + totalSupply >= totalSupply
    totalSupply += 1000 * msg.value * ext_call.return_data[0] / 10^18 / -sub_0fff4474[address(arg1)] + 1000
    require (1000 * msg.value * ext_call.return_data[0] / 10^18 / -sub_0fff4474[address(arg1)] + 1000) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += 1000 * msg.value * ext_call.return_data[0] / 10^18 / -sub_0fff4474[address(arg1)] + 1000
    call multisigVaultAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit 0x92074c63: arg1, 0, 1000 * msg.value * ext_call.return_data[0] / 10^18 / -sub_0fff4474[address(arg1)] + 1000, sub_0fff4474[address(arg1)], ext_call.return_data[0]
}

function _fallback() payable {
    require multisigVaultAddress
    require exchangeRateAddress
    require stor6[address(msg.sender)]
    require ext_code.size(exchangeRateAddress)
    call exchangeRateAddress.getRate(string rg1) with:
         gas gas_remaining - 710 wei
        args 'ETH'
    require ext_call.success
    if ext_call.return_data[0]:
        require ext_call.return_data[0]
        require msg.value * ext_call.return_data[0] / ext_call.return_data[0] == msg.value
    if msg.value * ext_call.return_data[0] / 10^18:
        require msg.value * ext_call.return_data[0] / 10^18
        require 1000 * msg.value * ext_call.return_data[0] / 10^18 / msg.value * ext_call.return_data[0] / 10^18 == 1000
    require -sub_0fff4474[address(msg.sender)] + 1000
    require not stor0
    stor3.length++
    if not stor3.length <= stor3.length + 1:
        idx = stor3.length + 1
        while stor3.length > idx:
            uint256(stor3[idx]) = 0
            idx = idx + 1
            continue 
    address(stor3[stor3.length]) = msg.sender
    require (1000 * msg.value * ext_call.return_data[0] / 10^18 / -sub_0fff4474[address(msg.sender)] + 1000) + totalSupply >= totalSupply
    totalSupply += 1000 * msg.value * ext_call.return_data[0] / 10^18 / -sub_0fff4474[address(msg.sender)] + 1000
    require (1000 * msg.value * ext_call.return_data[0] / 10^18 / -sub_0fff4474[address(msg.sender)] + 1000) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += 1000 * msg.value * ext_call.return_data[0] / 10^18 / -sub_0fff4474[address(msg.sender)] + 1000
    call multisigVaultAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit 0x92074c63: msg.sender, 0, 1000 * msg.value * ext_call.return_data[0] / 10^18 / -sub_0fff4474[address(msg.sender)] + 1000, sub_0fff4474[address(msg.sender)], ext_call.return_data[0]
}



}
