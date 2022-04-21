contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint8 stor8;

function _fallback() payable {
    create contract with 0 wei
                    code: code.data[4136 len 6459]
    require create.new_address
    stor1 = address(create.new_address)
    stor2 = 0x1706024467ef8c9c4648da6fc35f2c995ac79cf6
    stor3 = 0
    stor4 = 250000 * 10^18
    stor5 = 10 * 10^18
    stor6 = 0
    stor7 = 1511178900
    stor8 = 1
    require not msg.value
    stor0 = msg.sender
    require ext_code.size(stor1)
    call stor1.pause() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return code.data[535 len 3601]
}



// =====================  Runtime code  =====================


address owner;
address tokenAddress;
address multisigVaultAddress;
uint256 totalReceived;
uint256 hardcap;
uint256 minimum;
uint256 altDeposits;
uint256 start;
uint8 stor8;

function saleOngoing() {
    return bool(stor8)
}

function altDeposits() {
    return altDeposits
}

function minimum() {
    return minimum
}

function owner() {
    return owner
}

function totalReceived() {
    return totalReceived
}

function hardcap() {
    return hardcap
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

function setStart(uint256 arg1) {
    require msg.sender == owner
    start = arg1
}

function setMinimum(uint256 arg1) {
    require msg.sender == owner
    minimum = arg1
}

function setHardcap(uint256 arg1) {
    require msg.sender == owner
    hardcap = arg1
}

function setSaleOngoing(bool arg1) {
    require msg.sender == owner
    stor8 = uint8(arg1)
}

function setAltDeposits(uint256 arg1) {
    require msg.sender == owner
    altDeposits = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function setMultisigVault(address arg1) {
    require msg.sender == owner
    require arg1
    multisigVaultAddress = arg1
}

function closeSale() {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args owner
    require ext_call.success
    emit MainSaleClosed()
}

function retrieveTokens(address arg1) {
    require msg.sender == owner
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

function _fallback() payable {
    require msg.value >= minimum
    require totalReceived + altDeposits <= hardcap
    require start <= block.timestamp
    require stor8
    require totalReceived + msg.value >= totalReceived
    totalReceived += msg.value
    call multisigVaultAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit TokensPurchased(msg.value, msg.sender);
}

function acceptPayment(address arg1) payable {
    require msg.value >= minimum
    require totalReceived + altDeposits <= hardcap
    require start <= block.timestamp
    require stor8
    require totalReceived + msg.value >= totalReceived
    totalReceived += msg.value
    call multisigVaultAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit TokensPurchased(msg.value, arg1);
}



}
