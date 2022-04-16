contract main {


// =======================  Init code  ======================


uint8 stor0; offset 168
address stor0;
address stor1;
address stor2;
address stor3;

function _fallback() payable {
    uint8(stor0.field_168) = 0
    require not msg.value
    address(stor0.field_0) = msg.sender
    stor1 = code.data[5596 len 20]
    stor2 = code.data[5628 len 20]
    stor3 = code.data[5660 len 20]
    return code.data[178 len 5406]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint8 stor0; offset 168
uint8 stor0; offset 176
address owner;
address tokenAddress;
address ledgerAddress;
address crowdsaleAddress;
uint256 vestingAmount;
uint256 vestingPaid;
uint256 vestingStart;
uint256 vestingDuration;

function vestingAmount() {
    return vestingAmount
}

function vestingDuration() {
    return vestingDuration
}

function initialized() {
    return bool(uint8(stor0.field_176))
}

function vestingStart() {
    return vestingStart
}

function ledger() {
    return ledgerAddress
}

function paused() {
    return bool(uint8(stor0.field_168))
}

function vestingPaid() {
    return vestingPaid
}

function owner() {
    return owner
}

function crowdsale() {
    return crowdsaleAddress
}

function contractFinalized() {
    return bool(uint8(stor0.field_160))
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function finalizeContract() {
    require owner == msg.sender
    uint8(stor0.field_160) = 1
}

function setToken(address arg1) {
    require owner == msg.sender
    require not uint8(stor0.field_160)
    tokenAddress = arg1
}

function setLedger(address arg1) {
    require owner == msg.sender
    require not uint8(stor0.field_160)
    ledgerAddress = arg1
}

function setCrowdsale(address arg1) {
    require owner == msg.sender
    require not uint8(stor0.field_160)
    crowdsaleAddress = arg1
}

function unpause() {
    require owner == msg.sender
    require uint8(stor0.field_168)
    uint8(stor0.field_168) = 0
    emit Unpause()
}

function pause() {
    require owner == msg.sender
    require not uint8(stor0.field_168)
    uint8(stor0.field_168) = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function startVesting(uint256 arg1, uint256 arg2) {
    require crowdsaleAddress == msg.sender
    require not vestingAmount
    vestingAmount = arg1
    vestingPaid = 0
    vestingStart = block.timestamp
    vestingDuration = arg2
}

function totalSupply() {
    require tokenAddress == msg.sender
    require ext_code.size(ledgerAddress)
    call ledgerAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function allowance(address arg1, address arg2) {
    require tokenAddress == msg.sender
    require ext_code.size(ledgerAddress)
    call ledgerAddress.0xdd62ed3e with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    return ext_call.return_data[0]
}

function balanceOf(address arg1) {
    if tokenAddress != msg.sender:
        require crowdsaleAddress == msg.sender
    require ext_code.size(ledgerAddress)
    call ledgerAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function burn(address arg1, uint256 arg2) {
    require tokenAddress == msg.sender
    require not uint8(stor0.field_168)
    require ext_code.size(ledgerAddress)
    call ledgerAddress.0x9dc29fac with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function approve(address arg1, address arg2, uint256 arg3) {
    require tokenAddress == msg.sender
    require msg.sender != 0x2d354bd67707223c9ac0232cd0e54f22b03483cf
    require not uint8(stor0.field_168)
    require ext_code.size(ledgerAddress)
    call ledgerAddress.0xe1f21c67 with:
         gas gas_remaining - 710 wei
        args address(arg1), address(arg2), arg3
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transfer(address arg1, address arg2, uint256 arg3) {
    require tokenAddress == msg.sender
    require msg.sender != 0x2d354bd67707223c9ac0232cd0e54f22b03483cf
    require not uint8(stor0.field_168)
    require ext_code.size(ledgerAddress)
    call ledgerAddress.0xbeabacc8 with:
         gas gas_remaining - 710 wei
        args address(arg1), address(arg2), arg3
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transferFrom(address arg1, address arg2, address arg3, uint256 arg4) {
    require tokenAddress == msg.sender
    require msg.sender != 0x2d354bd67707223c9ac0232cd0e54f22b03483cf
    require not uint8(stor0.field_168)
    require ext_code.size(ledgerAddress)
    call ledgerAddress.0x15dacbea with:
         gas gas_remaining - 710 wei
        args 0, 0, address(arg2), address(arg3), arg4
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transferWithEvent(address arg1, address arg2, uint256 arg3) {
    require crowdsaleAddress == msg.sender
    require ext_code.size(ledgerAddress)
    call ledgerAddress.0xbeabacc8 with:
         gas gas_remaining - 710 wei
        args address(arg1), address(arg2), arg3
    require ext_call.success
    if ext_call.return_data[0]:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x9b504387 with:
             gas gas_remaining - 710 wei
            args msg.sender, address(arg2), arg3
        require ext_call.success
    return bool(ext_call.return_data[0])
}

function init() {
    require owner == msg.sender
    require not uint8(stor0.field_176)
    require ext_code.size(ledgerAddress)
    call ledgerAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args 0x30b002d3afcb7f9382394f7c803fafbb500872d8, 25 * 10^13 * 3600
    require ext_call.success
    if ext_call.return_data[0]:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x9b504387 with:
             gas gas_remaining - 710 wei
            args 0, 0x30b002d3afcb7f9382394f7c803fafbb500872d8, 25 * 10^13 * 3600
        require ext_call.success
    require ext_code.size(ledgerAddress)
    call ledgerAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args 0x28e1ce69e379b1678278640c7387ecc40daa895, 25 * 10^12 * 3600
    require ext_call.success
    if ext_call.return_data[0]:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x9b504387 with:
             gas gas_remaining - 710 wei
            args 0, 0x28e1ce69e379b1678278640c7387ecc40daa895, 25 * 10^12 * 3600
        require ext_call.success
    require ext_code.size(ledgerAddress)
    call ledgerAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args 0xee4284f98d0568c7f65688f18a2f74354e17b31a, 10^16
    require ext_call.success
    if ext_call.return_data[0]:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x9b504387 with:
             gas gas_remaining - 710 wei
            args 0, 0xee4284f98d0568c7f65688f18a2f74354e17b31a, 10^16
        require ext_call.success
    uint8(stor0.field_176) = 1
}

function withdrawVested(address arg1) {
    require 0x2d354bd67707223c9ac0232cd0e54f22b03483cf == msg.sender
    require vestingAmount > 0
    require vestingStart <= block.timestamp
    require vestingDuration
    if vestingAmount / vestingDuration:
        require vestingAmount / vestingDuration
        require (block.timestamp * vestingAmount / vestingDuration) - (vestingStart * vestingAmount / vestingDuration) / vestingAmount / vestingDuration == block.timestamp - vestingStart
    if (block.timestamp * vestingAmount / vestingDuration) - (vestingStart * vestingAmount / vestingDuration) <= vestingAmount:
        if (block.timestamp * vestingAmount / vestingDuration) - (vestingStart * vestingAmount / vestingDuration) <= vestingPaid:
            return 0
        require vestingPaid <= (block.timestamp * vestingAmount / vestingDuration) - (vestingStart * vestingAmount / vestingDuration)
        require (block.timestamp * vestingAmount / vestingDuration) - (vestingStart * vestingAmount / vestingDuration) >= vestingPaid
        vestingPaid = (block.timestamp * vestingAmount / vestingDuration) - (vestingStart * vestingAmount / vestingDuration)
        require ext_code.size(ledgerAddress)
        call ledgerAddress.0xbeabacc8 with:
             gas gas_remaining - 710 wei
            args 0x2d354bd67707223c9ac0232cd0e54f22b03483cf, address(arg1), (block.timestamp * vestingAmount / vestingDuration) - (vestingStart * vestingAmount / vestingDuration) - vestingPaid
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.0x9b504387 with:
             gas gas_remaining - 710 wei
            args 0x2d354bd67707223c9ac0232cd0e54f22b03483cf, address(arg1), (block.timestamp * vestingAmount / vestingDuration) - (vestingStart * vestingAmount / vestingDuration) - vestingPaid
        require ext_call.success
        return ((block.timestamp * vestingAmount / vestingDuration) - (vestingStart * vestingAmount / vestingDuration) - vestingPaid)
    if vestingAmount <= vestingPaid:
        return 0
    require vestingPaid <= vestingAmount
    require vestingAmount >= vestingPaid
    vestingPaid = vestingAmount
    require ext_code.size(ledgerAddress)
    call ledgerAddress.0xbeabacc8 with:
         gas gas_remaining - 710 wei
        args 0x2d354bd67707223c9ac0232cd0e54f22b03483cf, address(arg1), vestingAmount - vestingPaid
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x9b504387 with:
         gas gas_remaining - 710 wei
        args 0x2d354bd67707223c9ac0232cd0e54f22b03483cf, address(arg1), vestingAmount - vestingPaid
    require ext_call.success
    return (vestingAmount - vestingPaid)
}



}
