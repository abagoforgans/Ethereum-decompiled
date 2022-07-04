contract main {




// =====================  Runtime code  =====================


#
#  - sub_2486ba12(?)
#
address owner;
address newOwner;
mapping of uint8 isAuthorized;
uint256 authorizedCount;
uint8 stor4;
mapping of address tickets;
mapping of uint256 winners;
mapping of struct lottery;
uint256 lotteryFee;
uint256 lotteryCount;
uint256 sub_1644e7af;
address sub_f2e578f7Address;

function winners(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    return winners[arg1][arg2]
}

function authorizedCount() {
    return authorizedCount
}

function lotteries(uint256 arg1) {
    require calldata.size - 4 >= 32
    require lottery[arg1].field_160 <= 2
    require lottery[arg1].field_168 <= 4
    return lottery[arg1].field_0, 
           lottery[arg1].field_0,
           lottery[arg1].field_0,
           lottery[arg1].field_256,
           lottery[arg1].field_512,
           lottery[arg1].field_768,
           lottery[arg1].field_1024,
           bool(lottery[arg1].field_1280),
           bool(lottery[arg1].field_1288),
           bool(lottery[arg1].field_1296),
           lottery[arg1].field_1536,
           lottery[arg1].field_1792
}

function sub_1644e7af(?) {
    return sub_1644e7af
}

function paused() {
    return bool(stor4)
}

function lotteryFee() {
    return lotteryFee
}

function owner() {
    return owner
}

function getLottery(uint256 arg1) {
    require calldata.size - 4 >= 32
    require not stor4
    require arg1
    require lottery[arg1].field_160 <= 2
    require lottery[arg1].field_168 <= 4
    require lottery[arg1].field_160 <= 2
    require lottery[arg1].field_168 <= 4
    return lottery[arg1].field_0, 
           lottery[arg1].field_0,
           lottery[arg1].field_0,
           lottery[arg1].field_256,
           lottery[arg1].field_512,
           lottery[arg1].field_768,
           lottery[arg1].field_1024,
           bool(lottery[arg1].field_1280),
           bool(lottery[arg1].field_1288),
           bool(lottery[arg1].field_1296),
           lottery[arg1].field_1536,
           lottery[arg1].field_1792
}

function tickets(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    return tickets[arg1][arg2]
}

function lotteryCount() {
    return lotteryCount
}

function newOwner() {
    return newOwner
}

function sub_f2e578f7(?) {
    return sub_f2e578f7Address
}

function isAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 != this.address
    require arg1
    require isAuthorized[address(arg1)] <= 3
    return isAuthorized[address(arg1)]
}

function _fallback() payable {
    revert
}

function cancelOwnership() {
    require isAuthorized[msg.sender] <= 3
    require isAuthorized[msg.sender] == 1
    newOwner = 0
}

function pause() {
    require isAuthorized[msg.sender] <= 3
    require isAuthorized[msg.sender] > 0
    require isAuthorized[msg.sender] <= 3
    require not stor4
    stor4 = 1
    emit Paused(msg.sender);
}

function unPause() {
    require isAuthorized[msg.sender] <= 3
    require isAuthorized[msg.sender] > 0
    require isAuthorized[msg.sender] <= 3
    require stor4
    stor4 = 0
    emit Unpaused(msg.sender);
}

function sub_9eefc1c8(?) {
    require calldata.size - 4 >= 32
    require stor4
    require isAuthorized[msg.sender] <= 3
    require isAuthorized[msg.sender] > 0
    require isAuthorized[msg.sender] <= 3
    lotteryFee = arg1
    return 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require isAuthorized[msg.sender] <= 3
    require isAuthorized[msg.sender] == 1
    require arg1 != this.address
    require arg1
    require owner != arg1
    newOwner = arg1
}

function sub_4dcb421c(?) payable {
    require calldata.size - 4 >= 32
    require stor4
    require isAuthorized[msg.sender] <= 3
    require isAuthorized[msg.sender] > 0
    require isAuthorized[msg.sender] <= 3
    require arg1
    sub_f2e578f7Address = arg1
    return 1
}

