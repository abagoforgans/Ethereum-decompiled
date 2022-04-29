contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor3;
uint256 stor4;
uint32 stor5;
uint32 stor5; offset 32
uint256 stor6;
uint256 stor7;

function _fallback() {
    stor0 = msg.sender
    require code.data[5172 len 20]
    require code.data[5252 len 4] > 0
    require code.data[5252 len 4] <= code.data[5284 len 4]
    require code.data[5288 len 32] > 0
    require code.data[5288 len 32] <= code.data[5320 len 32]
    stor3 = msg.sender
    stor1 = code.data[5172 len 20]
    stor4 = code.data[5192 len 32]
    uint32(stor5.field_0) = code.data[5252 len 4]
    uint32(stor5.field_32) = code.data[5284 len 4]
    stor6 = code.data[5288 len 32]
    stor7 = code.data[5320 len 32]
    return code.data[332 len 4828]
}



// =====================  Runtime code  =====================


address owner;
address veTokenAddress;
address portfolioAddress;
address sub_a1b900e4Address;
uint256 ratio;
uint32 minDuration;
uint32 maxDuration; offset 32
uint256 minVeriAmount;
uint256 maxVeriAmount;
mapping of struct closingTime;

function portfolio() {
    return portfolioAddress
}

function veToken() {
    return veTokenAddress
}

function getClosingTime(bytes32 arg1) {
    require portfolioAddress == msg.sender
    return closingTime[arg1].field_1088
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

function sub_a1b900e4(?) {
    return sub_a1b900e4Address
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
    return (closingTime[arg1].field_1024 > 0)
}

function sub_614a8ded(?) {
    require owner == msg.sender
    require arg1
    sub_a1b900e4Address = arg1
}

function setRatio(uint256 arg1) {
    require sub_a1b900e4Address == msg.sender
    require arg1
    ratio = arg1
}

function setPortfolio(address arg1) {
    require owner == msg.sender
    require arg1
    portfolioAddress = arg1
}

function sub_768da129(?) {
    require sub_a1b900e4Address == msg.sender
    require arg1 >= minVeriAmount
    maxVeriAmount = arg1
}

function setMaxDuration(uint32 arg1) {
    require sub_a1b900e4Address == msg.sender
    require arg1 >= minDuration
    maxDuration = arg1
}

function sub_b1dcefe5(?) {
    require sub_a1b900e4Address == msg.sender
    require arg1 > 0
    require arg1 <= maxVeriAmount
    minVeriAmount = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setMinDuration(uint32 arg1) {
    require sub_a1b900e4Address == msg.sender
    require arg1 > 0
    require arg1 <= maxDuration
    minDuration = arg1
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
    require closingTime[arg1].field_1152 <= 4
    if closingTime[arg1].field_1152 != 2:
        return closingTime[arg1].field_1152
    if block.timestamp < closingTime[arg1].field_1088:
        return closingTime[arg1].field_1152
    return 3
}

function close(bytes32 arg1) payable {
    require portfolioAddress == msg.sender
    require closingTime[arg1].field_1152 <= 4
    require closingTime[arg1].field_1152 == 2
    closingTime[arg1].field_1152 = 4
    closingTime[arg1].field_768 = msg.value
    emit ExposureClosed(closingTime[arg1].field_512, msg.value, arg1, closingTime[arg1].field_0);
}

function collect(bytes32 arg1) {
    require portfolioAddress == msg.sender
    require closingTime[arg1].field_1152 <= 4
    require closingTime[arg1].field_1152 == 1
    closingTime[arg1].field_1152 = 2
    call msg.sender with:
       value closingTime[arg1].field_512 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit ExposureCollected(closingTime[arg1].field_512, arg1, closingTime[arg1].field_0);
    return closingTime[arg1].field_512
}

function settle(bytes32 arg1) {
    require closingTime[arg1].field_0 == msg.sender
    require closingTime[arg1].field_1152 <= 4
    require closingTime[arg1].field_1152 == 4
    closingTime[arg1].field_0 = 0
    closingTime[arg1].field_256 = 0
    closingTime[arg1].field_512 = 0
    closingTime[arg1].field_768 = 0
    closingTime[arg1].field_1024 = 0
    call msg.sender with:
       value closingTime[arg1].field_768 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit ExposureSettled(closingTime[arg1].field_768, arg1, msg.sender);
    return closingTime[arg1].field_768
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
    require closingTime[hash].field_1024 <= 0
    require arg2 + block.timestamp >= block.timestamp
    closingTime[hash].field_0 = msg.sender
    closingTime[hash].field_256 = arg1
    closingTime[hash].field_512 = msg.value
    closingTime[hash].field_768 = 0
    closingTime[hash].field_1024 = uint64(block.timestamp)
    closingTime[hash].field_1088 = uint64(arg2 + block.timestamp)
    closingTime[hash].field_1152 = 1
    emit ExposureOpened(arg1, msg.value, block.timestamp << 192, uint64(arg2 + block.timestamp), hash, msg.sender);
    require ext_code.size(veTokenAddress)
    call veTokenAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), arg1
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(veTokenAddress)
    call veTokenAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args portfolioAddress, arg1
    require ext_call.success
    require ext_call.return_data[0]
}



}
