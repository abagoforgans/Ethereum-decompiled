contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
address meAddress;
array of address stor2;
mapping of struct stor3;

function isAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor0[address(arg1)])
}

function totalUsers() {
    return stor2.length
}

function me() {
    return meAddress
}

function close() payable {
    if meAddress != msg.sender:
        revert with 0, 'sender is not owner'
    selfdestruct(meAddress)
}

function renounceAdmin() {
    require msg.sender
    require stor0[address(msg.sender)]
    stor0[address(msg.sender)] = 0
    emit AdminRemoved(msg.sender);
}

function exists(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 'invalid address'
    return not not stor3[address(arg1)].field_0
}

function sub_df5e6f1b(?) {
    require calldata.size - 4 >= 64
    if stor3[address(arg1)].field_232 != arg2 % 16777216:
        return 0
    return stor3[address(arg1)].field_184
}

function sub_9b69aacf(?) {
    require calldata.size - 4 >= 64
    if stor3[address(arg1)].field_232 != arg2 % 16777216:
        return 0
    return stor3[address(arg1)].field_0, stor3[address(arg1)].field_200
}

function sub_a7d96239(?) {
    require calldata.size - 4 >= 64
    if stor3[address(arg1)].field_232 != arg2 % 16777216:
        return 0
    return stor3[address(arg1)].field_0, stor3[address(arg1)].field_216
}

function _fallback() payable {
    call meAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function addAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    if not stor0[address(msg.sender)]:
        revert with 0, 'sender is not an admin'
    require arg1
    require not stor0[address(arg1)]
    stor0[address(arg1)] = 1
    emit AdminAdded(arg1);
}

function sub_ccda938d(?) {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0, 'invalid address'
    if not stor3[address(arg1)].field_0:
        return 0
    if arg1 != stor3[address(arg1)].field_0:
        revert with 0, 'address not match in getUserInfo'
    if stor3[address(arg1)].field_232 != arg2 % 16777216:
        return stor3[address(arg1)].field_0, 0, 0, 0, arg2 % 16777216
    return stor3[address(arg1)].field_0, 
           stor3[address(arg1)].field_0,
           stor3[address(arg1)].field_0,
           stor3[address(arg1)].field_0,
           stor3[address(arg1)].field_232
}

function register(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    if not stor0[address(msg.sender)]:
        revert with 0, 'sender is not an admin'
    if not arg1:
        revert with 0, 'invalid address'
    if stor3[address(arg1)].field_0:
        revert with 0, 'user exists'
    stor3[address(arg1)].field_0 = arg1
    stor3[address(arg1)].field_0 = Mask(96, 0, stor2.length)
    stor3[address(arg1)].field_96 = 0
    stor2.length++
    address(stor2[stor2.length]) = arg1
    emit UserRegistered(address arg1, uint256 arg2):
                        0,
                        Mask(96, 0, stor2.length),
                        arg1,
}

function sub_880ae301(?) {
    require calldata.size - 4 >= 160
    require msg.sender
    if not stor0[address(msg.sender)]:
        revert with 0, 'sender is not an admin'
    if not arg1:
        revert with 0, 'invalid address'
    if not stor3[address(arg1)].field_0:
        if not arg1:
            revert with 0, 'invalid address'
        if stor3[address(arg1)].field_0:
            revert with 0, 'user exists'
        stor3[address(arg1)].field_0 = arg1
        stor3[address(arg1)].field_0 = Mask(96, 0, stor2.length)
        stor3[address(arg1)].field_96 = 0
        stor2.length++
        address(stor2[stor2.length]) = arg1
        emit UserRegistered(address arg1, uint256 arg2):
                            0,
                            Mask(96, 0, stor2.length),
                            arg1,
    if arg1 != stor3[address(arg1)].field_0:
        revert with 0, 'address not match in setUserInfo'
    stor3[address(arg1)].field_0 = stor3[address(arg1)].field_0
    stor3[address(arg1)].field_184 = arg2
    stor3[address(arg1)].field_200 = arg3
    stor3[address(arg1)].field_216 = arg4
    stor3[address(arg1)].field_232 = arg5 % 16777216
}



}
