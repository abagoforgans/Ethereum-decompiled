contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address stor0;
address deployerAddress; offset 8
address operatorAddress;
address configurationAddress;
address sub_e754476fAddress;
uint8 stor4; offset 160
address sub_bf24e7d0Address;
address sub_fa7424f2Address;
address sub_79bf6b36Address;
address sub_51d7cd61Address;

function sub_2f013a00(?) {
    return bool(uint8(stor0.field_0))
}

function destructor() {
    return deployerAddress
}

function sub_51d7cd61(?) {
    return sub_51d7cd61Address
}

function operator() {
    return operatorAddress
}

function configuration() {
    return configurationAddress
}

function sub_79bf6b36(?) {
    return sub_79bf6b36Address
}

function sub_8e9d6cbd(?) {
    return bool(stor4)
}

function sub_bf24e7d0(?) {
    return sub_bf24e7d0Address
}

function deployer() {
    return deployerAddress
}

function sub_e754476f(?) {
    return sub_e754476fAddress
}

function sub_fa7424f2(?) {
    return sub_fa7424f2Address
}

function triggerSelfDestruction() {
    require deployerAddress == msg.sender
    require not uint8(stor0.field_0)
    emit TriggerSelfDestructionEvent(msg.sender);
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function freezeCommunityVote() {
    require msg.sender == deployerAddress
    stor4 = 1
    emit FreezeCommunityVoteEvent()
}

function disableSelfDestruction() {
    require deployerAddress == msg.sender
    uint8(stor0.field_0) = 1
    emit SelfDestructionDisabledEvent(msg.sender);
}

function sub_2aa1c9d9(?) {
    require calldata.size - 4 >= 32
    require msg.sender == deployerAddress
    require arg1
    sub_51d7cd61Address = arg1
    emit 0x4f712533: sub_51d7cd61Address, arg1
}

function sub_6ccb43c8(?) {
    require calldata.size - 4 >= 32
    require msg.sender == deployerAddress
    require arg1
    sub_fa7424f2Address = arg1
    emit 0xf21c1272: sub_fa7424f2Address, arg1
}

function sub_da5a3b70(?) {
    require calldata.size - 4 >= 32
    require msg.sender == deployerAddress
    require arg1
    sub_79bf6b36Address = arg1
    emit 0x7983934b: sub_79bf6b36Address, arg1
}

function sub_b71ded2f(?) {
    require calldata.size - 4 >= 32
    require msg.sender == deployerAddress
    require arg1
    if sub_e754476fAddress != arg1:
        sub_e754476fAddress = arg1
        emit 0x4d96d2a0: sub_e754476fAddress, arg1
}

function setConfiguration(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == deployerAddress
    require arg1
    if configurationAddress != arg1:
        configurationAddress = arg1
        emit 0x634f61bf: configurationAddress, arg1
}

function sub_e86ab8f6(?) {
    require calldata.size - 4 >= 32
    require msg.sender == deployerAddress
    require arg1
    if sub_bf24e7d0Address != arg1:
        require not stor4
        sub_bf24e7d0Address = arg1
        emit 0x624c4d42: sub_bf24e7d0Address, arg1
}

function setOperator(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == operatorAddress
    require arg1
    require arg1 != this.address
    if operatorAddress != arg1:
        operatorAddress = arg1
        emit SetOperatorEvent(operatorAddress, arg1);
}

function setDeployer(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == deployerAddress
    require arg1
    require arg1 != this.address
    if deployerAddress != arg1:
        deployerAddress = arg1
        emit SetDeployerEvent(address(stor0.field_0), arg1);
}

function sub_c0ed469a(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_51d7cd61Address)
    call sub_51d7cd61Address.0x3b238528 with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(sub_51d7cd61Address)
        call sub_51d7cd61Address.0x7ff81c37 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    require ext_code.size(sub_fa7424f2Address)
    call sub_fa7424f2Address.0x3b238528 with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(sub_fa7424f2Address)
    call sub_fa7424f2Address.0x7ff81c37 with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require ext_code.size(sub_fa7424f2Address)
    call sub_fa7424f2Address.0x5482c735 with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(sub_fa7424f2Address)
    call sub_fa7424f2Address.0xb6e2fc33 with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] < 2
    require ext_call.return_data[0] <= 1
    require not ext_call.return_data[0]
    require ext_code.size(configurationAddress)
    call configurationAddress.0xf71e860f with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(sub_bf24e7d0Address)
    call sub_bf24e7d0Address.0x994e2076 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(sub_fa7424f2Address)
    call sub_fa7424f2Address.0x2ee2ed25 with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_79bf6b36Address)
    call sub_79bf6b36Address.0x3858654b with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= ext_call.return_data[0]
    require ext_code.size(sub_79bf6b36Address)
    call sub_79bf6b36Address.0x1423ba38 with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg2, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_fa7424f2Address)
    call sub_fa7424f2Address.0x600e461e with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_e754476fAddress)
    call sub_e754476fAddress.0xad468df9 with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0], address(arg1), arg2, 160, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_fa7424f2Address)
    call sub_fa7424f2Address.0xb3938a6c with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x6574166d: msg.sender, address(arg1), arg2
}

function sub_cb672aaf(?) {
    require calldata.size - 4 >= 96
    require msg.sender == operatorAddress
    require ext_code.size(sub_51d7cd61Address)
    call sub_51d7cd61Address.0x3b238528 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(sub_51d7cd61Address)
        call sub_51d7cd61Address.0x7ff81c37 with:
             gas gas_remaining wei
            args address(arg1), address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    require ext_code.size(sub_fa7424f2Address)
    call sub_fa7424f2Address.0x3b238528 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(sub_fa7424f2Address)
    call sub_fa7424f2Address.0x7ff81c37 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require ext_code.size(sub_fa7424f2Address)
    call sub_fa7424f2Address.0x5482c735 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(sub_fa7424f2Address)
    call sub_fa7424f2Address.0xb6e2fc33 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] < 2
    require ext_call.return_data[0] <= 1
    require not ext_call.return_data[0]
    require ext_code.size(configurationAddress)
    call configurationAddress.0xf71e860f with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(sub_bf24e7d0Address)
    call sub_bf24e7d0Address.0x994e2076 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(sub_fa7424f2Address)
    call sub_fa7424f2Address.0x2ee2ed25 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_79bf6b36Address)
    call sub_79bf6b36Address.0x3858654b with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= ext_call.return_data[0]
    require ext_code.size(sub_79bf6b36Address)
    call sub_79bf6b36Address.0x1423ba38 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_fa7424f2Address)
    call sub_fa7424f2Address.0x600e461e with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_e754476fAddress)
    call sub_e754476fAddress.0xad468df9 with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0], address(arg2), arg3, 160, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_fa7424f2Address)
    call sub_fa7424f2Address.0xb3938a6c with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x47db2eb1: msg.sender, address(arg1), address(arg2), arg3
}



}
