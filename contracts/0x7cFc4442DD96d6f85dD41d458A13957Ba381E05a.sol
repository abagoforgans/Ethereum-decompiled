contract main {


// =======================  Init code  ======================


array of uint256 stor0;
uint256 stor1;
address stor2;
uint256 stor3;
address stor4;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 5
    stor0.length.field_8 = '0.0.1' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor1 = 0x2e99758548972a8e8822ad47fa1017ff72f06f3ff6a016851f45c398732bc50c
    stor2 = 0x9552ae966a8ca4e0e2a182a2d9378506eb057580
    stor3 = block.timestamp + 3600
    stor4 = msg.sender
    require not msg.value
    return code.data[479 len 1247]
}



// =====================  Runtime code  =====================


array of uint256 version;
uint256 digest;
address destAddress;
uint256 timeOut;
address stor4;

function digest() {
    return digest
}

function version() {
    return version[0 len version.length]
}

function timeOut() {
    return timeOut
}

function dest() {
    return destAddress
}

function refund() {
    require msg.sender == stor4
    require block.timestamp >= timeOut
    selfdestruct(stor4)
}

function claim(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 160] = 0
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    hash = sha256hash(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]) 
    require sha256hash.result
    require digest == hash
    selfdestruct(destAddress)
}

function _fallback() payable {
  stop
}



}
