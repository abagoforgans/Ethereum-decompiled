contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[49 len 5980]
}



// =====================  Runtime code  =====================


const name = 'Justin Test Token 2'

const decimals = 8

const symbol = 'JTT2'


address owner;
uint8 stor1; offset 160
uint8 stor1; offset 168
address stor1;
address controllerAddress;
array of uint256 motd;
address atFundDepositAddress;

function atFundDeposit() {
    return atFundDepositAddress
}

function motd() {
    return motd[0 len motd.length]
}

function paused() {
    return bool(uint8(stor1.field_168))
}

function owner() {
    return owner
}

function finalized() {
    return bool(uint8(stor1.field_160))
}

function controller() {
    return controllerAddress
}

function _fallback() payable {
    revert
}

function pause() {
    require owner == msg.sender
    uint8(stor1.field_168) = 1
}

function unpause() {
    require owner == msg.sender
    uint8(stor1.field_168) = 0
}

function finalize() {
    require owner == msg.sender
    uint8(stor1.field_160) = 1
}

function changeOwner(address arg1) {
    require owner == msg.sender
    address(stor1.field_0) = arg1
}

function setBeneficiary(address arg1) {
    require owner == msg.sender
    atFundDepositAddress = arg1
}

function acceptOwnership() {
    if address(stor1.field_0) == msg.sender:
        owner = address(stor1.field_0)
}

function setController(address arg1) {
    require owner == msg.sender
    require not uint8(stor1.field_160)
    controllerAddress = arg1
}

function controllerApprove(address arg1, address arg2, uint256 arg3) {
    require controllerAddress == msg.sender
    emit 0xef8c5be1: arg3, arg1, arg2
}

function controllerTransfer(address arg1, address arg2, uint256 arg3) {
    require controllerAddress == msg.sender
    emit Transfer(arg3, arg1, arg2);
}

function setMotd(string arg1) {
    require owner == msg.sender
    motd[] = Array(len=arg1.length, data=arg1[all])
    emit Motd(Array(len=arg1.length, data=arg1[all]));
}

function totalSupply() {
    require ext_code.size(controllerAddress)
    call controllerAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function balanceOf(address arg1) {
    require ext_code.size(controllerAddress)
    call controllerAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function allowance(address arg1, address arg2) {
    require ext_code.size(controllerAddress)
    call controllerAddress.0xdd62ed3e with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    return ext_call.return_data[0]
}

function burn(uint256 arg1) {
    require not uint8(stor1.field_168)
    require ext_code.size(controllerAddress)
    call controllerAddress.burn(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1
    require ext_call.success
    emit Transfer(arg1, msg.sender, 0);
}

function claimTokens(address arg1, address arg2) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg2), ext_call.return_data[0]
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function approve(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require not uint8(stor1.field_168)
    require ext_code.size(controllerAddress)
    call controllerAddress.approve(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args msg.sender, address(arg1), arg2
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    emit 0xef8c5be1: arg2, msg.sender, arg1
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require not uint8(stor1.field_168)
    require ext_code.size(controllerAddress)
    call controllerAddress.transfer(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args msg.sender, address(arg1), arg2
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    require not uint8(stor1.field_168)
    require ext_code.size(controllerAddress)
    call controllerAddress.transferFrom(address rg1, address rg2, address rg3, uint256 rg4) with:
         gas gas_remaining - 710 wei
        args 0, uint32(msg.sender), address(arg1), address(arg2), arg3
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transferToInternalLedger(uint256 arg1, bytes32 arg2) {
    require atFundDepositAddress
    require calldata.size >= 68
    require not uint8(stor1.field_168)
    require ext_code.size(controllerAddress)
    call controllerAddress.transfer(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args msg.sender, atFundDepositAddress, arg1
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    emit Transfer(arg1, msg.sender, atFundDepositAddress);
    emit TransferInternalLedgerAT(atFundDepositAddress, msg.sender, arg1, arg2);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require not uint8(stor1.field_168)
    require ext_code.size(controllerAddress)
    call controllerAddress.decreaseApproval(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args msg.sender, address(arg1), arg2
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(controllerAddress)
    call controllerAddress.0xdd62ed3e with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1
    require ext_call.success
    emit 0xef8c5be1: ext_call.return_data[0], msg.sender, arg1
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require not uint8(stor1.field_168)
    require ext_code.size(controllerAddress)
    call controllerAddress.increaseApproval(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args msg.sender, address(arg1), arg2
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(controllerAddress)
    call controllerAddress.0xdd62ed3e with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1
    require ext_call.success
    emit 0xef8c5be1: ext_call.return_data[0], msg.sender, arg1
    return 1
}



}
