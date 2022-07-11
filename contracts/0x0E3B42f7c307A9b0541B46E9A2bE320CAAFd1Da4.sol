contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address stor0;
address deployerAddress; offset 8
address operatorAddress;
address configurationAddress;
uint256 sub_3b7bea6c;
uint8 stor5;
mapping of uint8 stor6;
mapping of uint8 stor7;
mapping of uint8 stor8;
mapping of uint8 stor9;
mapping of uint8 stor10;
array of uint256 sub_e3d3e9fc;
array of struct fungibleLocksCount;
mapping of uint256 sub_b3959e81;
mapping of uint256 sub_1e1fc7aa;
array of struct sub_20f7e31b;
mapping of uint256 sub_87f8f8da;
mapping of uint256 sub_2a4bc762;

function sub_19507d8a(?) {
    return bool(stor6[arg1])
}

function sub_1e1fc7aa(?) {
    return sub_1e1fc7aa[arg1][arg2][arg3]
}

function sub_20f7e31b(?) {
    require arg2 < uint256(sub_20f7e31b[arg1].field_0)
    return address(sub_20f7e31b[arg1][arg2].field_0), 
           address(sub_20f7e31b[arg1][arg2].field_256),
           uint256(sub_20f7e31b[arg1][arg2].field_512),
           uint256(sub_20f7e31b[arg1][arg2].field_1024),
           uint256(sub_20f7e31b[arg1][arg2].field_1280)
}

function sub_2a4bc762(?) {
    return sub_2a4bc762[arg1][arg2][arg3]
}

function isRegisteredService(address arg1) {
    return bool(uint8(stor3[address(arg1)].field_0))
}

function sub_2f013a00(?) {
    return bool(uint8(stor0.field_0))
}

function sub_3b7bea6c(?) {
    return sub_3b7bea6c
}

function destructor() {
    return deployerAddress
}

function fungibleLocksCount(address arg1) {
    return uint256(fungibleLocksCount[address(arg1)].field_0)
}

function operator() {
    return operatorAddress
}

function sub_62f1e6b3(?) {
    return bool(stor7[arg1][arg2])
}

function sub_677ec9d6(?) {
    return bool(stor10[arg1][arg2][arg3])
}

function configuration() {
    return configurationAddress
}

function sub_7953d64d(?) {
    return bool(stor8[arg1][arg2])
}

function sub_7f584f51(?) {
    return bool(stor5)
}

function sub_84cfb409(?) {
    return bool(stor9[arg1][arg2][arg3])
}

function sub_87f8f8da(?) {
    return sub_87f8f8da[arg1][arg2][arg3][arg4]
}

function sub_b3959e81(?) {
    return sub_b3959e81[arg1][arg2][arg3][arg4]
}

function nonFungibleLocksCount(address arg1) {
    return uint256(sub_20f7e31b[address(arg1)].field_0)
}

function deployer() {
    return deployerAddress
}

function sub_e3d3e9fc(?) {
    require arg3 < sub_e3d3e9fc[arg1][arg2]
    return sub_e3d3e9fc[arg1][arg2][arg3]
}

function sub_e4d7f54d(?) {
    require arg2 < uint256(fungibleLocksCount[arg1].field_0)
    return address(fungibleLocksCount[arg1][arg2].field_0), 
           address(fungibleLocksCount[arg1][arg2].field_256),
           uint256(fungibleLocksCount[arg1][arg2].field_512),
           uint256(fungibleLocksCount[arg1][arg2].field_768),
           uint256(fungibleLocksCount[arg1][arg2].field_1024),
           uint256(fungibleLocksCount[arg1][arg2].field_1280)
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

function disableInitialServiceAuthorization() {
    require msg.sender == deployerAddress
    stor5 = 1
}

function disableSelfDestruction() {
    require deployerAddress == msg.sender
    uint8(stor0.field_0) = 1
    emit SelfDestructionDisabledEvent(msg.sender);
}

function setServiceActivationTimeout(uint256 arg1) {
    require msg.sender == deployerAddress
    sub_3b7bea6c = arg1
    emit ServiceActivationTimeoutEvent(arg1);
}

function isRegisteredActiveService(address arg1) {
    if not uint8(stor3[address(arg1)].field_0):
        return bool(uint8(stor3[address(arg1)].field_0))
    return block.timestamp >= uint256(stor3[address(arg1)].field_256)
}

function setConfiguration(address arg1) {
    require msg.sender == deployerAddress
    require arg1
    if configurationAddress != arg1:
        configurationAddress = arg1
        emit 0x634f61bf: configurationAddress, arg1
}

function isLocked(address arg1) {
    if 0 < uint256(fungibleLocksCount[address(arg1)].field_0):
        return (0 < uint256(fungibleLocksCount[address(arg1)].field_0))
    return (uint256(sub_20f7e31b[address(arg1)].field_0) > 0)
}

function setOperator(address arg1) {
    require msg.sender == operatorAddress
    require arg1
    require arg1 != this.address
    if operatorAddress != arg1:
        operatorAddress = arg1
        emit SetOperatorEvent(operatorAddress, arg1);
}

function setDeployer(address arg1) {
    require msg.sender == deployerAddress
    require arg1
    require arg1 != this.address
    if deployerAddress != arg1:
        deployerAddress = arg1
        emit SetDeployerEvent(address(stor0.field_0), arg1);
}

function isLocked(address arg1, address arg2, uint256 arg3) {
    if 0 < sub_1e1fc7aa[address(arg1)][address(arg2)][arg3]:
        return (0 < sub_1e1fc7aa[address(arg1)][address(arg2)][arg3])
    return (sub_2a4bc762[address(arg1)][address(arg2)][arg3] > 0)
}

function deregisterService(address arg1) {
    require msg.sender == deployerAddress
    require arg1
    require arg1 != this.address
    require uint8(stor3[address(arg1)].field_0)
    uint8(stor3[address(arg1)].field_0) = 0
    emit DeregisterServiceEvent(arg1);
}

function isLocked(address arg1, address arg2, address arg3, uint256 arg4) {
    if 0 < sub_b3959e81[address(arg1)][address(arg3)][arg4][address(arg2)]:
        return (0 < sub_b3959e81[address(arg1)][address(arg3)][arg4][address(arg2)])
    return (sub_87f8f8da[address(arg1)][address(arg3)][arg4][address(arg2)] > 0)
}

function authorizeRegisteredService(address arg1) {
    require arg1
    require arg1 != this.address
    require arg1 != msg.sender
    require uint8(stor3[address(arg1)].field_0)
    require not stor6[address(arg1)]
    stor8[address(arg1)][msg.sender] = 1
    emit AuthorizeRegisteredServiceEvent(msg.sender, arg1);
}

function authorizeInitialService(address arg1) {
    require msg.sender == deployerAddress
    require arg1
    require arg1 != this.address
    require not stor5
    require arg1 != msg.sender
    require uint8(stor3[address(arg1)].field_0)
    stor6[address(arg1)] = 1
    emit AuthorizeInitialServiceEvent(msg.sender, arg1);
}

function registerService(address arg1) {
    require msg.sender == deployerAddress
    require arg1
    require arg1 != this.address
    if not uint8(stor3[address(arg1)].field_0):
        uint8(stor3[address(arg1)].field_0) = 1
        uint256(stor3[address(arg1)].field_256) = block.timestamp
    emit RegisterServiceEvent(arg1);
}

function registerServiceDeferred(address arg1) {
    require msg.sender == deployerAddress
    require arg1
    require arg1 != this.address
    if not uint8(stor3[address(arg1)].field_0):
        uint8(stor3[address(arg1)].field_0) = 1
        uint256(stor3[address(arg1)].field_256) = sub_3b7bea6c + block.timestamp
    emit RegisterServiceDeferredEvent(address(arg1), sub_3b7bea6c);
}

function isAuthorizedRegisteredService(address arg1, address arg2) {
    if not uint8(stor3[address(arg1)].field_0):
        return bool(uint8(stor3[address(arg1)].field_0))
    if block.timestamp < uint256(stor3[address(arg1)].field_256):
        return block.timestamp >= uint256(stor3[address(arg1)].field_256)
    if stor6[address(arg1)]:
        if not stor7[address(arg1)][address(arg2)]:
            return not bool(stor7[address(arg1)][address(arg2)])
    return bool(stor8[address(arg1)][address(arg2)])
}

function lockedIdsCount(address arg1, address arg2, address arg3, uint256 arg4) {
    if not sub_87f8f8da[address(arg1)][address(arg3)][arg4][address(arg2)]:
        return 0
    require sub_87f8f8da[address(arg1)][address(arg3)][arg4][address(arg2)] - 1 < uint256(sub_20f7e31b[address(arg1)].field_0)
    if block.timestamp < uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0):
        return 0
    require sub_87f8f8da[address(arg1)][address(arg3)][arg4][address(arg2)] - 1 < uint256(sub_20f7e31b[address(arg1)].field_0)
    return uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0)
}

