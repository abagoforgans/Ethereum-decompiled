contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
mapping of uint256 stor2;
address stor3;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
address stor11;
address stor12;
address stor13;

function _fallback() payable {
    create contract with 0 wei
                    code: code.data[4572 len 3261]
    require create.new_address
    stor3 = address(create.new_address)
    stor5 = 87500 * 10^18
    stor6 = 10^6 * 3600
    stor7 = 21 * 10^14
    stor8 = 21 * 10^13
    stor9 = 0
    stor10 = 417784 * 3600
    stor11 = 0x35f52c7b3435eb75e63aa98dedc0b55634581ce5
    stor12 = 0xce92b261dd15524631c3d04fea1a0c3cce857d5d
    stor13 = 0x680e0efdab2671a836083620626bd7f97f29bde4
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
    return code.data[451 len 4121]
}



// =====================  Runtime code  =====================


address owner;
array of struct authorizer;
mapping of uint256 stor2;
address tokenAddress;
address multisigVaultAddress;
uint256 hardcap;
uint256 rate;
uint256 stor7;
uint256 authorizeMintToken;
uint256 altDeposits;
uint256 start;
address stor11;
address stor12;
address stor13;

function rate() {
    return rate
}

function getAuthorizer(uint256 arg1) {
    require arg1 + 1 < authorizer.length
    return authorizer[arg1].field_256
}

function altDeposits() {
    return altDeposits
}

function owner() {
    return owner
}

function hardcap() {
    return hardcap
}

function authorizeMintToken() {
    return authorizeMintToken
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

function setRate(uint256 arg1) {
    require owner == msg.sender
    rate = arg1
}

function setStart(uint256 arg1) {
    require owner == msg.sender
    start = arg1
}

function setHardCap(uint256 arg1) {
    require owner == msg.sender
    hardcap = arg1
}

function setAltDeposit(uint256 arg1) {
    require owner == msg.sender
    altDeposits = arg1
}

function setAuthorizeMintToken(uint256 arg1) {
    require owner == msg.sender
    authorizeMintToken = arg1
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

function authorizedCreateTokens(address arg1, uint256 arg2) {
    require stor2[address(msg.sender)] > 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] + (10^6 * arg2) <= authorizeMintToken
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), 10^6 * arg2
    require ext_call.success
    emit AuthorizedCreate(address(arg1), 10^6 * arg2);
}

function createTokens(address arg1) payable {
    require altDeposits + msg.value + eth.balance(multisigVaultAddress) <= hardcap
    require block.timestamp > start
    require block.timestamp < start + (672 * 24 * 3600)
    if arg1:
        require ext_code.size(arg1) <= 0
    if rate:
        require rate
        require msg.value * rate / rate == msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), msg.value * rate / 10^18
    require ext_call.success
    call multisigVaultAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    emit TokenSold(address(arg1), msg.value, msg.value * rate / 10^18, rate);
}

function _fallback() payable {
    require altDeposits + msg.value + eth.balance(multisigVaultAddress) <= hardcap
    require block.timestamp > start
    require block.timestamp < start + (672 * 24 * 3600)
    if msg.sender:
        require ext_code.size(msg.sender) <= 0
    if rate:
        require rate
        require msg.value * rate / rate == msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value * rate / 10^18
    require ext_call.success
    call multisigVaultAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    emit TokenSold(address(msg.sender), msg.value, msg.value * rate / 10^18, rate);
}

function finishMinting() {
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if stor7:
        require stor7
        require 20 * stor7 / stor7 == 20
    if stor7:
        require stor7
        require 30 * stor7 / stor7 == 30
    if stor7:
        require stor7
        require 20 * stor7 / stor7 == 20
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args stor11, 20 * stor7 / 100
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args stor13, 30 * stor7 / 100
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args stor12, 20 * stor7 / 100
    require ext_call.success
    require ext_call.return_data[0] <= stor7
    require 20 * stor7 / 100 <= stor7 - ext_call.return_data[0]
    require 30 * stor7 / 100 <= stor7 - ext_call.return_data[0] - (20 * stor7 / 100)
    require 20 * stor7 / 100 <= stor7 - ext_call.return_data[0] - (20 * stor7 / 100) - (30 * stor7 / 100)
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args multisigVaultAddress, stor7 - ext_call.return_data[0] - (2 * 20 * stor7 / 100) - (30 * stor7 / 100)
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
    emit TopCoinSaleClosed()
}



}
