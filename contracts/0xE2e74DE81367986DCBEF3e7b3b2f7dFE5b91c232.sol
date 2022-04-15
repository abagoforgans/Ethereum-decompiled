contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor3;
uint32 stor4;
uint32 stor4; offset 32
uint256 stor5;
uint256 stor6;

function _fallback() {
    stor0 = msg.sender
    require code.data[4734 len 20]
    require code.data[4814 len 4] > 0
    require code.data[4814 len 4] <= code.data[4846 len 4]
    require code.data[4850 len 32] > 0
    require code.data[4850 len 32] <= code.data[4882 len 32]
    stor1 = code.data[4734 len 20]
    stor3 = code.data[4754 len 32]
    uint32(stor4.field_0) = code.data[4814 len 4]
    uint32(stor4.field_32) = code.data[4846 len 4]
    stor5 = code.data[4850 len 32]
    stor6 = code.data[4882 len 32]
    return code.data[312 len 4410]
}



// =====================  Runtime code  =====================


address owner;
address veTokenAddress;
address portfolioAddress;
uint256 ratio;
uint32 minDuration;
uint32 maxDuration; offset 32
uint32 stor5;
uint256 stor5; offset 32
uint256 minVeriAmount;
uint32 stor6;
uint256 stor6; offset 32
uint256 maxVeriAmount;
mapping of struct stor7;

function portfolio() {
    return portfolioAddress
}

function veToken() {
    return veTokenAddress
}

function minDuration() {
    return minDuration
}

function maxDuration() {
    return maxDuration
}

function ratio() {
    return ratio
}

function owner() {
    return owner
}

function maxVeriAmount() {
    return maxVeriAmount
}

function minVeriAmount() {
    return minVeriAmount
}

function destroy(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _17 = mem[(32 * idx) + 128]
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        call mem[(32 * idx) + 140 len 20].0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        mem[(32 * arg1.length) + 132] = owner
        mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
        require ext_code.size(address(_17))
        call address(_17).0xa9059cbb with:
             gas gas_remaining - 710 wei
            args owner, ext_call.return_data[0]
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        s = ext_call.return_data[0]
        s = _17
        idx = idx + 1
        continue 
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function exists(bytes32 arg1) {
    return (stor7[arg1].field_1024 > 0)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function setPortfolio(address arg1) {
    require owner == msg.sender
    require arg1
    portfolioAddress = arg1
}

function setMaxDuration(uint32 arg1) {
    require owner == msg.sender
    require arg1 >= minDuration
    maxDuration = arg1
}

function setMinDuration(uint32 arg1) {
    require owner == msg.sender
    require arg1 > 0
    require arg1 <= maxDuration
    minDuration = arg1
}

function setMaxVeriAmount(uint32 arg1) {
    require owner == msg.sender
    require arg1 >= minVeriAmount
    uint32(stor6.field_0) = arg1
    Mask(224, 0, stor6.field_32) = 0
}

function setMinVeriAmount(uint32 arg1) {
    require owner == msg.sender
    require arg1 > 0
    require arg1 <= maxVeriAmount
    uint32(stor5.field_0) = arg1
    Mask(224, 0, stor5.field_32) = 0
}

function calculateId(uint256 arg1, uint256 arg2, uint32 arg3, uint256 arg4) {
    hash = sha256hash(address(this.address), uint64(msg.sender), arg2, arg1, arg3, arg4) 
    require sha256hash.result
    return hash
}

function checkRatio(uint256 arg1, uint256 arg2) {
    if not ratio:
        return (arg2 == arg1 * ratio / 10^18)
    require ratio
    require arg1 * ratio / ratio == arg1
    return (arg2 == arg1 * ratio / 10^18)
}

function status(bytes32 arg1) {
    require stor7[arg1].field_1152 <= 4
    if stor7[arg1].field_1152 != 2:
        return stor7[arg1].field_1152
    if block.timestamp < stor7[arg1].field_1088:
        return stor7[arg1].field_1152
    return 3
}

function close(bytes32 arg1) payable {
    require portfolioAddress == msg.sender
    require stor7[arg1].field_1152 <= 4
    require stor7[arg1].field_1152 == 2
    require block.timestamp >= stor7[arg1].field_1088
    stor7[arg1].field_1152 = 4
    stor7[arg1].field_768 = msg.value
    emit ExposureClosed(stor7[arg1].field_512, msg.value, arg1, stor7[arg1].field_0);
}

function collect(bytes32 arg1) {
    require portfolioAddress == msg.sender
    require stor7[arg1].field_1152 <= 4
    require stor7[arg1].field_1152 == 1
    stor7[arg1].field_1152 = 2
    call msg.sender with:
       value stor7[arg1].field_512 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit ExposureCollected(stor7[arg1].field_512, arg1, stor7[arg1].field_0);
    return stor7[arg1].field_512
}

function settle(bytes32 arg1) {
    require stor7[arg1].field_0 == msg.sender
    require stor7[arg1].field_1152 <= 4
    require stor7[arg1].field_1152 == 4
    stor7[arg1].field_0 = 0
    stor7[arg1].field_256 = 0
    stor7[arg1].field_512 = 0
    stor7[arg1].field_768 = 0
    stor7[arg1].field_1024 = 0
    call msg.sender with:
       value stor7[arg1].field_768 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit ExposureSettled(stor7[arg1].field_768, arg1, msg.sender);
    return stor7[arg1].field_768
}

function open(uint256 arg1, uint32 arg2, uint256 arg3) payable {
    require arg1 >= minVeriAmount
    require arg1 <= maxVeriAmount
    require arg2 >= minDuration
    require arg2 <= maxDuration
    if ratio:
        require ratio
        require arg1 * ratio / ratio == arg1
    require msg.value == arg1 * ratio / 10^18
    hash = sha256hash(address(this.address), uint64(msg.sender), msg.value, arg1, arg2, arg3) 
    require sha256hash.result
    require stor7[hash].field_1024 <= 0
    require arg2 + block.timestamp >= block.timestamp
    stor7[hash].field_0 = msg.sender
    stor7[hash].field_256 = arg1
    stor7[hash].field_512 = msg.value
    stor7[hash].field_768 = 0
    stor7[hash].field_1024 = uint64(block.timestamp)
    stor7[hash].field_1088 = uint64(arg2 + block.timestamp)
    stor7[hash].field_1152 = 1
    emit ExposureOpened(arg1, msg.value, block.timestamp << 192, uint64(arg2 + block.timestamp), hash, msg.sender);
    require ext_code.size(veTokenAddress)
    call veTokenAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), arg1
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(veTokenAddress)
    call veTokenAddress.approve(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args portfolioAddress, arg1
    require ext_call.success
    require ext_call.return_data[0]
}



}
