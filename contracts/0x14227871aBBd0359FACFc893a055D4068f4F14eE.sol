contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = 0
    require not msg.value
    return code.data[33 len 1282]
}



// =====================  Runtime code  =====================


uint256 stor0;
mapping of struct get;

function get(bytes32 arg1) {
    require get[arg1].field_0
    return get[arg1].field_512, get[arg1].field_768, get[arg1].field_1024, get[arg1].field_1280
}

function _fallback() payable {
    revert
}

function isExists(bytes32 arg1) {
    if get[arg1].field_0:
        return 1
    else:
        return 0
}

function register(string arg1, string arg2, string arg3, string arg4) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg3.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len arg3.length] = arg3[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192] = arg4.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len arg4.length] = arg4[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 608 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg1.length) + 608] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg1.length) + 608] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    require not get[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg1.length) + 608 len arg1.length % 32]].field_0
    stor0++
    get[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg1.length) + 608 len arg1.length % 32]].field_0 = stor0 + 1
    get[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg1.length) + 608 len arg1.length % 32]].field_256 = msg.sender
    get[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg1.length) + 608 len arg1.length % 32]].field_512 = mem[128]
    get[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg1.length) + 608 len arg1.length % 32]].field_768 = mem[ceil32(arg1.length) + 160]
    get[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg1.length) + 608 len arg1.length % 32]].field_1024 = mem[ceil32(arg1.length) + ceil32(arg2.length) + 192]
    get[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg1.length) + 608 len arg1.length % 32]].field_1280 = mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224]
    return sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg1.length) + 608 len arg1.length % 32])
}



}
