contract main {




// =====================  Runtime code  =====================


uint256 burnMin;
mapping of struct sub_3103c113;
address stor2;
address stor3;

function burnMin() payable {
    return burnMin
}

function sub_3103c113(?) payable {
    require calldata.size - 4 >= 32
    return sub_3103c113[arg1].field_0, sub_3103c113[arg1].field_256
}

function _fallback() payable {
    revert
}

function sub_cee9b5b0(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor3
    burnMin = arg1
    emit 0x6de4b606: arg1
    return 1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor3
    require ext_code.size(stor2)
    call stor2.0xf2fde38b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function addToWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor3
    require ext_code.size(stor2)
    call stor2.0xe43252d7 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function removeFromWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor3
    require ext_code.size(stor2)
    call stor2.0x8ab1d681 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == stor3
    require ext_code.size(stor2)
    call stor2.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function burn(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == stor3
    if arg2 != sub_3103c113[address(arg1)].field_256:
        revert with 0, 'BURN_VALUE_MISMATCH'
    if not sub_3103c113[address(arg1)].field_0:
        revert with 0, 'NO_BURN_REQUEST_EXISTS'
    sub_3103c113[address(arg1)].field_0 = 0
    sub_3103c113[address(arg1)].field_256 = 0
    require ext_code.size(stor2)
    call stor2.0x42966c68 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function sub_69a441ce(?) payable {
    if not sub_3103c113[address(msg.sender)].field_0:
        revert with 0, 'NO_BURN_REQUEST_EXISTS'
    sub_3103c113[address(msg.sender)].field_0 = 0
    sub_3103c113[address(msg.sender)].field_256 = 0
    call stor3 with:
       funct uint32(this.address)
         gas gas_remaining wei
        args sub_3103c113[msg.sender].field_0, mem[260 len 4]
    require ext_code.size(stor2)
    call stor2.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, sub_3103c113[msg.sender].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x2b01466c: msg.sender
    return 1
}

function requestBurn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if sub_3103c113[address(msg.sender)].field_0:
        revert with 0, 'BURN_REQUEST_EXISTS'
    if arg1 < burnMin:
        revert with 0, 'SMALLER_THAN_MIN_BURN_AMOUNT'
    require ext_code.size(stor2)
    call stor2.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_3103c113[msg.sender].field_256 = arg1
    require ext_code.size(stor3)
    call stor3.0xf25e189d with:
         gas gas_remaining wei
        args this.address, 96, 160, 21, 'burn(address,uint256)', 64, msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_3103c113[msg.sender].field_0 = ext_call.return_data[0]
    emit BurnRequested(arg1, msg.sender);
    return 1
}



}
