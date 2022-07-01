contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;

function _fallback() payable {
    revert
}

function sub_0aac16a6(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor0
    require not stor1
    stor1 = arg1
    stor2 = arg1
}

function addToBlackList(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor0
    require ext_code.size(stor2)
    call stor2.0x417c73a7 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Blacklisted(arg1);
}

function addToWhiteList(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor0
    require ext_code.size(stor2)
    call stor2.0x47ee0394 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Whitelisted(arg1);
}

function sub_762e120a(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor2)
    staticcall stor2.0x762e120a with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_735efb40(?) payable {
    require calldata.size - 4 >= 64
    require msg.sender == stor0
    require ext_code.size(stor2)
    call stor2.0x735efb40 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xb7f18cd4: address(arg1), arg2
}

function isWhitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor2)
    staticcall stor2.0x3af32abf with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function removeFromWhiteList(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor0
    require ext_code.size(stor2)
    call stor2.removeFromWhiteList(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Unwhitelisted(arg1);
}



}
