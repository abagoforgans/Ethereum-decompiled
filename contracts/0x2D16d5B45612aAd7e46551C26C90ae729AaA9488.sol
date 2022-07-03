contract main {




// =====================  Runtime code  =====================


const sub_9ba6e9c4(?) = 'StockenRegistry'

const sub_ee6e6338(?) = '1.1.1'


address platformAddress;
mapping of uint32 registry;
uint32 stor2;
mapping of struct sub_2a313003;

function registry(address arg1) {
    return registry[arg1]
}

function sub_06b36bb4(?) {
    return bool(registry[address(arg1)])
}

function sub_2a313003(?) {
    return sub_2a313003[arg1].field_0, sub_2a313003[arg1].field_256, sub_2a313003[arg1].field_512
}

function getPlatformAddress() {
    return platformAddress
}

function platform() {
    return platformAddress
}

function _fallback() payable {
    revert
}

function sub_7fed2437(?) {
    require ext_code.size(platformAddress)
    call platformAddress.0xbc81ce6d with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[31 len 1]
}

function isAdmin(address arg1) {
    require ext_code.size(platformAddress)
    call platformAddress.0x24d7806c with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function isIssuer(address arg1) {
    require ext_code.size(platformAddress)
    call platformAddress.0x877b9a67 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function isInvestor(address arg1) {
    require ext_code.size(platformAddress)
    call platformAddress.0xcee2a9cf with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_bed78dde(?) {
    require ext_code.size(platformAddress)
    call platformAddress.0xbed78dde with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_55053489(?) {
    if sub_2a313003[arg1].field_0:
        revert with 0, 'identifier already is using'
    sub_2a313003[arg1].field_0 = arg2
    sub_2a313003[arg1].field_256 = msg.sender
    sub_2a313003[arg1].field_512 = arg3
    require ext_code.size(msg.sender)
    call msg.sender.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg2), this.address, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xf05bb099: address(arg2), arg1
}

function sub_fb12738d(?) {
    if not sub_2a313003[arg1].field_0:
        revert with 0, 'no tockens to withdraw'
    if sub_2a313003[arg1].field_0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'user can withdraw only his stockens'
    require ext_code.size(sub_2a313003[arg1].field_256)
    call sub_2a313003[arg1].field_256.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_2a313003[arg1].field_0, sub_2a313003[arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_2a313003[arg1].field_0 = 0
    sub_2a313003[arg1].field_256 = 0
    sub_2a313003[arg1].field_512 = 0
}

function sub_80ccf97a(?) {
    require ext_code.size(platformAddress)
    call platformAddress.0x877b9a67 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 32, 18, code.data[20521 len 32]
    if not sub_2a313003[arg1].field_0:
        revert with 0, 'no tockens to burn'
    require ext_code.size(sub_2a313003[arg1].field_256)
    call sub_2a313003[arg1].field_256.burnTokens(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args this.address, sub_2a313003[arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_2a313003[arg1].field_0 = 0
    sub_2a313003[arg1].field_256 = 0
    sub_2a313003[arg1].field_512 = 0
}

function sub_f8db9345(?) {
    require ext_code.size(platformAddress)
    call platformAddress.0x877b9a67 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 32, 18, code.data[20521 len 32]
    if not sub_2a313003[arg1].field_0:
        revert with 0, 'no tockens to burn'
    require ext_code.size(sub_2a313003[arg1].field_256)
    call sub_2a313003[arg1].field_256.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_2a313003[arg1].field_0, sub_2a313003[arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_2a313003[arg1].field_0 = 0
    sub_2a313003[arg1].field_256 = 0
    sub_2a313003[arg1].field_512 = 0
}

function sub_fe28f8c4(?) {
    require ext_code.size(platformAddress)
    call platformAddress.0xbc81ce6d with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0x41cb6f6200000000000000000000000000000000000000000000000000000000
    mem[100] = uint8(ext_call.return_data[0])
    require ext_code.size(platformAddress)
    call platformAddress.0x41cb6f62 with:
         gas gas_remaining wei
        args uint8(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _8 = mem[96 len 4], uint8(ext_call.return_data[0]) << 216
    require mem[96 len 4], uint8(ext_call.return_data[0]) << 216 <= 4294967296
    require mem[96 len 4], uint8(ext_call.return_data[0]) << 216 + 32 <= return_data.size
    require return_data.size >= mem[mem[96 len 4], uint8(ext_call.return_data[0]) << 216 + 96] + mem[96 len 4], uint8(ext_call.return_data[0]) << 216 + 32 and mem[mem[96 len 4], uint8(ext_call.return_data[0]) << 216 + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = 32
    mem[ceil32(return_data.size) + 128] = mem[_8 + 96]
    _12 = mem[_8 + 96]
    mem[ceil32(return_data.size) + 160 len ceil32(mem[_8 + 96])] = mem[_8 + 128 len ceil32(mem[_8 + 96])]
    if not _12 % 32:
        return 32, mem[ceil32(return_data.size) + 128 len _12 + 32]
    mem[floor32(_12) + ceil32(return_data.size) + 160] = mem[floor32(_12) + ceil32(return_data.size) + -(_12 % 32) + 192 len _12 % 32]
    return 32, mem[ceil32(return_data.size) + 128 len floor32(_12) + 64]
}

function sub_21ca79a4(?) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    require ext_code.size(platformAddress)
    call platformAddress.0x877b9a67 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 32, 18, code.data[20521 len 32]
    require ext_code.size(platformAddress)
    call platformAddress.0xbc81ce6d with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(platformAddress)
    call platformAddress.0xf213401e with:
         gas gas_remaining wei
        args ext_call.return_data[0] << 248, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(platformAddress)
    call platformAddress.0xf213401e with:
         gas gas_remaining wei
        args ext_call.return_data[0] << 248, 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(platformAddress)
    call platformAddress.0x258f52a9 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor2 = uint32(stor2 + 1)
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len 13737] = code.data[6784 len 13737]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 14217 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 14217] = arg3.length
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 14249 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            mem[arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 14249] = arg2.length
            mem[arg3.length + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 14281 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            create contract with 0 wei
                            code: code.data[6784 len 13737], msg.sender, ext_call.return_data[0] << 248, arg1, 288, arg2.length + 320, address(ext_call.return_data[0]), address(ext_call.return_data[0]), 0, arg3.length + arg2.length + 352, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 14217 len (34 * arg2.length) + arg3.length + -ceil32(arg2.length) + 64]
        else:
            mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 14249] = mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 14281 len arg3.length % 32]
            mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 14281] = arg2.length
            mem[floor32(arg3.length) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 14313 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            create contract with 0 wei
                            code: code.data[6784 len 13737], msg.sender, ext_call.return_data[0] << 248, arg1, 288, arg2.length + 320, address(ext_call.return_data[0]), address(ext_call.return_data[0]), 0, floor32(arg3.length) + arg2.length + 384, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 14217 len (34 * arg2.length) + floor32(arg3.length) + -ceil32(arg2.length) + 96]
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 14217] = mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg2.length % 32) + 14249 len arg2.length % 32]
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 14249] = arg3.length
        mem[floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 14281 len ceil32(arg3.length)] = arg3[all], mem[ceil32(arg2.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            mem[arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 14281] = arg2.length
            mem[arg3.length + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 14313 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            create contract with 0 wei
                            code: code.data[6784 len 13737], msg.sender, ext_call.return_data[0] << 248, arg1, 288, floor32(arg2.length) + 352, address(ext_call.return_data[0]), address(ext_call.return_data[0]), 0, arg3.length + floor32(arg2.length) + 384, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 14217 len (32 * arg2.length) + arg3.length + floor32(arg2.length) + -ceil32(arg2.length) + 96]
        else:
            mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 14281] = mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + -(arg3.length % 32) + 14313 len arg3.length % 32]
            mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 14313] = arg2.length
            mem[floor32(arg3.length) + floor32(arg2.length) + ceil32(arg2.length) + ceil32(arg3.length) + 14345 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            create contract with 0 wei
                            code: code.data[6784 len 13737], msg.sender, ext_call.return_data[0] << 248, arg1, 288, floor32(arg2.length) + 352, address(ext_call.return_data[0]), address(ext_call.return_data[0]), 0, floor32(arg3.length) + floor32(arg2.length) + 416, arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + ceil32(arg3.length) + 14217 len (32 * arg2.length) + floor32(arg3.length) + floor32(arg2.length) + -ceil32(arg2.length) + 128]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x7ade3a1a: stor2 + 1 << 224, address(create.new_address)
    registry[address(create.new_address)] = uint32(stor2 + 1)
    require ext_code.size(address(create.new_address))
    call address(create.new_address).mint(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return uint32(stor2 + 1)
}

