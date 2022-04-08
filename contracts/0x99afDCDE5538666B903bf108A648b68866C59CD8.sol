contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[49 len 3084]
}



// =====================  Runtime code  =====================


address owner;
uint8 stor1; offset 160
address stor1;
address ledgerAddress;
address tokenAddress;

function ledger() {
    return ledgerAddress
}

function owner() {
    return owner
}

function finalized() {
    return bool(uint8(stor1.field_160))
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function finalize() {
    require owner == msg.sender
    uint8(stor1.field_160) = 1
}

function setToken(address arg1) {
    require owner == msg.sender
    tokenAddress = arg1
}

function setLedger(address arg1) {
    require owner == msg.sender
    ledgerAddress = arg1
}

function changeOwner(address arg1) {
    require owner == msg.sender
    address(stor1.field_0) = arg1
}

function acceptOwnership() {
    if address(stor1.field_0) == msg.sender:
        owner = address(stor1.field_0)
}

function totalSupply() {
    require ext_code.size(ledgerAddress)
    call ledgerAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function burn(address arg1, uint256 arg2) {
    require tokenAddress == msg.sender
    require ext_code.size(ledgerAddress)
    call ledgerAddress.0x9dc29fac with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function balanceOf(address arg1) {
    require tokenAddress == msg.sender
    require ext_code.size(ledgerAddress)
    call ledgerAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg1
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

function approve(address arg1, address arg2, uint256 arg3) {
    require tokenAddress == msg.sender
    require ext_code.size(ledgerAddress)
    call ledgerAddress.0xe1f21c67 with:
         gas gas_remaining - 710 wei
        args address(arg1), address(arg2), arg3
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transfer(address arg1, address arg2, uint256 arg3) {
    require tokenAddress == msg.sender
    require ext_code.size(ledgerAddress)
    call ledgerAddress.0xbeabacc8 with:
         gas gas_remaining - 710 wei
        args address(arg1), address(arg2), arg3
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function increaseApproval(address arg1, address arg2, uint256 arg3) {
    require tokenAddress == msg.sender
    require ext_code.size(ledgerAddress)
    call ledgerAddress.0xbcdd6121 with:
         gas gas_remaining - 710 wei
        args address(arg1), address(arg2), arg3
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function decreaseApproval(address arg1, address arg2, uint256 arg3) {
    require tokenAddress == msg.sender
    require ext_code.size(ledgerAddress)
    call ledgerAddress.0xf019c267 with:
         gas gas_remaining - 710 wei
        args address(arg1), address(arg2), arg3
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transferFrom(address arg1, address arg2, address arg3, uint256 arg4) {
    require tokenAddress == msg.sender
    require ext_code.size(ledgerAddress)
    call ledgerAddress.0x15dacbea with:
         gas gas_remaining - 710 wei
        args 0, 0, address(arg2), address(arg3), arg4
    require ext_call.success
    return bool(ext_call.return_data[0])
}



}
