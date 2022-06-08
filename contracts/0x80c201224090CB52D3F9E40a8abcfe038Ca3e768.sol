contract main {




// =====================  Runtime code  =====================


address stor0;
uint8 stor1; offset 160
uint128 stor1; offset 160
address stor1;
uint256 stor2;
address stor3;

function sub_3e862157(?) {
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You are not allowed to run this function, required role: Contract-Owner'
    return bool(uint8(stor1.field_160))
}

function _fallback() payable {
    revert
}

function sub_732aea58(?) {
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You are not allowed to run this function, required role: Contract-Owner'
    stor3 = arg1
    emit 0xf5dbeff7: address(msg.sender), address(arg1), Array(len=53, data='a new address has been assigned ', 'to SafeBlocksFirewall')
}

function sub_b402370e(?) {
    if address(stor1.field_0) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You are not allowed to run this function, required role: Super-Owner'
    Mask(96, 0, stor1.field_160) = Mask(96, 0, arg1)
    emit 0xf5dbeff7: address(msg.sender), msg.sender, Array(len=35, data='a new Bypass-Mode has been assig', 'ned')
}

function sub_30805ad0(?) {
    if uint8(stor1.field_160):
        emit 0xc78ba993: address(msg.sender), 1, address(arg3), arg1, arg2, block.number
        return 1
    require ext_code.size(stor3)
    call stor3.0x71888ffc with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), arg1, address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xc78ba993: address(msg.sender), bool(ext_call.return_data[0]), address(arg3), arg1, arg2, block.number
    return bool(ext_call.return_data[0])
}

function sub_14c06aa5(?) {
    if uint8(stor1.field_160):
        emit 0x9806d19a: address(msg.sender), 1, address(arg1), Mask(32, 224, arg2), block.number
        return 1
    require ext_code.size(stor3)
    call stor3.0x8c55be34 with:
         gas gas_remaining wei
        args msg.sender, address(arg1), Mask(32, 224, arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x9806d19a: address(msg.sender), bool(ext_call.return_data[0]), address(arg1), Mask(32, 224, arg2), block.number
    return bool(ext_call.return_data[0])
}

function sub_a603026b(?) {
    mem[128 len arg2.length] = arg2[all]
    if address(stor1.field_0) != msg.sender:
        revert with 0, 'You are not allowed to run this function, required role: Super-Owner with Password'
    mem[ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[(2 * floor32(arg2.length)) + ceil32(arg2.length) + 192 len arg2.length % 32] = mem[ceil32(arg2.length) + -(arg2.length % 32) + floor32(arg2.length) + 192 len arg2.length % 32]
    if stor2 != sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 160 len arg2.length % 32]):
        revert with 0, 'You are not allowed to run this function, required role: Super-Owner with Password'
    stor2 = arg3
    stor0 = arg1
    emit 0xf5dbeff7: msg.sender, address(arg1), Array(len=29, data='a new Owner has been assigned')
}

function sub_f05d75a0(?) {
    mem[128 len arg2.length] = arg2[all]
    if address(stor1.field_0) != msg.sender:
        revert with 0, 'You are not allowed to run this function, required role: Super-Owner with Password'
    mem[ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[(2 * floor32(arg2.length)) + ceil32(arg2.length) + 192 len arg2.length % 32] = mem[ceil32(arg2.length) + -(arg2.length % 32) + floor32(arg2.length) + 192 len arg2.length % 32]
    if stor2 != sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 160 len arg2.length % 32]):
        revert with 0, 'You are not allowed to run this function, required role: Super-Owner with Password'
    stor2 = arg3
    address(stor1.field_0) = arg1
    emit 0xf5dbeff7: msg.sender, address(arg1), Array(len=35, data='a new Super-Owner has been assig', 'ned')
}



}
