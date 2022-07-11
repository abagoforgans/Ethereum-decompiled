contract main {




// =====================  Runtime code  =====================


const sub_0cecc0f8(?) = 'set_max_nonce', 0

const sub_140643b7(?) = '', 0

const sub_3eff8d54(?) = 'set_max_driip_nonce', 0

const sub_6f799b2f(?) = 'set_settlement_role_done', 0

const sub_e02e64ff(?) = '', 0


uint8 stor0;
address stor0;
address deployerAddress; offset 8
address operatorAddress;
uint256 sub_3b7bea6c;
uint8 sub_8e9d6cbd; offset 160
address sub_bf24e7d0Address;
uint256 sub_897d36aa;
array of struct stor6;
array of uint256 sub_92f7bd7b;
mapping of uint256 sub_d66c5291;
mapping of uint256 sub_3858654b;
mapping of struct sub_3fd6832d;

function isRegisteredService(address arg1) {
    require calldata.size - 4 >= 32
    return bool(uint8(stor2[address(arg1)].field_0))
}

function sub_2f013a00(?) {
    return bool(uint8(stor0.field_0))
}

function sub_3858654b(?) {
    require calldata.size - 4 >= 96
    require calldata.size - 36 >= 64
    return sub_3858654b[address(arg1)][address(arg2)][arg3]
}

function sub_3b7bea6c(?) {
    return sub_3b7bea6c
}

function sub_3fd6832d(?) {
    require calldata.size - 4 >= 160
    return uint256(sub_3fd6832d[arg1][arg2][arg3][arg4][arg5].field_0), 
           uint256(sub_3fd6832d[arg1][arg2][arg3][arg4][arg5].field_256)
}

function destructor() {
    return deployerAddress
}

function operator() {
    return operatorAddress
}

function sub_6e17226a(?) {
    require calldata.size - 4 >= 160
    require calldata.size - 100 >= 64
    return uint256(sub_3fd6832d[address(arg1)][address(arg2)][address(arg3)][address(arg4)][arg5].field_0), 
           uint256(sub_3fd6832d[address(arg1)][address(arg2)][address(arg3)][address(arg4)][arg5].field_256)
}

function sub_897d36aa(?) {
    return sub_897d36aa
}

function sub_8c6913bc(?) {
    return stor6.length
}

function sub_8e9d6cbd(?) {
    return bool(sub_8e9d6cbd)
}

function sub_92f7bd7b(?) {
    require calldata.size - 4 >= 64
    require arg2 < sub_92f7bd7b[arg1]
    return sub_92f7bd7b[arg1][arg2]
}

function sub_bf24e7d0(?) {
    return sub_bf24e7d0Address
}

function deployer() {
    return deployerAddress
}

function sub_d66c5291(?) {
    require calldata.size - 4 >= 64
    return sub_d66c5291[arg1][arg2]
}

function sub_e8bec62b(?) {
    require calldata.size - 4 >= 96
    return sub_3858654b[arg1][arg2][arg3]
}

function sub_f345fb44(?) {
    require calldata.size - 4 >= 32
    return sub_92f7bd7b[address(arg1)]
}

function triggerSelfDestruction() {
    require deployerAddress == msg.sender
    require not uint8(stor0.field_0)
    emit TriggerSelfDestructionEvent(msg.sender);
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function freezeCommunityVote() {
    require msg.sender == deployerAddress
    sub_8e9d6cbd = 1
    emit FreezeCommunityVoteEvent()
}

function disableSelfDestruction() {
    require deployerAddress == msg.sender
    uint8(stor0.field_0) = 1
    emit SelfDestructionDisabledEvent(msg.sender);
}

function setServiceActivationTimeout(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == deployerAddress
    sub_3b7bea6c = arg1
    emit ServiceActivationTimeoutEvent(arg1);
}

function isRegisteredActiveService(address arg1) {
    require calldata.size - 4 >= 32
    if not uint8(stor2[address(arg1)].field_0):
        return bool(uint8(stor2[address(arg1)].field_0))
    return block.timestamp >= uint256(stor2[address(arg1)].field_256)
}

function sub_e86ab8f6(?) {
    require calldata.size - 4 >= 32
    require msg.sender == deployerAddress
    require arg1
    if sub_bf24e7d0Address != arg1:
        require not sub_8e9d6cbd
        sub_bf24e7d0Address = arg1
        emit 0x624c4d42: sub_bf24e7d0Address, arg1
}

function setOperator(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == operatorAddress
    require arg1
    require arg1 != this.address
    if operatorAddress != arg1:
        operatorAddress = arg1
        emit SetOperatorEvent(operatorAddress, arg1);
}

function setDeployer(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == deployerAddress
    require arg1
    require arg1 != this.address
    if deployerAddress != arg1:
        deployerAddress = arg1
        emit SetDeployerEvent(address(stor0.field_0), arg1);
}

function deregisterService(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == deployerAddress
    require arg1
    require arg1 != this.address
    require uint8(stor2[address(arg1)].field_0)
    uint8(stor2[address(arg1)].field_0) = 0
    emit DeregisterServiceEvent(arg1);
}

function registerService(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == deployerAddress
    require arg1
    require arg1 != this.address
    if not uint8(stor2[address(arg1)].field_0):
        uint8(stor2[address(arg1)].field_0) = 1
        uint256(stor2[address(arg1)].field_256) = block.timestamp
    emit RegisterServiceEvent(arg1);
}

function sub_48fcb72c(?) {
    require calldata.size - 4 >= 32
    mem[192 len 0] = None
    require uint8(stor2[address(msg.sender)].field_0)
    require block.timestamp >= uint256(stor2[address(msg.sender)].field_256)
    require uint8(stor2[address(msg.sender)][2][sha3(Mask(152, 0, mem[192 len 13], 'set_max_driip_nonce' % 281474976710656, 0))].field_0)
    sub_897d36aa = arg1
    emit 0x607ebe65: arg1
}

function sub_59b98fc6(?) {
    require ext_code.size(sub_bf24e7d0Address)
    call sub_bf24e7d0Address.0x1f344070 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        sub_897d36aa = ext_call.return_data[0]
        emit 0x1c463c35: ext_call.return_data[0]
}

function registerServiceDeferred(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == deployerAddress
    require arg1
    require arg1 != this.address
    if not uint8(stor2[address(arg1)].field_0):
        uint8(stor2[address(arg1)].field_0) = 1
        uint256(stor2[address(arg1)].field_256) = sub_3b7bea6c + block.timestamp
    emit RegisterServiceDeferredEvent(address(arg1), sub_3b7bea6c);
}

function sub_1423ba38(?) {
    require calldata.size - 4 >= 128
    require calldata.size - 36 >= 64
    mem[256 len 0] = None
    mem[256 len 0] = 0
    require uint8(stor2[address(msg.sender)].field_0)
    require block.timestamp >= uint256(stor2[address(msg.sender)].field_256)
    require uint8(stor2[address(msg.sender)][2][sha3(Mask(104, 0, mem[256 len 13], 0))].field_0)
    sub_3858654b[address(arg1)][uint64(arg2) << 96][arg3] = arg4
    emit 0x627686b1: address(arg1), arg2 << 192, arg3, arg4
}

function sub_6b184dff(?) {
    require calldata.size - 4 >= 96
    require arg3 < 2
    if not sub_d66c5291[address(arg1)][arg2]:
        return 0
    require arg3 <= 1
    if arg3:
        if sub_d66c5291[address(arg1)][arg2] - 1 < stor6.length:
            return bool(uint8(stor6[stor8[address(arg1)][arg2]].field_0))
    else:
        if sub_d66c5291[address(arg1)][arg2] - 1 < stor6.length:
            return bool(uint8(stor6[stor8[address(arg1)][arg2]].field_0))
    ('ge', ('add', -1, ('stor', ('map', ('param', 'arg2'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_d66c5291', 8))))), ('stor', ('length', ('name', 'stor6', 6))))
    revert
}

function sub_7657768c(?) {
    require calldata.size - 4 >= 224
    require calldata.size - 100 >= 64
    require calldata.size - 164 >= 64
    mem[320 len 0] = None
    require uint8(stor2[address(msg.sender)].field_0)
    require block.timestamp >= uint256(stor2[address(msg.sender)].field_256)
    require uint8(stor2[address(msg.sender)][2][sha3(Mask(104, 0, mem[320 len 13], 0))].field_0)
    uint256(sub_3fd6832d[address(arg1)][address(arg2)][address(arg3)][uint64(arg4) << 96][arg5].field_0) = arg6
    uint256(sub_3fd6832d[address(arg1)][address(arg2)][address(arg3)][uint64(arg4) << 96][arg5].field_256) = arg7
    emit 0xe24c7401: address(arg1), address(arg2), address(arg3), arg4 << 192, arg5, arg6, arg7
}

function sub_08df7dc8(?) {
    require calldata.size - 4 >= 32
    require arg1 < stor6.length
    mem[128] = uint256(stor6[arg1].field_0)
    idx = 128
    s = 0
    while stor6[arg1].length + 96 > idx:
        mem[idx + 32] = uint256(stor6[(6 * arg1) + s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor6[arg1].length, data=mem[128 len ceil32(stor6[arg1].length)]), 
           uint256(stor6[arg1].field_256),
           uint256(stor6[arg1].field_512),
           address(stor6[arg1].field_768),
           bool(uint8(stor6[arg1].field_928)),
           uint256(stor6[arg1].field_1024),
           address(stor6[arg1].field_1280),
           bool(uint8(stor6[arg1].field_1440))
}

function sub_e86c7f8d(?) {
    require calldata.size - 4 >= 128
    require arg3 < 2
    mem[192 len 0] = None
    require uint8(stor2[address(msg.sender)].field_0)
    require block.timestamp >= uint256(stor2[address(msg.sender)].field_256)
    require uint8(stor2[address(msg.sender)][2][sha3(Mask(192, 0, mem[192 len 8], uint128('set_settlement_role_done'), 0))].field_0)
    require sub_d66c5291[address(arg1)][arg2]
    require arg3 <= 1
    require sub_d66c5291[address(arg1)][arg2] - 1 < stor6.length
    if arg3:
        Mask(96, 0, stor6[stor8[address(arg1)][arg2]].field_0) = Mask(96, 0, arg4)
    else:
        Mask(96, 0, stor6[stor8[address(arg1)][arg2]].field_0) = Mask(96, 0, arg4)
    require arg3 < 2
    emit 0xd683d3f3: address(arg1), arg2, arg3, arg4
}

function sub_d2f08936(?) {
    require calldata.size - 4 >= 64
    require sub_d66c5291[address(arg1)][arg2] > 0
    require sub_d66c5291[address(arg1)][arg2] - 1 < stor6.length
    mem[704] = uint256(stor[sha3(('name', 'stor6', 6) + (6 * stor8[address(arg1)][arg2]) - 6)].field_0)
    idx = 704
    s = 0
    while stor[('name', 'stor6', 6) + (6 * stor8[address(arg1)][arg2]) - 6].length + 704 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3(('name', 'stor6', 6) + (6 * stor8[address(arg1)][arg2]) - 6)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return 32, 256, 
           uint256(stor6[stor8[address(arg1)][arg2]].field_0),
           uint256(stor6[stor8[address(arg1)][arg2]].field_0),
           address(stor6[stor8[address(arg1)][arg2]].field_0),
           bool(uint8(stor6[stor8[address(arg1)][arg2]].field_0)),
           uint256(stor6[stor8[address(arg1)][arg2]].field_0),
           address(stor6[stor8[address(arg1)][arg2]].field_0),
           bool(uint8(stor6[stor8[address(arg1)][arg2]].field_0)),
           stor[('name', 'stor6', 6) + (6 * stor8[address(arg1)][arg2]) - 6].length,
           mem[704 len ceil32(stor[('name', 'stor6', 6) + (6 * stor8[address(arg1)][arg2]) - 6].length)]
}

function sub_c0ffe1b4(?) {
    require calldata.size - 4 >= 64
    require arg2 < sub_92f7bd7b[address(arg1)]
    require arg2 < sub_92f7bd7b[address(arg1)]
    require sub_92f7bd7b[address(arg1)][arg2] - 1 < stor6.length
    mem[704] = uint256(stor[sha3(('name', 'stor6', 6) + (6 * stor7[address(arg1)][arg2]) - 6)].field_0)
    idx = 704
    s = 0
    while stor[('name', 'stor6', 6) + (6 * stor7[address(arg1)][arg2]) - 6].length + 704 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3(('name', 'stor6', 6) + (6 * stor7[address(arg1)][arg2]) - 6)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return 32, 256, 
           uint256(stor6[stor7[address(arg1)][arg2]].field_0),
           uint256(stor6[stor7[address(arg1)][arg2]].field_0),
           address(stor6[stor7[address(arg1)][arg2]].field_0),
           bool(uint8(stor6[stor7[address(arg1)][arg2]].field_0)),
           uint256(stor6[stor7[address(arg1)][arg2]].field_0),
           address(stor6[stor7[address(arg1)][arg2]].field_0),
           bool(uint8(stor6[stor7[address(arg1)][arg2]].field_0)),
           stor[('name', 'stor6', 6) + (6 * stor7[address(arg1)][arg2]) - 6].length,
           mem[704 len ceil32(stor[('name', 'stor6', 6) + (6 * stor7[address(arg1)][arg2]) - 6].length)]
}

function disableServiceAction(address arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require calldata.size > arg2 + 35
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require msg.sender == deployerAddress
    require arg1
    require arg1 != this.address
    mem[ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    mem[ceil32(arg2.length) + 128] = arg2.length
    mem[64] = arg2.length + ceil32(arg2.length) + 160
    _28 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
    mem[arg2.length + ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
    mem[arg2.length + ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 160] = mem[arg2.length + ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 160] and 256^(-(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 32) - 1 or mem[ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 160] and !(256^(-(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 32) - 1)
    require uint8(stor2[address(arg1)][2][sha3(mem[arg2.length + ceil32(arg2.length) + 160 len _28])].field_0)
    uint8(stor2[address(arg1)][2][sha3(mem[arg2.length + ceil32(arg2.length) + 160 len _28])].field_0) = 0
    emit DisableServiceActionEvent(address(arg1), Array(len=arg2.length, data=arg2[all]));
}

function isEnabledServiceAction(address arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require calldata.size > arg2 + 35
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    mem[ceil32(arg2.length) + 128] = arg2.length
    mem[64] = arg2.length + ceil32(arg2.length) + 160
    _29 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
    mem[arg2.length + ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
    mem[arg2.length + ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 160] = mem[arg2.length + ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 160] and 256^(-(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 32) - 1 or mem[ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 160] and !(256^(-(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 32) - 1)
    if not uint8(stor2[address(arg1)].field_0):
        return bool(uint8(stor2[address(arg1)].field_0))
    if block.timestamp < uint256(stor2[address(arg1)].field_256):
        return block.timestamp >= uint256(stor2[address(arg1)].field_256)
    mem[arg2.length + ceil32(arg2.length) + 160] = bool(uint8(stor2[address(arg1)][2][sha3(mem[arg2.length + ceil32(arg2.length) + 160 len _29])].field_0))
    return memory
      from arg2.length + ceil32(arg2.length) + 160
       len 32
}

function enableServiceAction(address arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require calldata.size > arg2 + 35
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require msg.sender == deployerAddress
    require arg1
    require arg1 != this.address
    mem[0] = arg1
    mem[32] = 2
    require uint8(stor2[address(arg1)].field_0)
    mem[ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    mem[ceil32(arg2.length) + 128] = arg2.length
    mem[64] = arg2.length + ceil32(arg2.length) + 160
    _30 = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
    mem[arg2.length + ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
    mem[arg2.length + ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 160] = mem[arg2.length + ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 160] and 256^(-(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 32) - 1 or mem[ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 160] and !(256^(-(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 32) - 1)
    require not uint8(stor2[address(arg1)][2][sha3(mem[arg2.length + ceil32(arg2.length) + 160 len _30])].field_0)
    uint8(stor2[address(arg1)][2][sha3(mem[arg2.length + ceil32(arg2.length) + 160 len _30])].field_0) = 1
    uint256(stor2[address(arg1)].field_768)++
    uint256(stor[('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor2', 2))) + uint256(stor2[address(arg1)].field_768)].field_0) = sha3(mem[arg2.length + ceil32(arg2.length) + 160 len _30])
    emit EnableServiceActionEvent(address(arg1), Array(len=arg2.length, data=arg2[all]));
}

function sub_87725313(?) {
    require calldata.size - 4 >= 192
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[64] = ceil32(arg1.length) + 192
    mem[ceil32(arg1.length) + 128] = 15
    mem[ceil32(arg1.length) + 160] = 0x696e69745f736574746c656d656e740000000000000000000000000000000000
    mem[ceil32(arg1.length) + 224 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    mem[ceil32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 224] = mem[ceil32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 192 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32] or Mask(8 * -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32, -(8 * -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32) + 256, mem[ceil32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 224])
    require uint8(stor2[address(msg.sender)].field_0)
    require block.timestamp >= uint256(stor2[address(msg.sender)].field_256)
    require uint8(stor2[address(msg.sender)][2][sha3(Mask(120, 0, mem[ceil32(arg1.length) + 224 len 15], 0))].field_0)
    if not sub_d66c5291[address(arg3)][arg4]:
        if not sub_d66c5291[address(arg5)][arg6]:
            stor6.length++
            if stor6.length > stor6.length + 1:
                mem[0] = 6
                idx = (6 * stor6.length) + 6
                while sha3(6) + (6 * stor6.length) > idx + sha3(mem[0]):
                    uint256(stor[idx + sha3(mem[0])]) = 0
                    if 31 < stor[idx + sha3(mem[0])].length:
                        mem[0] = idx + sha3(mem[0])
                        s = sha3(idx + sha3(mem[0]))
                        while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                    uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                    Mask(168, 0, stor[idx + sha3(mem[0]) + 3]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                    Mask(168, 0, stor[idx + sha3(mem[0]) + 5]) = 0
                    idx = idx + 6
                    continue 
            require stor6.length - 1 < stor6.length
            uint256(stor[sha3((6 * stor6.length) + ('name', 'stor6', 6) - 6)][].field_0) = Array(len=arg1.length, data=arg1[all])
            require stor6.length - 1 < stor6.length
            uint256(stor6[stor6.length].field_0) = arg2
            uint256(stor6[stor6.length].field_0) = arg4
            address(stor6[stor6.length].field_0) = arg3
            uint256(stor6[stor6.length].field_0) = arg6
            address(stor6[stor6.length].field_0) = arg5
            if not bool(stor6[stor6.length].field_0):
                emit 0xb764ccf9: 32, 256, uint256(stor6[stor6.length].field_0), uint256(stor6[stor6.length].field_0), address(stor6[stor6.length].field_0), bool(Mask(96, 0, stor6[stor6.length].field_0)), uint256(stor6[stor6.length].field_0), address(stor6[stor6.length].field_0), bool(Mask(96, 0, stor6[stor6.length].field_0)), stor6[stor6.length].field_0 % 128, Mask(248, 8, uint256(stor6[stor6.length].field_0))
            else:
                if bool(stor6[stor6.length].field_0) != 1:
                    emit 0xb764ccf9: mem[ceil32(arg1.length) + 239 len -ceil32(arg1.length) - 239]
                else:
                    idx = 0
                    s = 0
                    while idx < uint255(stor6[stor6.length].field_0):
                        mem[idx + ceil32(arg1.length) + 559] = uint256(stor[s + sha3((6 * stor6.length) + ('name', 'stor6', 6) - 6)].field_0)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit 0xb764ccf9: 32, 256, uint256(stor6[stor6.length].field_0), uint256(stor6[stor6.length].field_0), address(stor6[stor6.length].field_0), bool(Mask(96, 0, stor6[stor6.length].field_0)), uint256(stor6[stor6.length].field_0), address(stor6[stor6.length].field_0), bool(Mask(96, 0, stor6[stor6.length].field_0)), 2 * Mask(256, -1, uint255(stor6[stor6.length].field_0)), mem[ceil32(arg1.length) + 559 len ceil32(uint255(stor6[stor6.length].field_0))]
            sub_92f7bd7b[address(arg3)]++
            sub_92f7bd7b[address(arg3)][sub_92f7bd7b[address(arg3)]] = stor6.length
            sub_92f7bd7b[arg5]++
            sub_92f7bd7b[arg5][sub_92f7bd7b[arg5]] = stor6.length
            sub_d66c5291[address(arg3)][arg4] = stor6.length
            sub_d66c5291[address(arg5)][arg6] = stor6.length
}



}
