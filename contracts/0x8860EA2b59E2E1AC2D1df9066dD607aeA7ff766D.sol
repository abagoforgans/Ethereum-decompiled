contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 5940]




// =====================  Runtime code  =====================


mapping of struct stor0;
array of uint256 sub_498dc8f1;

function sub_498dc8f1(?) {
    return sub_498dc8f1[Mask(128, 128, arg1)][0 len sub_498dc8f1[Mask(128, 128, arg1)].length]
}

function _fallback() payable {
    revert
}

function sub_1f33b223(?) payable {
    emit 0xde990df8: 0, Mask(128, 128, arg1)
    return 0
}

function sub_7f295529(?) {
    require stor0[Mask(128, 128, arg1)].field_1280 <= 3
    return stor0[Mask(128, 128, arg1)].field_0, 
           stor0[Mask(128, 128, arg1)].field_256,
           stor0[Mask(128, 128, arg1)].field_512,
           stor0[Mask(128, 128, arg1)].field_768,
           stor0[Mask(128, 128, arg1)].field_1024,
           stor0[Mask(128, 128, arg1)].field_1280
}

function sub_9ed0f886(?) payable {
    emit Debug(Array(len=23, data='starting createTransfer'));
    if stor0[Mask(128, 128, arg3)].field_0:
        emit Debug(Array(len=28, data='id of 0 or existing transfer'));
        return -1
    if not Mask(128, 128, arg3):
        emit Debug(Array(len=28, data='id of 0 or existing transfer'));
        return -1
    emit Debug(Array(len=17, data='creating transfer'));
    stor0[Mask(128, 128, arg3)].field_0 = msg.sender
    stor0[Mask(128, 128, arg3)].field_256 = arg1
    stor0[Mask(128, 128, arg3)].field_512 = msg.value
    stor0[Mask(128, 128, arg3)].field_768 = arg2
    stor0[Mask(128, 128, arg3)].field_1024 = arg4
    stor0[Mask(128, 128, arg3)].field_1280 = 0
    stor0[Mask(128, 128, arg3)].field_1536 = 0
    sub_498dc8f1[Mask(128, 128, arg3)][] = Array(len=arg5.length, data=arg5[all])
    emit Debug(Array(len=16, data='created transfer'));
    emit DebugInt(Array(len=9, data='expiry is'), arg4);
    emit 0xde990df8: 0, Mask(128, 128, arg3)
    return 0
}

function sub_24544bfa(?) payable {
    mem[128 len arg2.length] = arg2[all]
    emit Debug(Array(len=16, data='starting fulfill'));
    emit Debug(Array(len=12, data='got transfer'));
    emit Debug(Array(len=8, data='is ID 0?'));
    if not stor0[Mask(128, 128, arg1)].field_0:
        emit Debug(Array(len=8, data='id was 0'));
        return -1
    emit Debug(Array(len=18, data='was state propose?'));
    require stor0[Mask(128, 128, arg1)].field_1280 <= 3
    if stor0[Mask(128, 128, arg1)].field_1280:
        emit Debug(Array(len=19, data='state wasnt propose'));
        return -2
    emit DebugInt(Array(len=9, data='timestamp'), block.timestamp);
    mem[ceil32(arg2.length) + 224] = 'expiry is'
    emit DebugInt(Array(len=9, data='expiry is'), stor0[Mask(128, 128, arg1)].field_1024);
    emit Debug(Array(len=11, data='is expired?'));
    if block.timestamp > stor0[Mask(128, 128, arg1)].field_1024:
        emit Debug(Array(len=11, data='its expired'));
        call stor0[Mask(128, 128, arg1)].field_0 with:
           value stor0[Mask(128, 128, arg1)].field_512 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            return -3
        stor0[Mask(128, 128, arg1)].field_1280 = 2
        stor0[Mask(128, 128, arg1)].field_0 = stor0[Mask(128, 128, arg1)].field_0
        stor0[Mask(128, 128, arg1)].field_256 = stor0[Mask(128, 128, arg1)].field_256
        require stor0[Mask(128, 128, arg1)].field_1280 <= 3
        stor0[Mask(128, 128, arg1)].field_1280 = stor0[Mask(128, 128, arg1)].field_1280
        emit 0xde990df8: stor0[Mask(128, 128, arg1)].field_1280, Mask(128, 128, arg1)
        return 1
    mem[ceil32(arg2.length) + 128] = 32
    mem[ceil32(arg2.length) + 192] = 'is fulfilled?'
    emit Debug(Array(len=13, data='is fulfilled?'));
    mem[ceil32(arg2.length) + 160] = 0
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    hash = sha256hash(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len arg2.length % 32]) 
    require sha256hash.result
    if hash != stor0[Mask(128, 128, arg1)].field_768:
        emit Debug(Array(len=17, data='none of the above'));
    else:
        call stor0[Mask(128, 128, arg1)].field_256 with:
           value stor0[Mask(128, 128, arg1)].field_512 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            return -4
        stor0[Mask(128, 128, arg1)].field_1280 = 1
        stor0[Mask(128, 128, arg1)].field_0 = stor0[Mask(128, 128, arg1)].field_0
        stor0[Mask(128, 128, arg1)].field_256 = stor0[Mask(128, 128, arg1)].field_256
        require stor0[Mask(128, 128, arg1)].field_1280 <= 3
        stor0[Mask(128, 128, arg1)].field_1280 = stor0[Mask(128, 128, arg1)].field_1280
        mem[ceil32(arg2.length) + 128] = 32
        mem[ceil32(arg2.length) + 160] = arg2.length
        if arg2.length:
            mem[ceil32(arg2.length) + 192] = mem[128]
            mem[ceil32(arg2.length) + 224 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
        emit 0x7473e0fd: Array(len=arg2.length, data=mem[ceil32(arg2.length) + 192 len arg2.length]), Mask(128, 128, arg1)
    return 0
}



}
