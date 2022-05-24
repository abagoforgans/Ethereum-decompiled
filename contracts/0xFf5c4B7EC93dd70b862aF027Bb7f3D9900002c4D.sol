contract main {




// =====================  Runtime code  =====================


const TIMESTAMP_BUCKET_SIZE = 3600

const BLOCKS_BUCKET_SIZE = 240


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address transactionRequestCoreAddress;
mapping of uint8 stor2;

function paused() {
    return bool(uint8(stor0.field_160))
}

function owner() {
    return owner
}

function isKnownRequest(address arg1) {
    return bool(stor2[address(arg1)])
}

function transactionRequestCore() {
    return transactionRequestCoreAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function unpause() {
    require msg.sender == owner
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getBucket(uint256 arg1, uint8 arg2) {
    require arg2 <= 2
    if arg2 == 1:
        return (-arg1 - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * arg1 % 240))
    require arg2 <= 2
    require arg2 == 2
    return (arg1 - (arg1 % 3600))
}

function validateRequestParams(address[3] arg1, uint256[12] arg2, uint256 arg3) {
    require ext_code.size(0xe6d49e39bf23ddd992c9182a0ef69ef624a44b63)
    delegate 0xe6d49e39bf23ddd992c9182a0ef69ef624a44b63.validate(address[4] arg1, uint256[12] arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(call.data[36]), address(call.data[68]) >> 768, call.data[100 len 384], cd[484]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    return delegate.return_data[0 len 192]
}

function createRequest(address[3] arg1, uint256[12] arg2, bytes arg3) payable {
    mem[608 len ('cd', 484).length] = call.data[cd[484] + 36 len ('cd', 484).length]
    require not uint8(stor0.field_160)
    mem[ceil32(('cd', 484).length) + 608] = 63
    mem[ceil32(('cd', 484).length) + 640] = 0x600034603b57603080600f833981f36000368180378080368173bebebebebebe
    mem[ceil32(('cd', 484).length) + 672] = 0xbebebebebebebebebebebebebebe5af43d82803e15602c573d90f35b3d90fd00
    idx = 0
    while idx < 20:
        require idx + 26 < 63
        mem[ceil32(('cd', 484).length) + idx + 666 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('stor', ('name', 'transactionRequestCoreAddress', 1))), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('stor', ('name', 'transactionRequestCoreAddress', 1))), 0)), ('var', 0)), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('stor', ('name', 'transactionRequestCoreAddress', 1))), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('stor', ('name', 'transactionRequestCoreAddress', 1))), 0)), ('var', 0)), 0) - 256
        idx = idx + 1
        continue 
    create contract with 0 wei
                    code: mem[ceil32(('cd', 484).length) + 640 len 63]
    mem[ceil32(('cd', 484).length) + 736] = call.data[16 len 20]
    mem[ceil32(('cd', 484).length) + 768] = call.data[48 len 20]
    mem[ceil32(('cd', 484).length) + 800] = call.data[80 len 20]
    mem[ceil32(('cd', 484).length) + 1412 len ceil32(('cd', 484).length)] = call.data[cd[484] + 36 len ('cd', 484).length], mem[('cd', 484).length + 608 len ceil32(('cd', 484).length) - ('cd', 484).length]
    if not ('cd', 484).length % 32:
        require ext_code.size(address(create.new_address))
        call address(create.new_address).0x820e8522 with:
           value msg.value wei
             gas gas_remaining wei
            args mem[ceil32(('cd', 484).length) + 736 len 96] >> 768, call.data[100 len 384], 544, ('cd', 484).length, Mask(8 * ('cd', 484).length, -(8 * ('cd', 484).length) + 256, call.data[cd[484] + 36 len ('cd', 484).length], mem[('cd', 484).length + 608 len ceil32(('cd', 484).length) - ('cd', 484).length]) << (8 * ('cd', 484).length) - 256
    else:
        mem[floor32(('cd', 484).length) + ceil32(('cd', 484).length) + 1412] = mem[floor32(('cd', 484).length) + ceil32(('cd', 484).length) + -(('cd', 484).length % 32) + 1444 len ('cd', 484).length % 32]
        require ext_code.size(address(create.new_address))
        call address(create.new_address).0x820e8522 with:
           value msg.value wei
             gas gas_remaining wei
            args mem[ceil32(('cd', 484).length) + 736 len 96] >> 768, call.data[100 len 384], 544, ('cd', 484).length, Mask(8 * ceil32(('cd', 484).length), -(8 * ceil32(('cd', 484).length)) + 256, call.data[cd[484] + 36 len ('cd', 484).length], mem[('cd', 484).length + 608 len ceil32(('cd', 484).length) - ('cd', 484).length]) << (8 * ceil32(('cd', 484).length)) - 256, mem[(2 * ceil32(('cd', 484).length)) + 1412 len floor32(('cd', 484).length) + -ceil32(('cd', 484).length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor2[address(create.new_address)] = 1
    require call.data[260] <= 2
    require call.data[260] <= 2
    if call.data[260] == 1:
        emit RequestCreated(address(create.new_address), call.data[100 len 384], address(call.data[4]), -call.data[324] - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * call.data[324] % 240));
    else:
        require call.data[260] <= 2
        require call.data[260] == 2
        emit RequestCreated(address(create.new_address), call.data[100 len 384], address(call.data[4]), call.data[324] - (call.data[324] % 3600));
    return address(create.new_address)
}

