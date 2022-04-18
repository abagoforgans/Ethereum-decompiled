contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
mapping of uint256 stor2;
array of uint256 stor3;
mapping of uint256 stor4;
address stor5;
uint8 stor7; offset 160

function _fallback() payable {
    create contract with 0 wei
                    code: code.data[3790 len 3403]
    require create.new_address
    stor5 = address(create.new_address)
    stor7 = 1
    require not msg.value
    stor0 = msg.sender
    stor1.length = 2
    if not stor1.length <= 2:
        idx = 2
        while stor1.length > idx:
            stor1[idx].field_0 = 0
            idx = idx + 1
            continue 
    require 1 < stor1.length
    address(stor1.field_256) = msg.sender
    stor2[address(msg.sender)] = 1
    stor3.length = 2
    if not stor3.length <= 2:
        idx = 2
        while stor3.length > idx:
            stor3[idx].field_0 = 0
            idx = idx + 1
            continue 
    require 1 < stor3.length
    address(stor3.field_256) = msg.sender
    stor4[address(msg.sender)] = 1
    return code.data[457 len 3333]
}



// =====================  Runtime code  =====================


address owner;
array of address authorizers;
mapping of uint256 stor2;
array of address investors;
mapping of uint256 stor4;
address tokenAddress;
address multisigVaultAddress;
uint8 stor7; offset 160
address exchangeRateAddress;

function authorizers(uint256 arg1) {
    require arg1 < authorizers.length
    return address(authorizers[arg1])
}

function exchangeRate() {
    return exchangeRateAddress
}

function investors(uint256 arg1) {
    require arg1 < investors.length
    return address(investors[arg1])
}

function presaleActive() {
    return bool(stor7)
}

function owner() {
    return owner
}

function multisigVault() {
    return multisigVaultAddress
}

function token() {
    return tokenAddress
}

function isAuthorized(address arg1) {
    return (stor2[address(arg1)] > 0)
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

function finishPresale() {
    require owner == msg.sender
    stor7 = 0
    emit PresaleFinished()
    return 1
}

function restartPresale() {
    require owner == msg.sender
    stor7 = 1
    emit PresaleReStarted()
    return 1
}

function setMultisigVault(address arg1) {
    require owner == msg.sender
    if arg1:
        multisigVaultAddress = arg1
}

function transferToken() {
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args owner
    require ext_call.success
}

function retrieveTokens(address arg1) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args multisigVaultAddress, ext_call.return_data[0]
    require ext_call.success
}

function addAuthorized(address arg1) {
    require stor2[address(msg.sender)] > 0
    stor2[address(arg1)] = authorizers.length
    authorizers.length++
    if not authorizers.length <= authorizers.length + 1:
        idx = authorizers.length + 1
        while authorizers.length > idx:
            uint256(authorizers[idx]) = 0
            idx = idx + 1
            continue 
    require authorizers.length - 1 < authorizers.length
    address(authorizers[authorizers.length]) = arg1
}

function addInvestor(address arg1) {
    if stor4[address(arg1)] <= 0:
        stor4[address(arg1)] = investors.length
        investors.length++
        if not investors.length <= investors.length + 1:
            idx = investors.length + 1
            while investors.length > idx:
                uint256(investors[idx]) = 0
                idx = idx + 1
                continue 
        require investors.length - 1 < investors.length
        address(investors[investors.length]) = arg1
}

function authorizedCreateTokens(address arg1, uint256 arg2) {
    require stor2[address(msg.sender)] > 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    if stor4[address(arg1)] <= 0:
        stor4[address(arg1)] = investors.length
        investors.length++
        if not investors.length <= investors.length + 1:
            idx = investors.length + 1
            while investors.length > idx:
                uint256(investors[idx]) = 0
                idx = idx + 1
                continue 
        require investors.length - 1 < investors.length
        address(investors[investors.length]) = arg1
    emit AuthorizedCreate(address(arg1), arg2);
}

function createTokens(address arg1) payable {
    require stor7
    require ext_code.size(exchangeRateAddress)
    call exchangeRateAddress.getRate(string rg1) with:
         gas gas_remaining - 710 wei
        args Array(len=13, data='EinsteinToUSD')
    require ext_call.success
    if ext_call.return_data[0]:
        require ext_call.return_data[0]
        require msg.value * ext_call.return_data[0] / ext_call.return_data[0] == msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), msg.value * ext_call.return_data[0] / 34
    require ext_call.success
    if stor4[address(arg1)] <= 0:
        stor4[address(arg1)] = investors.length
        investors.length++
        if not investors.length <= investors.length + 1:
            idx = investors.length + 1
            while investors.length > idx:
                uint256(investors[idx]) = 0
                idx = idx + 1
                continue 
        require investors.length - 1 < investors.length
        address(investors[investors.length]) = arg1
    call multisigVaultAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit TokenSold(address(arg1), msg.value, msg.value * ext_call.return_data[0] / 34, ext_call.return_data[0] / 1000);
}

function _fallback() payable {
    require stor7
    require ext_code.size(exchangeRateAddress)
    call exchangeRateAddress.getRate(string rg1) with:
         gas gas_remaining - 710 wei
        args Array(len=13, data='EinsteinToUSD')
    require ext_call.success
    if ext_call.return_data[0]:
        require ext_call.return_data[0]
        require msg.value * ext_call.return_data[0] / ext_call.return_data[0] == msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value * ext_call.return_data[0] / 34
    require ext_call.success
    if stor4[address(msg.sender)] <= 0:
        stor4[address(msg.sender)] = investors.length
        investors.length++
        if not investors.length <= investors.length + 1:
            idx = investors.length + 1
            while investors.length > idx:
                uint256(investors[idx]) = 0
                idx = idx + 1
                continue 
        require investors.length - 1 < investors.length
        address(investors[investors.length]) = msg.sender
    call multisigVaultAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit TokenSold(address(msg.sender), msg.value, msg.value * ext_call.return_data[0] / 34, ext_call.return_data[0] / 1000);
}



}
