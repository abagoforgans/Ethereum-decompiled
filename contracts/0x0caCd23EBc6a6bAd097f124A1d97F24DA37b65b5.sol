contract main {




// =====================  Runtime code  =====================


address owner;
address sub_6b1d752bAddress;
address sub_0cc0e1fbAddress;
address sub_317d19aaAddress;
address sub_ca73fc72Address;
mapping of struct stor5;
mapping of uint8 stor6;
mapping of uint8 stor7;
mapping of uint8 stor8;

function sub_0cc0e1fb(?) {
    return sub_0cc0e1fbAddress
}

function sub_317d19aa(?) {
    return sub_317d19aaAddress
}

function sub_6b1d752b(?) {
    return sub_6b1d752bAddress
}

function isWhiteListed(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor7[address(arg1)])
}

function owner() {
    return owner
}

function sub_ca73fc72(?) {
    return sub_ca73fc72Address
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_d5123815(?) {
    require calldata.size - 4 >= 64
    if sub_6b1d752bAddress != msg.sender:
        if sub_0cc0e1fbAddress != msg.sender:
            require msg.sender == sub_317d19aaAddress
    stor6[address(arg1)][msg.sender] = uint8(arg2)
    if bool(stor6[address(arg1)][stor1]) == 1:
        if 1 == bool(stor6[address(arg1)][stor2]):
            if 1 == bool(stor6[address(arg1)][stor3]):
                stor7[address(arg1)] = 1
                stor6[address(arg1)][stor1] = 0
                stor6[address(arg1)][stor2] = 0
                stor6[address(arg1)][stor3] = 0
}

function sub_0666e264(?) {
    require calldata.size - 4 >= 64
    if sub_6b1d752bAddress != msg.sender:
        if sub_0cc0e1fbAddress != msg.sender:
            require msg.sender == sub_317d19aaAddress
    require sub_ca73fc72Address != arg1
    stor8[address(arg1)][msg.sender] = uint8(arg2)
    if bool(stor8[address(arg1)][stor1]) == 1:
        if 1 == bool(stor8[address(arg1)][stor2]):
            if 1 == bool(stor8[address(arg1)][stor3]):
                sub_ca73fc72Address = arg1
                stor8[address(arg1)][stor1] = 0
                stor8[address(arg1)][stor2] = 0
                stor8[address(arg1)][stor3] = 0
}

function transferTokens(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require msg.sender == sub_ca73fc72Address
    require stor7[address(arg1)]
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg3
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_954fef33(?) {
    require calldata.size - 4 >= 64
    if sub_6b1d752bAddress != msg.sender:
        if sub_0cc0e1fbAddress != msg.sender:
            require msg.sender == sub_317d19aaAddress
    require arg1 != msg.sender
    if sub_6b1d752bAddress == arg1:
        stor5[address(arg2)].field_0 = msg.sender
        stor5[address(arg2)].field_256 = arg1
        stor5[address(arg2)].field_512 = 1
    else:
        if sub_0cc0e1fbAddress == arg1:
            stor5[address(arg2)].field_0 = msg.sender
            stor5[address(arg2)].field_256 = arg1
            stor5[address(arg2)].field_512 = 2
        else:
            require sub_317d19aaAddress == arg1
            stor5[address(arg2)].field_0 = msg.sender
            stor5[address(arg2)].field_256 = arg1
            stor5[address(arg2)].field_512 = 3
}

function sub_ca0eaafa(?) {
    require calldata.size - 4 >= 64
    if sub_6b1d752bAddress != msg.sender:
        if sub_0cc0e1fbAddress != msg.sender:
            require msg.sender == sub_317d19aaAddress
    require arg1 != msg.sender
    require stor5[address(arg2)].field_0 != msg.sender
    if 1 == stor5[address(arg2)].field_512:
        sub_6b1d752bAddress = arg2
    else:
        if 2 == stor5[address(arg2)].field_512:
            sub_0cc0e1fbAddress = arg2
        else:
            require 3 == stor5[address(arg2)].field_512
            sub_317d19aaAddress = arg2
            stor5[address(arg2)].field_0 = 0
            stor5[address(arg2)].field_256 = 0
            stor5[address(arg2)].field_512 = 0
    stor5[address(arg2)].field_0 = 0
    stor5[address(arg2)].field_256 = 0
    stor5[address(arg2)].field_512 = 0
}



}