function acceptOwnership() {
    require newOwner == msg.sender
    require newOwner
    emit OwnerTransferred(owner, newOwner);
    require isAuthorized[stor0] <= 3
    if isAuthorized[stor0] == 1:
        isAuthorized[stor0] = 0
    require isAuthorized[stor1] <= 3
    if isAuthorized[stor1] > 0:
        require 1 <= authorizedCount
        authorizedCount--
    owner = newOwner
    newOwner = 0
    isAuthorized[stor1] = 1
}

function unAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require isAuthorized[msg.sender] <= 3
    require isAuthorized[msg.sender] == 1
    require isAuthorized[address(arg1)] <= 3
    require isAuthorized[address(arg1)] != 1
    require arg1 != this.address
    require arg1
    require isAuthorized[address(arg1)] <= 3
    if isAuthorized[address(arg1)] > 0:
        require 1 <= authorizedCount
        authorizedCount--
    isAuthorized[address(arg1)] = 0
    emit UnAuthorized(arg1);
}

function cancelLottery(uint256 arg1) {
    require calldata.size - 4 >= 32
    require not stor4
    require isAuthorized[msg.sender] <= 3
    require isAuthorized[msg.sender] > 0
    require isAuthorized[msg.sender] <= 3
    require arg1 > 0
    require lottery[arg1].field_1296
    lottery[arg1].field_1288 = 1
    lottery[arg1].field_1296 = 0
    lottery[arg1].field_1304 = 0
    lottery[arg1].field_1536 = 0
    lottery[arg1].field_1792 = block.timestamp
    emit 0x36e44b73: arg1, block.timestamp
    return 1
}

function sub_a09056f1(?) {
    require calldata.size - 4 >= 128
    require not stor4
    require isAuthorized[msg.sender] <= 3
    require isAuthorized[msg.sender] > 0
    require isAuthorized[msg.sender] <= 3
    require arg1 > 0
    require lottery[arg1].field_0
    lottery[arg1].field_1280 = uint8(arg4)
    lottery[arg1].field_1288 = 0
    lottery[arg1].field_1288 = uint8(arg3)
    lottery[arg1].field_1296 = Mask(240, 0, arg2)
    lottery[arg1].field_1304 = 0
    lottery[arg1].field_1304 = Mask(232, 16, arg3) >> 16
    lottery[arg1].field_1792 = block.timestamp
    emit 0x98da949d: arg1, arg2, arg3, arg4, block.timestamp
    return 1
}

function authorized(address arg1, uint8 arg2) {
    require calldata.size - 4 >= 64
    require isAuthorized[msg.sender] <= 3
    require isAuthorized[msg.sender] == 1
    require isAuthorized[address(arg1)] <= 3
    require isAuthorized[address(arg1)] != 1
    require arg1 != this.address
    require arg2 <= 3
    require arg2 > 0
    require arg2 <= 3
    require 3 >= arg2
    require arg1
    require isAuthorized[address(arg1)] <= 3
    if not isAuthorized[address(arg1)]:
        require authorizedCount + 1 >= authorizedCount
        authorizedCount++
    require arg2 <= 3
    isAuthorized[address(arg1)] = arg2
    emit Authorized(arg2, arg1);
}

function sub_a87c4e50(?) {
    require calldata.size - 4 >= 96
    require not stor4
    require isAuthorized[msg.sender] <= 3
    require isAuthorized[msg.sender] > 0
    require isAuthorized[msg.sender] <= 3
    require arg1
    require ext_code.size(sub_f2e578f7Address)
    staticcall sub_f2e578f7Address.0xf75b1db6 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg2 > 0
    require lottery[arg2].field_1296
    require not lottery[arg2].field_1280
    require not lottery[arg2].field_1288
    require lottery[arg2].field_512 > lottery[arg2].field_768
    require ext_code.size(sub_f2e578f7Address)
    call sub_f2e578f7Address.0xf0e21463 with:
         gas gas_remaining wei
        args 0, 0, sub_f2e578f7Address, lottery[arg2].field_256, 0, 1, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    lottery[arg2].field_768++
    lottery[arg2].field_1792 = block.timestamp
    tickets[arg2][stor7[arg2].field_768 + 1] = arg1
    sub_1644e7af++
    emit 0x2c3e5e22: arg2, lottery[arg2].field_768, block.timestamp, arg1
    return 1
}

