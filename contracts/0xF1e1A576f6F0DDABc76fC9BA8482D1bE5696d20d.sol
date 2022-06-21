contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address stor1;
address stor2;
address stor3;
address stor4;
uint32 stor5;
uint256 stor5; offset 32
uint256 sub_ed33dbc7;

function sub_ed33dbc7(?) {
    return sub_ed33dbc7
}

function sub_c8536a90(?) {
    require ext_code.size(stor4)
    call stor4.hatch() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawBalance() {
    call stor1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_12fe9c8e(?) {
    require ext_code.size(stor3)
    call stor3.0xa9059cbb with:
         gas gas_remaining wei
        args stor1, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require ext_code.size(stor4)
    call stor4.buy(uint16 arg1, address arg2) with:
       value stor0 wei
         gas gas_remaining wei
        args 1, stor2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor4)
    call stor4.buy(uint16 arg1, address arg2) with:
       value stor0 wei
         gas gas_remaining wei
        args 1, stor2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_98e2fac4(?) {
    require ext_code.size(stor4)
    call stor4.hatchingsNeeded() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        uint32(stor5.field_0) = uint32(uint32(sha3(block.hash((arg1 % 281474976710656) + Mask(248, 8, block.number + -(arg1 % 281474976710656) - 1)) + arg2)) % 100)
        Mask(224, 0, stor5.field_32) = 0
        if sub_ed33dbc7 > 79:
            require ext_code.size(stor4)
            call stor4.hatch() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}



}
