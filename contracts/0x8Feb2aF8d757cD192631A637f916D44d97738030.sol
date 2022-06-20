contract main {




// =====================  Runtime code  =====================


const sub_0419816e(?) = 1000000 * 10^18

const version = '0.1.0'


uint32 challenge_period; offset 160
address owner_address;
address tokenAddress;
mapping of struct channels;
mapping of struct closing_requests;
mapping of uint256 sub_ec283caa;
mapping of uint256 withdrawn_balances;

function challenge_period() {
    return challenge_period
}

function withdrawn_balances(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return withdrawn_balances[arg1]
}

function closing_requests(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return bool(closing_requests[arg1].field_0), 
           bool(closing_requests[arg1].field_8),
           closing_requests[arg1].field_0,
           closing_requests[arg1].field_256,
           closing_requests[arg1].field_448
}

function channels(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return channels[arg1].field_0, channels[arg1].field_192
}

function owner_address() {
    return owner_address
}

function sub_ec283caa(?) {
    require calldata.size - 4 >= 32
    return sub_ec283caa[arg1]
}

function token() {
    return tokenAddress
}

function kill() {
    require msg.sender == owner_address
    selfdestruct(owner_address)
}

function _fallback() payable {
    revert
}

function getKey(address arg1, address arg2, uint32 arg3) {
    require calldata.size - 4 >= 96
    return sha3(arg1, arg2, arg3)
}

function getChannelInfo(address arg1, address arg2, uint32 arg3) {
    require calldata.size - 4 >= 96
    require channels[arg1][arg2][arg3].field_192 > 0
    return sha3(arg1, arg2, arg3), 
           channels[arg1][arg2][arg3].field_0,
           closing_requests[arg1][arg2][arg3].field_256,
           closing_requests[arg1][arg2][arg3].field_0,
           closing_requests[arg1][arg2][arg3].field_256,
           withdrawn_balances[arg1][arg2][arg3]
}

function sub_2c497b83(?) {
    require calldata.size - 4 >= 128
    require channels[msg.sender][arg1][arg2].field_192 > 0
    require not closing_requests[msg.sender][arg1][arg2].field_448
    require Mask(192, 0, arg3) <= channels[msg.sender][arg1][arg2].field_0
    require Mask(192, 0, arg4) <= channels[msg.sender][arg1][arg2].field_0
    require Mask(192, 0, Mask(192, 0, arg3) + Mask(192, 0, arg4)) <= channels[msg.sender][arg1][arg2].field_0
    closing_requests[msg.sender][arg1][arg2].field_448 = uint32(block.number + challenge_period)
    require closing_requests[msg.sender][arg1][arg2].field_448 > block.number
    closing_requests[msg.sender][arg1][arg2].field_0 = 1
    closing_requests[msg.sender][arg1][arg2].field_8 = 0
    closing_requests[msg.sender][arg1][arg2].field_16 = Mask(192, 0, arg3)
    closing_requests[msg.sender][arg1][arg2].field_256 = Mask(192, 0, arg4)
    emit 0x9b26970c: arg3 << 64, Mask(192, 0, arg4), msg.sender, arg1, arg2
}

function createChannel(address arg1, uint192 arg2) {
    require calldata.size - 4 >= 64
    require Mask(192, 0, arg2) <= 1000000 * 10^18
    require not channels[msg.sender][arg1][uint32(block.number)].field_0
    require not channels[msg.sender][arg1][uint32(block.number)].field_192
    require not closing_requests[msg.sender][arg1][uint32(block.number)].field_448
    channels[msg.sender][arg1][uint32(block.number)].field_0 = Mask(192, 0, arg2)
    channels[msg.sender][arg1][uint32(block.number)].field_192 = uint32(block.number)
    emit ChannelCreated(Mask(192, 0, arg2), msg.sender, arg1);
    require ext_code.size(tokenAddress)
    call tokenAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), Mask(192, 0, arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function sub_39536018(?) {
    require calldata.size - 4 >= 128
    require msg.sender == owner_address
    if arg4 > 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '_sender_percent must be 100 or lower'
    require sub_ec283caa[arg1][arg2][arg3] > 0
    if arg4 > 0:
        require ext_code.size(tokenAddress)
        call tokenAddress.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), Mask(192, 0, Mask(192, 0, sub_ec283caa[arg1][arg2][arg3] * arg4) / 100)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    if arg4 < 100:
        require ext_code.size(tokenAddress)
        call tokenAddress.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), Mask(192, 0, Mask(192, 0, sub_ec283caa[arg1][arg2][arg3] * uint8(-arg4 + 100)) / 100)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    sub_ec283caa[arg1][arg2][arg3] = 0
    emit 0x98953433: arg4, arg1, arg2, arg3
}

function sub_5ea4dc20(?) {
    require calldata.size - 4 >= 96
    require closing_requests[arg1][arg2][arg3].field_448 > 0
    require block.number > closing_requests[arg1][arg2][arg3].field_448
    require channels[arg1][arg2][arg3].field_192 > 0
    require Mask(192, 0, closing_requests[arg1][arg2][arg3].field_16 + closing_requests[arg1][arg2][arg3].field_256) <= channels[arg1][arg2][arg3].field_0
    require withdrawn_balances[arg1][arg2][arg3] <= closing_requests[arg1][arg2][arg3].field_256
    channels[arg1][arg2][arg3].field_0 = 0
    channels[arg1][arg2][arg3].field_192 = 0
    closing_requests[arg1][arg2][arg3].field_0 = 0
    closing_requests[arg1][arg2][arg3].field_8 = 0
    closing_requests[arg1][arg2][arg3].field_16 = 0
    closing_requests[arg1][arg2][arg3].field_256 = 0
    closing_requests[arg1][arg2][arg3].field_448 = 0
    if closing_requests[arg1][arg2][arg3].field_16 > 0:
        sub_ec283caa[arg1][arg2][arg3] = closing_requests[arg1][arg2][arg3].field_16
    require ext_code.size(tokenAddress)
    call tokenAddress.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), Mask(192, 0, closing_requests[arg1][arg2][arg3].field_256 - withdrawn_balances[arg1][arg2][arg3])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), Mask(192, 0, channels[arg1][arg2][arg3].field_0 - closing_requests[arg1][arg2][arg3].field_16 - closing_requests[arg1][arg2][arg3].field_256)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit 0x1f41c43d: closing_requests[arg1][arg2][arg3].field_0, closing_requests[arg1][arg2][arg3].field_256, Mask(192, 0, closing_requests[arg1][arg2][arg3].field_256 - withdrawn_balances[arg1][arg2][arg3]), arg1, arg2, arg3
}

