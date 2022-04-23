contract main {


// =======================  Init code  ======================


address stor0;
array of address stor1;
uint256 stor2;
uint256 stor3;
mapping of uint8 stor7;

function _fallback() {
    mem[96 len -5396] = code.data[5798 len -5396]
    mem[64] = -5300
    stor0 = msg.sender
    stor1.length = mem[mem[96] + 96]
    mem[0] = 1
    if not mem[mem[96] + 96]:
        idx = 0
        while stor1.length > idx:
            stor1[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[96] + 128
        while mem[96] + (32 * mem[mem[96] + 96]) + 128 > idx:
            stor1[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[mem[96] + 96]) + 31) >> 5
        while stor1.length > idx:
            stor1[idx] = 0
            idx = idx + 1
            continue 
    stor2 = mem[128]
    stor3 = mem[160]
    idx = 0
    while idx < stor1.length:
        mem[0] = stor1[idx]
        mem[32] = 7
        stor7[stor1[idx]] = 1
        idx = idx + 1
        continue 
    return code.data[402 len 5396]
}



// =====================  Runtime code  =====================


address owner;
array of address members;
uint256 quorum;
uint256 window;
uint256 actionCount;
mapping of struct calldata;
mapping of uint8 stor6;
mapping of uint8 stor7;
address MELON_ASSETAddress;
array of address authorities;
array of struct versions;
mapping of uint256 versionToProposalIds;
mapping of uint256 versionIdToShutdownIds;

function memberCount() {
    return members.length
}

function quorum() {
    return quorum
}

function versionIdToShutdownIds(uint256 arg1) {
    return versionIdToShutdownIds[arg1]
}

function actionCount() {
    return actionCount
}

function window() {
    return window
}

function authorities(uint256 arg1) {
    require arg1 < authorities.length
    return authorities[arg1]
}

function confirmedBy(uint256 arg1, address arg2) {
    return bool(stor6[arg1][arg2])
}

function members(uint256 arg1) {
    require arg1 < members.length
    return members[arg1]
}

function calldata(uint256 arg1) {
    return calldata[arg1][1][0 len calldata[arg1][1].length].field_0
}

function getVersionById(uint256 arg1) {
    require arg1 < versions.length
    return versions[arg1].field_0, bool(versions[arg1].field_160), versions[arg1].field_256
}

function actions(uint256 arg1) {
    mem[320] = calldata[arg1][1].field_0
    idx = 320
    s = 0
    while calldata[arg1][1].length + 320 > idx + 32:
        mem[idx + 32] = calldata[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return calldata[arg1].field_0, 
           Array(len=calldata[arg1][1].length, data=mem[320 len calldata[arg1][1].length + (floor32(calldata[arg1][1].length - 1) + -calldata[arg1][1].length + 32 % 32)]),
           calldata[arg1].field_512,
           calldata[arg1].field_768,
           calldata[arg1].field_1024,
           bool(calldata[arg1].field_1280)
}

function versions(uint256 arg1) {
    require arg1 < versions.length
    return versions[arg1].field_0, bool(versions[arg1].field_160), versions[arg1].field_256
}

function owner() {
    return owner
}

function target(uint256 arg1) {
    return calldata[arg1].field_0
}

function MELON_ASSET() {
    return MELON_ASSETAddress
}

function versionToProposalIds(address arg1) {
    return versionToProposalIds[arg1]
}

function isMember(address arg1) {
    return bool(stor7[arg1])
}

function confirmations(uint256 arg1) {
    return calldata[arg1].field_768
}

function deadline(uint256 arg1) {
    return calldata[arg1].field_1024
}

function value(uint256 arg1) {
    return calldata[arg1].field_512
}

function triggered(uint256 arg1) {
    return bool(calldata[arg1].field_1280)
}

function getActionStatus(uint256 arg1) {
    return calldata[arg1].field_768, 
           calldata[arg1].field_1024,
           bool(calldata[arg1].field_1280),
           calldata[arg1].field_0,
           calldata[arg1].field_512
}

function _fallback() payable {
  stop
}

function getInfo() {
    return quorum, members.length, window, actionCount
}

function confirmed(uint256 arg1) {
    return calldata[arg1].field_768 >= quorum
}

function expired(uint256 arg1) {
    return (block.timestamp > calldata[arg1].field_1024)
}

function deposit() payable {
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
}

function confirm(uint256 arg1) {
    require stor7[address(msg.sender)]
    require block.timestamp <= calldata[arg1].field_1024
    require not calldata[arg1].field_1280
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, cd[36]
    require not stor6[arg1][address(msg.sender)]
    stor6[arg1][address(msg.sender)] = 1
    calldata[arg1].field_768++
    emit Confirmed(arg1, msg.sender);
}

function approveShutdown(uint256 arg1) {
    require stor7[address(msg.sender)]
    require block.timestamp <= calldata[stor12[arg1]].field_1024
    require not calldata[stor12[arg1]].field_1280
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, cd[36]
    require not stor6[stor12[arg1]][address(msg.sender)]
    stor6[stor12[arg1]][address(msg.sender)] = 1
    calldata[stor12[arg1]].field_768++
    emit Confirmed(versionIdToShutdownIds[arg1], msg.sender);
}

function propose(address arg1, bytes arg2, uint256 arg3) {
    require stor7[address(msg.sender)]
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    actionCount++
    calldata[stor4 + 1].field_0 = arg1
    calldata[stor4 + 1][1][].field_0 = Array(len=arg2.length, data=arg2[all])
    calldata[stor4 + 1].field_512 = arg3
    calldata[stor4 + 1].field_1024 = block.timestamp + window
    emit Proposed(actionCount + 1, Array(len=arg2.length, data=arg2[all]));
    return (actionCount + 1)
}

function approveVersion(address arg1) {
    require stor7[address(msg.sender)]
    require block.timestamp <= calldata[stor11[address(arg1)]].field_1024
    require not calldata[stor11[address(arg1)]].field_1280
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, cd[36]
    require not stor6[stor11[address(arg1)]][address(msg.sender)]
    stor6[stor11[address(arg1)]][address(msg.sender)] = 1
    calldata[stor11[address(arg1)]].field_768++
    emit Confirmed(versionToProposalIds[address(arg1)], msg.sender);
}

function proposeShutdown(uint256 arg1) {
    require stor7[address(msg.sender)]
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, cd[36]
    actionCount++
    calldata[stor4 + 1].field_0 = this.address
    calldata[stor4 + 1].field_256 = 0
    calldata[stor4 + 1].field_257 = 0
    calldata[stor4 + 1].field_264 = msg.value / 256
    idx = 0
    while calldata[stor4 + 1][1].length + 31 / 32 > idx:
        calldata[stor4 + 1][idx + 1].field_0 = 0
        idx = idx + 1
        continue 
    calldata[stor4 + 1].field_512 = 0
    calldata[stor4 + 1].field_1024 = block.timestamp + window
    emit Proposed(uint256 rg1, bytes rg2):
                  actionCount + 1,
                  64,
                  0,
    versionIdToShutdownIds[arg1] = actionCount + 1
}

function proposeVersion(address arg1) {
    require stor7[address(msg.sender)]
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, cd[36]
    actionCount++
    calldata[stor4 + 1].field_0 = this.address
    calldata[stor4 + 1].field_256 = 0
    calldata[stor4 + 1].field_257 = 0
    calldata[stor4 + 1].field_264 = msg.value / 256
    idx = 0
    while calldata[stor4 + 1][1].length + 31 / 32 > idx:
        calldata[stor4 + 1][idx + 1].field_0 = 0
        idx = idx + 1
        continue 
    calldata[stor4 + 1].field_512 = 0
    calldata[stor4 + 1].field_1024 = block.timestamp + window
    emit Proposed(uint256 rg1, bytes rg2):
                  actionCount + 1,
                  64,
                  0,
    versionToProposalIds[address(arg1)] = actionCount + 1
}

function trigger(uint256 arg1) {
    require stor7[address(msg.sender)]
    require block.timestamp <= calldata[arg1].field_1024
    require not calldata[arg1].field_1280
    mem[160] = calldata.size
    mem[192 len calldata.size] = call.data[0 len calldata.size]
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, cd[36]
    require calldata[arg1].field_768 >= quorum
    calldata[arg1].field_1280 = 1
    mem[64] = ceil32(calldata[arg1][1].length) + 128
    mem[96] = calldata[arg1][1].length
    mem[128] = calldata[arg1][1].field_0
    idx = 128
    s = 0
    while calldata[arg1][1].length + 96 > idx:
        mem[idx + 32] = calldata[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[32] = 5
    mem[ceil32(calldata[arg1][1].length) + 128 len ceil32(calldata[arg1][1].length)] = mem[128 len ceil32(calldata[arg1][1].length)]
    if not calldata[arg1][1].length % 32:
        call calldata[arg1].field_0.mem[ceil32(calldata[arg1][1].length) + 128 len 4] with:
           value calldata[arg1].field_512 wei
             gas gas_remaining - 34710 wei
            args mem[ceil32(calldata[arg1][1].length) + 132 len calldata[arg1][1].length - 4]
    else:
        mem[floor32(calldata[arg1][1].length) + ceil32(calldata[arg1][1].length) + 128] = mem[floor32(calldata[arg1][1].length) + ceil32(calldata[arg1][1].length) + -calldata[arg1][1].length % 32 + 160 len calldata[arg1][1].length % 32]
        call calldata[arg1].field_0.mem[ceil32(calldata[arg1][1].length) + 128 len 4] with:
           value calldata[arg1].field_512 wei
             gas gas_remaining - 34710 wei
            args mem[ceil32(calldata[arg1][1].length) + 132 len floor32(calldata[arg1][1].length) + 28]
    require ext_call.success
    emit Triggered(arg1);
}

function triggerShutdown(uint256 arg1) {
    require stor7[address(msg.sender)]
    require block.timestamp <= calldata[stor12[arg1]].field_1024
    require not calldata[stor12[arg1]].field_1280
    mem[160] = calldata.size
    mem[192 len calldata.size] = call.data[0 len calldata.size]
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, cd[36]
    require calldata[stor12[arg1]].field_768 >= quorum
    calldata[stor12[arg1]].field_1280 = 1
    mem[64] = ceil32(calldata[stor12[arg1]][1].length) + 128
    mem[96] = calldata[stor12[arg1]][1].length
    mem[128] = calldata[stor12[arg1]][1].field_0
    idx = 128
    s = 0
    while calldata[stor12[arg1]][1].length + 96 > idx:
        mem[idx + 32] = calldata[stor12[arg1]][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[32] = 5
    mem[ceil32(calldata[stor12[arg1]][1].length) + 128 len ceil32(calldata[stor12[arg1]][1].length)] = mem[128 len ceil32(calldata[stor12[arg1]][1].length)]
    if not calldata[stor12[arg1]][1].length % 32:
        call calldata[stor12[arg1]].field_0.mem[ceil32(calldata[stor12[arg1]][1].length) + 128 len 4] with:
           value calldata[stor12[arg1]].field_512 wei
             gas gas_remaining - 34710 wei
            args mem[ceil32(calldata[stor12[arg1]][1].length) + 132 len calldata[stor12[arg1]][1].length - 4]
    else:
        mem[floor32(calldata[stor12[arg1]][1].length) + ceil32(calldata[stor12[arg1]][1].length) + 128] = mem[floor32(calldata[stor12[arg1]][1].length) + ceil32(calldata[stor12[arg1]][1].length) + -calldata[stor12[arg1]][1].length % 32 + 160 len calldata[stor12[arg1]][1].length % 32]
        call calldata[stor12[arg1]].field_0.mem[ceil32(calldata[stor12[arg1]][1].length) + 128 len 4] with:
           value calldata[stor12[arg1]].field_512 wei
             gas gas_remaining - 34710 wei
            args mem[ceil32(calldata[stor12[arg1]][1].length) + 132 len floor32(calldata[stor12[arg1]][1].length) + 28]
    require ext_call.success
    emit Triggered(versionIdToShutdownIds[arg1]);
    require arg1 < versions.length
    require versions[arg1].field_160
    require arg1 < versions.length
    require ext_code.size(versions[arg1].field_0)
    call versions[arg1].field_0.shutDown() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require arg1 < versions.length
    versions[arg1].field_0 = 0
    versions[arg1].field_256 = 0
    emit VersionUpdated(arg1);
}

function triggerVersion(address arg1) {
    require stor7[address(msg.sender)]
    require block.timestamp <= calldata[stor11[address(arg1)]].field_1024
    require not calldata[stor11[address(arg1)]].field_1280
    mem[160] = calldata.size
    mem[192 len calldata.size] = call.data[0 len calldata.size]
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, cd[36]
    require calldata[stor11[address(arg1)]].field_768 >= quorum
    calldata[stor11[address(arg1)]].field_1280 = 1
    mem[64] = ceil32(calldata[stor11[address(arg1)]][1].length) + 128
    mem[96] = calldata[stor11[address(arg1)]][1].length
    mem[128] = calldata[stor11[address(arg1)]][1].field_0
    idx = 128
    s = 0
    while calldata[stor11[address(arg1)]][1].length + 96 > idx:
        mem[idx + 32] = calldata[stor11[address(arg1)]][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[0] = versionToProposalIds[address(arg1)]
    mem[32] = 5
    mem[ceil32(calldata[stor11[address(arg1)]][1].length) + 128 len ceil32(calldata[stor11[address(arg1)]][1].length)] = mem[128 len ceil32(calldata[stor11[address(arg1)]][1].length)]
    if not calldata[stor11[address(arg1)]][1].length % 32:
        call calldata[stor11[address(arg1)]].field_0.mem[ceil32(calldata[stor11[address(arg1)]][1].length) + 128 len 4] with:
           value calldata[stor11[address(arg1)]].field_512 wei
             gas gas_remaining - 34710 wei
            args mem[ceil32(calldata[stor11[address(arg1)]][1].length) + 132 len calldata[stor11[address(arg1)]][1].length - 4]
    else:
        mem[floor32(calldata[stor11[address(arg1)]][1].length) + ceil32(calldata[stor11[address(arg1)]][1].length) + 128] = mem[floor32(calldata[stor11[address(arg1)]][1].length) + ceil32(calldata[stor11[address(arg1)]][1].length) + -calldata[stor11[address(arg1)]][1].length % 32 + 160 len calldata[stor11[address(arg1)]][1].length % 32]
        call calldata[stor11[address(arg1)]].field_0.mem[ceil32(calldata[stor11[address(arg1)]][1].length) + 128 len 4] with:
           value calldata[stor11[address(arg1)]].field_512 wei
             gas gas_remaining - 34710 wei
            args mem[ceil32(calldata[stor11[address(arg1)]][1].length) + 132 len floor32(calldata[stor11[address(arg1)]][1].length) + 28]
    require ext_call.success
    emit Triggered(versionToProposalIds[address(arg1)]);
    versions.length++
    if not versions.length <= versions.length + 1:
        idx = 2 * versions.length + 1
        while 2 * versions.length > idx:
            versions[idx].field_0 = 0
            versions[idx].field_256 = 0
            idx = idx + 2
            continue 
    versions[versions.length].field_0 = arg1
    versions[versions.length].field_160 = 1
    versions[versions.length].field_256 = block.timestamp
    emit VersionUpdated((versions.length - 1));
}



}
