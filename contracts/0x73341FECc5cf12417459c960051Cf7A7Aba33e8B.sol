contract main {


// =======================  Init code  ======================


uint8 stor0;
uint256 stor0; offset 8

function _fallback() payable {
    Mask(248, 0, stor0.field_8) = Mask(248, 0, msg.sender)
    uint8(stor0.field_0) = 0
    return code.data[88 len 3174]
}



// =====================  Runtime code  =====================


uint8 sub_cb18c37c;
address authorityAddress; offset 8
uint256 stor0; offset 8
uint256 stor0;
address controllerAddress;
uint256 stor1;

function authority() {
    return authorityAddress
}

function sub_cb18c37c(?) {
    return sub_cb18c37c
}

function controller() {
    return address(controllerAddress)
}

function _fallback() payable {
    revert 
}

function totalSupply() {
    require ext_code.size(address(controllerAddress))
    call address(controllerAddress).0x18160ddd with:
         gas gas_remaining - 50 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function balanceOf(address arg1) {
    require ext_code.size(address(controllerAddress))
    call address(controllerAddress).0x70a08231 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function allowance(address arg1, address arg2) {
    require ext_code.size(address(controllerAddress))
    call address(controllerAddress).0xdd62ed3e with:
         gas gas_remaining - 50 wei
        args address(arg1), arg2
    require ext_call.success
    return ext_call.return_data[0]
}

function approve(address arg1, uint256 arg2) {
    require ext_code.size(address(controllerAddress))
    call address(controllerAddress).0xe1f21c67 with:
         gas gas_remaining - 50 wei
        args msg.sender, address(arg1), arg2
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transfer(address arg1, uint256 arg2) {
    require ext_code.size(address(controllerAddress))
    call address(controllerAddress).0xbeabacc8 with:
         gas gas_remaining - 50 wei
        args msg.sender, address(arg1), arg2
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require ext_code.size(address(controllerAddress))
    call address(controllerAddress).0x15dacbea with:
         gas gas_remaining - 50 wei
        args 0, uint32(msg.sender), address(arg1), address(arg2), arg3
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function sub_8dfb5130(?) {
    if not sub_cb18c37c:
        require msg.sender == authorityAddress
    else:
        require sub_cb18c37c == 1
        require ext_code.size(authorityAddress)
        call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
             gas gas_remaining - 50 wei
            args msg.sender, address(this.address), call.func_hash
        require ext_call.success
        require ext_call.return_data[0]
    uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
}

function emitTransfer(address arg1, address arg2, uint256 arg3) {
    if not sub_cb18c37c:
        require msg.sender == authorityAddress
    else:
        require sub_cb18c37c == 1
        require ext_code.size(authorityAddress)
        call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
             gas gas_remaining - 50 wei
            args msg.sender, address(this.address), call.func_hash
        require ext_call.success
        require ext_call.return_data[0]
    emit Transfer(arg3, arg1, arg2);
}

function emitApproval(address arg1, address arg2, uint256 arg3) {
    if not sub_cb18c37c:
        require msg.sender == authorityAddress
    else:
        require sub_cb18c37c == 1
        require ext_code.size(authorityAddress)
        call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
             gas gas_remaining - 50 wei
            args msg.sender, address(this.address), call.func_hash
        require ext_call.success
        require ext_call.return_data[0]
    emit Approval(arg3, arg1, arg2);
}

function sub_71a7a792(?) {
    if not sub_cb18c37c:
        require msg.sender == authorityAddress
    else:
        require sub_cb18c37c == 1
        require ext_code.size(authorityAddress)
        call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
             gas gas_remaining - 50 wei
            args msg.sender, address(this.address), call.func_hash
        require ext_call.success
        require ext_call.return_data[0]
    Mask(248, 0, stor0.field_8) = Mask(248, 0, arg1)
    uint256(stor0.field_0) = arg2 or Mask(248, 8, uint256(stor0.field_0))
}



}
