contract main {


// =======================  Init code  ======================


address stor3;
address stor4;
address stor5;
address stor6;
uint64 stor7;
uint64 stor7; offset 64

function _fallback() {
    stor3 = msg.sender
    stor4 = address(code.data[3944 len 32])
    stor5 = 0
    stor6 = 0
    uint64(stor7.field_0) = uint64(code.data[3880 len 32])
    uint64(stor7.field_64) = uint64(code.data[3912 len 32])
    return code.data[248 len 3632]
}



// =====================  Runtime code  =====================


mapping of struct stor0;
mapping of uint8 sub_4b58a886;
mapping of struct sub_fcf6e65a;
address stor3;
address stor4;
address serviceAddress;
address stor6;
uint64 stor7;
uint64 stor7; offset 64

function sub_4b58a886(?) {
    require sub_4b58a886[arg1] <= 4
    return sub_4b58a886[arg1]
}

function service() {
    return serviceAddress
}

function sub_fcf6e65a(?) {
    mem[288] = sub_fcf6e65a[arg1][2].field_0
    idx = 288
    s = 0
    while sub_fcf6e65a[arg1][2].length + 288 > idx + 32:
        mem[idx + 32] = sub_fcf6e65a[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[sub_fcf6e65a[arg1][2].length + (floor32(sub_fcf6e65a[arg1][2].length - 1) + -sub_fcf6e65a[arg1][2].length + 32 % 32) + 288] = sub_fcf6e65a[arg1][3].length
    mem[sub_fcf6e65a[arg1][2].length + (floor32(sub_fcf6e65a[arg1][2].length - 1) + -sub_fcf6e65a[arg1][2].length + 32 % 32) + 320] = sub_fcf6e65a[arg1][3].field_0
    idx = sub_fcf6e65a[arg1][2].length + (floor32(sub_fcf6e65a[arg1][2].length - 1) + -sub_fcf6e65a[arg1][2].length + 32 % 32) + 320
    s = 0
    while sub_fcf6e65a[arg1][2].length + (floor32(sub_fcf6e65a[arg1][2].length - 1) + -sub_fcf6e65a[arg1][2].length + 32 % 32) + sub_fcf6e65a[arg1][3].length + 320 > idx + 32:
        mem[idx + 32] = sub_fcf6e65a[arg1][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return sub_fcf6e65a[arg1].field_0, 
           sub_fcf6e65a[arg1].field_256,
           Array(len=sub_fcf6e65a[arg1][2].length, data=mem[288 len sub_fcf6e65a[arg1][2].length + (floor32(sub_fcf6e65a[arg1][2].length - 1) + -sub_fcf6e65a[arg1][2].length + 32 % 32) + sub_fcf6e65a[arg1][3].length + (floor32(sub_fcf6e65a[arg1][3].length - 1) + -sub_fcf6e65a[arg1][3].length + 32 % 32) + 32]),
           sub_fcf6e65a[arg1][2].length + (floor32(sub_fcf6e65a[arg1][2].length - 1) + -sub_fcf6e65a[arg1][2].length + 32 % 32) + 192,
           sub_fcf6e65a[arg1].field_1024
}

function _fallback() payable {
  stop
}

function admin() {
    return stor3, stor4, serviceAddress, stor6
}

function index() {
    return uint64(stor7.field_0), uint64(stor7.field_64)
}

function sub_08f5b753(?) {
    require serviceAddress == msg.sender
    require arg2 <= 4
    sub_4b58a886[arg1 << 192] = arg2
}

function updateService(address arg1, address arg2) {
    require stor4 == msg.sender
    serviceAddress = arg1
    stor6 = arg2
}

function withdraw(uint256 arg1) {
    require stor3 == msg.sender
    call stor3 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function recordEscrowOnBid(uint64 arg1, uint64 arg2) {
    require stor6 == msg.sender
    sub_4b58a886[arg1 << 192] = 4
    sub_fcf6e65a[arg1 << 192].field_1024 = arg2
    sub_fcf6e65a[arg1 << 192].field_1088 = 0
}

function listings(uint64 arg1) {
    mem[96] = stor0[arg1 << 192][3].field_0
    idx = 96
    s = 0
    while stor0[arg1 << 192][3].length + 96 > idx + 32:
        mem[idx + 32] = stor0[arg1 << 192][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor0[arg1 << 192].field_0, stor0[arg1 << 192].field_256, sha3(mem[96 len stor0[arg1 << 192][3].length])
}

function getBidInfo(uint64 arg1) {
    mem[96] = sub_fcf6e65a[arg1 << 192][2].field_0
    idx = 96
    s = 0
    while sub_fcf6e65a[arg1 << 192][2].length + 96 > idx + 32:
        mem[idx + 32] = sub_fcf6e65a[arg1 << 192][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[96] = sha3(mem[96 len sub_fcf6e65a[arg1 << 192][2].length])
    if sub_4b58a886[arg1 << 192] <= 4:
        return mem[96], sub_4b58a886[arg1 << 192], sub_fcf6e65a[arg1 << 192].field_0, sub_fcf6e65a[arg1 << 192].field_256
    revert
}

function addBid(string arg1, string arg2, uint256 arg3, address arg4) {
    require serviceAddress == msg.sender
    uint64(stor7.field_64) = uint64(uint64(stor7.field_64) + 1)
    sub_fcf6e65a[uint64(stor7.field_0)].field_0 = arg4
    sub_fcf6e65a[uint64(stor7.field_0)].field_256 = arg3
    sub_fcf6e65a[uint64(stor7.field_0)][2][].field_0 = Array(len=arg1.length, data=arg1[all])
    sub_fcf6e65a[uint64(stor7.field_0)][3][].field_0 = Array(len=arg2.length, data=arg2[all])
    sub_fcf6e65a[uint64(stor7.field_0)].field_1024 = 0
    sub_4b58a886[uint64(stor7.field_0)] = 1
    return uint64(stor7.field_64)
}

function addListing(string arg1, string arg2, uint256 arg3, address arg4) {
    require serviceAddress == msg.sender
    uint64(stor7.field_0) = uint64(uint64(stor7.field_0) + 1)
    stor0[uint64(stor7.field_0)].field_0 = arg4
    stor0[uint64(stor7.field_0)].field_256 = arg3
    stor0[uint64(stor7.field_0)].field_512 = 0
    stor0[uint64(stor7.field_0)].field_768 = 0
    stor0[uint64(stor7.field_0)].field_576 = 0
    stor0[uint64(stor7.field_0)].field_768 = 0
    stor0[uint64(stor7.field_0)][3][].field_0 = Array(len=arg1.length, data=arg1[all])
    stor0[uint64(stor7.field_0)][4][].field_0 = Array(len=arg2.length, data=arg2[all])
    return uint64(stor7.field_0)
}

function namehash(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    return sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]))
}



}
