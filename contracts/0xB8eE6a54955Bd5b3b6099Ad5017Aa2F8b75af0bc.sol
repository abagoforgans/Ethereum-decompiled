contract main {




// =====================  Runtime code  =====================


#
#  - sub_18cc797a(?)
#
address owner;
mapping of uint8 stor1;
uint8 stor2;
address sub_26dce03eAddress; offset 8
address sub_f9ec83b0Address;
address sub_ae52da15Address;
array of struct sub_4db1b0f9;
mapping of struct stor6;
mapping of struct sub_141e8cc3;
mapping of struct stor8;
mapping of struct stor9;

function sub_141e8cc3(?) {
    return sub_141e8cc3[arg1].field_0, 
           sub_141e8cc3[arg1].field_256,
           sub_141e8cc3[arg1].field_512,
           bool(sub_141e8cc3[arg1].field_544)
}

function sub_26dce03e(?) {
    return sub_26dce03eAddress
}

function isPauser(address arg1) {
    require arg1
    return bool(stor1[address(arg1)])
}

function sub_4db1b0f9(?) {
    require arg1 < sub_4db1b0f9.length
    return sub_4db1b0f9[arg1].field_0
}

function paused() {
    return bool(stor2)
}

function owner() {
    return owner
}

function sub_ae52da15(?) {
    return sub_ae52da15Address
}

function sub_f9ec83b0(?) {
    return sub_f9ec83b0Address
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function sub_6429ffe6(?) {
    require msg.sender == owner
    sub_ae52da15Address = arg1
}

function sub_8ea94d1c(?) {
    require msg.sender == owner
    sub_26dce03eAddress = arg1
}

function sub_e3259459(?) {
    require msg.sender == owner
    sub_f9ec83b0Address = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_02a88cd2(?) {
    require msg.sender == owner
    sub_141e8cc3[arg1].field_544 = Mask(224, 0, arg2)
    emit 0x2ac81ac8: arg1, arg2
}

function unpause() {
    require msg.sender
    require stor1[address(msg.sender)]
    require stor2
    stor2 = 0
    emit Unpaused(msg.sender);
}

function pause() {
    require msg.sender
    require stor1[address(msg.sender)]
    require not stor2
    stor2 = 1
    emit Paused(msg.sender);
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function renouncePauser() {
    require msg.sender
    require stor1[address(msg.sender)]
    stor1[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function addPauser(address arg1) {
    require msg.sender
    require stor1[address(msg.sender)]
    require arg1
    require not stor1[address(arg1)]
    stor1[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function sub_7b368489(?) {
    idx = 736
    s = 3
    while 1056 > idx + 32:
        mem[idx + 32] = stor8[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    idx = 1056
    s = 13
    while 1376 > idx + 32:
        mem[idx + 32] = stor8[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor8[arg1].field_0, 
           stor8[arg1].field_256,
           stor8[arg1].field_512,
           mem[768 len 288] >> 2304,
           mem[1088 len 288] >> 2304,
           stor8[arg1].field_5888,
           stor8[arg1].field_6144,
           bool(stor8[arg1].field_6400)
}

function sub_bd791fd2(?) {
    require msg.sender == owner
    sub_141e8cc3[block.timestamp, arg1, arg2 >> 512][mem[452 len 4]].field_0 = arg1
    sub_141e8cc3[block.timestamp, arg1, arg2 >> 512][mem[452 len 4]].field_256 = arg2
    sub_141e8cc3[block.timestamp, arg1, arg2 >> 512][mem[452 len 4]].field_512 = arg3
    sub_141e8cc3[block.timestamp, arg1, arg2 >> 512][mem[452 len 4]].field_544 = 1
    sub_4db1b0f9.length++
    sub_4db1b0f9[sub_4db1b0f9.length].field_0 = sha3(block.timestamp, arg1, arg2 >> 512, mem[452 len 4])
    emit 0xf1112b42: sha3(block.timestamp, arg1, arg2 >> 512, mem[452 len 4]), arg1, arg2, arg3 << 224, 1
}

function withdraw(bytes32 arg1) {
    require not stor2
    require not stor8[arg1].field_6400
    require stor8[arg1].field_256 == msg.sender
    require block.timestamp >= stor8[arg1].field_6144
    require ext_code.size(sub_f9ec83b0Address)
    call sub_f9ec83b0Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, stor8[arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    stor8[arg1].field_6400 = 1
    emit 0x7542775d: arg1, msg.sender, stor8[arg1].field_512, 1, block.timestamp
}

function sub_1fd4db8b(?) {
    if not stor6[arg1].field_0:
        mem[(32 * stor6[arg1].field_0) + 128] = 32
        mem[(32 * stor6[arg1].field_0) + 160] = stor6[arg1].field_0
        mem[(32 * stor6[arg1].field_0) + 192 len floor32(stor6[arg1].field_0)] = mem[128 len floor32(stor6[arg1].field_0)]
        return memory
          from (32 * stor6[arg1].field_0) + 128
           len (96 * stor6[arg1].field_0) + 64
    mem[128] = stor6[arg1].field_0
    idx = 128
    s = 0
    while (32 * stor6[arg1].field_0) + 96 > idx:
        mem[idx + 32] = stor6[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor6[arg1].field_0) + 192 len floor32(stor6[arg1].field_0)] = mem[128 len floor32(stor6[arg1].field_0)]
    return Array(len=stor6[arg1].field_0, data=mem[128 len floor32(stor6[arg1].field_0)], mem[(32 * stor6[arg1].field_0) + floor32(stor6[arg1].field_0) + 192 len (32 * stor6[arg1].field_0) - floor32(stor6[arg1].field_0)]), 
}

function sub_dd5cd3af(?) {
    if not sub_4db1b0f9.length:
        mem[(32 * sub_4db1b0f9.length) + 128] = 32
        mem[(32 * sub_4db1b0f9.length) + 160] = sub_4db1b0f9.length
        mem[(32 * sub_4db1b0f9.length) + 192 len floor32(sub_4db1b0f9.length)] = mem[128 len floor32(sub_4db1b0f9.length)]
        return memory
          from (32 * sub_4db1b0f9.length) + 128
           len (96 * sub_4db1b0f9.length) + 64
    mem[128] = uint256(sub_4db1b0f9.field_0)
    idx = 128
    s = 0
    while (32 * sub_4db1b0f9.length) + 96 > idx:
        mem[idx + 32] = sub_4db1b0f9[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_4db1b0f9.length) + 192 len floor32(sub_4db1b0f9.length)] = mem[128 len floor32(sub_4db1b0f9.length)]
    return Array(len=sub_4db1b0f9.length, data=mem[128 len floor32(sub_4db1b0f9.length)], mem[(32 * sub_4db1b0f9.length) + floor32(sub_4db1b0f9.length) + 192 len (32 * sub_4db1b0f9.length) - floor32(sub_4db1b0f9.length)]), 
}

function sub_199d06ea(?) {
    if not stor9[address(arg1)].field_0:
        mem[(32 * stor9[address(arg1)].field_0) + 128] = 32
        mem[(32 * stor9[address(arg1)].field_0) + 160] = stor9[address(arg1)].field_0
        mem[(32 * stor9[address(arg1)].field_0) + 192 len floor32(stor9[address(arg1)].field_0)] = mem[128 len floor32(stor9[address(arg1)].field_0)]
        return memory
          from (32 * stor9[address(arg1)].field_0) + 128
           len (96 * stor9[address(arg1)].field_0) + 64
    mem[128] = stor9[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * stor9[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = stor9[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor9[address(arg1)].field_0) + 192 len floor32(stor9[address(arg1)].field_0)] = mem[128 len floor32(stor9[address(arg1)].field_0)]
    return Array(len=stor9[address(arg1)].field_0, data=mem[128 len floor32(stor9[address(arg1)].field_0)], mem[(32 * stor9[address(arg1)].field_0) + floor32(stor9[address(arg1)].field_0) + 192 len (32 * stor9[address(arg1)].field_0) - floor32(stor9[address(arg1)].field_0)]), 
}



}
