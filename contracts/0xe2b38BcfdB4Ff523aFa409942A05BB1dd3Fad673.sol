contract main {


// =======================  Init code  ======================


address stor7;
address stor8;
bool stor9; offset 256
address stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint8 stor13;

function _fallback() {
    stor7 = msg.sender
    stor8 = address(code.data[7748 len 32])
    address(stor9.field_0) = 0
    stor9.field_256 % 1 = 0
    stor10 = code.data[7684 len 32]
    stor11 = code.data[7716 len 32]
    stor12 = 0
    stor13 = uint8(code.data[7652 len 32])
    emit 0x9c29bbf7: stor8, address(this.address), address(stor9.field_0), stor13, stor10
    return code.data[815 len 6837]
}



// =====================  Runtime code  =====================


mapping of struct stor0;
mapping of uint256 sub_24c2b3ec;
mapping of uint8 sub_14623e7b;
mapping of uint8 sub_a7e2a330;
mapping of uint256 sub_dde838f3;
mapping of struct bids;
mapping of uint256 sub_b19ebdc5;
address stor7;
address stor8;
address serviceAddress;
uint256 stor10;
uint256 stor11;
uint256 sub_9070a04e;
uint8 stor13;

function sub_04f77586(?) {
    require sub_14623e7b[arg1] <= 4
    return sub_14623e7b[arg1]
}

function sub_14623e7b(?) {
    require sub_14623e7b[arg1] <= 4
    return sub_14623e7b[arg1]
}

function sub_24c2b3ec(?) {
    return sub_24c2b3ec[arg1]
}

function bids(uint256 arg1) {
    mem[256] = bids[arg1][2].field_0
    idx = 256
    s = 0
    while bids[arg1][2].length + 256 > idx + 32:
        mem[idx + 32] = bids[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[bids[arg1][2].length + (floor32(bids[arg1][2].length - 1) + -bids[arg1][2].length + 32 % 32) + 256] = bids[arg1][3].length
    mem[bids[arg1][2].length + (floor32(bids[arg1][2].length - 1) + -bids[arg1][2].length + 32 % 32) + 288] = bids[arg1][3].field_0
    idx = bids[arg1][2].length + (floor32(bids[arg1][2].length - 1) + -bids[arg1][2].length + 32 % 32) + 288
    s = 0
    while bids[arg1][2].length + (floor32(bids[arg1][2].length - 1) + -bids[arg1][2].length + 32 % 32) + bids[arg1][3].length + 288 > idx + 32:
        mem[idx + 32] = bids[arg1][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return bids[arg1].field_0, 
           bids[arg1].field_256,
           Array(len=bids[arg1][2].length, data=mem[256 len bids[arg1][2].length + (floor32(bids[arg1][2].length - 1) + -bids[arg1][2].length + 32 % 32) + bids[arg1][3].length + (floor32(bids[arg1][3].length - 1) + -bids[arg1][3].length + 32 % 32) + 32]),
           bids[arg1][2].length + (floor32(bids[arg1][2].length - 1) + -bids[arg1][2].length + 32 % 32) + 160
}

function sub_84b06ab9(?) {
    return sub_dde838f3[arg1]
}

function sub_9070a04e(?) {
    require msg.sender == stor7
    return sub_9070a04e
}

function sub_a72a198b(?) {
    require sub_a7e2a330[arg1] <= 3
    return sub_a7e2a330[arg1]
}

function sub_a7e2a330(?) {
    require sub_a7e2a330[arg1] <= 3
    return sub_a7e2a330[arg1]
}

function sub_ac7a985c(?) {
    return sub_b19ebdc5[arg1]
}

function sub_b19ebdc5(?) {
    return sub_b19ebdc5[arg1]
}

function service() {
    return serviceAddress
}

function sub_dde838f3(?) {
    return sub_dde838f3[arg1]
}

function sub_f0d8d5e8(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    require sub_14623e7b[stor4[0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae][('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1')))))))]] <= 4
    return sub_14623e7b[stor4[0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae][('map', ('call.data', ('add', 36, ('param', 'arg1')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mem', ('range', ('add', 128, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg1'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg1')))))))]]
}

function _fallback() payable {
    revert
}

function payTip() payable {
    sub_9070a04e += msg.value
    emit 0x7e16eaff: msg.value
}

function sub_ddf30d0d(?) {
    require msg.sender == serviceAddress
    sub_a7e2a330[arg1] = 3
}

function admin() {
    return stor7, stor8, serviceAddress, stor10, stor11, sub_9070a04e, stor13
}

function sub_10697862(?) {
    require msg.sender == serviceAddress
    require arg2 <= 4
    sub_14623e7b[arg1] = arg2
}

function sub_2d163b33(?) {
    require msg.sender == serviceAddress
    sub_24c2b3ec[arg1] = arg2
    sub_14623e7b[arg1] = 3
    sub_a7e2a330[arg2] = 2
}

function sub_dcfd83e0(?) {
    require msg.sender == stor8
    serviceAddress = arg1
    emit 0x9c29bbf7: stor8, address(this.address), serviceAddress, stor13, stor10
}

function withdraw(uint256 arg1) {
    require msg.sender == stor7
    call stor7 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        sub_9070a04e -= arg1
}

function namehash(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    return sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]))
}

function sub_86a935fb(?) {
    mem[32] = 5
    mem[96] = bids[arg1][2].length
    mem[0] = sha3(arg1, 5) + 2
    mem[128] = bids[arg1][2].field_0
    idx = 128
    s = 0
    while bids[arg1][2].length + 96 > idx:
        mem[idx + 32] = bids[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(bids[arg1][2].length) + 128 len floor32(bids[arg1][2].length)] = mem[128 len floor32(bids[arg1][2].length)]
    mem[ceil32(bids[arg1][2].length) + floor32(bids[arg1][2].length) + 128] = mem[floor32(bids[arg1][2].length) + -bids[arg1][2].length % 32 + 160 len bids[arg1][2].length % 32] or Mask(8 * -bids[arg1][2].length % 32 + 32, -(8 * -bids[arg1][2].length % 32 + 32) + 256, mem[ceil32(bids[arg1][2].length) + floor32(bids[arg1][2].length) + 128])
    return sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, sha3(mem[ceil32(bids[arg1][2].length) + 128 len bids[arg1][2].length]))
}

