contract main {


// =======================  Init code  ======================


function _fallback() {
    address(stor[0].field_0) = msg.sender
    require ('storage', 160, 0, 0) == msg.sender
    address(stor[1].field_0) = code.data[1849 len 20]
    uint8(stor[sha3(Mask(32, 224, sha3('calculatePaymentDetails(IProduct', 'Engine.ProductData storage,uint2' >> 256, mem[320 len 8])), 2)].field_0) = 96
    stor[sha3(Mask(32, 224, sha3('calculatePaymentDetails(IProduct', 'Engine.ProductData storage,uint2' >> 256, mem[320 len 8])), 2)].field_8 % 16777216 = 0
    emit 0xeed084a3: 96, Mask(32, 224, sha3('calculatePaymentDetails(IProduct', 'Engine.ProductData storage,uint2' >> 256, mem[320 len 8])), 96, 72, 'calculatePaymentDetails(IProduct', 'Engine.ProductData storage,uint2', '56,bool)' >> 256, Mask(64, -512, 'calculatePaymentDetails(IProduct', 'Engine.ProductData storage,uint2', '56,bool)') << 512
    return code.data[740 len 1097]
}



// =====================  Runtime code  =====================


address owner;
address libAddress;
mapping of uint32 sub_206bd362;

function sub_206bd362(?) {
    return sub_206bd362[Mask(32, 224, arg1)]
}

function owner() {
    return owner
}

function lib() {
    return libAddress
}

function _fallback() payable {
    revert
}

function replace(address arg1) {
    require owner == msg.sender
    libAddress = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require owner != arg1
    owner = arg1
}

function sub_4b351dca(?) {
    mem[128 len arg1.length] = arg1[all]
    require owner == msg.sender
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    sub_206bd362[Mask(32, 224, ('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1'))))))))] = arg2
    mem[ceil32(arg1.length) + 160] = Mask(32, 224, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]))
    emit 0xeed084a3: Array(len=arg1.length, data=arg1[all]), mem[ceil32(arg1.length) + 160], arg2 << 224
}



}