function sub_d3de2f8a(?) {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[96] = arg5.length
    mem[128 len arg5.length] = arg5[all]
    mem[arg5.length + 128] = 0
    mem[ceil32(arg5.length) + 128] = 22
    mem[ceil32(arg5.length) + 160] = 'Sender proof signature'
    mem[ceil32(arg5.length) + 192] = 8
    mem[ceil32(arg5.length) + 224] = 'receiver'
    mem[ceil32(arg5.length) + 288] = 'string message_id'
    mem[ceil32(arg5.length) + 305] = 'address '
    mem[ceil32(arg5.length) + 313 len 0] = None
    mem[ceil32(arg5.length) + 313 len 24] = Mask(192, 0, 'address ')
    mem[ceil32(arg5.length) + 321] = 'uint32 block_created'
    mem[ceil32(arg5.length) + 341] = 'uint192 total_escrowed'
    mem[ceil32(arg5.length) + 363] = 'uint192 total_released'
    mem[ceil32(arg5.length) + 385] = 'address contract'
    mem[ceil32(arg5.length) + 256] = 113
    mem[64] = ceil32(arg5.length) + 401
    mem[ceil32(arg5.length) + 433 len floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)])] = mem[ceil32(arg5.length) + 160 len floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)])]
    mem[ceil32(arg5.length) + floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]) + -(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] % 32) + 465 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] % 32] = mem[ceil32(arg5.length) + -(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] % 32) + floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]) + 192 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] % 32]
    mem[Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + ceil32(arg5.length) + 433] = address(arg1)
    mem[Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + ceil32(arg5.length) + 453] = arg2 << 224
    mem[Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + ceil32(arg5.length) + 457] = arg3 << 64
    mem[Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + ceil32(arg5.length) + 481] = arg4 << 64
    mem[Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + ceil32(arg5.length) + 505] = address(this.address)
    _84 = sha3(mem[ceil32(arg5.length) + 433 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + 92])
    mem[Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + ceil32(arg5.length) + 557] = sha3('string message_id', 'address ', Mask(64, 128, 'address ') >> 128, 'uint32 block_created', 'uint192 total_escrowed', 'uint192 total_released', 'address contract')
    mem[Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + ceil32(arg5.length) + 589] = _84
    mem[Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + ceil32(arg5.length) + 525] = 64
    require arg5.length == 65
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
        require uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) == 28
    signer = erecover(sha3(sha3('string message_id', 'address ', Mask(64, 128, 'address ') >> 128, 'uint32 block_created', 'uint192 total_escrowed', 'uint192 total_released', 'address contract'), _84), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer)
    return address(signer)
}

function sub_d92c37c1(?) {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[96] = arg5.length
    mem[128 len arg5.length] = arg5[all]
    mem[arg5.length + 128] = 0
    mem[ceil32(arg5.length) + 128] = 24
    mem[ceil32(arg5.length) + 160] = 'Sender closing signature'
    mem[ceil32(arg5.length) + 192] = 8
    mem[ceil32(arg5.length) + 224] = 'receiver'
    mem[ceil32(arg5.length) + 288] = 'string message_id'
    mem[ceil32(arg5.length) + 305] = 'address '
    mem[ceil32(arg5.length) + 313 len 0] = None
    mem[ceil32(arg5.length) + 313 len 24] = Mask(192, 0, 'address ')
    mem[ceil32(arg5.length) + 321] = 'uint32 block_created'
    mem[ceil32(arg5.length) + 341] = 'uint192 total_escrowed'
    mem[ceil32(arg5.length) + 363] = 'uint192 total_released'
    mem[ceil32(arg5.length) + 385] = 'address contract'
    mem[ceil32(arg5.length) + 256] = 113
    mem[64] = ceil32(arg5.length) + 401
    mem[ceil32(arg5.length) + 433 len floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)])] = mem[ceil32(arg5.length) + 160 len floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)])]
    mem[ceil32(arg5.length) + floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]) + -(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] % 32) + 465 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] % 32] = mem[ceil32(arg5.length) + -(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] % 32) + floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]) + 192 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] % 32]
    mem[Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + ceil32(arg5.length) + 433] = address(arg1)
    mem[Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + ceil32(arg5.length) + 453] = arg2 << 224
    mem[Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + ceil32(arg5.length) + 457] = arg3 << 64
    mem[Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + ceil32(arg5.length) + 481] = arg4 << 64
    mem[Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + ceil32(arg5.length) + 505] = address(this.address)
    _84 = sha3(mem[ceil32(arg5.length) + 433 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + 92])
    mem[Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + ceil32(arg5.length) + 557] = sha3('string message_id', 'address ', Mask(64, 128, 'address ') >> 128, 'uint32 block_created', 'uint192 total_escrowed', 'uint192 total_released', 'address contract')
    mem[Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + ceil32(arg5.length) + 589] = _84
    mem[Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + ceil32(arg5.length) + 525] = 64
    require arg5.length == 65
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
        require uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) == 28
    signer = erecover(sha3(sha3('string message_id', 'address ', Mask(64, 128, 'address ') >> 128, 'uint32 block_created', 'uint192 total_escrowed', 'uint192 total_released', 'address contract'), _84), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer)
    return address(signer)
}

