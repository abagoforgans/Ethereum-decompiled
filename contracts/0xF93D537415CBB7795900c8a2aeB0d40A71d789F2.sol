contract main {


// =======================  Init code  ======================


address stor3;
address stor4;
bool stor5; offset 256
address stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint8 stor9;

function _fallback() {
    stor3 = msg.sender
    stor4 = address(code.data[6497 len 32])
    address(stor5.field_0) = 0
    stor5.field_256 % 1 = 0
    stor6 = code.data[6433 len 32]
    stor7 = code.data[6465 len 32]
    stor8 = 0
    stor9 = uint8(code.data[6401 len 32])
    emit 0x9c29bbf7: stor4, address(this.address), address(stor5.field_0), stor9, stor6
    return code.data[815 len 5586]
}



// =====================  Runtime code  =====================


mapping of struct stor0;
mapping of uint8 sub_a7e2a330;
mapping of struct bids;
address stor3;
address stor4;
address serviceAddress;
uint256 sub_aaccf1ec;
uint256 nextBidId;
uint256 sub_9070a04e;
uint8 stor9;

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

function sub_9070a04e(?) {
    require msg.sender == stor3
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

function sub_aaccf1ec(?) {
    return sub_aaccf1ec
}

function service() {
    return serviceAddress
}

function nextBidId() {
    return nextBidId
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

function sub_fb2f424c(?) {
    require msg.sender == serviceAddress
    sub_a7e2a330[arg1] = 2
}

function admin() {
    return stor3, stor4, serviceAddress, sub_aaccf1ec, nextBidId, sub_9070a04e, stor9
}

function sub_dcfd83e0(?) {
    require msg.sender == stor4
    serviceAddress = arg1
    emit 0x9c29bbf7: stor4, address(this.address), serviceAddress, stor9, sub_aaccf1ec
}

function withdraw(uint256 arg1) {
    require msg.sender == stor3
    call stor3 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        sub_9070a04e -= arg1
}

function addListing(string arg1, string arg2, uint256 arg3, address arg4) {
    require msg.sender == serviceAddress
    sub_aaccf1ec++
    stor0[stor6 + 1].field_0 = arg4
    stor0[stor6 + 1].field_256 = arg3
    stor0[stor6 + 1][2][].field_0 = Array(len=arg1.length, data=arg1[all])
    stor0[stor6 + 1][3][].field_0 = Array(len=arg2.length, data=arg2[all])
    return (sub_aaccf1ec + 1)
}

function addBid(string arg1, string arg2, uint256 arg3, address arg4) {
    require msg.sender == serviceAddress
    nextBidId++
    bids[stor7 + 1].field_0 = arg4
    bids[stor7 + 1].field_256 = arg3
    bids[stor7 + 1][2][].field_0 = Array(len=arg1.length, data=arg1[all])
    bids[stor7 + 1][3][].field_0 = Array(len=arg2.length, data=arg2[all])
    sub_a7e2a330[stor7 + 1] = 1
    return (nextBidId + 1)
}

function namehash(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    return sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]))
}

function sub_86a935fb(?) {
    mem[32] = 2
    mem[96] = bids[arg1][2].length
    mem[0] = sha3(arg1, 2) + 2
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

function sub_98b7e315(?) {
    mem[32] = 0
    mem[96] = stor0[arg1][2].length
    mem[0] = sha3(arg1, 0) + 2
    mem[128] = stor0[arg1][2].field_0
    idx = 128
    s = 0
    while stor0[arg1][2].length + 96 > idx:
        mem[idx + 32] = stor0[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor0[arg1][2].length) + 128 len floor32(stor0[arg1][2].length)] = mem[128 len floor32(stor0[arg1][2].length)]
    mem[ceil32(stor0[arg1][2].length) + floor32(stor0[arg1][2].length) + 128] = mem[floor32(stor0[arg1][2].length) + -stor0[arg1][2].length % 32 + 160 len stor0[arg1][2].length % 32] or Mask(8 * -stor0[arg1][2].length % 32 + 32, -(8 * -stor0[arg1][2].length % 32 + 32) + 256, mem[ceil32(stor0[arg1][2].length) + floor32(stor0[arg1][2].length) + 128])
    return sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, sha3(mem[ceil32(stor0[arg1][2].length) + 128 len stor0[arg1][2].length]))
}

function listings(uint256 arg1) {
    mem[256] = stor0[arg1][2].field_0
    idx = 256
    s = 0
    while stor0[arg1][2].length + 256 > idx + 32:
        mem[idx + 32] = stor0[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32) + 256] = stor0[arg1][3].length
    mem[stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32) + 288] = stor0[arg1][3].field_0
    idx = stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32) + 288
    s = 0
    while stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32) + stor0[arg1][3].length + 288 > idx + 32:
        mem[idx + 32] = stor0[arg1][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor0[arg1].field_0, 
           stor0[arg1].field_256,
           Array(len=stor0[arg1][2].length, data=mem[256 len stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32) + stor0[arg1][3].length + (floor32(stor0[arg1][3].length - 1) + -stor0[arg1][3].length + 32 % 32) + 32]),
           stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32) + 160
}



}
