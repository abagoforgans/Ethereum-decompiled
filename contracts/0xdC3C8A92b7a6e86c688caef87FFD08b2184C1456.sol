contract main {




// =====================  Runtime code  =====================


address owner;
address controllerAddress;
mapping of uint256 sub_ff47e75e;
array of address deployedContracts;
uint8 stor6;
address sub_faaecd98Address; offset 8
address vaultAddress;
mapping of struct userStructs;
mapping of address sub_60e16b65;
array of address userList;

function userStructs(address arg1) {
    require calldata.size - 4 >= 32
    return userStructs[arg1].field_0, userStructs[arg1].field_256
}

function isRunning() {
    return bool(stor6)
}

function getController() {
    return controllerAddress
}

function getUserBalance(address arg1) {
    require calldata.size - 4 >= 32
    return userStructs[address(arg1)].field_0
}

function getDeployedContractsCount() {
    return deployedContracts.length
}

function sub_60e16b65(?) {
    require calldata.size - 4 >= 32
    return sub_60e16b65[address(arg1)]
}

function getVaultAddress() {
    return vaultAddress
}

function getOwner() {
    return owner
}

function deployedContracts(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < deployedContracts.length
    return deployedContracts[arg1]
}

function userList(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < userList.length
    return userList[arg1]
}

function sub_b09133bc(?) {
    require calldata.size - 4 >= 32
    return sub_60e16b65[arg1]
}

function sub_c7faa97c(?) {
    return sub_faaecd98Address
}

function sub_faaecd98(?) {
    return sub_faaecd98Address
}

function vault() {
    return vaultAddress
}

function sub_ff47e75e(?) {
    require calldata.size - 4 >= 32
    return sub_ff47e75e[arg1]
}

function _fallback() payable {
    revert
}

function setRunSwitch(bool arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Owned:sender should be owner'
    emit LogSetRunSwitch(msg.sender, arg1);
    stor6 = uint8(arg1)
    return 1
}

function isUser(address arg1) {
    require calldata.size - 4 >= 32
    if not userList.length:
        return 0
    require userStructs[address(arg1)].field_256 < userList.length
    return (userList[stor8[address(arg1)].field_256] == arg1)
}

function sub_6290caec(?) {
    require calldata.size - 4 >= 32
    if not deployedContracts.length:
        return 0
    require sub_ff47e75e[address(arg1)] < deployedContracts.length
    return (deployedContracts[stor4[address(arg1)]] == arg1)
}

function sub_2893fad8(?) {
    require calldata.size - 4 >= 32
    if controllerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controlled:Sender is not controller'
    require stor6
    sub_60e16b65[address(arg1)] = 0
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Owned:sender should be owner'
    if not arg1:
        revert with 0, 'Owned:invalid address'
    emit LogOwnerChanged(owner, arg1);
    owner = arg1
    return 1
}

function sub_9276e097(?) {
    require calldata.size - 4 >= 64
    if controllerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controlled:Sender is not controller'
    require stor6
    sub_60e16b65[address(arg1)] = arg2
    return 1
}

function changeVaultAddress(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Owned:sender should be owner'
    require stor6
    if not arg1:
        revert with 0, 'Main:invalid address'
    vaultAddress = arg1
    emit 0x1f1e969d: address(arg1), msg.sender
}

function sub_2f497c04(?) {
    require calldata.size - 4 >= 32
    if controllerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controlled:Sender is not controller'
    require stor6
    if not arg1:
        revert with 0, 'Main:invalid address'
    sub_faaecd98Address = arg1
    emit 0x710789b9: address(arg1), msg.sender
}

function sub_8c6cf15b(?) {
    require calldata.size - 4 >= 96
    if controllerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controlled:Sender is not controller'
    require stor6
    require userStructs[address(arg1)].field_0 + arg2 >= userStructs[address(arg1)].field_0
    userStructs[address(arg1)].field_0 += arg2
    emit 0x7c52193f: address(arg1), arg2, arg3
}

function changeController(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Owned:sender should be owner'
    if not arg1:
        revert with 0, 'Controlled:Invalid address'
    if arg1 == controllerAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Controlled:New controller should be different than controller'
    emit 0xd91a88a5: msg.sender, controllerAddress, arg1
    controllerAddress = arg1
    return 1
}

function sub_dc42a994(?) {
    require calldata.size - 4 >= 96
    if controllerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controlled:Sender is not controller'
    require stor6
    if userStructs[address(arg1)].field_0 < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Main:user does not have enough balance'
    require arg2 <= userStructs[address(arg1)].field_0
    userStructs[address(arg1)].field_0 -= arg2
    emit 0x10103b53: address(arg1), arg2, arg3
}

function sub_ff4338c3(?) {
    require calldata.size - 4 >= 32
    if controllerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controlled:Sender is not controller'
    require stor6
    if userList.length:
        require userStructs[address(arg1)].field_256 < userList.length
        if userList[stor8[address(arg1)].field_256] == arg1:
            revert with 0, 'Main:address is already user'
    userList.length++
    userList[userList.length] = arg1
    require 1 <= userList.length + 1
    userStructs[address(arg1)].field_256 = userList.length
    emit 0x52de1001: address(arg1), userStructs[address(arg1)].field_256
    return 1
}

function requestWithdraw(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if controllerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controlled:Sender is not controller'
    require stor6
    if userStructs[address(arg1)].field_0 < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Main:user does not have enough balance'
    require arg2 <= userStructs[address(arg1)].field_0
    userStructs[address(arg1)].field_0 -= arg2
    call vaultAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[260 len 4]
    if not ext_call.success:
        revert with 0, 'Main:low level call failed'
    emit 0x955b1299: address(arg1), arg2
}

function sub_4578474d(?) payable {
    require calldata.size - 4 >= 32
    if not deployedContracts.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Deployer:sender should be deployed contract'
    require sub_ff47e75e[address(msg.sender)] < deployedContracts.length
    if deployedContracts[stor4[address(msg.sender)]] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Deployer:sender should be deployed contract'
    require stor6
    if sub_60e16b65[address(arg1)] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Main:sender should be deposit address'
    require userStructs[address(arg1)].field_0 + msg.value >= userStructs[address(arg1)].field_0
    userStructs[address(arg1)].field_0 += msg.value
    call vaultAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x50f55264: address(arg1), msg.sender, msg.value
}

function sub_6cf45dca(?) {
    require calldata.size - 4 >= 32
    if controllerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controlled:Sender is not controller'
    require stor6
    if not userList.length:
        if controllerAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controlled:Sender is not controller'
        require stor6
        if userList.length:
            require userStructs[address(arg1)].field_256 < userList.length
            if userList[stor8[address(arg1)].field_256] == arg1:
                revert with 0, 'Main:address is already user'
        userList.length++
        userList[userList.length] = arg1
        require 1 <= userList.length + 1
        userStructs[address(arg1)].field_256 = userList.length
        emit 0x52de1001: address(arg1), userStructs[address(arg1)].field_256
    else:
        require userStructs[address(arg1)].field_256 < userList.length
        if userList[stor8[address(arg1)].field_256] != arg1:
            if controllerAddress != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controlled:Sender is not controller'
            require stor6
            if userList.length:
                require userStructs[address(arg1)].field_256 < userList.length
                if userList[stor8[address(arg1)].field_256] == arg1:
                    revert with 0, 'Main:address is already user'
            userList.length++
            userList[userList.length] = arg1
            require 1 <= userList.length + 1
            userStructs[address(arg1)].field_256 = userList.length
            emit 0x52de1001: address(arg1), userStructs[address(arg1)].field_256
    if sub_60e16b65[address(arg1)]:
        revert with 0, 'Main:invalid address'
    require ext_code.size(sub_faaecd98Address)
    call sub_faaecd98Address.0x2f39d39 with:
         gas gas_remaining wei
        args address(arg1), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if deployedContracts.length:
        require sub_ff47e75e[ext_call.return_data[12 len 20]] < deployedContracts.length
        if deployedContracts[stor4[ext_call.return_data[12 len 20]]] == address(ext_call.return_data[0]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Deployer:deployed is already inserted'
    deployedContracts.length++
    deployedContracts[deployedContracts.length] = address(ext_call.return_data[0])
    require 1 <= deployedContracts.length + 1
    sub_ff47e75e[address(ext_call.return_data[0])] = deployedContracts.length
    emit 0x5757a9f1: msg.sender, address(ext_call.return_data[0])
    if controllerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Controlled:Sender is not controller'
    require stor6
    sub_60e16b65[address(arg1)] = address(ext_call.return_data[0])
    emit 0x9f8bbffa: address(arg1), address(ext_call.return_data[0]), deployedContracts.length
    return address(ext_call.return_data[0])
}



}