function sub_713e4200(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg3.length
    require ext_code.size(platformAddress)
    call platformAddress.0x877b9a67 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 32, 18, code.data[20521 len 32]
    require ext_code.size(platformAddress)
    call platformAddress.0xbc81ce6d with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(platformAddress)
    call platformAddress.0xf213401e with:
         gas gas_remaining wei
        args ext_call.return_data[0] << 248, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(platformAddress)
    call platformAddress.0xf213401e with:
         gas gas_remaining wei
        args ext_call.return_data[0] << 248, 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(platformAddress)
    call platformAddress.0x258f52a9 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor2 = uint32(stor2 + 1)
    mem[(32 * arg3.length) + ceil32(arg1.length) + ceil32(arg2.length) + 14249 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        mem[arg1.length + (32 * arg3.length) + ceil32(arg1.length) + ceil32(arg2.length) + 14249] = arg2.length
        mem[arg1.length + (32 * arg3.length) + ceil32(arg1.length) + ceil32(arg2.length) + 14281 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            mem[arg2.length + arg1.length + (32 * arg3.length) + ceil32(arg1.length) + ceil32(arg2.length) + 14281] = arg3.length
            mem[arg2.length + arg1.length + (32 * arg3.length) + ceil32(arg1.length) + ceil32(arg2.length) + 14313 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
            create contract with 0 wei
                            code: code.data[6784 len 13737], msg.sender, ext_call.return_data[0] << 248, 0, 288, arg1.length + 320, address(ext_call.return_data[0]), address(ext_call.return_data[0]), 1, arg2.length + arg1.length + 352, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(32 * arg3.length) + (2 * ceil32(arg1.length)) + ceil32(arg2.length) + 14249 len (32 * arg3.length) + arg2.length + arg1.length + -ceil32(arg1.length) + 64]
        else:
            mem[floor32(arg2.length) + arg1.length + (32 * arg3.length) + ceil32(arg1.length) + ceil32(arg2.length) + 14281] = mem[floor32(arg2.length) + arg1.length + (32 * arg3.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 14313 len arg2.length % 32]
            mem[floor32(arg2.length) + arg1.length + (32 * arg3.length) + ceil32(arg1.length) + ceil32(arg2.length) + 14313] = arg3.length
            mem[floor32(arg2.length) + arg1.length + (32 * arg3.length) + ceil32(arg1.length) + ceil32(arg2.length) + 14345 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
            create contract with 0 wei
                            code: code.data[6784 len 13737], msg.sender, ext_call.return_data[0] << 248, 0, 288, arg1.length + 320, address(ext_call.return_data[0]), address(ext_call.return_data[0]), 1, floor32(arg2.length) + arg1.length + 384, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(32 * arg3.length) + (2 * ceil32(arg1.length)) + ceil32(arg2.length) + 14249 len (32 * arg3.length) + floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 96]
    else:
        mem[floor32(arg1.length) + (32 * arg3.length) + ceil32(arg1.length) + ceil32(arg2.length) + 14249] = mem[floor32(arg1.length) + (32 * arg3.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 14281 len arg1.length % 32]
        mem[floor32(arg1.length) + (32 * arg3.length) + ceil32(arg1.length) + ceil32(arg2.length) + 14281] = arg2.length
        mem[floor32(arg1.length) + (32 * arg3.length) + ceil32(arg1.length) + ceil32(arg2.length) + 14313 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            mem[arg2.length + floor32(arg1.length) + (32 * arg3.length) + ceil32(arg1.length) + ceil32(arg2.length) + 14313] = arg3.length
            mem[arg2.length + floor32(arg1.length) + (32 * arg3.length) + ceil32(arg1.length) + ceil32(arg2.length) + 14345 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
            create contract with 0 wei
                            code: code.data[6784 len 13737], msg.sender, ext_call.return_data[0] << 248, 0, 288, floor32(arg1.length) + 352, address(ext_call.return_data[0]), address(ext_call.return_data[0]), 1, arg2.length + floor32(arg1.length) + 384, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(32 * arg3.length) + (2 * ceil32(arg1.length)) + ceil32(arg2.length) + 14249 len (32 * arg3.length) + arg2.length + floor32(arg1.length) + -ceil32(arg1.length) + 96]
        else:
            mem[floor32(arg2.length) + floor32(arg1.length) + (32 * arg3.length) + ceil32(arg1.length) + ceil32(arg2.length) + 14313] = mem[floor32(arg2.length) + floor32(arg1.length) + (32 * arg3.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 14345 len arg2.length % 32]
            mem[floor32(arg2.length) + floor32(arg1.length) + (32 * arg3.length) + ceil32(arg1.length) + ceil32(arg2.length) + 14345] = arg3.length
            mem[floor32(arg2.length) + floor32(arg1.length) + (32 * arg3.length) + ceil32(arg1.length) + ceil32(arg2.length) + 14377 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
            create contract with 0 wei
                            code: code.data[6784 len 13737], msg.sender, ext_call.return_data[0] << 248, 0, 288, floor32(arg1.length) + 352, address(ext_call.return_data[0]), address(ext_call.return_data[0]), 1, floor32(arg2.length) + floor32(arg1.length) + 416, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(32 * arg3.length) + (2 * ceil32(arg1.length)) + ceil32(arg2.length) + 14249 len (32 * arg3.length) + floor32(arg2.length) + floor32(arg1.length) + -ceil32(arg1.length) + 128]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x7ade3a1a: stor2 + 1 << 224, address(create.new_address)
    registry[address(create.new_address)] = uint32(stor2 + 1)
    return uint32(stor2 + 1)
}



}
