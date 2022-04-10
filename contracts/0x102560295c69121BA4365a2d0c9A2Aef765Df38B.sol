contract main {


// =======================  Init code  ======================


array of address stor0;
uint256 stor1;
uint256 stor2;
mapping of uint8 stor6;

function _fallback() {
    mem[96 len -5537] = code.data[6067 len -5537]
    mem[64] = -5441
    stor0.length = mem[mem[96] + 96]
    mem[0] = 0
    if not mem[mem[96] + 96]:
        idx = 0
        while stor0.length > idx:
            stor0[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[96] + 128
        while mem[96] + (32 * mem[mem[96] + 96]) + 128 > idx:
            stor0[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[mem[96] + 96]) + 31) >> 5
        while stor0.length > idx:
            stor0[idx] = 0
            idx = idx + 1
            continue 
    stor1 = mem[128]
    stor2 = mem[160]
    idx = 0
    while idx < stor0.length:
        mem[0] = stor0[idx]
        mem[32] = 6
        stor6[stor0[idx]] = 1
        idx = idx + 1
        continue 
    return code.data[530 len 5537]
}



// =====================  Runtime code  =====================


array of address members;
uint256 quorum;
uint256 window;
uint256 actionCount;
mapping of struct calldata;
mapping of uint8 stor5;
mapping of uint8 stor6;

function memberCount() {
    return members.length
}

function quorum() {
    return quorum
}

function actionCount() {
    return actionCount
}

function window() {
    return window
}

function confirmedBy(uint256 arg1, address arg2) {
    return bool(stor5[arg1][arg2])
}

function members(uint256 arg1) {
    require arg1 < members.length
    return members[arg1]
}

function calldata(uint256 arg1) {
    return calldata[arg1][1][0 len calldata[arg1][1].length].field_0
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

function target(uint256 arg1) {
    return calldata[arg1].field_0
}

function isMember(address arg1) {
    return bool(stor6[arg1])
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
    revert
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
    require stor6[address(msg.sender)]
    require block.timestamp <= calldata[arg1].field_1024
    require not calldata[arg1].field_1280
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, cd[36]
    require not stor5[arg1][address(msg.sender)]
    stor5[arg1][address(msg.sender)] = 1
    calldata[arg1].field_768++
    emit Confirmed(arg1, msg.sender);
}

function propose(address arg1, bytes arg2, uint256 arg3) {
    require stor6[address(msg.sender)]
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    actionCount++
    calldata[stor3 + 1].field_0 = arg1
    calldata[stor3 + 1][1][].field_0 = Array(len=arg2.length, data=arg2[all])
    calldata[stor3 + 1].field_512 = arg3
    calldata[stor3 + 1].field_1024 = block.timestamp + window
    emit Proposed(actionCount + 1, Array(len=arg2.length, data=arg2[all]));
    return (actionCount + 1)
}

function trigger(uint256 arg1) {
    require stor6[address(msg.sender)]
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
    mem[32] = 4
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



}
