contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 5133]




// =====================  Runtime code  =====================


mapping of struct sub_6a637488;

function sub_6a637488(?) {
    return sub_6a637488[Mask(160, 96, arg1)][3][address(arg2)].field_0
}

function sub_d17b80a8(?) {
    return sub_6a637488[Mask(160, 96, arg1)].field_1024
}

function _fallback() payable {
    revert
}

function sub_be108acb(?) {
    return Mask(160, 96, sub_6a637488[Mask(160, 96, arg1)].field_0), 
           sub_6a637488[Mask(160, 96, arg1)].field_256,
           sub_6a637488[Mask(160, 96, arg1)].field_512,
           sub_6a637488[Mask(160, 96, arg1)].field_1024,
           sub_6a637488[Mask(160, 96, arg1)].field_1280,
           sub_6a637488[Mask(160, 96, arg1)].field_1536,
           bool(sub_6a637488[Mask(160, 96, arg1)].field_1792),
           bool(sub_6a637488[Mask(160, 96, arg1)].field_1800),
           bool(sub_6a637488[Mask(160, 96, arg1)].field_1808)
}

function sub_afb1ee63(?) {
    require sub_6a637488[Mask(160, 96, arg1)].field_1808
    if block.timestamp > sub_6a637488[Mask(160, 96, arg1)].field_1280 + sub_6a637488[Mask(160, 96, arg1)].field_1536:
        require sub_6a637488[Mask(160, 96, arg1)].field_1800
    require sub_6a637488[Mask(160, 96, arg1)].field_1792
    require not sub_6a637488[Mask(160, 96, arg1)].field_1800
    require sub_6a637488[Mask(160, 96, arg1)][3][address(msg.sender)].field_0 > 0
    require sub_6a637488[Mask(160, 96, arg1)][3][address(msg.sender)].field_0 >= arg3
    sub_6a637488[Mask(160, 96, arg1)][3][address(msg.sender)].field_0 -= arg3
    sub_6a637488[Mask(160, 96, arg1)][3][address(arg2)].field_0 += arg3
    emit 0xaf4f603b: arg3, block.timestamp, Mask(160, 96, arg1), msg.sender, arg2
}

function sub_5a8f9b81(?) {
    require sub_6a637488[Mask(160, 96, arg1)].field_1808
    require not sub_6a637488[Mask(160, 96, arg1)].field_1800
    require block.timestamp > sub_6a637488[Mask(160, 96, arg1)].field_1280 + sub_6a637488[Mask(160, 96, arg1)].field_1536
    require not sub_6a637488[Mask(160, 96, arg1)].field_1800
    require sub_6a637488[Mask(160, 96, arg1)][3][address(msg.sender)].field_0 > 0
    sub_6a637488[Mask(160, 96, arg1)][3][address(msg.sender)].field_0 = 0
    call msg.sender with:
       value sub_6a637488[Mask(160, 96, arg1)][3][address(msg.sender)].field_0 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit 0x6ff86c54: sub_6a637488[Mask(160, 96, arg1)][3][address(msg.sender)].field_0, block.timestamp, Mask(160, 96, arg1), msg.sender
}

function sub_93bfffeb(?) payable {
    require not sub_6a637488[Mask(160, 96, arg1)].field_1808
    require arg4 > block.timestamp
    require arg5 >= 168 * 24 * 3600
    require msg.value >= 10^18
    sub_6a637488[Mask(160, 96, arg1)].field_1808 = 1
    sub_6a637488[Mask(160, 96, arg1)].field_512 = arg2
    sub_6a637488[Mask(160, 96, arg1)].field_0 = Mask(160, 96, arg1) >> 96
    sub_6a637488[Mask(160, 96, arg1)][3][address(arg3)].field_0 = msg.value
    sub_6a637488[Mask(160, 96, arg1)].field_1280 = arg4
    sub_6a637488[Mask(160, 96, arg1)].field_1536 = arg5
    sub_6a637488[Mask(160, 96, arg1)].field_1024 = msg.value
    sub_6a637488[Mask(160, 96, arg1)].field_1800 = 0
    sub_6a637488[Mask(160, 96, arg1)].field_1792 = uint8(arg6)
    emit 0x9d83e36e: msg.value, arg6, Mask(160, 96, arg1), arg2, arg3
}

function sub_04bb1bde(?) {
    require sub_6a637488[Mask(160, 96, arg1)].field_1808
    require not sub_6a637488[Mask(160, 96, arg1)].field_1800
    require block.timestamp <= sub_6a637488[Mask(160, 96, arg1)].field_1280 + sub_6a637488[Mask(160, 96, arg1)].field_1536
    require not sub_6a637488[Mask(160, 96, arg1)].field_1800
    require msg.sender == sub_6a637488[Mask(160, 96, arg1)].field_512
    hash = sha256hash(arg2) 
    require sha256hash.result
    hash = ripemd160hash(hash) 
    require ripemd160hash.result
    require address(hash) == Mask(160, 96, arg1)
    sub_6a637488[Mask(160, 96, arg1)].field_1800 = 1
    sub_6a637488[Mask(160, 96, arg1)].field_256 = arg2
    call msg.sender with:
       value sub_6a637488[Mask(160, 96, arg1)].field_1024 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit 0xb5369d30: sub_6a637488[Mask(160, 96, arg1)].field_1024, arg2, block.timestamp, Mask(160, 96, arg1), msg.sender
}



}