function sub_04a2ce0b(?) {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[96] = arg5.length
    mem[128 len arg5.length] = arg5[all]
    mem[arg5.length + 128] = 0
    mem[ceil32(arg5.length) + 128] = 24
    mem[ceil32(arg5.length) + 160] = 'Receiver proof signature'
    mem[ceil32(arg5.length) + 192] = 6
    mem[ceil32(arg5.length) + 224] = 'sender'
    mem[ceil32(arg5.length) + 288] = 'string message_id'
    mem[ceil32(arg5.length) + 305] = 'address '
    mem[ceil32(arg5.length) + 313 len 0] = None
    mem[ceil32(arg5.length) + 313 len 26] = Mask(192, 0, 'address '), mem[ceil32(arg5.length) + 337 len 2]
    mem[ceil32(arg5.length) + 319] = 'uint32 block_created'
    mem[ceil32(arg5.length) + 339] = 'uint192 total_escrowed'
    mem[ceil32(arg5.length) + 361] = 'uint192 total_released'
    mem[ceil32(arg5.length) + 383] = 'address contract'
    mem[ceil32(arg5.length) + 256] = 111
    mem[64] = ceil32(arg5.length) + 399
    mem[ceil32(arg5.length) + 431 len floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)])] = mem[ceil32(arg5.length) + 160 len floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)])]
    mem[ceil32(arg5.length) + floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]) + -(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] % 32) + 463 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] % 32] = mem[ceil32(arg5.length) + -(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] % 32) + floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]) + 192 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] % 32]
    mem[Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + ceil32(arg5.length) + 431] = address(arg1)
    mem[Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + ceil32(arg5.length) + 451] = arg2 << 224
    mem[Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + ceil32(arg5.length) + 455] = arg3 << 64
    mem[Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + ceil32(arg5.length) + 479] = arg4 << 64
    mem[Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + ceil32(arg5.length) + 503] = address(this.address)
    mem[ceil32(arg5.length) + 399] = Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + 92
    _84 = sha3(mem[ceil32(arg5.length) + 431 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + 92])
    mem[Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + ceil32(arg5.length) + 555] = sha3('string message_id', 'address ', mem[ceil32(arg5.length) + 313 len 6], 'uint32 block_created', 'uint192 total_escrowed', 'uint192 total_released', 'address contract')
    mem[Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + ceil32(arg5.length) + 587] = _84
    mem[Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + ceil32(arg5.length) + 523] = 64
    mem[64] = Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + ceil32(arg5.length) + 619
    require arg5.length == 65
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
        require uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) == 28
    signer = erecover(sha3(mem[Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + ceil32(arg5.length) + 555], _84), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer)
    return address(signer)
}

function sub_ff154cba(?) {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[96] = arg5.length
    mem[128 len arg5.length] = arg5[all]
    mem[arg5.length + 128] = 0
    mem[ceil32(arg5.length) + 128] = 26
    mem[ceil32(arg5.length) + 160] = 'Receiver closing signature'
    mem[ceil32(arg5.length) + 192] = 6
    mem[ceil32(arg5.length) + 224] = 'sender'
    mem[ceil32(arg5.length) + 288] = 'string message_id'
    mem[ceil32(arg5.length) + 305] = 'address '
    mem[ceil32(arg5.length) + 313 len 0] = None
    mem[ceil32(arg5.length) + 313 len 26] = Mask(192, 0, 'address '), mem[ceil32(arg5.length) + 337 len 2]
    mem[ceil32(arg5.length) + 319] = 'uint32 block_created'
    mem[ceil32(arg5.length) + 339] = 'uint192 total_escrowed'
    mem[ceil32(arg5.length) + 361] = 'uint192 total_released'
    mem[ceil32(arg5.length) + 383] = 'address contract'
    mem[ceil32(arg5.length) + 256] = 111
    mem[64] = ceil32(arg5.length) + 399
    mem[ceil32(arg5.length) + 431 len floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)])] = mem[ceil32(arg5.length) + 160 len floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)])]
    mem[ceil32(arg5.length) + floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]) + -(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] % 32) + 463 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] % 32] = mem[ceil32(arg5.length) + -(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] % 32) + floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]) + 192 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] % 32]
    mem[Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + ceil32(arg5.length) + 431] = address(arg1)
    mem[Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + ceil32(arg5.length) + 451] = arg2 << 224
    mem[Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + ceil32(arg5.length) + 455] = arg3 << 64
    mem[Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + ceil32(arg5.length) + 479] = arg4 << 64
    mem[Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + ceil32(arg5.length) + 503] = address(this.address)
    mem[ceil32(arg5.length) + 399] = Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + 92
    _84 = sha3(mem[ceil32(arg5.length) + 431 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + 92])
    mem[Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + ceil32(arg5.length) + 555] = sha3('string message_id', 'address ', mem[ceil32(arg5.length) + 313 len 6], 'uint32 block_created', 'uint192 total_escrowed', 'uint192 total_released', 'address contract')
    mem[Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + ceil32(arg5.length) + 587] = _84
    mem[Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + ceil32(arg5.length) + 523] = 64
    mem[64] = Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + ceil32(arg5.length) + 619
    require arg5.length == 65
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
        require uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) == 28
    signer = erecover(sha3(mem[Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + ceil32(arg5.length) + 555], _84), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer)
    return address(signer)
}