function sub_57a85eac(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    require msg.sender == serviceAddress
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    _77 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32])
    stor10++
    require arg4 <= 2
    stor0[stor10 + 1].field_0 = arg5
    stor0[stor10 + 1].field_256 = arg3
    require arg4 <= 2
    stor0[stor10 + 1].field_512 = arg4
    stor0[stor10 + 1][3][].field_0 = Array(len=arg1.length, data=arg1[all])
    stor0[stor10 + 1][4][].field_0 = Array(len=arg2.length, data=arg2[all])
    require arg6 <= 4
    sub_14623e7b[stor10 + 1] = arg6
    sub_dde838f3[0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae][_77] = stor10 + 1
    return (stor10 + 1)
}

function listings(uint256 arg1) {
    require stor0[arg1].field_512 <= 2
    mem[288] = stor0[arg1][3].field_0
    idx = 288
    s = 0
    while stor0[arg1][3].length + 288 > idx + 32:
        mem[idx + 32] = stor0[arg1][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor0[arg1][3].length + (floor32(stor0[arg1][3].length - 1) + -stor0[arg1][3].length + 32 % 32) + 288] = stor0[arg1][4].length
    mem[stor0[arg1][3].length + (floor32(stor0[arg1][3].length - 1) + -stor0[arg1][3].length + 32 % 32) + 320] = stor0[arg1][4].field_0
    idx = stor0[arg1][3].length + (floor32(stor0[arg1][3].length - 1) + -stor0[arg1][3].length + 32 % 32) + 320
    s = 0
    while stor0[arg1][3].length + (floor32(stor0[arg1][3].length - 1) + -stor0[arg1][3].length + 32 % 32) + stor0[arg1][4].length + 320 > idx + 32:
        mem[idx + 32] = stor0[arg1][s + 4].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor0[arg1].field_0, 
           stor0[arg1].field_256,
           stor0[arg1].field_512,
           Array(len=stor0[arg1][3].length, data=mem[288 len stor0[arg1][3].length + (floor32(stor0[arg1][3].length - 1) + -stor0[arg1][3].length + 32 % 32) + stor0[arg1][4].length + (floor32(stor0[arg1][4].length - 1) + -stor0[arg1][4].length + 32 % 32) + 32]),
           stor0[arg1][3].length + (floor32(stor0[arg1][3].length - 1) + -stor0[arg1][3].length + 32 % 32) + 192
}

function addBid(string arg1, string arg2, uint256 arg3, address arg4) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    require msg.sender == serviceAddress
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    _121 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32])
    stor11++
    bids[stor11 + 1].field_0 = arg4
    bids[stor11 + 1].field_256 = arg3
    bids[stor11 + 1][2][].field_0 = Array(len=arg1.length, data=arg1[all])
    bids[stor11 + 1][3][].field_0 = Array(len=arg2.length, data=arg2[all])
    sub_a7e2a330[stor11 + 1] = 1
    sub_b19ebdc5[0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae][_121] = stor11 + 1
    require sub_14623e7b[stor4[0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae][_121]] <= 4
    if sub_14623e7b[stor4[0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae][_121]] == 1:
        sub_14623e7b[stor4[0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae][_121]] = 2
    return (stor11 + 1)
}



}
