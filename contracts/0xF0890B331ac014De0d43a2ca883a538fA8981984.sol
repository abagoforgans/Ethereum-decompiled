contract main {




// =====================  Runtime code  =====================


uint8 committeeSize;
uint256 sub_f713b052;
uint256 sub_f9604681;
uint256 sub_9c17be24;
uint256 sub_f6518e63;
uint256 sub_ce24c185;
uint256 sub_84060e83;
uint256 sub_cee1aeed;
uint256 sub_630a45e5;
uint256 challengePeriod;
uint256 sub_328b11e4;
address stor11;

function sub_328b11e4(?) payable {
    return sub_328b11e4
}

function sub_630a45e5(?) payable {
    return sub_630a45e5
}

function sub_84060e83(?) payable {
    return sub_84060e83
}

function sub_9c17be24(?) payable {
    return sub_9c17be24
}

function committeeSize() payable {
    return committeeSize
}

function sub_ce24c185(?) payable {
    return sub_ce24c185
}

function sub_cee1aeed(?) payable {
    return sub_cee1aeed
}

function challengePeriod() payable {
    return challengePeriod
}

function sub_f6518e63(?) payable {
    return sub_f6518e63
}

function sub_f713b052(?) payable {
    return sub_f713b052
}

function sub_f9604681(?) payable {
    return sub_f9604681
}

function _fallback() payable {
    revert
}

function sub_32fa744f(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor11)
    staticcall stor11.0xd936547e with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'NOT_SYSTEM_PARAM_ADMIN'
    sub_84060e83 = arg1
}

function sub_39c7ec92(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor11)
    staticcall stor11.0xd936547e with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'NOT_SYSTEM_PARAM_ADMIN'
    sub_630a45e5 = arg1
}

function sub_7f97ab03(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor11)
    staticcall stor11.0xd936547e with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'NOT_SYSTEM_PARAM_ADMIN'
    sub_f713b052 = arg1
}

function sub_a7b10715(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor11)
    staticcall stor11.0xd936547e with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'NOT_SYSTEM_PARAM_ADMIN'
    sub_f9604681 = arg1
}

function sub_ad06abda(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor11)
    staticcall stor11.0xd936547e with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'NOT_SYSTEM_PARAM_ADMIN'
    sub_9c17be24 = arg1
}

function sub_b2b9db31(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor11)
    staticcall stor11.0xd936547e with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'NOT_SYSTEM_PARAM_ADMIN'
    sub_f6518e63 = arg1
}

function sub_dc0157b1(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor11)
    staticcall stor11.0xd936547e with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'NOT_SYSTEM_PARAM_ADMIN'
    sub_cee1aeed = arg1
}

function sub_e1942391(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor11)
    staticcall stor11.0xd936547e with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'NOT_SYSTEM_PARAM_ADMIN'
    sub_328b11e4 = arg1
}

function sub_e876dce4(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor11)
    staticcall stor11.0xd936547e with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'NOT_SYSTEM_PARAM_ADMIN'
    sub_ce24c185 = arg1
}

function sub_b9ad89fc(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor11)
    staticcall stor11.0xd936547e with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'NOT_SYSTEM_PARAM_ADMIN'
    committeeSize = arg1
}

function setChallengePeriod(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor11)
    staticcall stor11.0xd936547e with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'NOT_SYSTEM_PARAM_ADMIN'
    challengePeriod = arg1
}



}
