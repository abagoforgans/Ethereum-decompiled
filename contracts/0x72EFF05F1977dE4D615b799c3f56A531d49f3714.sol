contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor2;
uint8 stor3;
array of uint256 stor4;

function _fallback() payable {
    bool(stor2.length) = 0
    stor2.length.field_1 = 7
    stor2.length.field_8 = 'FunFair' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = 8
    bool(stor4.length) = 0
    stor4.length.field_1 = 3
    stor4.length.field_8 = 'FUN' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor0 = msg.sender
    return code.data[454 len 7129]
}



// =====================  Runtime code  =====================


address owner;
uint8 stor1; offset 160
uint128 stor1; offset 160
address stor1;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;
address stor5;

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

function finalized() {
    return bool(uint8(stor1.field_160))
}

function _fallback() payable {
    revert
}

function finalize() {
    require msg.sender == owner
    Mask(96, 0, stor1.field_160) = 1
}

function changeOwner(address arg1) {
    require msg.sender == owner
    address(stor1.field_0) = arg1
}

function acceptOwnership() {
    if msg.sender == address(stor1.field_0):
        owner = address(stor1.field_0)
}

function setController(address arg1) {
    require msg.sender == owner
    require not uint8(stor1.field_160)
    stor5 = arg1
}

function totalSupply() {
    require ext_code.size(stor5)
    call stor5.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function balanceOf(address arg1) {
    require ext_code.size(stor5)
    call stor5.0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function allowance(address arg1, address arg2) {
    require ext_code.size(stor5)
    call stor5.0xdd62ed3e with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    return ext_call.return_data[0]
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size == 68
    require ext_code.size(stor5)
    call stor5.0xbeabacc8 with:
         gas gas_remaining - 710 wei
        args msg.sender, address(arg1), arg2
    require ext_call.success
    if ext_call.return_data[0]:
        emit Transfer(arg2, msg.sender, arg1);
    return bool(ext_call.return_data[0])
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size == 100
    require ext_code.size(stor5)
    call stor5.0x15dacbea with:
         gas gas_remaining - 710 wei
        args 0, uint32(msg.sender), address(arg1), address(arg2), arg3
    require ext_call.success
    if ext_call.return_data[0]:
        emit Transfer(arg3, arg1, arg2);
    return bool(ext_call.return_data[0])
}

function claimTokens(address arg1, address arg2) {
    require msg.sender == owner
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
    if not ext_call.return_data[0]:
        return 0
    emit logTokenTransfer(address(arg1), address(arg2), ext_call.return_data[0]);
    return 1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size == 68
    require ext_code.size(stor5)
    call stor5.0xdd62ed3e with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1
    require ext_call.success
    require ext_call.return_data[0] <= 0
    require ext_code.size(stor5)
    call stor5.0xe1f21c67 with:
         gas gas_remaining - 710 wei
        args msg.sender, address(arg1), arg2
    require ext_call.success
    if ext_call.return_data[0]:
        emit Approval(arg2, msg.sender, arg1);
    return bool(ext_call.return_data[0])
}

function decreaseApproval(address arg1, uint256 arg2) {
    require calldata.size == 68
    require ext_code.size(stor5)
    call stor5.0xf019c267 with:
         gas gas_remaining - 710 wei
        args msg.sender, address(arg1), arg2
    require ext_call.success
    if ext_call.return_data[0]:
        require ext_code.size(stor5)
        call stor5.0xdd62ed3e with:
             gas gas_remaining - 710 wei
            args msg.sender, arg1
        require ext_call.success
        emit Approval(ext_call.return_data[0], msg.sender, arg1);
    return bool(ext_call.return_data[0])
}

function increaseApproval(address arg1, uint256 arg2) {
    require calldata.size == 68
    require ext_code.size(stor5)
    call stor5.0xbcdd6121 with:
         gas gas_remaining - 710 wei
        args msg.sender, address(arg1), arg2
    require ext_call.success
    if ext_call.return_data[0]:
        require ext_code.size(stor5)
        call stor5.0xdd62ed3e with:
             gas gas_remaining - 710 wei
            args msg.sender, arg1
        require ext_call.success
        emit Approval(ext_call.return_data[0], msg.sender, arg1);
    return bool(ext_call.return_data[0])
}



}
