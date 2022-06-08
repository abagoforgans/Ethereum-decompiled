contract main {




// =====================  Runtime code  =====================


address owner;
uint256 sub_c89421ad;
uint8 decimals;
address stor2; offset 8
mapping of uint8 stor3;
uint8 stor4;
uint256 sub_56fd53ff;
mapping of uint8 stor6;
uint8 sub_410c5d5f;
uint256 sub_f258ca1f;

function sub_07f2cf01(?) {
    return bool(stor4)
}

function decimals() {
    return decimals
}

function sub_410c5d5f(?) {
    return bool(sub_410c5d5f)
}

function sub_56fd53ff(?) {
    return sub_56fd53ff
}

function owner() {
    return owner
}

function sub_c89421ad(?) {
    return sub_c89421ad
}

function sub_f258ca1f(?) {
    return sub_f258ca1f
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        revert with 0, 'you are not the owner'
    owner = arg1
}

function sub_ff45850b(?) {
    if owner != msg.sender:
        revert with 0, 'you are not the owner'
    stor4 = uint8(arg1)
    sub_56fd53ff = arg2
    sub_410c5d5f = uint8(arg3)
    sub_f258ca1f = arg4
}

function sub_b97f5768(?) {
    if owner != msg.sender:
        revert with 0, 'you are not the owner'
    call owner with:
       value sub_c89421ad wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_c89421ad = 0
}

function sub_f755ea9d(?) {
    if bool(sub_410c5d5f) != 1:
        revert with 0, 'freeReward end'
    if stor6[msg.sender]:
        revert with 0, 'you are already got'
    require ext_code.size(stor2)
    call stor2.0x23b872dd with:
         gas gas_remaining wei
        args owner, msg.sender, sub_f258ca1f * 10^decimals
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor6[msg.sender] = 1
}

function sub_4ae81af9(?) {
    if bool(stor4) != 1:
        revert with 0, 'RecommendReward end'
    if stor3[address(arg1)][msg.sender]:
        revert with 0, 'this address already use'
    require ext_code.size(stor2)
    call stor2.0x23b872dd with:
         gas gas_remaining wei
        args owner, address(arg1), sub_56fd53ff * 10^decimals
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    call stor2.0x23b872dd with:
         gas gas_remaining wei
        args owner, msg.sender, sub_56fd53ff * 10^decimals
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor3[address(arg1)][msg.sender] = 1
}



}