function sub_495fe5d4(?) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require Mask(192, 0, arg3) > 0
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    mem[ceil32(arg4.length) + 128] = 22
    mem[ceil32(arg4.length) + 160] = 'Sender proof signature'
    mem[ceil32(arg4.length) + 192] = 8
    mem[ceil32(arg4.length) + 224] = 'receiver'
    mem[ceil32(arg4.length) + 288] = 'string message_id'
    mem[ceil32(arg4.length) + 305] = 'address '
    mem[ceil32(arg4.length) + 313 len 0] = None
    mem[ceil32(arg4.length) + 313 len 24] = Mask(192, 0, 'address ')
    mem[ceil32(arg4.length) + 321] = 'uint32 block_created'
    mem[ceil32(arg4.length) + 341] = 'uint192 total_escrowed'
    mem[ceil32(arg4.length) + 363] = 'uint192 total_released'
    mem[ceil32(arg4.length) + 385] = 'address contract'
    mem[ceil32(arg4.length) + 256] = 113
    mem[64] = ceil32(arg4.length) + 401
    mem[ceil32(arg4.length) + 433 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
    mem[ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 465 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32] = mem[ceil32(arg4.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
    mem[Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + ceil32(arg4.length) + 433] = address(msg.sender)
    mem[Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + ceil32(arg4.length) + 453] = arg1 << 224
    mem[Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + ceil32(arg4.length) + 457] = arg2 << 64
    mem[Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + ceil32(arg4.length) + 481] = arg3 << 64
    mem[Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + ceil32(arg4.length) + 505] = address(this.address)
    _140 = sha3(mem[ceil32(arg4.length) + 433 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 92])
    mem[Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + ceil32(arg4.length) + 557] = sha3('string message_id', 'address ', Mask(64, 128, 'address ') >> 128, 'uint32 block_created', 'uint192 total_escrowed', 'uint192 total_released', 'address contract')
    mem[Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + ceil32(arg4.length) + 589] = _140
    mem[Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + ceil32(arg4.length) + 525] = 64
    require arg4.length == 65
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
        require uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) == 28
    signer = erecover(sha3(sha3('string message_id', 'address ', Mask(64, 128, 'address ') >> 128, 'uint32 block_created', 'uint192 total_escrowed', 'uint192 total_released', 'address contract'), _140), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer)
    require channels[address(signer)][msg.sender][arg1].field_192 > 0
    require not closing_requests[address(signer)][msg.sender][arg1].field_448
    require Mask(192, 0, arg3) <= channels[address(signer)][msg.sender][arg1].field_0
    require withdrawn_balances[address(signer)][msg.sender][arg1] < Mask(192, 0, arg3)
    withdrawn_balances[address(signer)][msg.sender][arg1] = Mask(192, 0, arg3)
    require ext_code.size(tokenAddress)
    call tokenAddress.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, Mask(192, 0, Mask(192, 0, arg3) - withdrawn_balances[address(signer)][msg.sender][arg1])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit ChannelWithdraw(Mask(192, 0, Mask(192, 0, arg3) - withdrawn_balances[address(signer)][msg.sender][arg1]), address(signer), msg.sender, arg1);
}

function sub_66cde5a6(?) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    mem[ceil32(arg4.length) + 128] = 22
    mem[ceil32(arg4.length) + 160] = 'Sender proof signature'
    mem[ceil32(arg4.length) + 192] = 8
    mem[ceil32(arg4.length) + 224] = 'receiver'
    mem[ceil32(arg4.length) + 288] = 'string message_id'
    mem[ceil32(arg4.length) + 305] = 'address '
    mem[ceil32(arg4.length) + 313 len 0] = None
    mem[ceil32(arg4.length) + 313 len 24] = Mask(192, 0, 'address ')
    mem[ceil32(arg4.length) + 321] = 'uint32 block_created'
    mem[ceil32(arg4.length) + 341] = 'uint192 total_escrowed'
    mem[ceil32(arg4.length) + 363] = 'uint192 total_released'
    mem[ceil32(arg4.length) + 385] = 'address contract'
    mem[ceil32(arg4.length) + 256] = 113
    mem[64] = ceil32(arg4.length) + 401
    mem[ceil32(arg4.length) + 433 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
    mem[ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 465 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32] = mem[ceil32(arg4.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
    mem[Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + ceil32(arg4.length) + 433] = address(msg.sender)
    mem[Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + ceil32(arg4.length) + 453] = arg1 << 224
    mem[Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + ceil32(arg4.length) + 457] = arg2 << 64
    mem[Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + ceil32(arg4.length) + 481] = arg3 << 64
    mem[Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + ceil32(arg4.length) + 505] = address(this.address)
    _144 = sha3(mem[ceil32(arg4.length) + 433 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 92])
    mem[Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + ceil32(arg4.length) + 557] = sha3('string message_id', 'address ', Mask(64, 128, 'address ') >> 128, 'uint32 block_created', 'uint192 total_escrowed', 'uint192 total_released', 'address contract')
    mem[Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + ceil32(arg4.length) + 589] = _144
    mem[Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + ceil32(arg4.length) + 525] = 64
    require arg4.length == 65
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
        require uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) == 28
    signer = erecover(sha3(sha3('string message_id', 'address ', Mask(64, 128, 'address ') >> 128, 'uint32 block_created', 'uint192 total_escrowed', 'uint192 total_released', 'address contract'), _144), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer)
    require channels[address(signer)][msg.sender][arg1].field_192 > 0
    require not closing_requests[address(signer)][msg.sender][arg1].field_448
    require Mask(192, 0, arg2) <= channels[address(signer)][msg.sender][arg1].field_0
    require Mask(192, 0, arg3) <= channels[address(signer)][msg.sender][arg1].field_0
    require Mask(192, 0, Mask(192, 0, arg2) + Mask(192, 0, arg3)) <= channels[address(signer)][msg.sender][arg1].field_0
    closing_requests[address(signer)][msg.sender][arg1].field_448 = uint32(block.number + challenge_period)
    require closing_requests[address(signer)][msg.sender][arg1].field_448 > block.number
    closing_requests[address(signer)][msg.sender][arg1].field_0 = 0
    closing_requests[address(signer)][msg.sender][arg1].field_8 = 1
    closing_requests[address(signer)][msg.sender][arg1].field_16 = Mask(192, 0, arg2)
    closing_requests[address(signer)][msg.sender][arg1].field_256 = Mask(192, 0, arg3)
    emit 0xe5ff355a: arg2 << 64, Mask(192, 0, arg3), address(signer), msg.sender, arg1
}

function sub_374c7017(?) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    mem[ceil32(arg4.length) + 128] = 24
    mem[ceil32(arg4.length) + 160] = 'Receiver proof signature'
    mem[ceil32(arg4.length) + 192] = 6
    mem[ceil32(arg4.length) + 224] = 'sender'
    mem[ceil32(arg4.length) + 288] = 'string message_id'
    mem[ceil32(arg4.length) + 305] = 'address '
    mem[ceil32(arg4.length) + 313 len 0] = None
    mem[ceil32(arg4.length) + 313 len 26] = Mask(192, 0, 'address '), mem[ceil32(arg4.length) + 337 len 2]
    mem[ceil32(arg4.length) + 319] = 'uint32 block_created'
    mem[ceil32(arg4.length) + 339] = 'uint192 total_escrowed'
    mem[ceil32(arg4.length) + 361] = 'uint192 total_released'
    mem[ceil32(arg4.length) + 383] = 'address contract'
    mem[ceil32(arg4.length) + 256] = 111
    mem[64] = ceil32(arg4.length) + 399
    mem[ceil32(arg4.length) + 431 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
    mem[ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 463 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32] = mem[ceil32(arg4.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
    mem[Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + ceil32(arg4.length) + 431] = address(msg.sender)
    mem[Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + ceil32(arg4.length) + 451] = arg1 << 224
    mem[Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + ceil32(arg4.length) + 455] = arg2 << 64
    mem[Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + ceil32(arg4.length) + 479] = arg3 << 64
    mem[Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + ceil32(arg4.length) + 503] = address(this.address)
    mem[ceil32(arg4.length) + 399] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 92
    _144 = sha3(mem[ceil32(arg4.length) + 431 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 92])
    mem[Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + ceil32(arg4.length) + 555] = sha3('string message_id', 'address ', mem[ceil32(arg4.length) + 313 len 6], 'uint32 block_created', 'uint192 total_escrowed', 'uint192 total_released', 'address contract')
    mem[Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + ceil32(arg4.length) + 587] = _144
    mem[Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + ceil32(arg4.length) + 523] = 64
    mem[64] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + ceil32(arg4.length) + 619
    require arg4.length == 65
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
        require uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) == 28
    signer = erecover(sha3(mem[Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + ceil32(arg4.length) + 555], _144), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer)
    require channels[msg.sender][address(signer)][arg1].field_192 > 0
    require not closing_requests[msg.sender][address(signer)][arg1].field_448
    require Mask(192, 0, arg2) <= channels[msg.sender][address(signer)][arg1].field_0
    require Mask(192, 0, arg3) <= channels[msg.sender][address(signer)][arg1].field_0
    require Mask(192, 0, Mask(192, 0, arg2) + Mask(192, 0, arg3)) <= channels[msg.sender][address(signer)][arg1].field_0
    closing_requests[msg.sender][address(signer)][arg1].field_448 = uint32(block.number + challenge_period)
    require closing_requests[msg.sender][address(signer)][arg1].field_448 > block.number
    closing_requests[msg.sender][address(signer)][arg1].field_0 = 1
    closing_requests[msg.sender][address(signer)][arg1].field_8 = 1
    closing_requests[msg.sender][address(signer)][arg1].field_16 = Mask(192, 0, arg2)
    closing_requests[msg.sender][address(signer)][arg1].field_256 = Mask(192, 0, arg3)
    emit 0x9b26970c: arg2 << 64, Mask(192, 0, arg3), msg.sender, address(signer), arg1
}

function sub_eaaf8fa2(?) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    mem[ceil32(arg4.length) + 128] = 22
    mem[ceil32(arg4.length) + 160] = 'Sender proof signature'
    mem[ceil32(arg4.length) + 192] = 8
    mem[ceil32(arg4.length) + 224] = 'receiver'
    mem[ceil32(arg4.length) + 288] = 'string message_id'
    mem[ceil32(arg4.length) + 305] = 'address '
    mem[ceil32(arg4.length) + 313 len 0] = None
    mem[ceil32(arg4.length) + 313 len 24] = Mask(192, 0, 'address ')
    mem[ceil32(arg4.length) + 321] = 'uint32 block_created'
    mem[ceil32(arg4.length) + 341] = 'uint192 total_escrowed'
    mem[ceil32(arg4.length) + 363] = 'uint192 total_released'
    mem[ceil32(arg4.length) + 385] = 'address contract'
    mem[ceil32(arg4.length) + 256] = 113
    mem[64] = ceil32(arg4.length) + 401
    mem[ceil32(arg4.length) + 433 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
    mem[ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 465 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32] = mem[ceil32(arg4.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
    mem[Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + ceil32(arg4.length) + 433] = address(msg.sender)
    mem[Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + ceil32(arg4.length) + 453] = arg1 << 224
    mem[Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + ceil32(arg4.length) + 457] = arg2 << 64
    mem[Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + ceil32(arg4.length) + 481] = arg3 << 64
    mem[Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + ceil32(arg4.length) + 505] = address(this.address)
    _420 = sha3(mem[ceil32(arg4.length) + 433 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 92])
    mem[Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + ceil32(arg4.length) + 557] = sha3('string message_id', 'address ', Mask(64, 128, 'address ') >> 128, 'uint32 block_created', 'uint192 total_escrowed', 'uint192 total_released', 'address contract')
    mem[Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + ceil32(arg4.length) + 589] = _420
    mem[Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + ceil32(arg4.length) + 525] = 64
    require arg4.length == 65
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
        require uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) == 28
    signer = erecover(sha3(sha3('string message_id', 'address ', Mask(64, 128, 'address ') >> 128, 'uint32 block_created', 'uint192 total_escrowed', 'uint192 total_released', 'address contract'), _420), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer)
    require channels[address(signer)][msg.sender][arg1].field_192 > 0
    require closing_requests[address(signer)][msg.sender][arg1].field_448 > 0
    require closing_requests[address(signer)][msg.sender][arg1].field_0
    require block.number <= closing_requests[address(signer)][msg.sender][arg1].field_448
    if closing_requests[address(signer)][msg.sender][arg1].field_8:
        require Mask(192, 0, arg3) >= closing_requests[address(signer)][msg.sender][arg1].field_256
        require Mask(192, 0, Mask(192, 0, arg2) + Mask(192, 0, arg3)) >= Mask(192, 0, closing_requests[address(signer)][msg.sender][arg1].field_16 + closing_requests[address(signer)][msg.sender][arg1].field_256)
    require channels[address(signer)][msg.sender][arg1].field_192 > 0
    require Mask(192, 0, Mask(192, 0, arg2) + Mask(192, 0, arg3)) <= channels[address(signer)][msg.sender][arg1].field_0
    require withdrawn_balances[address(signer)][msg.sender][arg1] <= Mask(192, 0, arg3)
    channels[address(signer)][msg.sender][arg1].field_0 = 0
    channels[address(signer)][msg.sender][arg1].field_192 = 0
    closing_requests[address(signer)][msg.sender][arg1].field_0 = 0
    closing_requests[address(signer)][msg.sender][arg1].field_8 = 0
    closing_requests[address(signer)][msg.sender][arg1].field_16 = 0
    closing_requests[address(signer)][msg.sender][arg1].field_256 = 0
    closing_requests[address(signer)][msg.sender][arg1].field_448 = 0
    if Mask(192, 0, arg2) > 0:
        sub_ec283caa[address(signer)][msg.sender][arg1] = Mask(192, 0, arg2)
    require ext_code.size(tokenAddress)
    call tokenAddress.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, Mask(192, 0, Mask(192, 0, arg3) - withdrawn_balances[address(signer)][msg.sender][arg1])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(signer), Mask(192, 0, channels[address(signer)][msg.sender][arg1].field_0 - Mask(192, 0, arg2) - Mask(192, 0, arg3))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit 0x1f41c43d: arg2 << 64, arg3 << 64, Mask(192, 0, Mask(192, 0, arg3) - withdrawn_balances[address(signer)][msg.sender][arg1]), address(signer), msg.sender, arg1
}

function sub_b46ec7d0(?) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    mem[ceil32(arg4.length) + 128] = 24
    mem[ceil32(arg4.length) + 160] = 'Receiver proof signature'
    mem[ceil32(arg4.length) + 192] = 6
    mem[ceil32(arg4.length) + 224] = 'sender'
    mem[ceil32(arg4.length) + 288] = 'string message_id'
    mem[ceil32(arg4.length) + 305] = 'address '
    mem[ceil32(arg4.length) + 313 len 0] = None
    mem[ceil32(arg4.length) + 313 len 26] = Mask(192, 0, 'address '), mem[ceil32(arg4.length) + 337 len 2]
    mem[ceil32(arg4.length) + 319] = 'uint32 block_created'
    mem[ceil32(arg4.length) + 339] = 'uint192 total_escrowed'
    mem[ceil32(arg4.length) + 361] = 'uint192 total_released'
    mem[ceil32(arg4.length) + 383] = 'address contract'
    mem[ceil32(arg4.length) + 256] = 111
    mem[64] = ceil32(arg4.length) + 399
    mem[ceil32(arg4.length) + 431 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)])]
    mem[ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + 463 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32] = mem[ceil32(arg4.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 192 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] % 32]
    mem[Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + ceil32(arg4.length) + 431] = address(msg.sender)
    mem[Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + ceil32(arg4.length) + 451] = arg1 << 224
    mem[Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + ceil32(arg4.length) + 455] = arg2 << 64
    mem[Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + ceil32(arg4.length) + 479] = arg3 << 64
    mem[Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + ceil32(arg4.length) + 503] = address(this.address)
    mem[ceil32(arg4.length) + 399] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 92
    _268 = sha3(mem[ceil32(arg4.length) + 431 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + 92])
    mem[Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + ceil32(arg4.length) + 555] = sha3('string message_id', 'address ', mem[ceil32(arg4.length) + 313 len 6], 'uint32 block_created', 'uint192 total_escrowed', 'uint192 total_released', 'address contract')
    mem[Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + ceil32(arg4.length) + 587] = _268
    mem[Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + ceil32(arg4.length) + 523] = 64
    mem[64] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + ceil32(arg4.length) + 619
    require arg4.length == 65
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
        require uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) == 28
    signer = erecover(sha3(mem[Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)] + ceil32(arg4.length) + 555], _268), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer)
    require channels[msg.sender][address(signer)][arg1].field_192 > 0
    require closing_requests[msg.sender][address(signer)][arg1].field_448 > 0
    require not closing_requests[msg.sender][address(signer)][arg1].field_0
    require block.number <= closing_requests[msg.sender][address(signer)][arg1].field_448
    require Mask(192, 0, arg3) >= closing_requests[msg.sender][address(signer)][arg1].field_256
    require Mask(192, 0, Mask(192, 0, arg2) + Mask(192, 0, arg3)) >= Mask(192, 0, closing_requests[msg.sender][address(signer)][arg1].field_16 + closing_requests[msg.sender][address(signer)][arg1].field_256)
    require channels[msg.sender][address(signer)][arg1].field_192 > 0
    require Mask(192, 0, Mask(192, 0, arg2) + Mask(192, 0, arg3)) <= channels[msg.sender][address(signer)][arg1].field_0
    require withdrawn_balances[msg.sender][address(signer)][arg1] <= Mask(192, 0, arg3)
    channels[msg.sender][address(signer)][arg1].field_0 = 0
    channels[msg.sender][address(signer)][arg1].field_192 = 0
    closing_requests[msg.sender][address(signer)][arg1].field_0 = 0
    closing_requests[msg.sender][address(signer)][arg1].field_8 = 0
    closing_requests[msg.sender][address(signer)][arg1].field_16 = 0
    closing_requests[msg.sender][address(signer)][arg1].field_256 = 0
    closing_requests[msg.sender][address(signer)][arg1].field_448 = 0
    if Mask(192, 0, arg2) > 0:
        sub_ec283caa[msg.sender][address(signer)][arg1] = Mask(192, 0, arg2)
    require ext_code.size(tokenAddress)
    call tokenAddress.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(signer), Mask(192, 0, Mask(192, 0, arg3) - withdrawn_balances[msg.sender][address(signer)][arg1])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, Mask(192, 0, channels[msg.sender][address(signer)][arg1].field_0 - Mask(192, 0, arg2) - Mask(192, 0, arg3))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit 0x1f41c43d: arg2 << 64, arg3 << 64, Mask(192, 0, Mask(192, 0, arg3) - withdrawn_balances[msg.sender][address(signer)][arg1]), msg.sender, address(signer), arg1
}

