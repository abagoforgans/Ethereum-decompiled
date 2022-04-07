contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
uint256 stor1;
uint256 stor7;

function _fallback() payable {
    uint8(stor0.field_160) = 0
    stor1 = 0
    stor7 = 125 * 10^18
    address(stor0.field_0) = msg.sender
    return code.data[81 len 3344]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
uint256 totalSupply;
mapping of uint256 balanceOf;
array of address stor3;
address exchangeRateAddress;
mapping of uint256 sub_0fff4474;
address multisigVaultAddress;
uint256 sub_f2d58790;
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

function sub_f2d58790(?) {
    return sub_f2d58790
}

function sub_12ba9d89(?) {
    require owner == msg.sender
    sub_f2d58790 = arg1
}

function sub_9c096411(?) {
    require owner == msg.sender
    sub_0fff4474[address(arg1)] = arg2
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

function sub_332fd111(?) {
    require owner == msg.sender
    if arg1:
        mainSaleAddress = arg1
        require ext_code.size(arg1)
        call arg1.token() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        uint256(stor9) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor9))
}

function finishPreSale() {
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
    if not sub_0fff4474[address(arg1)]:
        require msg.value >= sub_f2d58790
    require ext_code.size(exchangeRateAddress)
    call exchangeRateAddress.0x6c0daed8 with:
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
    if not sub_0fff4474[address(msg.sender)]:
        require msg.value >= sub_f2d58790
    require ext_code.size(exchangeRateAddress)
    call exchangeRateAddress.0x6c0daed8 with:
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
