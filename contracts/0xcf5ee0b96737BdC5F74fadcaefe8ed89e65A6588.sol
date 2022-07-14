contract main {




// =====================  Runtime code  =====================


uint8 decimals; offset 160
address owner;
address tokenAddress;
address beneficiaryAddress;
uint256 sub_322d4135;
uint256 releaseTime1;
uint256 releaseTime2;
uint256 releaseTime3;
uint256 releaseTime4;
uint256 sub_1ff0fe83;
uint256 sub_1023957a;
uint256 sub_286eceb9;
uint256 sub_9845615a;
uint8 releaseState1;
uint8 releaseState2; offset 8
uint8 releaseState3; offset 16
uint8 releaseState4; offset 24
uint8 sub_b423c313; offset 32
uint8 sub_ee8ce66e; offset 40
uint8 sub_f7b30f40; offset 48
uint8 sub_0a164913; offset 56
uint256 stor12; offset 56
uint256 stor12; offset 48
uint256 stor12; offset 40
uint256 stor12; offset 32
uint256 stor12; offset 24
uint256 stor12; offset 16
uint256 stor12; offset 8

function releaseState1() {
    return bool(releaseState1)
}

function sub_0a164913(?) {
    return bool(sub_0a164913)
}

function sub_1023957a(?) {
    return sub_1023957a
}

function releaseState2() {
    return bool(releaseState2)
}

function releaseTime1() {
    return releaseTime1
}

function releaseTime4() {
    return releaseTime4
}

function sub_1ff0fe83(?) {
    return sub_1ff0fe83
}

function sub_286eceb9(?) {
    return sub_286eceb9
}

function decimals() {
    return decimals
}

function releaseState3() {
    return bool(releaseState3)
}

function sub_322d4135(?) {
    return sub_322d4135
}

function releaseTime3() {
    return releaseTime3
}

function beneficiary() {
    return beneficiaryAddress
}

function releaseTime2() {
    return releaseTime2
}

function owner() {
    return owner
}

function releaseState4() {
    return bool(releaseState4)
}

function sub_9845615a(?) {
    return sub_9845615a
}

function sub_b423c313(?) {
    return bool(sub_b423c313)
}

function sub_ee8ce66e(?) {
    return bool(sub_ee8ce66e)
}

function sub_f7b30f40(?) {
    return bool(sub_f7b30f40)
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function sub_1406429e(?) {
    require msg.sender == owner
    releaseTime2 = arg1
}

function sub_3866df50(?) {
    require msg.sender == owner
    releaseTime4 = arg1
}

function sub_3cb1a9cf(?) {
    require msg.sender == owner
    sub_9845615a = arg1
}

function sub_4e5cfeff(?) {
    require msg.sender == owner
    releaseTime3 = arg1
}

function sub_8e4e88d1(?) {
    require msg.sender == owner
    sub_1ff0fe83 = arg1
}

function sub_9d4bfde1(?) {
    require msg.sender == owner
    releaseTime1 = arg1
}

function sub_ce92e3a1(?) {
    require msg.sender == owner
    sub_1023957a = arg1
}

function sub_f3613c89(?) {
    require msg.sender == owner
    sub_286eceb9 = arg1
}

function sub_05baf4af(?) {
    require msg.sender == owner
    sub_322d4135 = arg1 * 10^decimals
}

function transferBeneficiary(address arg1) {
    require msg.sender == owner
    require arg1
    beneficiaryAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function release_remain() {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args beneficiaryAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function release_1() {
    require msg.sender == owner
    require block.timestamp >= releaseTime1
    require 0 == bool(releaseState1)
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require ext_call.return_data[0] >= sub_322d4135
    releaseState1 = 1
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args beneficiaryAddress, sub_322d4135
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function release_2() {
    require msg.sender == owner
    require block.timestamp >= releaseTime2
    require 0 == bool(releaseState2)
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require ext_call.return_data[0] >= sub_322d4135
    Mask(248, 0, stor12.field_8) = 1
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args beneficiaryAddress, sub_322d4135
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function release_4() {
    require msg.sender == owner
    require block.timestamp >= releaseTime4
    require 0 == bool(releaseState4)
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require ext_call.return_data[0] >= sub_322d4135
    Mask(232, 0, stor12.field_24) = 1
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args beneficiaryAddress, sub_322d4135
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function release_3() {
    require msg.sender == owner
    require block.timestamp >= releaseTime3
    require 0 == bool(releaseState3)
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require ext_call.return_data[0] >= sub_322d4135
    Mask(240, 0, stor12.field_16) = 1
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args beneficiaryAddress, sub_322d4135
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function sub_2e67625d(?) {
    require msg.sender == owner
    require block.timestamp >= sub_1023957a
    require 0 == bool(sub_ee8ce66e)
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require ext_call.return_data[0] >= sub_322d4135
    Mask(216, 0, stor12.field_40) = 1
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args beneficiaryAddress, sub_322d4135
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function sub_40a18ee9(?) {
    require msg.sender == owner
    require block.timestamp >= sub_286eceb9
    require 0 == bool(sub_f7b30f40)
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require ext_call.return_data[0] >= sub_322d4135
    Mask(208, 0, stor12.field_48) = 1
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args beneficiaryAddress, sub_322d4135
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function sub_d35bf4b2(?) {
    require msg.sender == owner
    require block.timestamp >= sub_1ff0fe83
    require 0 == bool(sub_b423c313)
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require ext_call.return_data[0] >= sub_322d4135
    Mask(224, 0, stor12.field_32) = 1
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args beneficiaryAddress, sub_322d4135
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function sub_eca73669(?) {
    require msg.sender == owner
    require block.timestamp >= sub_9845615a
    require 0 == bool(sub_0a164913)
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require ext_call.return_data[0] >= sub_322d4135
    Mask(200, 0, stor12.field_56) = 1
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args beneficiaryAddress, sub_322d4135
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}



}
