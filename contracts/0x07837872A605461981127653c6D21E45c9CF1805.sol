contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;

function _fallback() payable {
    bool(stor1.length) = 0
    stor1.length.field_1 = 11
    stor1.length.field_8 = 'Christ Coin' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 4
    stor2.length.field_8 = 'CCLC' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = 8
    stor0 = msg.sender
    return code.data[370 len 3480]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address controllerAddress; offset 8

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function contractFinalized() {
    return bool(stor0)
}

function controller() {
    return controllerAddress
}

function _fallback() payable {
    revert
}

function finalizeContract() {
    require owner == msg.sender
    stor0 = 1
}

function setController(address arg1) {
    require owner == msg.sender
    require not stor0
    controllerAddress = arg1
}

function controllerApproval(address arg1, address arg2, uint256 arg3) {
    require controllerAddress == msg.sender
    emit Approval(arg3, arg1, arg2);
}

function controllerTransfer(address arg1, address arg2, uint256 arg3) {
    require controllerAddress == msg.sender
    emit Transfer(arg3, arg1, arg2);
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
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
    require owner == msg.sender
    require ext_code.size(controllerAddress)
    call controllerAddress.0x9dc29fac with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1
    require ext_call.success
    if ext_call.return_data[0]:
        emit Transfer(arg1, msg.sender, 0);
    return bool(ext_call.return_data[0])
}

function approve(address arg1, uint256 arg2) {
    require ext_code.size(controllerAddress)
    call controllerAddress.0xe1f21c67 with:
         gas gas_remaining - 710 wei
        args msg.sender, address(arg1), arg2
    require ext_call.success
    if ext_call.return_data[0]:
        emit Approval(arg2, msg.sender, arg1);
    return bool(ext_call.return_data[0])
}

function transfer(address arg1, uint256 arg2) {
    require ext_code.size(controllerAddress)
    call controllerAddress.0xbeabacc8 with:
         gas gas_remaining - 710 wei
        args msg.sender, address(arg1), arg2
    require ext_call.success
    if ext_call.return_data[0]:
        emit Transfer(arg2, msg.sender, arg1);
    return bool(ext_call.return_data[0])
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require ext_code.size(controllerAddress)
    call controllerAddress.0x15dacbea with:
         gas gas_remaining - 710 wei
        args 0, uint32(msg.sender), address(arg1), address(arg2), arg3
    require ext_call.success
    if ext_call.return_data[0]:
        emit Transfer(arg3, arg1, arg2);
    return bool(ext_call.return_data[0])
}



}
