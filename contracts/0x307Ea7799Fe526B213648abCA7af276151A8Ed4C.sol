contract main {




// =====================  Runtime code  =====================


const time = block.timestamp


mapping of address sub_12426f30;
mapping of uint8 stor1;
address stor2;
address stor3;
address stor4;
uint256 sub_6196b5c3;
uint256 minAmount;
uint256 maxAmount;
uint256 sub_1e4f2479;
uint256 sub_3e7b836a;
uint256 sub_51d81701;
uint256 sub_87c91ff3;
uint256 sub_c86b3347;
uint256 sub_6ea04b33;
uint256 stor14;

function sub_12426f30(?) {
    return sub_12426f30[arg1]
}

function sub_1e4f2479(?) {
    return sub_1e4f2479
}

function sub_3e7b836a(?) {
    return sub_3e7b836a
}

function sub_51d81701(?) {
    return sub_51d81701
}

function maxAmount() {
    return maxAmount
}

function sub_6196b5c3(?) {
    return sub_6196b5c3
}

function sub_6ea04b33(?) {
    return sub_6ea04b33
}

function sub_87c91ff3(?) {
    return sub_87c91ff3
}

function minAmount() {
    return minAmount
}

function sub_c86b3347(?) {
    return sub_c86b3347
}

function _fallback() payable {
    revert
}

function getETHBalance(address arg1) {
    return eth.balance(arg1)
}

function setPromoter(address arg1) {
    require msg.sender == stor4
    sub_12426f30[stor14] = arg1
    stor14++
}

function withdrawETH(address arg1, uint256 arg2) {
    require msg.sender == stor4
    require arg1
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_bc9d7083(?) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_ceba0e55(?) {
    require ext_code.size(stor2)
    call stor2.0xb8101d86 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdrawERC20(address arg1, address arg2, uint256 arg3) {
    require msg.sender == stor4
    require arg1
    require arg2
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_0de847bb(?) payable {
    require block.timestamp < sub_3e7b836a
    require arg1 >= minAmount
    require arg1 <= maxAmount
    require msg.value == arg1 * sub_51d81701
    require sub_c86b3347 < sub_1e4f2479
    require sub_6ea04b33 < sub_6196b5c3
    require ext_code.size(stor2)
    call stor2.0xb8101d86 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + arg1 <= maxAmount
    require ext_code.size(stor2)
    call stor2.0xb8101d86 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg1
    require ext_code.size(stor2)
    call stor2.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg2 > 0:
        require sub_12426f30[arg2]
        require ext_code.size(stor2)
        call stor2.0xa9059cbb with:
             gas gas_remaining wei
            args sub_12426f30[arg2], 5 * arg1 / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit 0xf3015e9c: arg1, msg.sender, arg2
    sub_6ea04b33 += arg1
    if not stor1[address(msg.sender)]:
        sub_c86b3347++
        stor1[address(msg.sender)] = 1
}

function sub_58169151(?) {
    require ext_code.size(arg1)
    call arg1.0x313ce567 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require block.timestamp < sub_3e7b836a
    require arg2 >= minAmount
    require arg2 <= maxAmount
    require ext_code.size(arg1)
    call arg1.0xdd62ed3e with:
         gas gas_remaining wei
        args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg2 * sub_87c91ff3 * 10^uint8(ext_call.return_data[0]) / 1000
    require sub_c86b3347 < sub_1e4f2479
    require sub_6ea04b33 < sub_6196b5c3
    require ext_code.size(stor2)
    call stor2.0xb8101d86 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + arg2 <= maxAmount
    require ext_code.size(stor2)
    call stor2.0xb8101d86 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg2
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, stor3, arg2 * sub_87c91ff3 * 10^uint8(ext_call.return_data[0]) / 1000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor2)
    call stor2.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg3 > 0:
        require sub_12426f30[arg3]
        require ext_code.size(stor2)
        call stor2.0xa9059cbb with:
             gas gas_remaining wei
            args sub_12426f30[arg3], 5 * arg2 / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit 0xf3015e9c: arg2, msg.sender, 0
    sub_6ea04b33 += arg2
    if not stor1[address(msg.sender)]:
        sub_c86b3347++
        stor1[address(msg.sender)] = 1
}



}