function createValidatedRequest(address[3] arg1, uint256[12] arg2, bytes arg3) payable {
    mem[608 len ('cd', 484).length] = call.data[cd[484] + 36 len ('cd', 484).length]
    mem[ceil32(('cd', 484).length) + 608 len 192] = code.data[5773 len 192]
    mem[ceil32(('cd', 484).length) + 1252 len 384] = call.data[100 len 384]
    mem[ceil32(('cd', 484).length) + 1636] = msg.value
    require ext_code.size(0xe6d49e39bf23ddd992c9182a0ef69ef624a44b63)
    delegate 0xe6d49e39bf23ddd992c9182a0ef69ef624a44b63.validate(address[4] arg1, uint256[12] arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(call.data[36]), address(call.data[68]) >> 768, call.data[100 len 384], msg.value
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 192
    require ext_code.size(0x54c0f1adca1b6e2f2c158b9c18830bf98395ddf8)
    delegate 0x54c0f1adca1b6e2f2c158b9c18830bf98395ddf8.all(bool[6] arg1) with:
         gas gas_remaining wei
        args delegate.return_data[0 len 192]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not delegate.return_data[0]:
        if not delegate.return_data[0]:
            emit ValidationError(0);
        if not delegate.return_data[32]:
            emit ValidationError(1);
        if not delegate.return_data[64]:
            emit ValidationError(2);
        if not delegate.return_data[96]:
            emit ValidationError(3);
        if not delegate.return_data[128]:
            emit ValidationError(4);
        if not delegate.return_data[160]:
            emit ValidationError(5);
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            return 0
    require not uint8(stor0.field_160)
    mem[ceil32(('cd', 484).length) + ceil32(return_data.size) + 1152] = 0x600034603b57603080600f833981f36000368180378080368173bebebebebebe
    mem[ceil32(('cd', 484).length) + ceil32(return_data.size) + 1184] = 0xbebebebebebebebebebebebebebe5af43d82803e15602c573d90f35b3d90fd00
    idx = 0
    while idx < 20:
        require idx + 26 < 63
        mem[ceil32(('cd', 484).length) + ceil32(return_data.size) + idx + 1178 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('stor', ('name', 'transactionRequestCoreAddress', 1))), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('stor', ('name', 'transactionRequestCoreAddress', 1))), 0)), ('var', 0)), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('stor', ('name', 'transactionRequestCoreAddress', 1))), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('stor', ('name', 'transactionRequestCoreAddress', 1))), 0)), ('var', 0)), 0) - 256
        idx = idx + 1
        continue 
    create contract with 0 wei
                    code: mem[ceil32(('cd', 484).length) + ceil32(return_data.size) + 1152 len 63]
    mem[ceil32(('cd', 484).length) + ceil32(return_data.size) + 1248] = call.data[16 len 20]
    mem[ceil32(('cd', 484).length) + ceil32(return_data.size) + 1280] = call.data[48 len 20]
    mem[ceil32(('cd', 484).length) + ceil32(return_data.size) + 1312] = call.data[80 len 20]
    mem[ceil32(('cd', 484).length) + ceil32(return_data.size) + 1924 len ceil32(('cd', 484).length)] = call.data[cd[484] + 36 len ('cd', 484).length], mem[('cd', 484).length + 608 len ceil32(('cd', 484).length) - ('cd', 484).length]
    if not ('cd', 484).length % 32:
        require ext_code.size(address(create.new_address))
        call address(create.new_address).0x820e8522 with:
           value msg.value wei
             gas gas_remaining wei
            args msg.sender, mem[ceil32(('cd', 484).length) + ceil32(return_data.size) + 1248 len 96], call.data[100 len 384], 544, ('cd', 484).length, Mask(8 * ('cd', 484).length, -(8 * ('cd', 484).length) + 256, call.data[cd[484] + 36 len ('cd', 484).length], mem[('cd', 484).length + 608 len ceil32(('cd', 484).length) - ('cd', 484).length]) << (8 * ('cd', 484).length) - 256
    else:
        mem[floor32(('cd', 484).length) + ceil32(('cd', 484).length) + ceil32(return_data.size) + 1924] = mem[floor32(('cd', 484).length) + ceil32(('cd', 484).length) + ceil32(return_data.size) + -(('cd', 484).length % 32) + 1956 len ('cd', 484).length % 32]
        require ext_code.size(address(create.new_address))
        call address(create.new_address).0x820e8522 with:
           value msg.value wei
             gas gas_remaining wei
            args msg.sender, mem[ceil32(('cd', 484).length) + ceil32(return_data.size) + 1248 len 96], call.data[100 len 384], 544, ('cd', 484).length, Mask(8 * ceil32(('cd', 484).length), -(8 * ceil32(('cd', 484).length)) + 256, call.data[cd[484] + 36 len ('cd', 484).length], mem[('cd', 484).length + 608 len ceil32(('cd', 484).length) - ('cd', 484).length]) << (8 * ceil32(('cd', 484).length)) - 256, mem[(2 * ceil32(('cd', 484).length)) + ceil32(return_data.size) + 1924 len floor32(('cd', 484).length) + -ceil32(('cd', 484).length) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor2[address(create.new_address)] = 1
    require call.data[260] <= 2
    require call.data[260] <= 2
    if call.data[260] == 1:
        emit RequestCreated(address(create.new_address), call.data[100 len 384], address(call.data[4]), -call.data[324] - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * call.data[324] % 240));
    else:
        require call.data[260] <= 2
        require call.data[260] == 2
        emit RequestCreated(address(create.new_address), call.data[100 len 384], address(call.data[4]), call.data[324] - (call.data[324] % 3600));
    return address(create.new_address)
}



}
