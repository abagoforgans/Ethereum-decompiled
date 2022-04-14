contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[49 len 5583]
}



// =====================  Runtime code  =====================


const name = 'Token Report'

const decimals = 8

const symbol = 'DATA'


address owner;
uint8 finalized; offset 160
uint8 paused; offset 168
address stor1;
address controllerAddress;
array of uint256 motd;

function motd() {
    return motd[0 len motd.length]
}

function paused() {
    return bool(paused)
}

function owner() {
    return owner
}

function finalized() {
    return bool(finalized)
}

function controller() {
    return controllerAddress
}

function _fallback() payable {
    revert
}

function pause() {
    require owner == msg.sender
    paused = 1
}

function unpause() {
    require owner == msg.sender
    paused = 0
}

function finalize() {
    require owner == msg.sender
    finalized = 1
}

function acceptOwnership() {
    if stor1 == msg.sender:
        owner = stor1
}

function changeOwner(address arg1) {
    require owner == msg.sender
    stor1 = arg1
}

function setController(address arg1) {
    require owner == msg.sender
    require not finalized
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
    require not paused
    require ext_code.size(controllerAddress)
    call controllerAddress.burn(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1
    require ext_call.success
    emit Transfer(arg1, msg.sender, 0);
}

function approve(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require not paused
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
    require not paused
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

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    require not paused
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

function decreaseApproval(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require not paused
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
    require not paused
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