function lockedAmount(address arg1, address arg2, address arg3, uint256 arg4) {
    if not sub_b3959e81[address(arg1)][address(arg3)][arg4][address(arg2)]:
        return 0
    require sub_b3959e81[address(arg1)][address(arg3)][arg4][address(arg2)] - 1 < uint256(fungibleLocksCount[address(arg1)].field_0)
    if block.timestamp < uint256(fungibleLocksCount[address(arg1)][stor13[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0):
        return 0
    require sub_b3959e81[address(arg1)][address(arg3)][arg4][address(arg2)] - 1 < uint256(fungibleLocksCount[address(arg1)].field_0)
    return uint256(fungibleLocksCount[address(arg1)][stor13[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0)
}

function unauthorizeRegisteredService(address arg1) {
    require arg1
    require arg1 != this.address
    require arg1 != msg.sender
    require uint8(stor3[address(arg1)].field_0)
    if stor6[address(arg1)]:
        stor7[address(arg1)][msg.sender] = 1
    else:
        stor8[address(arg1)][msg.sender] = 0
        idx = 0
        while idx < sub_e3d3e9fc[address(arg1)][msg.sender]:
            require idx < sub_e3d3e9fc[address(arg1)][msg.sender]
            stor9[address(arg1)][stor11[address(arg1)][msg.sender][idx]][msg.sender] = 1
            mem[0] = msg.sender
            mem[32] = sha3(address(arg1), 11)
            idx = idx + 1
            continue 
    emit UnauthorizeRegisteredServiceEvent(msg.sender, arg1);
}

function isEnabledServiceAction(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 160] = mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 160] and 256^(-(arg2.length % 32) + 32) - 1 or mem[ceil32(arg2.length) + floor32(arg2.length) + 160] and !(256^(-(arg2.length % 32) + 32) - 1)
    if not uint8(stor3[address(arg1)].field_0):
        return bool(uint8(stor3[address(arg1)].field_0))
    if block.timestamp < uint256(stor3[address(arg1)].field_256):
        return block.timestamp >= uint256(stor3[address(arg1)].field_256)
    mem[arg2.length + ceil32(arg2.length) + 160] = bool(uint8(stor3[address(arg1)][2][('map', ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 160, ('cd', ('add', 4, ('param', 'arg2'))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2')))))))].field_0))
    return memory
      from arg2.length + ceil32(arg2.length) + 160
       len 32
}

function enableServiceAction(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    require msg.sender == deployerAddress
    require arg1
    require arg1 != this.address
    require uint8(stor3[address(arg1)].field_0)
    mem[ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 160] = mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 160] and 256^(-(arg2.length % 32) + 32) - 1 or mem[ceil32(arg2.length) + floor32(arg2.length) + 160] and !(256^(-(arg2.length % 32) + 32) - 1)
    require not uint8(stor3[address(arg1)][2][('map', ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 160, ('cd', ('add', 4, ('param', 'arg2'))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2')))))))].field_0)
    uint8(stor3[address(arg1)][2][('map', ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 160, ('cd', ('add', 4, ('param', 'arg2'))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2')))))))].field_0) = 1
    uint256(stor3[address(arg1)].field_768)++
    uint256(stor[uint256(stor3[address(arg1)].field_768) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor3', 3)))].field_0) = sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 160 len arg2.length % 32])
    emit EnableServiceActionEvent(address(arg1), Array(len=arg2.length, data=arg2[all]));
}

function disableServiceAction(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    require msg.sender == deployerAddress
    require arg1
    require arg1 != this.address
    mem[ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    mem[ceil32(arg2.length) + 128] = arg2.length
    mem[arg2.length + ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 160] = mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 160] and 256^(-(arg2.length % 32) + 32) - 1 or mem[ceil32(arg2.length) + floor32(arg2.length) + 160] and !(256^(-(arg2.length % 32) + 32) - 1)
    require uint8(stor3[address(arg1)][2][('map', ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 160, ('cd', ('add', 4, ('param', 'arg2'))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2')))))))].field_0)
    uint8(stor3[address(arg1)][2][('map', ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 160, ('cd', ('add', 4, ('param', 'arg2'))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2')))))))].field_0) = 0
    mem[arg2.length + ceil32(arg2.length) + 160] = arg1
    mem[arg2.length + ceil32(arg2.length) + 192] = 64
    mem[arg2.length + ceil32(arg2.length) + 224] = arg2.length
    if 0 < arg2.length:
        mem[arg2.length + ceil32(arg2.length) + 256] = mem[128]
        mem[arg2.length + ceil32(arg2.length) + 288 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
    emit DisableServiceActionEvent(address(arg1), Array(len=arg2.length, data=mem[arg2.length + ceil32(arg2.length) + 256 len arg2.length]));
}

function sub_8a2f30cc(?) {
    mem[128 len arg2.length] = arg2[all]
    require arg1
    require arg1 != this.address
    require arg1 != msg.sender
    mem[ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    mem[ceil32(arg2.length) + 128] = arg2.length
    mem[arg2.length + ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 160] = mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 160] and 256^(-(arg2.length % 32) + 32) - 1 or mem[ceil32(arg2.length) + floor32(arg2.length) + 160] and !(256^(-(arg2.length % 32) + 32) - 1)
    require uint8(stor3[address(arg1)].field_0)
    require uint8(stor3[address(arg1)][2][('map', ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 160, ('cd', ('add', 4, ('param', 'arg2'))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2')))))))].field_0)
    require not stor6[address(arg1)]
    stor9[address(arg1)][('map', ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 160, ('cd', ('add', 4, ('param', 'arg2'))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2')))))))][msg.sender] = 0
    mem[arg2.length + ceil32(arg2.length) + 160] = msg.sender
    mem[arg2.length + ceil32(arg2.length) + 192] = arg1
    mem[arg2.length + ceil32(arg2.length) + 224] = 96
    mem[arg2.length + ceil32(arg2.length) + 256] = arg2.length
    if 0 < arg2.length:
        mem[arg2.length + ceil32(arg2.length) + 288] = mem[128]
        mem[arg2.length + ceil32(arg2.length) + 320 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
    emit UnauthorizeRegisteredServiceActionEvent(msg.sender, address(arg1), Array(len=arg2.length, data=mem[arg2.length + ceil32(arg2.length) + 288 len arg2.length]));
}

function lockedIdsByIndices(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    if not sub_87f8f8da[address(arg1)][address(arg3)][arg4][address(arg2)]:
        return ''
    require sub_87f8f8da[address(arg1)][address(arg3)][arg4][address(arg2)] - 1 < uint256(sub_20f7e31b[address(arg1)].field_0)
    if block.timestamp < uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0):
        return ''
    require sub_87f8f8da[address(arg1)][address(arg3)][arg4][address(arg2)] - 1 < uint256(sub_20f7e31b[address(arg1)].field_0)
    if 0 == uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0):
        return ''
    mem[100] = arg6
    mem[132] = uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0) - 1
    require ext_code.size(0xff948c236c8d4dfcd0168bf243314c8ff8ec967)
    delegate 0xff948c236c8d4dfcd0168bf243314c8ff8ec967.clampMax(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg6, uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0) - 1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = delegate.return_data[0] + -arg5 + 1
    if delegate.return_data[0] + -arg5 + 1:
        mem[128 len 32 * delegate.return_data[0] + -arg5 + 1] = code.data[15224 len 32 * delegate.return_data[0] + -arg5 + 1]
    idx = arg5
    while idx <= delegate.return_data[0]:
        require idx < uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0)
        mem[0] = (6 * sub_87f8f8da[address(arg1)][address(arg3)][arg4][address(arg2)]) + sha3(sha3(address(arg1), 15)) - 3
        require idx - arg5 < mem[96]
        mem[(32 * idx - arg5) + 128] = uint256(stor[sha3((6 * stor16[address(arg1)][address(arg3)][arg4][address(arg2)]) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_20f7e31b', 15)) - 3) + idx].field_0)
        idx = idx + 1
        continue 
    mem[(32 * delegate.return_data[0] + -arg5 + 1) + 128] = 32
    mem[(32 * delegate.return_data[0] + -arg5 + 1) + 160] = mem[96]
    mem[(32 * delegate.return_data[0] + -arg5 + 1) + 192 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    return 32, mem[(32 * delegate.return_data[0] + -arg5 + 1) + 160 len (32 * mem[96]) + 32]
}

function sub_0c5d24fa(?) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    mem[ceil32(arg2.length) + 128] = arg2.length
    mem[arg2.length + ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 160] = mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 160] and 256^(-(arg2.length % 32) + 32) - 1 or mem[ceil32(arg2.length) + floor32(arg2.length) + 160] and !(256^(-(arg2.length % 32) + 32) - 1)
    _121 = sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 160 len arg2.length % 32])
    mem[arg2.length + ceil32(arg2.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[(2 * floor32(arg2.length)) + ceil32(arg2.length) + 224 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    mem[(2 * arg2.length) + ceil32(arg2.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[(2 * arg2.length) + ceil32(arg2.length) + floor32(arg2.length) + 192] = mem[(2 * arg2.length) + ceil32(arg2.length) + floor32(arg2.length) + 192] and 256^(-(arg2.length % 32) + 32) - 1 or mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 192] and !(256^(-(arg2.length % 32) + 32) - 1)
    if not uint8(stor3[address(arg1)].field_0):
        return bool(uint8(stor3[address(arg1)].field_0))
    if block.timestamp < uint256(stor3[address(arg1)].field_256):
        return block.timestamp >= uint256(stor3[address(arg1)].field_256)
    if not uint8(stor3[address(arg1)][2][sha3(mem[(2 * arg2.length) + ceil32(arg2.length) + 192 len arg2.length])].field_0):
        mem[(2 * arg2.length) + ceil32(arg2.length) + 192] = bool(uint8(stor3[address(arg1)][2][sha3(mem[(2 * arg2.length) + ceil32(arg2.length) + 192 len arg2.length])].field_0))
        return memory
          from (2 * arg2.length) + ceil32(arg2.length) + 192
           len 32
    if stor6[address(arg1)]:
        if not stor7[address(arg1)][address(arg3)]:
            return not bool(stor7[address(arg1)][address(arg3)])
    if stor8[address(arg1)][address(arg3)]:
        return bool(stor8[address(arg1)][address(arg3)])
    return bool(stor9[address(arg1)][_121][address(arg3)])
}

function sub_62ac7621(?) {
    mem[128 len arg2.length] = arg2[all]
    require arg1
    require arg1 != this.address
    require arg1 != msg.sender
    mem[ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 160] = mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 160] and 256^(-(arg2.length % 32) + 32) - 1 or mem[ceil32(arg2.length) + floor32(arg2.length) + 160] and !(256^(-(arg2.length % 32) + 32) - 1)
    require uint8(stor3[address(arg1)].field_0)
    require uint8(stor3[address(arg1)][2][('map', ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 160, ('cd', ('add', 4, ('param', 'arg2'))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2')))))))].field_0)
    require not stor6[address(arg1)]
    stor8[address(arg1)][msg.sender] = 0
    stor9[address(arg1)][('map', ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 160, ('cd', ('add', 4, ('param', 'arg2'))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2')))))))][msg.sender] = 1
    if not stor10[address(arg1)][('map', ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 160, ('cd', ('add', 4, ('param', 'arg2'))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2')))))))][msg.sender]:
        stor10[address(arg1)][('map', ('call.data', ('add', 36, ('param', 'arg2')), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mem', ('range', ('add', 160, ('cd', ('add', 4, ('param', 'arg2'))), ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 251, 5, 0, ('cd', ('add', 4, ('param', 'arg2'))))), ('mask_shl', 5, 0, 0, ('cd', ('add', 4, ('param', 'arg2')))))))][msg.sender] = 1
        sub_e3d3e9fc[address(arg1)][msg.sender]++
        sub_e3d3e9fc[address(arg1)][msg.sender][sub_e3d3e9fc[address(arg1)][msg.sender]] = sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[arg2.length + ceil32(arg2.length) + floor32(arg2.length) + 160 len arg2.length % 32])
    emit AuthorizeRegisteredServiceActionEvent(msg.sender, address(arg1), Array(len=arg2.length, data=arg2[all]));
}

function unlockFungible(address arg1, address arg2, address arg3, uint256 arg4) {
    if sub_b3959e81[address(arg1)][address(arg3)][arg4][address(arg2)]:
        require sub_b3959e81[address(arg1)][address(arg3)][arg4][address(arg2)] - 1 < uint256(fungibleLocksCount[address(arg1)].field_0)
        require block.timestamp >= uint256(fungibleLocksCount[address(arg1)][stor13[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0)
        require sub_b3959e81[address(arg1)][address(arg3)][arg4][address(arg2)] - 1 < uint256(fungibleLocksCount[address(arg1)].field_0)
        if sub_b3959e81[address(arg1)][address(arg3)][arg4][address(arg2)] < uint256(fungibleLocksCount[address(arg1)].field_0):
            require uint256(fungibleLocksCount[address(arg1)].field_0) - 1 < uint256(fungibleLocksCount[address(arg1)].field_0)
            require sub_b3959e81[address(arg1)][address(arg3)][arg4][address(arg2)] - 1 < uint256(fungibleLocksCount[address(arg1)].field_0)
            address(fungibleLocksCount[address(arg1)][stor13[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0) = address(fungibleLocksCount[address(arg1)][uint256(fungibleLocksCount[address(arg1)].field_0)].field_0)
            address(fungibleLocksCount[address(arg1)][stor13[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0) = address(fungibleLocksCount[address(arg1)][uint256(fungibleLocksCount[address(arg1)].field_0)].field_0)
            uint256(fungibleLocksCount[address(arg1)][stor13[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0) = uint256(fungibleLocksCount[address(arg1)][uint256(fungibleLocksCount[address(arg1)].field_0)].field_0)
            uint256(fungibleLocksCount[address(arg1)][stor13[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0) = uint256(fungibleLocksCount[address(arg1)][uint256(fungibleLocksCount[address(arg1)].field_0)].field_0)
            uint256(fungibleLocksCount[address(arg1)][stor13[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0) = uint256(fungibleLocksCount[address(arg1)][uint256(fungibleLocksCount[address(arg1)].field_0)].field_0)
            uint256(fungibleLocksCount[address(arg1)][stor13[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0) = uint256(fungibleLocksCount[address(arg1)][uint256(fungibleLocksCount[address(arg1)].field_0)].field_0)
            require sub_b3959e81[address(arg1)][address(arg3)][arg4][address(arg2)] - 1 < uint256(fungibleLocksCount[address(arg1)].field_0)
            sub_b3959e81[address(arg1)][address(arg3)][arg4][address(stor12[address(arg1)][sub_b3959e81[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0)] = sub_b3959e81[address(arg1)][address(arg3)][arg4][address(arg2)]
        uint256(fungibleLocksCount[address(arg1)].field_0)--
        if uint256(fungibleLocksCount[address(arg1)].field_0) > uint256(fungibleLocksCount[address(arg1)].field_0) - 1:
            idx = (6 * uint256(fungibleLocksCount[address(arg1)].field_0)) - 6
            while 6 * uint256(fungibleLocksCount[address(arg1)].field_0) > idx:
                address(fungibleLocksCount[address(arg1)][idx].field_0) = 0
                address(fungibleLocksCount[address(arg1)][idx].field_256) = 0
                uint256(fungibleLocksCount[address(arg1)][idx].field_512) = 0
                uint256(fungibleLocksCount[address(arg1)][idx].field_768) = 0
                uint256(fungibleLocksCount[address(arg1)][idx].field_1024) = 0
                uint256(fungibleLocksCount[address(arg1)][idx].field_1280) = 0
                idx = idx + 6
                continue 
        sub_b3959e81[address(arg1)][address(arg3)][arg4][address(arg2)] = 0
        sub_1e1fc7aa[address(arg1)][address(arg3)][arg4]--
        emit UnlockFungibleEvent(address(arg1), address(arg2), uint256(fungibleLocksCount[address(arg1)][stor13[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0), address(arg3), arg4);
}

function unlockFungibleByProxy(address arg1, address arg2, address arg3, uint256 arg4) {
    require uint8(stor3[address(msg.sender)].field_0)
    require block.timestamp >= uint256(stor3[address(msg.sender)].field_256)
    if not stor6[address(msg.sender)]:
        require stor8[address(msg.sender)][address(arg1)]
    else:
        if stor7[address(msg.sender)][address(arg1)]:
            require stor8[address(msg.sender)][address(arg1)]
    if sub_b3959e81[address(arg1)][address(arg3)][arg4][address(arg2)]:
        require sub_b3959e81[address(arg1)][address(arg3)][arg4][address(arg2)] - 1 < uint256(fungibleLocksCount[address(arg1)].field_0)
        if sub_b3959e81[address(arg1)][address(arg3)][arg4][address(arg2)] < uint256(fungibleLocksCount[address(arg1)].field_0):
            require uint256(fungibleLocksCount[address(arg1)].field_0) - 1 < uint256(fungibleLocksCount[address(arg1)].field_0)
            require sub_b3959e81[address(arg1)][address(arg3)][arg4][address(arg2)] - 1 < uint256(fungibleLocksCount[address(arg1)].field_0)
            address(fungibleLocksCount[address(arg1)][stor13[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0) = address(fungibleLocksCount[address(arg1)][uint256(fungibleLocksCount[address(arg1)].field_0)].field_0)
            address(fungibleLocksCount[address(arg1)][stor13[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0) = address(fungibleLocksCount[address(arg1)][uint256(fungibleLocksCount[address(arg1)].field_0)].field_0)
            uint256(fungibleLocksCount[address(arg1)][stor13[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0) = uint256(fungibleLocksCount[address(arg1)][uint256(fungibleLocksCount[address(arg1)].field_0)].field_0)
            uint256(fungibleLocksCount[address(arg1)][stor13[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0) = uint256(fungibleLocksCount[address(arg1)][uint256(fungibleLocksCount[address(arg1)].field_0)].field_0)
            uint256(fungibleLocksCount[address(arg1)][stor13[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0) = uint256(fungibleLocksCount[address(arg1)][uint256(fungibleLocksCount[address(arg1)].field_0)].field_0)
            uint256(fungibleLocksCount[address(arg1)][stor13[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0) = uint256(fungibleLocksCount[address(arg1)][uint256(fungibleLocksCount[address(arg1)].field_0)].field_0)
            require sub_b3959e81[address(arg1)][address(arg3)][arg4][address(arg2)] - 1 < uint256(fungibleLocksCount[address(arg1)].field_0)
            sub_b3959e81[address(arg1)][address(arg3)][arg4][address(stor12[address(arg1)][sub_b3959e81[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0)] = sub_b3959e81[address(arg1)][address(arg3)][arg4][address(arg2)]
        uint256(fungibleLocksCount[address(arg1)].field_0)--
        if uint256(fungibleLocksCount[address(arg1)].field_0) > uint256(fungibleLocksCount[address(arg1)].field_0) - 1:
            idx = (6 * uint256(fungibleLocksCount[address(arg1)].field_0)) - 6
            while 6 * uint256(fungibleLocksCount[address(arg1)].field_0) > idx:
                address(fungibleLocksCount[address(arg1)][idx].field_0) = 0
                address(fungibleLocksCount[address(arg1)][idx].field_256) = 0
                uint256(fungibleLocksCount[address(arg1)][idx].field_512) = 0
                uint256(fungibleLocksCount[address(arg1)][idx].field_768) = 0
                uint256(fungibleLocksCount[address(arg1)][idx].field_1024) = 0
                uint256(fungibleLocksCount[address(arg1)][idx].field_1280) = 0
                idx = idx + 6
                continue 
        sub_b3959e81[address(arg1)][address(arg3)][arg4][address(arg2)] = 0
        sub_1e1fc7aa[address(arg1)][address(arg3)][arg4]--
        emit UnlockFungibleByProxyEvent(address(arg1), address(arg2), uint256(fungibleLocksCount[address(arg1)][stor13[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0), address(arg3), arg4);
}

function lockFungibleByProxy(address arg1, address arg2, int256 arg3, address arg4, uint256 arg5, uint256 arg6) {
    require uint8(stor3[address(msg.sender)].field_0)
    require block.timestamp >= uint256(stor3[address(msg.sender)].field_256)
    if not stor6[address(msg.sender)]:
        require stor8[address(msg.sender)][address(arg1)]
    else:
        if stor7[address(msg.sender)][address(arg1)]:
            require stor8[address(msg.sender)][address(arg1)]
    require arg2 != arg1
    if not sub_b3959e81[address(arg1)][address(arg4)][arg5][address(arg1)]:
        uint256(fungibleLocksCount[address(arg1)].field_0)++
        if uint256(fungibleLocksCount[address(arg1)].field_0) > uint256(fungibleLocksCount[address(arg1)].field_0) + 1:
            idx = (6 * uint256(fungibleLocksCount[address(arg1)].field_0)) + 6
            while 6 * uint256(fungibleLocksCount[address(arg1)].field_0) > idx:
                address(fungibleLocksCount[address(arg1)][idx].field_0) = 0
                address(fungibleLocksCount[address(arg1)][idx].field_256) = 0
                uint256(fungibleLocksCount[address(arg1)][idx].field_512) = 0
                uint256(fungibleLocksCount[address(arg1)][idx].field_768) = 0
                uint256(fungibleLocksCount[address(arg1)][idx].field_1024) = 0
                uint256(fungibleLocksCount[address(arg1)][idx].field_1280) = 0
                idx = idx + 6
                continue 
        sub_b3959e81[address(arg1)][address(arg4)][arg5][address(arg2)] = uint256(fungibleLocksCount[address(arg1)].field_0) + 1
        sub_1e1fc7aa[address(arg1)][address(arg4)][arg5]++
        require uint256(fungibleLocksCount[address(arg1)].field_0) < uint256(fungibleLocksCount[address(arg1)].field_0)
        address(fungibleLocksCount[address(arg1)][uint256(fungibleLocksCount[address(arg1)].field_0)].field_0) = arg2
        require uint256(fungibleLocksCount[address(arg1)].field_0) < uint256(fungibleLocksCount[address(arg1)].field_0)
        uint256(fungibleLocksCount[address(arg1)][uint256(fungibleLocksCount[address(arg1)].field_0)].field_768) = arg3
        require uint256(fungibleLocksCount[address(arg1)].field_0) < uint256(fungibleLocksCount[address(arg1)].field_0)
        address(fungibleLocksCount[address(arg1)][uint256(fungibleLocksCount[address(arg1)].field_0)].field_256) = arg4
        require uint256(fungibleLocksCount[address(arg1)].field_0) < uint256(fungibleLocksCount[address(arg1)].field_0)
        uint256(fungibleLocksCount[address(arg1)][uint256(fungibleLocksCount[address(arg1)].field_0)].field_512) = arg5
        require arg6 + block.timestamp >= block.timestamp
        require uint256(fungibleLocksCount[address(arg1)].field_0) < uint256(fungibleLocksCount[address(arg1)].field_0)
        uint256(fungibleLocksCount[address(arg1)][uint256(fungibleLocksCount[address(arg1)].field_0)].field_1024) = arg6 + block.timestamp
        require ext_code.size(configurationAddress)
        call configurationAddress.0x29ea3faa with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] + block.timestamp >= block.timestamp
        require uint256(fungibleLocksCount[address(arg1)].field_0) < uint256(fungibleLocksCount[address(arg1)].field_0)
        uint256(fungibleLocksCount[address(arg1)][uint256(fungibleLocksCount[address(arg1)].field_0)].field_1280) = ext_call.return_data[0] + block.timestamp
    else:
        require sub_b3959e81[address(arg1)][address(arg4)][arg5][address(arg1)] - 1 < uint256(fungibleLocksCount[address(arg1)].field_0)
        require block.timestamp >= uint256(fungibleLocksCount[address(arg1)][stor13[address(arg1)][address(arg4)][arg5][address(arg1)]].field_0)
        if sub_b3959e81[address(arg1)][address(arg4)][arg5][address(arg1)]:
            require sub_b3959e81[address(arg1)][address(arg4)][arg5][address(arg1)] - 1 < uint256(fungibleLocksCount[address(arg1)].field_0)
            address(fungibleLocksCount[address(arg1)][stor13[address(arg1)][address(arg4)][arg5][address(arg1)]].field_0) = arg2
            require sub_b3959e81[address(arg1)][address(arg4)][arg5][address(arg1)] - 1 < uint256(fungibleLocksCount[address(arg1)].field_0)
            uint256(fungibleLocksCount[address(arg1)][stor13[address(arg1)][address(arg4)][arg5][address(arg1)]].field_0) = arg3
            require sub_b3959e81[address(arg1)][address(arg4)][arg5][address(arg1)] - 1 < uint256(fungibleLocksCount[address(arg1)].field_0)
            address(fungibleLocksCount[address(arg1)][stor13[address(arg1)][address(arg4)][arg5][address(arg1)]].field_0) = arg4
            require sub_b3959e81[address(arg1)][address(arg4)][arg5][address(arg1)] - 1 < uint256(fungibleLocksCount[address(arg1)].field_0)
            uint256(fungibleLocksCount[address(arg1)][stor13[address(arg1)][address(arg4)][arg5][address(arg1)]].field_0) = arg5
            require arg6 + block.timestamp >= block.timestamp
            require sub_b3959e81[address(arg1)][address(arg4)][arg5][address(arg1)] - 1 < uint256(fungibleLocksCount[address(arg1)].field_0)
            uint256(fungibleLocksCount[address(arg1)][stor13[address(arg1)][address(arg4)][arg5][address(arg1)]].field_0) = arg6 + block.timestamp
            require ext_code.size(configurationAddress)
            call configurationAddress.0x29ea3faa with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] + block.timestamp >= block.timestamp
            require sub_b3959e81[address(arg1)][address(arg4)][arg5][address(arg1)] - 1 < uint256(fungibleLocksCount[address(arg1)].field_0)
            uint256(fungibleLocksCount[address(arg1)][stor13[address(arg1)][address(arg4)][arg5][address(arg1)]].field_0) = ext_call.return_data[0] + block.timestamp
        else:
            uint256(fungibleLocksCount[address(arg1)].field_0)++
            if uint256(fungibleLocksCount[address(arg1)].field_0) > uint256(fungibleLocksCount[address(arg1)].field_0) + 1:
                idx = (6 * uint256(fungibleLocksCount[address(arg1)].field_0)) + 6
                while 6 * uint256(fungibleLocksCount[address(arg1)].field_0) > idx:
                    address(fungibleLocksCount[address(arg1)][idx].field_0) = 0
                    address(fungibleLocksCount[address(arg1)][idx].field_256) = 0
                    uint256(fungibleLocksCount[address(arg1)][idx].field_512) = 0
                    uint256(fungibleLocksCount[address(arg1)][idx].field_768) = 0
                    uint256(fungibleLocksCount[address(arg1)][idx].field_1024) = 0
                    uint256(fungibleLocksCount[address(arg1)][idx].field_1280) = 0
                    idx = idx + 6
                    continue 
            sub_b3959e81[address(arg1)][address(arg4)][arg5][address(arg2)] = uint256(fungibleLocksCount[address(arg1)].field_0) + 1
            sub_1e1fc7aa[address(arg1)][address(arg4)][arg5]++
            require uint256(fungibleLocksCount[address(arg1)].field_0) < uint256(fungibleLocksCount[address(arg1)].field_0)
            address(fungibleLocksCount[address(arg1)][uint256(fungibleLocksCount[address(arg1)].field_0)].field_0) = arg2
            require uint256(fungibleLocksCount[address(arg1)].field_0) < uint256(fungibleLocksCount[address(arg1)].field_0)
            uint256(fungibleLocksCount[address(arg1)][uint256(fungibleLocksCount[address(arg1)].field_0)].field_768) = arg3
            require uint256(fungibleLocksCount[address(arg1)].field_0) < uint256(fungibleLocksCount[address(arg1)].field_0)
            address(fungibleLocksCount[address(arg1)][uint256(fungibleLocksCount[address(arg1)].field_0)].field_256) = arg4
            require uint256(fungibleLocksCount[address(arg1)].field_0) < uint256(fungibleLocksCount[address(arg1)].field_0)
            uint256(fungibleLocksCount[address(arg1)][uint256(fungibleLocksCount[address(arg1)].field_0)].field_512) = arg5
            require arg6 + block.timestamp >= block.timestamp
            require uint256(fungibleLocksCount[address(arg1)].field_0) < uint256(fungibleLocksCount[address(arg1)].field_0)
            uint256(fungibleLocksCount[address(arg1)][uint256(fungibleLocksCount[address(arg1)].field_0)].field_1024) = arg6 + block.timestamp
            require ext_code.size(configurationAddress)
            call configurationAddress.0x29ea3faa with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] + block.timestamp >= block.timestamp
            require uint256(fungibleLocksCount[address(arg1)].field_0) < uint256(fungibleLocksCount[address(arg1)].field_0)
            uint256(fungibleLocksCount[address(arg1)][uint256(fungibleLocksCount[address(arg1)].field_0)].field_1280) = ext_call.return_data[0] + block.timestamp
    emit LockFungibleByProxyEvent(address(arg1), address(arg2), arg3, address(arg4), arg5, arg6);
}

function sub_8ff1642d(?) {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require uint8(stor3[address(msg.sender)].field_0)
    require block.timestamp >= uint256(stor3[address(msg.sender)].field_256)
    if not stor6[address(msg.sender)]:
        require stor8[address(msg.sender)][address(arg1)]
    else:
        if stor7[address(msg.sender)][address(arg1)]:
            require stor8[address(msg.sender)][address(arg1)]
    require arg2 != arg1
    if not sub_87f8f8da[address(arg1)][address(arg4)][arg5][address(arg1)]:
        uint256(sub_20f7e31b[address(arg1)].field_0)++
        if uint256(sub_20f7e31b[address(arg1)].field_0) > uint256(sub_20f7e31b[address(arg1)].field_0) + 1:
            mem[0] = sha3(address(arg1), 15)
            idx = (6 * uint256(sub_20f7e31b[address(arg1)].field_0)) + 6
            while sha3(sha3(address(arg1), 15)) + (6 * uint256(sub_20f7e31b[address(arg1)].field_0)) > idx + sha3(mem[0]):
                address(stor[idx + sha3(mem[0])]) = 0
                address(stor[idx + sha3(mem[0]) + 1]) = 0
                uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                mem[0] = idx + sha3(mem[0]) + 3
                s = sha3(idx + sha3(mem[0]) + 3)
                while sha3(idx + sha3(mem[0]) + 3) + uint256(stor[idx + sha3(mem[0]) + 3]) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                uint256(stor[idx + sha3(mem[0]) + 5]) = 0
                idx = idx + 6
                continue 
        sub_87f8f8da[address(arg1)][address(arg4)][arg5][address(arg2)] = uint256(sub_20f7e31b[address(arg1)].field_0) + 1
        sub_2a4bc762[address(arg1)][address(arg4)][arg5]++
        require uint256(sub_20f7e31b[address(arg1)].field_0) < uint256(sub_20f7e31b[address(arg1)].field_0)
        address(sub_20f7e31b[address(arg1)][uint256(sub_20f7e31b[address(arg1)].field_0)].field_0) = arg2
        require uint256(sub_20f7e31b[address(arg1)].field_0) < uint256(sub_20f7e31b[address(arg1)].field_0)
        uint256(sub_20f7e31b[address(arg1)][uint256(sub_20f7e31b[address(arg1)].field_0)].field_768) = arg3.length
        if not arg3.length:
            idx = 0
            while uint256(sub_20f7e31b[address(arg1)][uint256(sub_20f7e31b[address(arg1)].field_0)].field_768) > idx:
                uint256(stor[idx + sha3((6 * uint256(sub_20f7e31b[address(arg1)].field_0)) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_20f7e31b', 15)) + 3)].field_0) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 128
            while (32 * arg3.length) + 128 > idx:
                uint256(stor[s + sha3((6 * uint256(sub_20f7e31b[address(arg1)].field_0)) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_20f7e31b', 15)) + 3)].field_0) = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
            while uint256(sub_20f7e31b[address(arg1)][uint256(sub_20f7e31b[address(arg1)].field_0)].field_768) > idx:
                uint256(stor[idx + sha3((6 * uint256(sub_20f7e31b[address(arg1)].field_0)) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_20f7e31b', 15)) + 3)].field_0) = 0
                idx = idx + 1
                continue 
        require uint256(sub_20f7e31b[address(arg1)].field_0) < uint256(sub_20f7e31b[address(arg1)].field_0)
        address(sub_20f7e31b[address(arg1)][uint256(sub_20f7e31b[address(arg1)].field_0)].field_256) = arg4
        require uint256(sub_20f7e31b[address(arg1)].field_0) < uint256(sub_20f7e31b[address(arg1)].field_0)
        uint256(sub_20f7e31b[address(arg1)][uint256(sub_20f7e31b[address(arg1)].field_0)].field_512) = arg5
        require arg6 + block.timestamp >= block.timestamp
        require uint256(sub_20f7e31b[address(arg1)].field_0) < uint256(sub_20f7e31b[address(arg1)].field_0)
        uint256(sub_20f7e31b[address(arg1)][uint256(sub_20f7e31b[address(arg1)].field_0)].field_1024) = arg6 + block.timestamp
        require ext_code.size(configurationAddress)
        call configurationAddress.0x29ea3faa with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] + block.timestamp >= block.timestamp
        require uint256(sub_20f7e31b[address(arg1)].field_0) < uint256(sub_20f7e31b[address(arg1)].field_0)
        uint256(sub_20f7e31b[address(arg1)][uint256(sub_20f7e31b[address(arg1)].field_0)].field_1280) = ext_call.return_data[0] + block.timestamp
    else:
        require sub_87f8f8da[address(arg1)][address(arg4)][arg5][address(arg1)] - 1 < uint256(sub_20f7e31b[address(arg1)].field_0)
        require block.timestamp >= uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg4)][arg5][address(arg1)]].field_0)
        if sub_87f8f8da[address(arg1)][address(arg4)][arg5][address(arg1)]:
            require sub_87f8f8da[address(arg1)][address(arg4)][arg5][address(arg1)] - 1 < uint256(sub_20f7e31b[address(arg1)].field_0)
            address(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg4)][arg5][address(arg1)]].field_0) = arg2
            require sub_87f8f8da[address(arg1)][address(arg4)][arg5][address(arg1)] - 1 < uint256(sub_20f7e31b[address(arg1)].field_0)
            uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg4)][arg5][address(arg1)]].field_0) = arg3.length
            if not arg3.length:
                idx = 0
                while uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg4)][arg5][address(arg1)]].field_0) > idx:
                    uint256(stor[idx + sha3((6 * stor16[address(arg1)][address(arg4)][arg5][address(arg1)]) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_20f7e31b', 15)) - 3)].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 128
                while (32 * arg3.length) + 128 > idx:
                    uint256(stor[s + sha3((6 * stor16[address(arg1)][address(arg4)][arg5][address(arg1)]) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_20f7e31b', 15)) - 3)].field_0) = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
                while uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg4)][arg5][address(arg1)]].field_0) > idx:
                    uint256(stor[idx + sha3((6 * stor16[address(arg1)][address(arg4)][arg5][address(arg1)]) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_20f7e31b', 15)) - 3)].field_0) = 0
                    idx = idx + 1
                    continue 
            require sub_87f8f8da[address(arg1)][address(arg4)][arg5][address(arg1)] - 1 < uint256(sub_20f7e31b[address(arg1)].field_0)
            address(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg4)][arg5][address(arg1)]].field_0) = arg4
            require sub_87f8f8da[address(arg1)][address(arg4)][arg5][address(arg1)] - 1 < uint256(sub_20f7e31b[address(arg1)].field_0)
            uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg4)][arg5][address(arg1)]].field_0) = arg5
            require arg6 + block.timestamp >= block.timestamp
            require sub_87f8f8da[address(arg1)][address(arg4)][arg5][address(arg1)] - 1 < uint256(sub_20f7e31b[address(arg1)].field_0)
            uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg4)][arg5][address(arg1)]].field_0) = arg6 + block.timestamp
            require ext_code.size(configurationAddress)
            call configurationAddress.0x29ea3faa with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] + block.timestamp >= block.timestamp
            require sub_87f8f8da[address(arg1)][address(arg4)][arg5][address(arg1)] - 1 < uint256(sub_20f7e31b[address(arg1)].field_0)
            uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg4)][arg5][address(arg1)]].field_0) = ext_call.return_data[0] + block.timestamp
        else:
            uint256(sub_20f7e31b[address(arg1)].field_0)++
            if uint256(sub_20f7e31b[address(arg1)].field_0) > uint256(sub_20f7e31b[address(arg1)].field_0) + 1:
                mem[0] = sha3(address(arg1), 15)
                idx = (6 * uint256(sub_20f7e31b[address(arg1)].field_0)) + 6
                while sha3(sha3(address(arg1), 15)) + (6 * uint256(sub_20f7e31b[address(arg1)].field_0)) > idx + sha3(mem[0]):
                    address(stor[idx + sha3(mem[0])]) = 0
                    address(stor[idx + sha3(mem[0]) + 1]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                    mem[0] = idx + sha3(mem[0]) + 3
                    s = sha3(idx + sha3(mem[0]) + 3)
                    while sha3(idx + sha3(mem[0]) + 3) + uint256(stor[idx + sha3(mem[0]) + 3]) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                    uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 5]) = 0
                    idx = idx + 6
                    continue 
            sub_87f8f8da[address(arg1)][address(arg4)][arg5][address(arg2)] = uint256(sub_20f7e31b[address(arg1)].field_0) + 1
            sub_2a4bc762[address(arg1)][address(arg4)][arg5]++
            require uint256(sub_20f7e31b[address(arg1)].field_0) < uint256(sub_20f7e31b[address(arg1)].field_0)
            address(sub_20f7e31b[address(arg1)][uint256(sub_20f7e31b[address(arg1)].field_0)].field_0) = arg2
            require uint256(sub_20f7e31b[address(arg1)].field_0) < uint256(sub_20f7e31b[address(arg1)].field_0)
            uint256(sub_20f7e31b[address(arg1)][uint256(sub_20f7e31b[address(arg1)].field_0)].field_768) = arg3.length
            if not arg3.length:
                idx = 0
                while uint256(sub_20f7e31b[address(arg1)][uint256(sub_20f7e31b[address(arg1)].field_0)].field_768) > idx:
                    uint256(stor[idx + sha3((6 * uint256(sub_20f7e31b[address(arg1)].field_0)) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_20f7e31b', 15)) + 3)].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 128
                while (32 * arg3.length) + 128 > idx:
                    uint256(stor[s + sha3((6 * uint256(sub_20f7e31b[address(arg1)].field_0)) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_20f7e31b', 15)) + 3)].field_0) = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg3.length) + 31) >> 5
                while uint256(sub_20f7e31b[address(arg1)][uint256(sub_20f7e31b[address(arg1)].field_0)].field_768) > idx:
                    uint256(stor[idx + sha3((6 * uint256(sub_20f7e31b[address(arg1)].field_0)) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_20f7e31b', 15)) + 3)].field_0) = 0
                    idx = idx + 1
                    continue 
            require uint256(sub_20f7e31b[address(arg1)].field_0) < uint256(sub_20f7e31b[address(arg1)].field_0)
            address(sub_20f7e31b[address(arg1)][uint256(sub_20f7e31b[address(arg1)].field_0)].field_256) = arg4
            require uint256(sub_20f7e31b[address(arg1)].field_0) < uint256(sub_20f7e31b[address(arg1)].field_0)
            uint256(sub_20f7e31b[address(arg1)][uint256(sub_20f7e31b[address(arg1)].field_0)].field_512) = arg5
            require arg6 + block.timestamp >= block.timestamp
            require uint256(sub_20f7e31b[address(arg1)].field_0) < uint256(sub_20f7e31b[address(arg1)].field_0)
            uint256(sub_20f7e31b[address(arg1)][uint256(sub_20f7e31b[address(arg1)].field_0)].field_1024) = arg6 + block.timestamp
            require ext_code.size(configurationAddress)
            call configurationAddress.0x29ea3faa with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] + block.timestamp >= block.timestamp
            require uint256(sub_20f7e31b[address(arg1)].field_0) < uint256(sub_20f7e31b[address(arg1)].field_0)
            uint256(sub_20f7e31b[address(arg1)][uint256(sub_20f7e31b[address(arg1)].field_0)].field_1280) = ext_call.return_data[0] + block.timestamp
    mem[(32 * arg3.length) + 352 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    emit LockNonFungibleByProxyEvent(address(arg1), address(arg2), Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + floor32(arg3.length) + 352 len (32 * arg3.length) - floor32(arg3.length)]), address(arg4), arg5, arg6);
}

function unlockNonFungible(address arg1, address arg2, address arg3, uint256 arg4) {
    if sub_87f8f8da[address(arg1)][address(arg3)][arg4][address(arg2)]:
        require sub_87f8f8da[address(arg1)][address(arg3)][arg4][address(arg2)] - 1 < uint256(sub_20f7e31b[address(arg1)].field_0)
        require block.timestamp >= uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0)
        require sub_87f8f8da[address(arg1)][address(arg3)][arg4][address(arg2)] - 1 < uint256(sub_20f7e31b[address(arg1)].field_0)
        if not uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0):
            if sub_87f8f8da[address(arg1)][address(arg3)][arg4][address(arg2)] >= uint256(sub_20f7e31b[address(arg1)].field_0):
                uint256(sub_20f7e31b[address(arg1)].field_0)--
                if uint256(sub_20f7e31b[address(arg1)].field_0) > uint256(sub_20f7e31b[address(arg1)].field_0) - 1:
                    mem[0] = sha3(address(arg1), 15)
                    idx = (6 * uint256(sub_20f7e31b[address(arg1)].field_0)) - 6
                    while sha3(sha3(address(arg1), 15)) + (6 * uint256(sub_20f7e31b[address(arg1)].field_0)) > idx + sha3(mem[0]):
                        address(stor[idx + sha3(mem[0])]) = 0
                        address(stor[idx + sha3(mem[0]) + 1]) = 0
                        uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                        uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                        mem[0] = idx + sha3(mem[0]) + 3
                        s = sha3(idx + sha3(mem[0]) + 3)
                        while sha3(idx + sha3(mem[0]) + 3) + uint256(stor[idx + sha3(mem[0]) + 3]) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                        uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                        uint256(stor[idx + sha3(mem[0]) + 5]) = 0
                        idx = idx + 6
                        continue 
                sub_87f8f8da[address(arg1)][address(arg3)][arg4][address(arg2)] = 0
                sub_2a4bc762[address(arg1)][address(arg3)][arg4]--
                mem[(32 * uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0)) + 320 len floor32(uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0))] = mem[128 len floor32(uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0))]
            else:
                require uint256(sub_20f7e31b[address(arg1)].field_0) - 1 < uint256(sub_20f7e31b[address(arg1)].field_0)
                require sub_87f8f8da[address(arg1)][address(arg3)][arg4][address(arg2)] - 1 < uint256(sub_20f7e31b[address(arg1)].field_0)
                address(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0) = address(sub_20f7e31b[address(arg1)][uint256(sub_20f7e31b[address(arg1)].field_0)].field_0)
                address(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0) = address(sub_20f7e31b[address(arg1)][uint256(sub_20f7e31b[address(arg1)].field_0)].field_0)
                uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0) = uint256(sub_20f7e31b[address(arg1)][uint256(sub_20f7e31b[address(arg1)].field_0)].field_0)
                uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0) = uint256(sub_20f7e31b[address(arg1)][uint256(sub_20f7e31b[address(arg1)].field_0)].field_0)
                if not uint256(sub_20f7e31b[address(arg1)][uint256(sub_20f7e31b[address(arg1)].field_0)].field_0):
                    idx = 0
                    while uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0) > idx:
                        uint256(stor[idx + sha3((6 * stor16[address(arg1)][address(arg3)][arg4][address(arg2)]) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_20f7e31b', 15)) - 3)].field_0) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = 0
                    while uint256(sub_20f7e31b[address(arg1)][uint256(sub_20f7e31b[address(arg1)].field_0)].field_0) > idx:
                        uint256(stor[s + sha3((6 * stor16[address(arg1)][address(arg3)][arg4][address(arg2)]) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_20f7e31b', 15)) - 3)].field_0) = uint256(stor[idx + sha3((6 * uint256(sub_20f7e31b[address(arg1)].field_0)) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_20f7e31b', 15)) - 3)].field_0)
                        s = s + 1
                        idx = idx + 1
                        continue 
                    idx = uint256(sub_20f7e31b[address(arg1)][uint256(sub_20f7e31b[address(arg1)].field_0)].field_0)
                    while uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0) > idx:
                        uint256(stor[idx + sha3((6 * stor16[address(arg1)][address(arg3)][arg4][address(arg2)]) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_20f7e31b', 15)) - 3)].field_0) = 0
                        idx = idx + 1
                        continue 
                uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0) = uint256(sub_20f7e31b[address(arg1)][uint256(sub_20f7e31b[address(arg1)].field_0)].field_0)
                uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0) = uint256(sub_20f7e31b[address(arg1)][uint256(sub_20f7e31b[address(arg1)].field_0)].field_0)
                require sub_87f8f8da[address(arg1)][address(arg3)][arg4][address(arg2)] - 1 < uint256(sub_20f7e31b[address(arg1)].field_0)
                sub_87f8f8da[address(arg1)][address(arg3)][arg4][address(stor15[address(arg1)][sub_87f8f8da[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0)] = sub_87f8f8da[address(arg1)][address(arg3)][arg4][address(arg2)]
                uint256(sub_20f7e31b[address(arg1)].field_0)--
                if uint256(sub_20f7e31b[address(arg1)].field_0) <= uint256(sub_20f7e31b[address(arg1)].field_0) - 1:
                    sub_87f8f8da[address(arg1)][address(arg3)][arg4][address(arg2)] = 0
                    sub_2a4bc762[address(arg1)][address(arg3)][arg4]--
                    mem[(32 * uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0)) + 320 len floor32(uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0))] = mem[128 len floor32(uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0))]
                else:
                    mem[0] = sha3(address(arg1), 15)
                    idx = (6 * uint256(sub_20f7e31b[address(arg1)].field_0)) - 6
                    while sha3(sha3(address(arg1), 15)) + (6 * uint256(sub_20f7e31b[address(arg1)].field_0)) > idx + sha3(mem[0]):
                        address(stor[idx + sha3(mem[0])]) = 0
                        address(stor[idx + sha3(mem[0]) + 1]) = 0
                        uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                        uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                        mem[0] = idx + sha3(mem[0]) + 3
                        s = sha3(idx + sha3(mem[0]) + 3)
                        while sha3(idx + sha3(mem[0]) + 3) + uint256(stor[idx + sha3(mem[0]) + 3]) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                        uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                        uint256(stor[idx + sha3(mem[0]) + 5]) = 0
                        idx = idx + 6
                        continue 
                    sub_87f8f8da[address(arg1)][address(arg3)][arg4][address(arg2)] = 0
                    sub_2a4bc762[address(arg1)][address(arg3)][arg4]--
                    mem[(32 * uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0)) + 320 len floor32(uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0))] = mem[128 len floor32(uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0))]
                    idx = floor32(uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0))
        else:
            mem[128] = uint256(stor[sha3((6 * stor16[address(arg1)][address(arg3)][arg4][address(arg2)]) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_20f7e31b', 15)) - 3)].field_0)
            idx = 128
            s = 0
            while (32 * uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0)) + 96 > idx:
                mem[idx + 32] = uint256(stor[s + sha3((6 * stor16[address(arg1)][address(arg3)][arg4][address(arg2)]) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_20f7e31b', 15)) - 3)].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            if sub_87f8f8da[address(arg1)][address(arg3)][arg4][address(arg2)] < uint256(sub_20f7e31b[address(arg1)].field_0):
                require uint256(sub_20f7e31b[address(arg1)].field_0) - 1 < uint256(sub_20f7e31b[address(arg1)].field_0)
                require sub_87f8f8da[address(arg1)][address(arg3)][arg4][address(arg2)] - 1 < uint256(sub_20f7e31b[address(arg1)].field_0)
                address(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0) = address(sub_20f7e31b[address(arg1)][uint256(sub_20f7e31b[address(arg1)].field_0)].field_0)
                address(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0) = address(sub_20f7e31b[address(arg1)][uint256(sub_20f7e31b[address(arg1)].field_0)].field_0)
                uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0) = uint256(sub_20f7e31b[address(arg1)][uint256(sub_20f7e31b[address(arg1)].field_0)].field_0)
                uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0) = uint256(sub_20f7e31b[address(arg1)][uint256(sub_20f7e31b[address(arg1)].field_0)].field_0)
                if not uint256(sub_20f7e31b[address(arg1)][uint256(sub_20f7e31b[address(arg1)].field_0)].field_0):
                    idx = 0
                    while uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0) > idx:
                        uint256(stor[idx + sha3((6 * stor16[address(arg1)][address(arg3)][arg4][address(arg2)]) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_20f7e31b', 15)) - 3)].field_0) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = 0
                    while uint256(sub_20f7e31b[address(arg1)][uint256(sub_20f7e31b[address(arg1)].field_0)].field_0) > idx:
                        uint256(stor[s + sha3((6 * stor16[address(arg1)][address(arg3)][arg4][address(arg2)]) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_20f7e31b', 15)) - 3)].field_0) = uint256(stor[idx + sha3((6 * uint256(sub_20f7e31b[address(arg1)].field_0)) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_20f7e31b', 15)) - 3)].field_0)
                        s = s + 1
                        idx = idx + 1
                        continue 
                    idx = uint256(sub_20f7e31b[address(arg1)][uint256(sub_20f7e31b[address(arg1)].field_0)].field_0)
                    while uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0) > idx:
                        uint256(stor[idx + sha3((6 * stor16[address(arg1)][address(arg3)][arg4][address(arg2)]) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_20f7e31b', 15)) - 3)].field_0) = 0
                        idx = idx + 1
                        continue 
                uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0) = uint256(sub_20f7e31b[address(arg1)][uint256(sub_20f7e31b[address(arg1)].field_0)].field_0)
                uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0) = uint256(sub_20f7e31b[address(arg1)][uint256(sub_20f7e31b[address(arg1)].field_0)].field_0)
                require sub_87f8f8da[address(arg1)][address(arg3)][arg4][address(arg2)] - 1 < uint256(sub_20f7e31b[address(arg1)].field_0)
                sub_87f8f8da[address(arg1)][address(arg3)][arg4][address(stor15[address(arg1)][sub_87f8f8da[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0)] = sub_87f8f8da[address(arg1)][address(arg3)][arg4][address(arg2)]
            uint256(sub_20f7e31b[address(arg1)].field_0)--
            if uint256(sub_20f7e31b[address(arg1)].field_0) <= uint256(sub_20f7e31b[address(arg1)].field_0) - 1:
                sub_87f8f8da[address(arg1)][address(arg3)][arg4][address(arg2)] = 0
                sub_2a4bc762[address(arg1)][address(arg3)][arg4]--
                mem[(32 * uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0)) + 320 len floor32(uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0))] = mem[128 len floor32(uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0))]
            else:
                mem[0] = sha3(address(arg1), 15)
                idx = (6 * uint256(sub_20f7e31b[address(arg1)].field_0)) - 6
                while sha3(sha3(address(arg1), 15)) + (6 * uint256(sub_20f7e31b[address(arg1)].field_0)) > idx + sha3(mem[0]):
                    address(stor[idx + sha3(mem[0])]) = 0
                    address(stor[idx + sha3(mem[0]) + 1]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                    mem[0] = idx + sha3(mem[0]) + 3
                    s = sha3(idx + sha3(mem[0]) + 3)
                    while sha3(idx + sha3(mem[0]) + 3) + uint256(stor[idx + sha3(mem[0]) + 3]) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                    uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 5]) = 0
                    idx = idx + 6
                    continue 
                sub_87f8f8da[address(arg1)][address(arg3)][arg4][address(arg2)] = 0
                sub_2a4bc762[address(arg1)][address(arg3)][arg4]--
                mem[(32 * uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0)) + 320 len floor32(uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0))] = mem[128 len floor32(uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0))]
                idx = floor32(uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0))
        emit UnlockNonFungibleEvent(address(arg1), address(arg2), Array(len=uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0), data=mem[128 len floor32(uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0))], mem[(32 * uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0)) + floor32(uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0)) + 320 len (32 * uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0)) - floor32(uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0))]), address(arg3), arg4);
}

function unlockNonFungibleByProxy(address arg1, address arg2, address arg3, uint256 arg4) {
    require uint8(stor3[address(msg.sender)].field_0)
    require block.timestamp >= uint256(stor3[address(msg.sender)].field_256)
    if not stor6[address(msg.sender)]:
        require stor8[address(msg.sender)][address(arg1)]
    else:
        if stor7[address(msg.sender)][address(arg1)]:
            require stor8[address(msg.sender)][address(arg1)]
    if sub_87f8f8da[address(arg1)][address(arg3)][arg4][address(arg2)]:
        require sub_87f8f8da[address(arg1)][address(arg3)][arg4][address(arg2)] - 1 < uint256(sub_20f7e31b[address(arg1)].field_0)
        if not uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0):
            if sub_87f8f8da[address(arg1)][address(arg3)][arg4][address(arg2)] >= uint256(sub_20f7e31b[address(arg1)].field_0):
                uint256(sub_20f7e31b[address(arg1)].field_0)--
                if uint256(sub_20f7e31b[address(arg1)].field_0) > uint256(sub_20f7e31b[address(arg1)].field_0) - 1:
                    mem[0] = sha3(address(arg1), 15)
                    idx = (6 * uint256(sub_20f7e31b[address(arg1)].field_0)) - 6
                    while sha3(sha3(address(arg1), 15)) + (6 * uint256(sub_20f7e31b[address(arg1)].field_0)) > idx + sha3(mem[0]):
                        address(stor[idx + sha3(mem[0])]) = 0
                        address(stor[idx + sha3(mem[0]) + 1]) = 0
                        uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                        uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                        mem[0] = idx + sha3(mem[0]) + 3
                        s = sha3(idx + sha3(mem[0]) + 3)
                        while sha3(idx + sha3(mem[0]) + 3) + uint256(stor[idx + sha3(mem[0]) + 3]) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                        uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                        uint256(stor[idx + sha3(mem[0]) + 5]) = 0
                        idx = idx + 6
                        continue 
                sub_87f8f8da[address(arg1)][address(arg3)][arg4][address(arg2)] = 0
                sub_2a4bc762[address(arg1)][address(arg3)][arg4]--
                mem[(32 * uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0)) + 320 len floor32(uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0))] = mem[128 len floor32(uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0))]
            else:
                require uint256(sub_20f7e31b[address(arg1)].field_0) - 1 < uint256(sub_20f7e31b[address(arg1)].field_0)
                require sub_87f8f8da[address(arg1)][address(arg3)][arg4][address(arg2)] - 1 < uint256(sub_20f7e31b[address(arg1)].field_0)
                address(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0) = address(sub_20f7e31b[address(arg1)][uint256(sub_20f7e31b[address(arg1)].field_0)].field_0)
                address(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0) = address(sub_20f7e31b[address(arg1)][uint256(sub_20f7e31b[address(arg1)].field_0)].field_0)
                uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0) = uint256(sub_20f7e31b[address(arg1)][uint256(sub_20f7e31b[address(arg1)].field_0)].field_0)
                uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0) = uint256(sub_20f7e31b[address(arg1)][uint256(sub_20f7e31b[address(arg1)].field_0)].field_0)
                if not uint256(sub_20f7e31b[address(arg1)][uint256(sub_20f7e31b[address(arg1)].field_0)].field_0):
                    idx = 0
                    while uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0) > idx:
                        uint256(stor[idx + sha3((6 * stor16[address(arg1)][address(arg3)][arg4][address(arg2)]) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_20f7e31b', 15)) - 3)].field_0) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = 0
                    while uint256(sub_20f7e31b[address(arg1)][uint256(sub_20f7e31b[address(arg1)].field_0)].field_0) > idx:
                        uint256(stor[s + sha3((6 * stor16[address(arg1)][address(arg3)][arg4][address(arg2)]) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_20f7e31b', 15)) - 3)].field_0) = uint256(stor[idx + sha3((6 * uint256(sub_20f7e31b[address(arg1)].field_0)) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_20f7e31b', 15)) - 3)].field_0)
                        s = s + 1
                        idx = idx + 1
                        continue 
                    idx = uint256(sub_20f7e31b[address(arg1)][uint256(sub_20f7e31b[address(arg1)].field_0)].field_0)
                    while uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0) > idx:
                        uint256(stor[idx + sha3((6 * stor16[address(arg1)][address(arg3)][arg4][address(arg2)]) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_20f7e31b', 15)) - 3)].field_0) = 0
                        idx = idx + 1
                        continue 
                uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0) = uint256(sub_20f7e31b[address(arg1)][uint256(sub_20f7e31b[address(arg1)].field_0)].field_0)
                uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0) = uint256(sub_20f7e31b[address(arg1)][uint256(sub_20f7e31b[address(arg1)].field_0)].field_0)
                require sub_87f8f8da[address(arg1)][address(arg3)][arg4][address(arg2)] - 1 < uint256(sub_20f7e31b[address(arg1)].field_0)
                sub_87f8f8da[address(arg1)][address(arg3)][arg4][address(stor15[address(arg1)][sub_87f8f8da[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0)] = sub_87f8f8da[address(arg1)][address(arg3)][arg4][address(arg2)]
                uint256(sub_20f7e31b[address(arg1)].field_0)--
                if uint256(sub_20f7e31b[address(arg1)].field_0) <= uint256(sub_20f7e31b[address(arg1)].field_0) - 1:
                    sub_87f8f8da[address(arg1)][address(arg3)][arg4][address(arg2)] = 0
                    sub_2a4bc762[address(arg1)][address(arg3)][arg4]--
                    mem[(32 * uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0)) + 320 len floor32(uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0))] = mem[128 len floor32(uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0))]
                else:
                    mem[0] = sha3(address(arg1), 15)
                    idx = (6 * uint256(sub_20f7e31b[address(arg1)].field_0)) - 6
                    while sha3(sha3(address(arg1), 15)) + (6 * uint256(sub_20f7e31b[address(arg1)].field_0)) > idx + sha3(mem[0]):
                        address(stor[idx + sha3(mem[0])]) = 0
                        address(stor[idx + sha3(mem[0]) + 1]) = 0
                        uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                        uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                        mem[0] = idx + sha3(mem[0]) + 3
                        s = sha3(idx + sha3(mem[0]) + 3)
                        while sha3(idx + sha3(mem[0]) + 3) + uint256(stor[idx + sha3(mem[0]) + 3]) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                        uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                        uint256(stor[idx + sha3(mem[0]) + 5]) = 0
                        idx = idx + 6
                        continue 
                    sub_87f8f8da[address(arg1)][address(arg3)][arg4][address(arg2)] = 0
                    sub_2a4bc762[address(arg1)][address(arg3)][arg4]--
                    mem[(32 * uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0)) + 320 len floor32(uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0))] = mem[128 len floor32(uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0))]
                    idx = floor32(uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0))
        else:
            mem[128] = uint256(stor[sha3((6 * stor16[address(arg1)][address(arg3)][arg4][address(arg2)]) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_20f7e31b', 15)) - 3)].field_0)
            idx = 128
            s = 0
            while (32 * uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0)) + 96 > idx:
                mem[idx + 32] = uint256(stor[s + sha3((6 * stor16[address(arg1)][address(arg3)][arg4][address(arg2)]) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_20f7e31b', 15)) - 3)].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            if sub_87f8f8da[address(arg1)][address(arg3)][arg4][address(arg2)] < uint256(sub_20f7e31b[address(arg1)].field_0):
                require uint256(sub_20f7e31b[address(arg1)].field_0) - 1 < uint256(sub_20f7e31b[address(arg1)].field_0)
                require sub_87f8f8da[address(arg1)][address(arg3)][arg4][address(arg2)] - 1 < uint256(sub_20f7e31b[address(arg1)].field_0)
                address(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0) = address(sub_20f7e31b[address(arg1)][uint256(sub_20f7e31b[address(arg1)].field_0)].field_0)
                address(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0) = address(sub_20f7e31b[address(arg1)][uint256(sub_20f7e31b[address(arg1)].field_0)].field_0)
                uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0) = uint256(sub_20f7e31b[address(arg1)][uint256(sub_20f7e31b[address(arg1)].field_0)].field_0)
                uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0) = uint256(sub_20f7e31b[address(arg1)][uint256(sub_20f7e31b[address(arg1)].field_0)].field_0)
                if not uint256(sub_20f7e31b[address(arg1)][uint256(sub_20f7e31b[address(arg1)].field_0)].field_0):
                    idx = 0
                    while uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0) > idx:
                        uint256(stor[idx + sha3((6 * stor16[address(arg1)][address(arg3)][arg4][address(arg2)]) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_20f7e31b', 15)) - 3)].field_0) = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = 0
                    while uint256(sub_20f7e31b[address(arg1)][uint256(sub_20f7e31b[address(arg1)].field_0)].field_0) > idx:
                        uint256(stor[s + sha3((6 * stor16[address(arg1)][address(arg3)][arg4][address(arg2)]) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_20f7e31b', 15)) - 3)].field_0) = uint256(stor[idx + sha3((6 * uint256(sub_20f7e31b[address(arg1)].field_0)) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_20f7e31b', 15)) - 3)].field_0)
                        s = s + 1
                        idx = idx + 1
                        continue 
                    idx = uint256(sub_20f7e31b[address(arg1)][uint256(sub_20f7e31b[address(arg1)].field_0)].field_0)
                    while uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0) > idx:
                        uint256(stor[idx + sha3((6 * stor16[address(arg1)][address(arg3)][arg4][address(arg2)]) + ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_20f7e31b', 15)) - 3)].field_0) = 0
                        idx = idx + 1
                        continue 
                uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0) = uint256(sub_20f7e31b[address(arg1)][uint256(sub_20f7e31b[address(arg1)].field_0)].field_0)
                uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0) = uint256(sub_20f7e31b[address(arg1)][uint256(sub_20f7e31b[address(arg1)].field_0)].field_0)
                require sub_87f8f8da[address(arg1)][address(arg3)][arg4][address(arg2)] - 1 < uint256(sub_20f7e31b[address(arg1)].field_0)
                sub_87f8f8da[address(arg1)][address(arg3)][arg4][address(stor15[address(arg1)][sub_87f8f8da[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0)] = sub_87f8f8da[address(arg1)][address(arg3)][arg4][address(arg2)]
            uint256(sub_20f7e31b[address(arg1)].field_0)--
            if uint256(sub_20f7e31b[address(arg1)].field_0) <= uint256(sub_20f7e31b[address(arg1)].field_0) - 1:
                sub_87f8f8da[address(arg1)][address(arg3)][arg4][address(arg2)] = 0
                sub_2a4bc762[address(arg1)][address(arg3)][arg4]--
                mem[(32 * uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0)) + 320 len floor32(uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0))] = mem[128 len floor32(uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0))]
            else:
                mem[0] = sha3(address(arg1), 15)
                idx = (6 * uint256(sub_20f7e31b[address(arg1)].field_0)) - 6
                while sha3(sha3(address(arg1), 15)) + (6 * uint256(sub_20f7e31b[address(arg1)].field_0)) > idx + sha3(mem[0]):
                    address(stor[idx + sha3(mem[0])]) = 0
                    address(stor[idx + sha3(mem[0]) + 1]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                    mem[0] = idx + sha3(mem[0]) + 3
                    s = sha3(idx + sha3(mem[0]) + 3)
                    while sha3(idx + sha3(mem[0]) + 3) + uint256(stor[idx + sha3(mem[0]) + 3]) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                    uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 5]) = 0
                    idx = idx + 6
                    continue 
                sub_87f8f8da[address(arg1)][address(arg3)][arg4][address(arg2)] = 0
                sub_2a4bc762[address(arg1)][address(arg3)][arg4]--
                mem[(32 * uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0)) + 320 len floor32(uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0))] = mem[128 len floor32(uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0))]
                idx = floor32(uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0))
        emit UnlockNonFungibleByProxyEvent(address(arg1), address(arg2), Array(len=uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0), data=mem[128 len floor32(uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0))], mem[(32 * uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0)) + floor32(uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0)) + 320 len (32 * uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0)) - floor32(uint256(sub_20f7e31b[address(arg1)][stor16[address(arg1)][address(arg3)][arg4][address(arg2)]].field_0))]), address(arg3), arg4);
}



}
