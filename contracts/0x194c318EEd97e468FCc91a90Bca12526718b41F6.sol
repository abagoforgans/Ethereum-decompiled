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


#
#  - emitTransfer(address arg1, address arg2, uint256 arg3)
#  - emitApproval(address arg1, address arg2, uint256 arg3)
#  - sub_71a7a792(?)
#  - sub_8dfb5130(?)
#
uint8 sub_cb18c37c;
address authorityAddress; offset 8
address controllerAddress;

function authority() {
    return authorityAddress
}

function sub_cb18c37c(?) {
    return sub_cb18c37c
}

function controller() {
    return controllerAddress
}

function _fallback() payable {
    revert 
}

function totalSupply() {
    require ext_code.size(controllerAddress)
    call controllerAddress.0x18160ddd with:
         gas gas_remaining - 50 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function balanceOf(address arg1) {
    require ext_code.size(controllerAddress)
    call controllerAddress.0x70a08231 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function allowance(address arg1, address arg2) {
    require ext_code.size(controllerAddress)
    call controllerAddress.0xdd62ed3e with:
         gas gas_remaining - 50 wei
        args address(arg1), arg2
    require ext_call.success
    return ext_call.return_data[0]
}

function transfer(address arg1, uint256 arg2) {
    require ext_code.size(controllerAddress)
    call controllerAddress.0xbeabacc8 with:
         gas gas_remaining - 50 wei
        args msg.sender, address(arg1), arg2
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function approve(address arg1, uint256 arg2) {
    require ext_code.size(controllerAddress)
    call controllerAddress.approve(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 50 wei
        args msg.sender, address(arg1), arg2
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require ext_code.size(controllerAddress)
    call controllerAddress.transferFrom(address rg1, address rg2, address rg3, uint256 rg4) with:
         gas gas_remaining - 50 wei
        args 0, uint32(msg.sender), address(arg1), address(arg2), arg3
    require ext_call.success
    return bool(ext_call.return_data[0])
}



}
