contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor1;
mapping of uint8 stor2;
mapping of uint256 sub_762e120a;
address stor4;
address stor5;

function sub_762e120a(?) payable {
    require calldata.size - 4 >= 32
    require stor1[address(arg1)]
    require sub_762e120a[address(arg1)] > 0
    return sub_762e120a[address(arg1)]
}

function _fallback() payable {
    revert
}

function isWhitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor1[address(arg1)]:
        return 1
    else:
        return 0
}

function sub_0aac16a6(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor0
    require not stor4
    stor4 = arg1
    stor5 = arg1
}

function addToBlackList(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor0
    stor2[address(arg1)] = 1
    emit Blacklisted(arg1);
}

function removeFromWhiteList(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor0
    require bool(stor1[address(arg1)]) == 1
    stor1[address(arg1)] = 0
    emit Unwhitelisted(arg1);
}

function sub_735efb40(?) payable {
    require calldata.size - 4 >= 64
    require msg.sender == stor0
    require stor1[address(arg1)]
    sub_762e120a[address(arg1)] = arg2
    require ext_code.size(stor5)
    call stor5.whiteListed(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xb7f18cd4: address(arg1), arg2
}

function addToWhiteList(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor0
    require not stor1[address(arg1)]
    stor2[address(arg1)] = 0
    stor1[address(arg1)] = 1
    emit Whitelisted(arg1);
    require ext_code.size(stor5)
    call stor5.whiteListed(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
