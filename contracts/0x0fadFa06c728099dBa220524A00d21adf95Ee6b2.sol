contract main {




// =====================  Runtime code  =====================


address stor1;
uint32 stor2;
uint256 stor2; offset 32
uint256 stor2;

function _fallback() payable {
    revert
}

function sub_c8536a90(?) {
    require ext_code.size(stor1)
    call stor1.hatch() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_98e2fac4(?) {
    require ext_code.size(stor1)
    call stor1.hatchingsNeeded() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        uint32(stor2.field_0) = uint32(uint32(sha3(block.hash((arg1 % 281474976710656) + Mask(248, 8, block.number + -(arg1 % 281474976710656) - 1)) + arg2)) % 100)
        Mask(224, 0, stor2.field_32) = 0
        if uint256(stor2.field_0) > 79:
            require ext_code.size(stor1)
            call stor1.hatch() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}



}
