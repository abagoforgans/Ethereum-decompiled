contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
mapping of uint256 stor2;
address stor3;
uint256 stor5;
uint256 stor7;
uint256 stor8;

function _fallback() payable {
    create contract with 0 wei
                    code: code.data[3707 len 3261]
    require create.new_address
    stor3 = address(create.new_address)
    stor5 = 200000 * 10^18
    stor7 = 0
    stor8 = 417264 * 24 * 3600
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
    return code.data[330 len 3377]
}



// =====================  Runtime code  =====================


address owner;
array of struct authorizer;
mapping of uint256 stor2;
address tokenAddress;
address multisigVaultAddress;
uint256 stor5;
address exchangeRateAddress;
uint256 altDeposits;
uint256 start;

function getAuthorizer(uint256 arg1) {
    require arg1 + 1 < authorizer.length
    return authorizer[arg1].field_256
}

function exchangeRate() {
    return exchangeRateAddress
}

function altDeposits() {
    return altDeposits
}

function owner() {
    return owner
}

function start() {
    return start
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

function setStart(uint256 arg1) {
    require owner == msg.sender
    start = arg1
}

function setHardCap(uint256 arg1) {
    require owner == msg.sender
    stor5 = arg1
}

function setAltDeposit(uint256 arg1) {
    require owner == msg.sender
    altDeposits = arg1
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

function authorizedCreateTokens(address arg1, uint256 arg2) {
    require stor2[address(msg.sender)] > 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    emit AuthorizedCreate(address(arg1), arg2);
}

function retrieveTokens(address arg1) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args multisigVaultAddress, ext_call.return_data[0]
    require ext_call.success
}

function addAuthorized(address arg1) {
    require stor2[address(msg.sender)] > 0
    stor2[address(arg1)] = authorizer.length
    authorizer.length++
    if not authorizer.length <= authorizer.length + 1:
        idx = authorizer.length + 1
        while authorizer.length > idx:
            authorizer[idx].field_0 = 0
            idx = idx + 1
            continue 
    require authorizer.length - 1 < authorizer.length
    authorizer[authorizer.length].field_0 = arg1
}

function finishMinting() {
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0]:
        require ext_call.return_data[0]
        require 49 * ext_call.return_data[0] / ext_call.return_data[0] == 49
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args multisigVaultAddress, 49 * ext_call.return_data[0] / 51
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x7d64bcb4 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args owner
    require ext_call.success
    emit MainSaleClosed()
}

function _fallback() payable {
    require altDeposits + eth.balance(multisigVaultAddress) <= stor5
    require block.timestamp > start
    require block.timestamp < start + (672 * 24 * 3600)
    require ext_code.size(exchangeRateAddress)
    call exchangeRateAddress.0x6c0daed8 with:
         gas gas_remaining - 710 wei
        args Array(len=3, data='ETH')
    require ext_call.success
    if ext_call.return_data[0]:
        require ext_call.return_data[0]
        require msg.value * ext_call.return_data[0] / ext_call.return_data[0] == msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value * ext_call.return_data[0] / 10^18
    require ext_call.success
    call multisigVaultAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    emit TokenSold(address(msg.sender), msg.value, msg.value * ext_call.return_data[0] / 10^18, ext_call.return_data[0]);
}

function createTokens(address arg1) payable {
    require altDeposits + eth.balance(multisigVaultAddress) <= stor5
    require block.timestamp > start
    require block.timestamp < start + (672 * 24 * 3600)
    require ext_code.size(exchangeRateAddress)
    call exchangeRateAddress.0x6c0daed8 with:
         gas gas_remaining - 710 wei
        args Array(len=3, data='ETH')
    require ext_call.success
    if ext_call.return_data[0]:
        require ext_call.return_data[0]
        require msg.value * ext_call.return_data[0] / ext_call.return_data[0] == msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), msg.value * ext_call.return_data[0] / 10^18
    require ext_call.success
    call multisigVaultAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    emit TokenSold(address(arg1), msg.value, msg.value * ext_call.return_data[0] / 10^18, ext_call.return_data[0]);
}



}