function sub_19af7f04(?) {
    require calldata.size - 4 >= 256
    require not stor4
    require isAuthorized[msg.sender] <= 3
    require isAuthorized[msg.sender] > 0
    require isAuthorized[msg.sender] <= 3
    require arg1
    require ext_code.size(sub_f2e578f7Address)
    staticcall sub_f2e578f7Address.0xf75b1db6 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg2 > 0
    require arg3 <= 2
    require arg3 > 0
    require arg3 <= 2
    require arg4 <= 4
    require arg4 > 0
    require arg4 <= 4
    require arg5 > 0
    require arg6 > 0
    require ext_code.size(sub_f2e578f7Address)
    call sub_f2e578f7Address.0x695185ac with:
         gas gas_remaining wei
        args address(arg1), 0, arg8
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg3 <= 2
    require arg4 <= 4
    lottery[arg2].field_0 = arg1
    require arg3 <= 2
    lottery[arg2].field_0 = arg1
    lottery[arg2].field_160 = arg3
    require arg4 <= 4
    lottery[arg2].field_168 = arg4
    lottery[arg2].field_256 = arg5
    lottery[arg2].field_512 = arg6
    lottery[arg2].field_768 = 0
    lottery[arg2].field_1024 = arg7
    lottery[arg2].field_1280 = 0
    lottery[arg2].field_1288 = 0
    lottery[arg2].field_1296 = 1
    lottery[arg2].field_1304 = 0
    lottery[arg2].field_1304 = 0
    lottery[arg2].field_1536 = block.timestamp
    lottery[arg2].field_1792 = 0
    lotteryCount++
    require arg3 <= 2
    require arg4 <= 4
    emit 0xf785c0fb: arg2, arg3 << 248, arg4 << 248, arg5, arg6, arg7, block.timestamp, arg1
    return 1
}

function sub_44e89820(?) {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[64] = (32 * arg2.length) + 128
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0
    require not stor4
    require isAuthorized[msg.sender] <= 3
    require isAuthorized[msg.sender] > 0
    require isAuthorized[msg.sender] <= 3
    require lottery[arg1].field_1288
    require not lottery[arg1].field_1296
    mem[0] = arg1
    idx = 0
    while uint8(idx) < uint8(arg2.length):
        require uint8(idx) < mem[96]
        mem[0] = mem[(32 * uint8(idx)) + 128]
        mem[32] = sha3(arg1, 5)
        if tickets[arg1][mem[(32 * uint8(idx)) + 128]]:
            require uint8(idx) < mem[96]
            mem[0] = mem[(32 * uint8(idx)) + 128]
            mem[mem[64]] = 0xf0e2146300000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = sub_f2e578f7Address
            mem[mem[64] + 36] = tickets[arg1][mem[0]]
            mem[mem[64] + 68] = lottery[arg1].field_256
            mem[mem[64] + 100] = 1
            mem[mem[64] + 132] = 0
            mem[mem[64] + 164] = arg3
            require ext_code.size(sub_f2e578f7Address)
            call sub_f2e578f7Address.0xf0e21463 with:
                 gas gas_remaining wei
                args sub_f2e578f7Address, tickets[arg1][mem[0]], lottery[arg1].field_256, 1, 0, arg3
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require uint8(idx) < mem[96]
            _50 = mem[(32 * uint8(idx)) + 128]
            require uint8(idx) < mem[96]
            mem[0] = mem[(32 * uint8(idx)) + 128]
            mem[32] = sha3(arg1, 5)
            mem[mem[64]] = arg1
            mem[mem[64] + 32] = _50
            mem[mem[64] + 64] = tickets[arg1][mem[0]]
            mem[mem[64] + 96] = lottery[arg1].field_256
            mem[mem[64] + 128] = block.timestamp
            emit 0x982adadc: arg1, _50, tickets[arg1][mem[0]], lottery[arg1].field_256, block.timestamp
            require uint8(idx) < mem[96]
            mem[0] = mem[(32 * uint8(idx)) + 128]
            mem[32] = sha3(arg1, 5)
            tickets[arg1][mem[(32 * uint8(idx)) + 128]] = 0
        idx = idx + 1
        continue 
    return 1
}



}
