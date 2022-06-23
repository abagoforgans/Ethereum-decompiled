contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of uint8 stor1;
address stor2;
address controllerAddress;
uint8 stor4; offset 160
uint128 stor4; offset 160
address whitelistAddress;

function sub_8154288c(?) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor1[address(arg1)])
}

function isObsolete() {
    return bool(uint8(stor4.field_160))
}

function getWhitelistAddress() {
    return whitelistAddress
}

function getControllerAddress() {
    return controllerAddress
}

function sub_f18a1568(?) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor0[address(arg1)])
}

function _fallback() payable {
    revert
}

function sub_9bb4e83b(?) {
    require msg.sender
    require stor0[address(msg.sender)]
    stor0[address(msg.sender)] = 0
    emit 0xb1faf7ee: msg.sender
}

function sub_59d0ab8b(?) {
    require calldata.size - 4 >= 32
    require msg.sender
    if not stor1[address(msg.sender)]:
        revert with 0, 'no SAdmin'
    Mask(96, 0, stor4.field_160) = Mask(96, 0, arg1)
    return 1
}

function sub_49b37bb5(?) {
    require calldata.size - 4 >= 32
    require msg.sender
    if not stor0[address(msg.sender)]:
        revert with 0, 'no root PFadmin'
    require arg1
    require stor1[address(arg1)]
    stor1[address(arg1)] = 0
    emit 0xa9a45aa0: arg1
}

function sub_0a619180(?) {
    require calldata.size - 4 >= 32
    require msg.sender
    if not stor0[address(msg.sender)]:
        revert with 0, 'no root PFadmin'
    require arg1
    require not stor1[address(arg1)]
    stor1[address(arg1)] = 1
    emit 0xd5292536: arg1
}

function sub_417a579d(?) {
    require calldata.size - 4 >= 32
    require msg.sender
    if not stor0[address(msg.sender)]:
        revert with 0, 'no root PFadmin'
    require arg1
    require not stor0[address(arg1)]
    stor0[address(arg1)] = 1
    emit 0x20aba89e: arg1
}

function setWhitelistAddress(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    if not stor1[address(msg.sender)]:
        revert with 0, 'no SAdmin'
    if not uint8(stor4.field_160):
        require ext_code.size(stor2)
        call stor2.0xd5fa2b00 with:
             gas gas_remaining wei
            args 'whitelistAddr', arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    whitelistAddress = arg1
}

function setControllerAddress(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    if not stor1[address(msg.sender)]:
        revert with 0, 'no SAdmin'
    if not uint8(stor4.field_160):
        require ext_code.size(stor2)
        call stor2.0xd5fa2b00 with:
             gas gas_remaining wei
            args 'controllerAddr', arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    controllerAddress = arg1
}



}
