contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    require not msg.value
    return code.data[94 len 2473]
}



// =====================  Runtime code  =====================


address stor0;
array of uint256 institution;
mapping of struct stor2;

function institution() {
    return institution[0 len institution.length]
}

function removeSdaContract() {
    require msg.sender == stor0
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function SignedDigitalAsset(string arg1) {
    institution[] = Array(len=arg1.length, data=arg1[all])
}

function removeSignature(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == stor0
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    bool(stor2[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len arg1.length % 32]].field_0) = 0
    uint255(stor2[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len arg1.length % 32]].field_1) = 0
    Mask(248, 0, stor2[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len arg1.length % 32]].field_8) = mem[ceil32(arg1.length) + 160 len 31]
    idx = 0
    while stor2[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len arg1.length % 32]].length + 31 / 32 > idx:
        stor2[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len arg1.length % 32]][idx].field_0 = 0
        idx = idx + 1
        continue 
}

function getSignature(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[32] = 2
    _38 = sha3(sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len arg1.length % 32]), 2)
    mem[64] = ceil32(arg1.length) + ceil32(stor2[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len arg1.length % 32]].length) + 192
    mem[ceil32(arg1.length) + 160] = stor2[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len arg1.length % 32]].length
    mem[0] = _38
    mem[ceil32(arg1.length) + 192] = stor[sha3(_38)]
    idx = ceil32(arg1.length) + 192
    s = 0
    while ceil32(arg1.length) + stor[_38].length + 160 > idx:
        mem[idx + 32] = stor[s + sha3(_38) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[ceil32(arg1.length) + 160]
    _72 = mem[ceil32(arg1.length) + 160]
    mem[mem[64] + 64 len ceil32(mem[ceil32(arg1.length) + 160])] = mem[ceil32(arg1.length) + 192 len ceil32(mem[ceil32(arg1.length) + 160])]
    if not _72 % 32:
        return 32, mem[mem[64] + 32 len _72 + 32]
    mem[floor32(_72) + mem[64] + 64] = mem[floor32(_72) + mem[64] + -(_72 % 32) + 96 len _72 % 32]
    return 32, mem[mem[64] + 32 len floor32(_72) + 64]
}

function addSignature(string arg1, string arg2) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    require msg.sender == stor0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    stor2[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]][].field_0 = Array(len=arg2.length, data=arg2[all])
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 288 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 288] = arg2.length
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 320 len ceil32(arg2.length)] = arg2[all], mem[ceil32(arg1.length) + arg2.length + 160 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        emit SignatureAdded(Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 288 len arg2.length + arg1.length + -ceil32(arg1.length) + 32]), arg1.length + 128, block.timestamp);
    else:
        mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 320] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 352 len arg2.length % 32]
        emit SignatureAdded(Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 288 len floor32(arg2.length) + arg1.length + -ceil32(arg1.length) + 64]), arg1.length + 128, block.timestamp);
}



}
