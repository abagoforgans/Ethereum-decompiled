contract main {




// =====================  Runtime code  =====================


address owner;
uint256 orderCount;
uint256 fee;
uint256 sub_410ac68c;
uint256 totalFees;
mapping of uint256 sub_aa072d0c;
array of address sub_e96716ee;
mapping of uint256 addressIndex;
mapping of struct stor8;
array of uint256 stor9;
address poolOwners;
address feeTokenAddress;

function totalFees() {
    return totalFees
}

function getOrderBookSize() {
    return stor9.length
}

function orderCount() {
    return orderCount
}

function sub_410ac68c(?) {
    return sub_410ac68c
}

function feeToken() {
    return feeTokenAddress
}

function owner() {
    return owner
}

function addressIndex(address arg1) {
    return addressIndex[arg1]
}

function sub_aa072d0c(?) {
    return sub_aa072d0c[arg1]
}

function poolOwners() {
    return poolOwners
}

function fee() {
    return fee
}

function sub_e96716ee(?) {
    require arg1 < sub_e96716ee.length
    return sub_e96716ee[arg1]
}

function _fallback() payable {
    revert
}

function getOrderBookKey(uint256 arg1) {
    if arg1 >= stor9.length:
        return 0
    return stor9[arg1]
}

function costOfOrder(uint256 arg1, uint256 arg2) {
    if not arg1:
        return (arg2 * arg1 / 10^18)
    require arg1
    require arg2 * arg1 / arg1 == arg2
    return (arg2 * arg1 / 10^18)
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Sender not authorised'
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setFee(uint256 arg1) {
    if owner != msg.sender:
        revert with 0, 'Sender not authorised'
    if arg1 > 5 * 10^17:
        revert with 0, 'Fees can't be more than 50%'
    fee = arg1
}

function getOrder(uint256 arg1) {
    require stor8[arg1].field_510 <= 2
    require stor8[arg1].field_478 < sub_e96716ee.length
    require stor8[arg1].field_510 <= 2
    return stor8[arg1].field_256, sub_e96716ee[stor8[arg1].field_478], stor8[arg1].field_256, 0
}

function getOrderBookKeys(uint256 arg1) {
    mem[96 len 320] = code.data[10070 len 320]
    idx = 0
    while idx < 10:
        if idx + arg1 >= stor9.length:
            require idx < 10
            mem[(32 * idx) + 96] = 0
        else:
            mem[0] = 9
            require idx < 10
            mem[(32 * idx) + 96] = stor[('name', 'stor9', 9) + idx + arg1]
        idx = idx + 1
        continue 
    return memory
      from 96
       len 320
}

function feeForOrder(uint256 arg1, uint256 arg2) {
    if not arg1:
        if not arg2 * arg1 / 10^18:
            return (fee * arg2 * arg1 / 10^18 / 10^18)
        if arg2 * arg1 / 10^18:
            if fee * arg2 * arg1 / 10^18 / arg2 * arg1 / 10^18 == fee:
                return (fee * arg2 * arg1 / 10^18 / 10^18)
    else:
        if arg1:
            if arg2 * arg1 / arg1 == arg2:
                if not arg2 * arg1 / 10^18:
                    return (fee * arg2 * arg1 / 10^18 / 10^18)
                if arg2 * arg1 / 10^18:
                    if fee * arg2 * arg1 / 10^18 / arg2 * arg1 / 10^18 == fee:
                        return (fee * arg2 * arg1 / 10^18 / 10^18)
    revert
}

function onTokenTransfer(address arg1, uint256 arg2, bytes arg3) {
    if feeTokenAddress != msg.sender:
        revert with 0, 'Sender needs to be the fee token'
    if addressIndex[address(arg1)]:
        require arg2 + sub_aa072d0c[stor7[address(arg1)]] >= sub_aa072d0c[stor7[address(arg1)]]
        sub_aa072d0c[stor7[address(arg1)]] += arg2
    else:
        if 4294967296 <= sub_e96716ee.length:
            revert with 0, 'Registered addresses hit maximum'
        addressIndex[address(arg1)] = sub_e96716ee.length
        sub_e96716ee.length++
        sub_e96716ee[sub_e96716ee.length] = arg1
        require arg2 + sub_aa072d0c[stor6.length - 1] >= sub_aa072d0c[stor6.length - 1]
        sub_aa072d0c[stor6.length - 1] += arg2
    require arg2 + totalFees >= totalFees
    totalFees += arg2
}

function withdrawDistributedToPoolOwners() {
    require ext_code.size(feeTokenAddress)
    call feeTokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require totalFees <= ext_call.return_data[0]
    if ext_call.return_data[0] - totalFees <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'There is no distributed fee token balance in the contract'
    require ext_code.size(feeTokenAddress)
    call feeTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args poolOwners, ext_call.return_data[0] - totalFees
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function withdrawFeeToken(uint256 arg1) {
    if addressIndex[address(msg.sender)]:
        if arg1 > sub_aa072d0c[stor7[address(msg.sender)]]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You're withdrawing more than your balance'
        require arg1 <= sub_aa072d0c[stor7[address(msg.sender)]]
        sub_aa072d0c[stor7[address(msg.sender)]] -= arg1
        require arg1 <= totalFees
        totalFees -= arg1
        if not sub_aa072d0c[stor7[address(msg.sender)]]:
            sub_aa072d0c[stor7[address(msg.sender)]] = 0
    else:
        if 4294967296 <= sub_e96716ee.length:
            revert with 0, 'Registered addresses hit maximum'
        addressIndex[address(msg.sender)] = sub_e96716ee.length
        sub_e96716ee.length++
        sub_e96716ee[sub_e96716ee.length] = msg.sender
        if arg1 > sub_aa072d0c[stor6.length - 1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You're withdrawing more than your balance'
        require arg1 <= sub_aa072d0c[stor6.length - 1]
        sub_aa072d0c[stor6.length - 1] -= arg1
        require arg1 <= totalFees
        totalFees -= arg1
        if not sub_aa072d0c[stor6.length - 1]:
            sub_aa072d0c[stor6.length - 1] = 0
    require ext_code.size(feeTokenAddress)
    call feeTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function removeSellOrder(uint256 arg1) {
    require stor8[arg1].field_510 <= 2
    if stor8[arg1].field_510 != 2:
        revert with 0, 'This is not a sell order'
    if addressIndex[msg.sender] != stor8[arg1].field_478:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You are not the sender of this order'
    if not stor8[arg1].field_0:
        revert with 0, 'dMap remove failed'
    if stor8[arg1].field_0 < stor9.length:
        require stor9.length - 1 < stor9.length
        stor8[stor9[stor9.length]].field_0 = stor8[arg1].field_0
        require stor8[arg1].field_0 - 1 < stor9.length
        stor9[stor8[arg1].field_0] = stor9[stor9.length]
    stor9.length--
    if stor9.length > stor9.length - 1:
        idx = stor9.length - 1
        while stor9.length > idx:
            stor9[idx] = 0
            idx = idx + 1
            continue 
    stor8[arg1].field_0 = 0
    stor8[arg1].field_256 = 0
    if stor8[arg1].field_367:
        require stor8[arg1].field_367
        require not 0 / stor8[arg1].field_367
    if fee * 0 / 10^18 / 10^18 > 0:
        require (fee * 0 / 10^18 / 10^18) + sub_aa072d0c[stor7[msg.sender]] >= sub_aa072d0c[stor7[msg.sender]]
        sub_aa072d0c[stor7[msg.sender]] += fee * 0 / 10^18 / 10^18
    require ext_code.size(poolOwners)
    call poolOwners.sendOwnership(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require stor8[arg1].field_510 <= 2
    emit 0xe2f99b27: stor8[arg1].field_256, 0, stor8[arg1].field_510, msg.sender
}

function removeBuyOrder(uint256 arg1) {
    require stor8[arg1].field_510 <= 2
    if stor8[arg1].field_510 != 1:
        revert with 0, 'This is not a buy order'
    if addressIndex[msg.sender] != stor8[arg1].field_478:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You are not the sender of this order'
    if not stor8[arg1].field_0:
        revert with 0, 'dMap remove failed'
    if stor8[arg1].field_0 < stor9.length:
        require stor9.length - 1 < stor9.length
        stor8[stor9[stor9.length]].field_0 = stor8[arg1].field_0
        require stor8[arg1].field_0 - 1 < stor9.length
        stor9[stor8[arg1].field_0] = stor9[stor9.length]
    stor9.length--
    if stor9.length > stor9.length - 1:
        idx = stor9.length - 1
        while stor9.length > idx:
            stor9[idx] = 0
            idx = idx + 1
            continue 
    stor8[arg1].field_0 = 0
    stor8[arg1].field_256 = 0
    if stor8[arg1].field_367:
        require stor8[arg1].field_367
        require not 0 / stor8[arg1].field_367
    if fee * 0 / 10^18 / 10^18 > 0:
        require (fee * 0 / 10^18 / 10^18) + sub_aa072d0c[stor7[msg.sender]] >= sub_aa072d0c[stor7[msg.sender]]
        sub_aa072d0c[stor7[msg.sender]] += fee * 0 / 10^18 / 10^18
    if stor8[arg1].field_367:
        require stor8[arg1].field_367
        require not 0 / stor8[arg1].field_367
    call msg.sender with:
       value 0 / 10^18 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require stor8[arg1].field_510 <= 2
    emit 0xe2f99b27: stor8[arg1].field_256, 0, stor8[arg1].field_510, msg.sender
}

function getOrders(uint256 arg1) {
    mem[96 len 320] = code.data[10070 len 320]
    mem[416 len 320] = code.data[10070 len 320]
    mem[736 len 320] = code.data[10070 len 320]
    mem[1056 len 320] = code.data[10070 len 320]
    mem[64] = 1696
    mem[1376 len 320] = code.data[10070 len 320]
    s = 0
    t = 0
    idx = 0
    while idx < 10:
        if stor9.length == arg1 + idx:
            idx = 0
            while idx < 320:
                mem[idx + 1696] = mem[idx + 96]
                idx = idx + 32
                continue 
            idx = 0
            while idx < 320:
                mem[idx + 2016] = mem[idx + 416]
                idx = idx + 32
                continue 
            idx = 0
            while idx < 320:
                mem[idx + 2336] = mem[idx + 736]
                idx = idx + 32
                continue 
            idx = 0
            while idx < 320:
                mem[idx + 2656] = mem[idx + 1056]
                idx = idx + 32
                continue 
            idx = 0
            while idx < 320:
                mem[idx + 2976] = mem[idx + 1376]
                idx = idx + 32
                continue 
            return memory
              from 1696
               len 1600
        require idx + arg1 < stor9.length
        require idx < 10
        mem[(32 * idx) + 96] = stor[('name', 'stor9', 9) + idx + arg1]
        mem[32] = 8
        require stor8[stor[('name', 'stor9', 9) + idx + arg1]].field_478 < sub_e96716ee.length
        mem[0] = 6
        require idx < 10
        mem[(32 * idx) + 416] = sub_e96716ee[stor8[stor[('name', 'stor9', 9) + idx + arg1]].field_478]
        require stor8[stor[('name', 'stor9', 9) + idx + arg1]].field_510 <= 2
        require idx < 10
        require stor8[stor[('name', 'stor9', 9) + idx + arg1]].field_510 <= 2
        mem[(32 * idx) + 736] = stor8[stor[('name', 'stor9', 9) + idx + arg1]].field_510
        require idx < 10
        mem[(32 * idx) + 1056] = stor8[stor[('name', 'stor9', 9) + idx + arg1]].field_367
        mem[(32 * idx) + 1376] = 0
        s = stor8[stor[('name', 'stor9', 9) + idx + arg1]].field_256
        t = stor[('name', 'stor9', 9) + idx + arg1]
        idx = idx + 1
        continue 
    return mem[96 len 320], mem[416 len 320], mem[736 len 320], mem[1056 len 320], mem[1376 len 320]
}

function addSellOrder(uint256 arg1, uint256 arg2) {
    if 0x8000000000000000000000000000 <= arg1:
        revert with 0, 'Price or amount exceeds 111 bits'
    if 0x8000000000000000000000000000 <= arg2:
        revert with 0, 'Price or amount exceeds 111 bits'
    if arg1 <= 0:
        revert with 0, 'Price needs to be greater than 0'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount needs to be greater than 0'
    if arg1:
        require arg1
        require arg2 * arg1 / arg1 == arg2
    if arg2 * arg1 / 10^18:
        require arg2 * arg1 / 10^18
        require fee * arg2 * arg1 / 10^18 / arg2 * arg1 / 10^18 == fee
    if addressIndex[address(msg.sender)]:
        if fee * arg2 * arg1 / 10^18 / 10^18 > 0:
            if fee * arg2 * arg1 / 10^18 / 10^18 > sub_aa072d0c[stor7[address(msg.sender)]]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You do not have enough deposite for fees'
            require fee * arg2 * arg1 / 10^18 / 10^18 <= sub_aa072d0c[stor7[address(msg.sender)]]
            sub_aa072d0c[stor7[address(msg.sender)]] -= fee * arg2 * arg1 / 10^18 / 10^18
    else:
        if 4294967296 <= sub_e96716ee.length:
            revert with 0, 'Registered addresses hit maximum'
        addressIndex[address(msg.sender)] = sub_e96716ee.length
        sub_e96716ee.length++
        sub_e96716ee[sub_e96716ee.length] = msg.sender
        if fee * arg2 * arg1 / 10^18 / 10^18 > 0:
            if fee * arg2 * arg1 / 10^18 / 10^18 > sub_aa072d0c[stor6.length - 1]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You do not have enough deposite for fees'
            require fee * arg2 * arg1 / 10^18 / 10^18 <= sub_aa072d0c[stor6.length - 1]
            sub_aa072d0c[stor6.length - 1] -= fee * arg2 * arg1 / 10^18 / 10^18
    require ext_code.size(poolOwners)
    call poolOwners.sendOwnershipFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor8[stor1].field_256 = Mask(145, 0, arg1)
    stor8[stor1].field_401 = 0
    if 0 < stor8[stor1].field_0:
        revert with 0, 'Map replacement detected'
    stor9.length++
    if stor9.length > stor9.length + 1:
        idx = stor9.length + 1
        while stor9.length > idx:
            stor9[idx] = 0
            idx = idx + 1
            continue 
    stor8[stor1].field_0 = stor9.length + 1
    require stor9.length < stor9.length
    stor9[stor9.length] = orderCount
    orderCount++
    emit 0xbcbf7b26: arg1, arg2, 2, msg.sender
}

function addBuyOrder(uint256 arg1, uint256 arg2) payable {
    if 0x8000000000000000000000000000 <= arg1:
        revert with 0, 'Price or amount exceeds 111 bits'
    if 0x8000000000000000000000000000 <= arg2:
        revert with 0, 'Price or amount exceeds 111 bits'
    if arg1 <= 0:
        revert with 0, 'Price needs to be greater than 0'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount needs to be greater than 0'
    if arg1:
        require arg1
        require arg2 * arg1 / arg1 == arg2
    if arg2 * arg1 / 10^18:
        require arg2 * arg1 / 10^18
        require fee * arg2 * arg1 / 10^18 / arg2 * arg1 / 10^18 == fee
    if addressIndex[address(msg.sender)]:
        if fee * arg2 * arg1 / 10^18 / 10^18 > 0:
            if fee * arg2 * arg1 / 10^18 / 10^18 > sub_aa072d0c[stor7[address(msg.sender)]]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You do not have enough deposite for fees'
            require fee * arg2 * arg1 / 10^18 / 10^18 <= sub_aa072d0c[stor7[address(msg.sender)]]
            sub_aa072d0c[stor7[address(msg.sender)]] -= fee * arg2 * arg1 / 10^18 / 10^18
    else:
        if 4294967296 <= sub_e96716ee.length:
            revert with 0, 'Registered addresses hit maximum'
        addressIndex[address(msg.sender)] = sub_e96716ee.length
        sub_e96716ee.length++
        sub_e96716ee[sub_e96716ee.length] = msg.sender
        if fee * arg2 * arg1 / 10^18 / 10^18 > 0:
            if fee * arg2 * arg1 / 10^18 / 10^18 > sub_aa072d0c[stor6.length - 1]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You do not have enough deposite for fees'
            require fee * arg2 * arg1 / 10^18 / 10^18 <= sub_aa072d0c[stor6.length - 1]
            sub_aa072d0c[stor6.length - 1] -= fee * arg2 * arg1 / 10^18 / 10^18
    if arg1:
        require arg1
        require arg2 * arg1 / arg1 == arg2
    if arg2 * arg1 / 10^18:
        require arg2 * arg1 / 10^18
        require 10^18 * arg2 * arg1 / 10^18 / arg2 * arg1 / 10^18 == 10^18
    if arg1:
        require arg1
        require arg2 * arg1 / arg1 == arg2
    if arg2 * arg1 != 10^18 * arg2 * arg1 / 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The price and amount of this order is too small'
    if arg2 * arg1 / 10^18 != msg.value:
        revert with 0, 'ETH sent needs to equal the cost'
    stor8[stor1].field_256 = Mask(145, 0, arg1)
    stor8[stor1].field_401 = 0
    if 0 < stor8[stor1].field_0:
        revert with 0, 'Map replacement detected'
    stor9.length++
    if stor9.length > stor9.length + 1:
        idx = stor9.length + 1
        while stor9.length > idx:
            stor9[idx] = 0
            idx = idx + 1
            continue 
    stor8[stor1].field_0 = stor9.length + 1
    require stor9.length < stor9.length
    stor9[stor9.length] = orderCount
    orderCount++
    emit 0xbcbf7b26: arg1, arg2, 1, msg.sender
}

function fillBuyOrder(uint256 arg1) {
    require stor8[arg1].field_510 <= 2
    if stor8[arg1].field_510 != 1:
        revert with 0, 'This is not a buy order'
    if addressIndex[address(msg.sender)]:
        if addressIndex[address(msg.sender)] == stor8[arg1].field_478:
            revert with 0, 'You cannot fill your own order'
        if stor8[arg1].field_367:
            require stor8[arg1].field_367
            require not 0 / stor8[arg1].field_367
        if fee * 0 / 10^18 / 10^18 > sub_aa072d0c[stor7[address(msg.sender)]]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'You do not have enough deposite fees to fill this order'
        if stor8[arg1].field_367:
            require stor8[arg1].field_367
            require not 0 / stor8[arg1].field_367
        if not stor8[arg1].field_0:
            revert with 0, 'dMap remove failed'
        if stor8[arg1].field_0 < stor9.length:
            require stor9.length - 1 < stor9.length
            stor8[stor9[stor9.length]].field_0 = stor8[arg1].field_0
            require stor8[arg1].field_0 - 1 < stor9.length
            stor9[stor8[arg1].field_0] = stor9[stor9.length]
        stor9.length--
        if stor9.length > stor9.length - 1:
            idx = stor9.length - 1
            while stor9.length > idx:
                stor9[idx] = 0
                idx = idx + 1
                continue 
        stor8[arg1].field_0 = 0
        stor8[arg1].field_256 = 0
        call msg.sender with:
           value 0 / 10^18 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require stor8[arg1].field_478 < sub_e96716ee.length
        require ext_code.size(poolOwners)
        call poolOwners.sendOwnershipFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, sub_e96716ee[stor8[arg1].field_478], 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if fee * 0 / 10^18 / 10^18 > 0:
            require fee * 0 / 10^18 / 10^18 <= sub_aa072d0c[stor7[address(msg.sender)]]
            sub_aa072d0c[stor7[address(msg.sender)]] -= fee * 0 / 10^18 / 10^18
            if fee * 0 / 10^18 / 10^18:
                require fee * 0 / 10^18 / 10^18
                require 2 * fee * 0 / 10^18 / 10^18 / fee * 0 / 10^18 / 10^18 == 2
            require 2 * fee * 0 / 10^18 / 10^18 <= totalFees
            totalFees -= 2 * fee * 0 / 10^18 / 10^18
            require ext_code.size(feeTokenAddress)
            call feeTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args poolOwners, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    else:
        if 4294967296 <= sub_e96716ee.length:
            revert with 0, 'Registered addresses hit maximum'
        addressIndex[address(msg.sender)] = sub_e96716ee.length
        sub_e96716ee.length++
        sub_e96716ee[sub_e96716ee.length] = msg.sender
        if sub_e96716ee.length - 1 == stor8[arg1].field_478:
            revert with 0, 'You cannot fill your own order'
        if stor8[arg1].field_367:
            require stor8[arg1].field_367
            require not 0 / stor8[arg1].field_367
        if fee * 0 / 10^18 / 10^18 > sub_aa072d0c[stor6.length - 1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'You do not have enough deposite fees to fill this order'
        if stor8[arg1].field_367:
            require stor8[arg1].field_367
            require not 0 / stor8[arg1].field_367
        if not stor8[arg1].field_0:
            revert with 0, 'dMap remove failed'
        if stor8[arg1].field_0 < stor9.length:
            require stor9.length - 1 < stor9.length
            stor8[stor9[stor9.length]].field_0 = stor8[arg1].field_0
            require stor8[arg1].field_0 - 1 < stor9.length
            stor9[stor8[arg1].field_0] = stor9[stor9.length]
        stor9.length--
        if stor9.length > stor9.length - 1:
            idx = stor9.length - 1
            while stor9.length > idx:
                stor9[idx] = 0
                idx = idx + 1
                continue 
        stor8[arg1].field_0 = 0
        stor8[arg1].field_256 = 0
        call msg.sender with:
           value 0 / 10^18 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require stor8[arg1].field_478 < sub_e96716ee.length
        require ext_code.size(poolOwners)
        call poolOwners.sendOwnershipFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, sub_e96716ee[stor8[arg1].field_478], 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if fee * 0 / 10^18 / 10^18 > 0:
            require fee * 0 / 10^18 / 10^18 <= sub_aa072d0c[stor6.length - 1]
            sub_aa072d0c[stor6.length - 1] -= fee * 0 / 10^18 / 10^18
            if fee * 0 / 10^18 / 10^18:
                require fee * 0 / 10^18 / 10^18
                require 2 * fee * 0 / 10^18 / 10^18 / fee * 0 / 10^18 / 10^18 == 2
            require 2 * fee * 0 / 10^18 / 10^18 <= totalFees
            totalFees -= 2 * fee * 0 / 10^18 / 10^18
            require ext_code.size(feeTokenAddress)
            call feeTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args poolOwners, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    require stor8[arg1].field_478 < sub_e96716ee.length
    require stor8[arg1].field_510 <= 2
    emit 0x37561a23: msg.sender, stor8[arg1].field_256, 0, stor8[arg1].field_510, sub_e96716ee[stor8[arg1].field_478]
}

function fillSellOrder(uint256 arg1) payable {
    require stor8[arg1].field_510 <= 2
    if stor8[arg1].field_510 != 2:
        revert with 0, 'This is not a sell order'
    if addressIndex[address(msg.sender)]:
        if addressIndex[address(msg.sender)] == stor8[arg1].field_478:
            revert with 0, 'You cannot fill your own order'
        if stor8[arg1].field_367:
            require stor8[arg1].field_367
            require not 0 / stor8[arg1].field_367
        if fee * 0 / 10^18 / 10^18 > sub_aa072d0c[stor7[address(msg.sender)]]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'You do not have enough deposite fees to fill this order'
        if stor8[arg1].field_367:
            require stor8[arg1].field_367
            require not 0 / stor8[arg1].field_367
        if 0 / 10^18 != msg.value:
            revert with 0, 'ETH sent needs to equal the cost'
        if not stor8[arg1].field_0:
            revert with 0, 'dMap remove failed'
        if stor8[arg1].field_0 < stor9.length:
            require stor9.length - 1 < stor9.length
            stor8[stor9[stor9.length]].field_0 = stor8[arg1].field_0
            require stor8[arg1].field_0 - 1 < stor9.length
            stor9[stor8[arg1].field_0] = stor9[stor9.length]
        stor9.length--
        if stor9.length > stor9.length - 1:
            idx = stor9.length - 1
            while stor9.length > idx:
                stor9[idx] = 0
                idx = idx + 1
                continue 
        stor8[arg1].field_0 = 0
        stor8[arg1].field_256 = 0
        require stor8[arg1].field_478 < sub_e96716ee.length
        call sub_e96716ee[stor8[arg1].field_478] with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(poolOwners)
        call poolOwners.sendOwnership(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if fee * 0 / 10^18 / 10^18 > 0:
            require fee * 0 / 10^18 / 10^18 <= sub_aa072d0c[stor7[address(msg.sender)]]
            sub_aa072d0c[stor7[address(msg.sender)]] -= fee * 0 / 10^18 / 10^18
            if fee * 0 / 10^18 / 10^18:
                require fee * 0 / 10^18 / 10^18
                require 2 * fee * 0 / 10^18 / 10^18 / fee * 0 / 10^18 / 10^18 == 2
            require 2 * fee * 0 / 10^18 / 10^18 <= totalFees
            totalFees -= 2 * fee * 0 / 10^18 / 10^18
            require ext_code.size(feeTokenAddress)
            call feeTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args poolOwners, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    else:
        if 4294967296 <= sub_e96716ee.length:
            revert with 0, 'Registered addresses hit maximum'
        addressIndex[address(msg.sender)] = sub_e96716ee.length
        sub_e96716ee.length++
        sub_e96716ee[sub_e96716ee.length] = msg.sender
        if sub_e96716ee.length - 1 == stor8[arg1].field_478:
            revert with 0, 'You cannot fill your own order'
        if stor8[arg1].field_367:
            require stor8[arg1].field_367
            require not 0 / stor8[arg1].field_367
        if fee * 0 / 10^18 / 10^18 > sub_aa072d0c[stor6.length - 1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'You do not have enough deposite fees to fill this order'
        if stor8[arg1].field_367:
            require stor8[arg1].field_367
            require not 0 / stor8[arg1].field_367
        if 0 / 10^18 != msg.value:
            revert with 0, 'ETH sent needs to equal the cost'
        if not stor8[arg1].field_0:
            revert with 0, 'dMap remove failed'
        if stor8[arg1].field_0 < stor9.length:
            require stor9.length - 1 < stor9.length
            stor8[stor9[stor9.length]].field_0 = stor8[arg1].field_0
            require stor8[arg1].field_0 - 1 < stor9.length
            stor9[stor8[arg1].field_0] = stor9[stor9.length]
        stor9.length--
        if stor9.length > stor9.length - 1:
            idx = stor9.length - 1
            while stor9.length > idx:
                stor9[idx] = 0
                idx = idx + 1
                continue 
        stor8[arg1].field_0 = 0
        stor8[arg1].field_256 = 0
        require stor8[arg1].field_478 < sub_e96716ee.length
        call sub_e96716ee[stor8[arg1].field_478] with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(poolOwners)
        call poolOwners.sendOwnership(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if fee * 0 / 10^18 / 10^18 > 0:
            require fee * 0 / 10^18 / 10^18 <= sub_aa072d0c[stor6.length - 1]
            sub_aa072d0c[stor6.length - 1] -= fee * 0 / 10^18 / 10^18
            if fee * 0 / 10^18 / 10^18:
                require fee * 0 / 10^18 / 10^18
                require 2 * fee * 0 / 10^18 / 10^18 / fee * 0 / 10^18 / 10^18 == 2
            require 2 * fee * 0 / 10^18 / 10^18 <= totalFees
            totalFees -= 2 * fee * 0 / 10^18 / 10^18
            require ext_code.size(feeTokenAddress)
            call feeTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args poolOwners, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    require stor8[arg1].field_478 < sub_e96716ee.length
    require stor8[arg1].field_510 <= 2
    emit 0x37561a23: msg.sender, stor8[arg1].field_256, 0, stor8[arg1].field_510, sub_e96716ee[stor8[arg1].field_478]
}



}
