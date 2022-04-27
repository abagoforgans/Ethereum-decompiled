contract main {


// =======================  Init code  ======================


uint8 stor0; offset 128
uint128 stor0; offset 136
uint128 stor0;
uint8 stor1; offset 128
uint128 stor1; offset 136
uint128 stor1;
uint256 stor2;
address stor3;

function _fallback() payable {
    uint128(stor0.field_0) = test266151307()
    uint8(stor0.field_128) = 1
    Mask(120, 0, stor0.field_136) = 0
    uint128(stor1.field_0) = test266151307()
    uint8(stor1.field_128) = 1
    Mask(120, 0, stor1.field_136) = 0
    stor2 = 2 * 10^15
    require not msg.value
    stor3 = msg.sender
    return code.data[410 len 2052]
}



// =====================  Runtime code  =====================


const sub_d4de4943(?) = 320


uint128 stor0;
uint128 stor0; offset 128
uint256 stor0;
uint128 stor1;
uint128 stor1; offset 128
uint256 stor1;
uint256 sub_70d2aac7;
address stor3;
mapping of struct stor4;

function sub_70d2aac7(?) {
    return sub_70d2aac7
}

function _fallback() payable {
    revert
}

function sub_c8c7c21d(?) {
    require msg.sender == stor3
    require arg1 > 0
    sub_70d2aac7 = arg1
}

function minY() {
    return ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor1', 1)))))))
}

function minX() {
    return ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor0', 0)))))))
}

function maxX() {
    return ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor0', 0)))))))
}

function maxY() {
    return ('signextend', 15, ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor1', 1)))))))
}

function sub_d9ef4da9(?) {
    require msg.sender == stor3
    require ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) < ('signextend', 15, ('signextend', 15, ('param', 'arg2')))
    require ('signextend', 15, ('signextend', 15, ('param', 'arg3'))) < ('signextend', 15, ('signextend', 15, ('param', 'arg4')))
    uint128(stor0.field_0) = uint128(('signextend', 15, ('signextend', 15, ('param', 'arg1'))))
    uint128(stor0.field_128) = uint128(('signextend', 15, ('signextend', 15, ('param', 'arg2'))))
    uint128(stor1.field_0) = uint128(('signextend', 15, ('signextend', 15, ('param', 'arg3'))))
    uint128(stor1.field_128) = uint128(('signextend', 15, ('signextend', 15, ('param', 'arg4'))))
}

function sub_7a98b16b(?) payable {
    require ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor0', 0)))))) <= ('signextend', 15, ('signextend', 15, ('param', 'arg1')))
    require ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) <= ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor0', 0))))))
    require ('signextend', 15, ('signextend', 15, ('type', 256, ('field', 0, ('stor', ('name', 'stor1', 1)))))) <= ('signextend', 15, ('signextend', 15, ('param', 'arg2')))
    require ('signextend', 15, ('signextend', 15, ('param', 'arg2'))) <= ('signextend', 15, ('signextend', 15, ('type', 128, ('field', 128, ('stor', ('name', 'stor1', 1))))))
    if not stor4[(('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128) + uint128(('signextend', 15, ('param', 'arg2')))].field_0:
        require msg.value >= sub_70d2aac7
        stor4[(('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128) + uint128(('signextend', 15, ('param', 'arg2')))].field_0 = 1
    else:
        require stor4[(('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128) + uint128(('signextend', 15, ('param', 'arg2')))].field_192
        require msg.value >= stor4[(('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128) + uint128(('signextend', 15, ('param', 'arg2')))].field_256
    stor4[(('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128) + uint128(('signextend', 15, ('param', 'arg2')))].field_32 = msg.sender
    stor4[(('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128) + uint128(('signextend', 15, ('param', 'arg2')))].field_192 = 0
    stor4[(('signextend', 15, ('signextend', 15, ('param', 'arg1'))) << 128) + uint128(('signextend', 15, ('param', 'arg2')))].field_256 = 0
}



}