function sub_a70788fa(?) {
    require calldata.size - 4 >= 192
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + arg6.length + 36 <= calldata.size
    mem[96] = arg5.length
    mem[128 len arg5.length] = arg5[all]
    mem[arg5.length + 128] = 0
    mem[ceil32(arg5.length) + 128] = 24
    mem[ceil32(arg5.length) + 160] = 'Sender closing signature'
    mem[ceil32(arg5.length) + 192] = 8
    mem[ceil32(arg5.length) + 224] = 'receiver'
    mem[ceil32(arg5.length) + 288] = 'string message_id'
    mem[ceil32(arg5.length) + 305] = 'address '
    mem[ceil32(arg5.length) + 313 len 0] = None
    mem[ceil32(arg5.length) + 313 len 24] = Mask(192, 0, 'address ')
    mem[ceil32(arg5.length) + 321] = 'uint32 block_created'
    mem[ceil32(arg5.length) + 341] = 'uint192 total_escrowed'
    mem[ceil32(arg5.length) + 363] = 'uint192 total_released'
    mem[ceil32(arg5.length) + 385] = 'address contract'
    mem[ceil32(arg5.length) + 256] = 113
    mem[64] = ceil32(arg5.length) + 401
    mem[ceil32(arg5.length) + 433 len floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)])] = mem[ceil32(arg5.length) + 160 len floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)])]
    mem[ceil32(arg5.length) + floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]) + -(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] % 32) + 465 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] % 32] = mem[ceil32(arg5.length) + -(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] % 32) + floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]) + 192 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] % 32]
    mem[Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + ceil32(arg5.length) + 433] = address(arg1)
    mem[Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + ceil32(arg5.length) + 453] = arg2 << 224
    mem[Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + ceil32(arg5.length) + 457] = arg3 << 64
    mem[Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + ceil32(arg5.length) + 481] = arg4 << 64
    mem[Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + ceil32(arg5.length) + 505] = address(this.address)
    mem[ceil32(arg5.length) + 401] = Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + 92
    _520 = sha3(mem[ceil32(arg5.length) + 433 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + 92])
    _521 = Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + ceil32(arg5.length) + 525
    mem[Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + ceil32(arg5.length) + 557] = sha3('string message_id', 'address ', Mask(64, 128, 'address ') >> 128, 'uint32 block_created', 'uint192 total_escrowed', 'uint192 total_released', 'address contract')
    mem[Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + ceil32(arg5.length) + 589] = _520
    mem[Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + ceil32(arg5.length) + 525] = 64
    require arg5.length == 65
    _527 = mem[128]
    _528 = mem[160]
    _529 = mem[192]
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) == 27:
        mem[Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + ceil32(arg5.length) + 621] = 0
        mem[_521 + 160] = uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_529')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_529')), 0) - 256) + 27)
        mem[_521 + 192] = _527
        mem[_521 + 224] = _528
        signer = erecover(sha3(sha3('string message_id', 'address ', Mask(64, 128, 'address ') >> 128, 'uint32 block_created', 'uint192 total_escrowed', 'uint192 total_released', 'address contract'), _520), (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_529')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_529')), 0) - 256) + 27 << 248, _527, _528) 
        mem[_521 + 96] = signer
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        require address(signer)
        mem[_521 + 128] = arg6.length
        mem[_521 + 160 len arg6.length] = arg6[all]
        mem[_521 + arg6.length + 160] = 0
        mem[_521 + ceil32(arg6.length) + 160] = 26
        mem[_521 + ceil32(arg6.length) + 192] = 'Receiver closing signature'
        mem[_521 + ceil32(arg6.length) + 224] = 6
        mem[_521 + ceil32(arg6.length) + 256] = 'sender'
        mem[_521 + ceil32(arg6.length) + 320] = 'string message_id'
        mem[_521 + ceil32(arg6.length) + 337] = 'address '
        mem[_521 + ceil32(arg6.length) + 345 len 0] = None
        mem[_521 + ceil32(arg6.length) + 345 len 26] = Mask(192, 0, 'address '), mem[_521 + ceil32(arg6.length) + 369 len 2]
        mem[_521 + ceil32(arg6.length) + 351] = 'uint32 block_created'
        mem[_521 + ceil32(arg6.length) + 371] = 'uint192 total_escrowed'
        mem[_521 + ceil32(arg6.length) + 393] = 'uint192 total_released'
        mem[_521 + ceil32(arg6.length) + 415] = 'address contract'
        mem[_521 + ceil32(arg6.length) + 288] = 111
        mem[64] = _521 + ceil32(arg6.length) + 431
        mem[_521 + ceil32(arg6.length) + 463 len floor32(Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[_521 + arg6.length + 192 len -arg6.length + ceil32(arg6.length)])] = mem[_521 + ceil32(arg6.length) + 192 len floor32(Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[_521 + arg6.length + 192 len -arg6.length + ceil32(arg6.length)])]
        mem[_521 + ceil32(arg6.length) + floor32(Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[_521 + arg6.length + 192 len -arg6.length + ceil32(arg6.length)]) + -(Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[_521 + arg6.length + 192 len -arg6.length + ceil32(arg6.length)] % 32) + 495 len Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[_521 + arg6.length + 192 len -arg6.length + ceil32(arg6.length)] % 32] = mem[_521 + ceil32(arg6.length) + -(Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[_521 + arg6.length + 192 len -arg6.length + ceil32(arg6.length)] % 32) + floor32(Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[_521 + arg6.length + 192 len -arg6.length + ceil32(arg6.length)]) + 224 len Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[_521 + arg6.length + 192 len -arg6.length + ceil32(arg6.length)] % 32]
        mem[Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[_521 + arg6.length + 192 len -arg6.length + ceil32(arg6.length)] + _521 + ceil32(arg6.length) + 463] = address(signer)
        mem[Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[_521 + arg6.length + 192 len -arg6.length + ceil32(arg6.length)] + _521 + ceil32(arg6.length) + 483] = arg2 << 224
        mem[Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[_521 + arg6.length + 192 len -arg6.length + ceil32(arg6.length)] + _521 + ceil32(arg6.length) + 487] = arg3 << 64
        mem[Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[_521 + arg6.length + 192 len -arg6.length + ceil32(arg6.length)] + _521 + ceil32(arg6.length) + 511] = arg4 << 64
        mem[Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[_521 + arg6.length + 192 len -arg6.length + ceil32(arg6.length)] + _521 + ceil32(arg6.length) + 535] = address(this.address)
        mem[_521 + ceil32(arg6.length) + 431] = Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[_521 + arg6.length + 192 len -arg6.length + ceil32(arg6.length)] + 92
        _980 = sha3(mem[_521 + ceil32(arg6.length) + 463 len Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[_521 + arg6.length + 192 len -arg6.length + ceil32(arg6.length)] + 92])
        mem[Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[_521 + arg6.length + 192 len -arg6.length + ceil32(arg6.length)] + _521 + ceil32(arg6.length) + 587] = sha3('string message_id', 'address ', mem[_521 + ceil32(arg6.length) + 345 len 6], 'uint32 block_created', 'uint192 total_escrowed', 'uint192 total_released', 'address contract')
        mem[Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[_521 + arg6.length + 192 len -arg6.length + ceil32(arg6.length)] + _521 + ceil32(arg6.length) + 619] = _980
        mem[Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[_521 + arg6.length + 192 len -arg6.length + ceil32(arg6.length)] + _521 + ceil32(arg6.length) + 555] = 64
        mem[64] = Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[_521 + arg6.length + 192 len -arg6.length + ceil32(arg6.length)] + _521 + ceil32(arg6.length) + 651
        require arg6.length == 65
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_528')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_528')), 0) - 256) + 27) != 27:
            require uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_528')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_528')), 0) - 256) + 27) == 28
        signer = erecover(sha3(mem[Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[_521 + arg6.length + 192 len -arg6.length + ceil32(arg6.length)] + _521 + ceil32(arg6.length) + 587], _980), (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_528')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_528')), 0) - 256) + 27 << 248, mem[_521 + 160], _527) 
    else:
        require uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) == 28
        mem[Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)] + ceil32(arg5.length) + 621] = 0
        mem[_521 + 160] = uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_529')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_529')), 0) - 256) + 27)
        mem[_521 + 192] = _527
        mem[_521 + 224] = _528
        signer = erecover(sha3(sha3('string message_id', 'address ', Mask(64, 128, 'address ') >> 128, 'uint32 block_created', 'uint192 total_escrowed', 'uint192 total_released', 'address contract'), _520), (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_529')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_529')), 0) - 256) + 27 << 248, _527, _528) 
        mem[_521 + 96] = signer
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        require address(signer)
        mem[_521 + 128] = arg6.length
        mem[_521 + 160 len arg6.length] = arg6[all]
        mem[_521 + arg6.length + 160] = 0
        mem[_521 + ceil32(arg6.length) + 160] = 26
        mem[_521 + ceil32(arg6.length) + 192] = 'Receiver closing signature'
        mem[_521 + ceil32(arg6.length) + 224] = 6
        mem[_521 + ceil32(arg6.length) + 256] = 'sender'
        mem[_521 + ceil32(arg6.length) + 320] = 'string message_id'
        mem[_521 + ceil32(arg6.length) + 337] = 'address '
        mem[_521 + ceil32(arg6.length) + 345 len 0] = None
        mem[_521 + ceil32(arg6.length) + 345 len 26] = Mask(192, 0, 'address '), mem[_521 + ceil32(arg6.length) + 369 len 2]
        mem[_521 + ceil32(arg6.length) + 351] = 'uint32 block_created'
        mem[_521 + ceil32(arg6.length) + 371] = 'uint192 total_escrowed'
        mem[_521 + ceil32(arg6.length) + 393] = 'uint192 total_released'
        mem[_521 + ceil32(arg6.length) + 415] = 'address contract'
        mem[_521 + ceil32(arg6.length) + 288] = 111
        mem[64] = _521 + ceil32(arg6.length) + 431
        mem[_521 + ceil32(arg6.length) + 463 len floor32(Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[_521 + arg6.length + 192 len -arg6.length + ceil32(arg6.length)])] = mem[_521 + ceil32(arg6.length) + 192 len floor32(Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[_521 + arg6.length + 192 len -arg6.length + ceil32(arg6.length)])]
        mem[_521 + ceil32(arg6.length) + floor32(Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[_521 + arg6.length + 192 len -arg6.length + ceil32(arg6.length)]) + -(Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[_521 + arg6.length + 192 len -arg6.length + ceil32(arg6.length)] % 32) + 495 len Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[_521 + arg6.length + 192 len -arg6.length + ceil32(arg6.length)] % 32] = mem[_521 + ceil32(arg6.length) + -(Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[_521 + arg6.length + 192 len -arg6.length + ceil32(arg6.length)] % 32) + floor32(Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[_521 + arg6.length + 192 len -arg6.length + ceil32(arg6.length)]) + 224 len Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[_521 + arg6.length + 192 len -arg6.length + ceil32(arg6.length)] % 32]
        mem[Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[_521 + arg6.length + 192 len -arg6.length + ceil32(arg6.length)] + _521 + ceil32(arg6.length) + 463] = address(signer)
        mem[Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[_521 + arg6.length + 192 len -arg6.length + ceil32(arg6.length)] + _521 + ceil32(arg6.length) + 483] = arg2 << 224
        mem[Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[_521 + arg6.length + 192 len -arg6.length + ceil32(arg6.length)] + _521 + ceil32(arg6.length) + 487] = arg3 << 64
        mem[Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[_521 + arg6.length + 192 len -arg6.length + ceil32(arg6.length)] + _521 + ceil32(arg6.length) + 511] = arg4 << 64
        mem[Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[_521 + arg6.length + 192 len -arg6.length + ceil32(arg6.length)] + _521 + ceil32(arg6.length) + 535] = address(this.address)
        mem[_521 + ceil32(arg6.length) + 431] = Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[_521 + arg6.length + 192 len -arg6.length + ceil32(arg6.length)] + 92
        _992 = sha3(mem[_521 + ceil32(arg6.length) + 463 len Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[_521 + arg6.length + 192 len -arg6.length + ceil32(arg6.length)] + 92])
        mem[Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[_521 + arg6.length + 192 len -arg6.length + ceil32(arg6.length)] + _521 + ceil32(arg6.length) + 587] = sha3('string message_id', 'address ', mem[_521 + ceil32(arg6.length) + 345 len 6], 'uint32 block_created', 'uint192 total_escrowed', 'uint192 total_released', 'address contract')
        mem[Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[_521 + arg6.length + 192 len -arg6.length + ceil32(arg6.length)] + _521 + ceil32(arg6.length) + 619] = _992
        mem[Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[_521 + arg6.length + 192 len -arg6.length + ceil32(arg6.length)] + _521 + ceil32(arg6.length) + 555] = 64
        mem[64] = Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[_521 + arg6.length + 192 len -arg6.length + ceil32(arg6.length)] + _521 + ceil32(arg6.length) + 651
        require arg6.length == 65
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_528')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_528')), 0) - 256) + 27) != 27:
            require uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_528')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_528')), 0) - 256) + 27) == 28
        signer = erecover(sha3(mem[Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[_521 + arg6.length + 192 len -arg6.length + ceil32(arg6.length)] + _521 + ceil32(arg6.length) + 587], _992), (Mask(8, -(('mask_shl', 256, 0, -3, ('var', '_528')), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('var', '_528')), 0) - 256) + 27 << 248, mem[_521 + 160], _527) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer)
    require address(signer) == arg1
    require channels[address(signer)][address(signer)][arg2].field_192 > 0
    require Mask(192, 0, Mask(192, 0, arg3) + Mask(192, 0, arg4)) <= channels[address(signer)][address(signer)][arg2].field_0
    require withdrawn_balances[address(signer)][address(signer)][arg2] <= Mask(192, 0, arg4)
    channels[address(signer)][address(signer)][arg2].field_0 = 0
    channels[address(signer)][address(signer)][arg2].field_192 = 0
    closing_requests[address(signer)][address(signer)][arg2].field_0 = 0
    closing_requests[address(signer)][address(signer)][arg2].field_8 = 0
    closing_requests[address(signer)][address(signer)][arg2].field_16 = 0
    closing_requests[address(signer)][address(signer)][arg2].field_256 = 0
    closing_requests[address(signer)][address(signer)][arg2].field_448 = 0
    if Mask(192, 0, arg3) > 0:
        sub_ec283caa[address(signer)][address(signer)][arg2] = Mask(192, 0, arg3)
    require ext_code.size(tokenAddress)
    call tokenAddress.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(signer), Mask(192, 0, Mask(192, 0, arg4) - withdrawn_balances[address(signer)][address(signer)][arg2])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(signer), Mask(192, 0, channels[address(signer)][address(signer)][arg2].field_0 - Mask(192, 0, arg3) - Mask(192, 0, arg4))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit 0x1f41c43d: arg3 << 64, arg4 << 64, Mask(192, 0, Mask(192, 0, arg4) - withdrawn_balances[address(signer)][address(signer)][arg2]), address(signer), address(signer), arg2
}



}
