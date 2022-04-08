contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
address stor2;

function _fallback() payable {
    stor0 = 0
    require not msg.value
    stor1 = msg.sender
    stor2 = code.data[3211 len 20]
    return code.data[101 len 3098]
}



// =====================  Runtime code  =====================


#
#  - getCertificate(string arg1)
#
uint256 version;
address issuerAddress;
address nextAddress;
mapping of struct certificates;

function issuer() {
    return issuerAddress
}

function next() {
    return nextAddress
}

function version() {
    return version
}

function certificates(bytes32 arg1) {
    mem[320] = certificates[arg1][1].field_0
    idx = 320
    s = 0
    while certificates[arg1][1].length + 320 > idx + 32:
        mem[idx + 32] = certificates[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[certificates[arg1][1].length + (floor32(certificates[arg1][1].length - 1) + -certificates[arg1][1].length + 32 % 32) + 320] = certificates[arg1][2].length
    mem[certificates[arg1][1].length + (floor32(certificates[arg1][1].length - 1) + -certificates[arg1][1].length + 32 % 32) + 352] = certificates[arg1][2].field_0
    idx = certificates[arg1][1].length + (floor32(certificates[arg1][1].length - 1) + -certificates[arg1][1].length + 32 % 32) + 352
    s = 0
    while certificates[arg1][1].length + (floor32(certificates[arg1][1].length - 1) + -certificates[arg1][1].length + 32 % 32) + certificates[arg1][2].length + 352 > idx + 32:
        mem[idx + 32] = certificates[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[certificates[arg1][1].length + (floor32(certificates[arg1][1].length - 1) + -certificates[arg1][1].length + 32 % 32) + certificates[arg1][2].length + (floor32(certificates[arg1][2].length - 1) + -certificates[arg1][2].length + 32 % 32) + 384] = certificates[arg1][3].field_0
    idx = certificates[arg1][1].length + (floor32(certificates[arg1][1].length - 1) + -certificates[arg1][1].length + 32 % 32) + certificates[arg1][2].length + (floor32(certificates[arg1][2].length - 1) + -certificates[arg1][2].length + 32 % 32) + 384
    s = 0
    while certificates[arg1][1].length + (floor32(certificates[arg1][1].length - 1) + -certificates[arg1][1].length + 32 % 32) + certificates[arg1][2].length + (floor32(certificates[arg1][2].length - 1) + -certificates[arg1][2].length + 32 % 32) + certificates[arg1][3].length + 384 > idx + 32:
        mem[idx + 32] = certificates[arg1][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return certificates[arg1].field_0, 
           Array(len=certificates[arg1][1].length, data=mem[320 len certificates[arg1][1].length + (floor32(certificates[arg1][1].length - 1) + -certificates[arg1][1].length + 32 % 32) + certificates[arg1][2].length + (floor32(certificates[arg1][2].length - 1) + -certificates[arg1][2].length + 32 % 32) + 32], certificates[arg1][3].length, mem[certificates[arg1][1].length + (floor32(certificates[arg1][1].length - 1) + -certificates[arg1][1].length + 32 % 32) + certificates[arg1][2].length + (floor32(certificates[arg1][2].length - 1) + -certificates[arg1][2].length + 32 % 32) + 384 len certificates[arg1][3].length + (floor32(certificates[arg1][3].length - 1) + -certificates[arg1][3].length + 32 % 32)]),
           certificates[arg1][1].length + (floor32(certificates[arg1][1].length - 1) + -certificates[arg1][1].length + 32 % 32) + 224,
           certificates[arg1][1].length + (floor32(certificates[arg1][1].length - 1) + -certificates[arg1][1].length + 32 % 32) + certificates[arg1][2].length + (floor32(certificates[arg1][2].length - 1) + -certificates[arg1][2].length + 32 % 32) + 256,
           bool(certificates[arg1].field_1024),
           bool(certificates[arg1].field_1032)
}

function _fallback() payable {
    revert
}

function sub_b2b2b44d(?) {
    require issuerAddress == msg.sender
    nextAddress = arg1
}

function revoke(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    require msg.sender == certificates[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_0
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    certificates[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_1024 = 1
}

function sub_1bde02e6(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg3.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len arg4.length] = arg4[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg1.length) + -(arg1.length % 32) + 256 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    require not certificates[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg1.length) + 224 len arg1.length % 32]].field_1032
    certificates[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg1.length) + 224 len arg1.length % 32]].field_0 = msg.sender
    certificates[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg1.length) + 224 len arg1.length % 32]][1][].field_0 = Array(len=arg2.length, data=arg2[all])
    certificates[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg1.length) + 224 len arg1.length % 32]][2][].field_0 = Array(len=arg3.length, data=arg3[all])
    certificates[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg1.length) + 224 len arg1.length % 32]][3][].field_0 = Array(len=arg4.length, data=arg4[all])
    certificates[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg1.length) + 224 len arg1.length % 32]].field_1024 = 0
    certificates[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(arg1.length) + 224 len arg1.length % 32]].field_1032 = 1
}



}
