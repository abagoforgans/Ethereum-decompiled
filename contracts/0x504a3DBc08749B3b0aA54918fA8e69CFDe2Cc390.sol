contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
mapping of uint256 payments;
uint256 totalPayments;
uint256 minContributionAmount;
array of struct sub_24ed8029;
address tokenAddress;
address proceedsAddress;

function totalPayments() {
    return totalPayments
}

function sub_06a54b8a(?) {
    return sub_24ed8029.length
}

function sub_24ed8029(?) {
    require arg1 < sub_24ed8029.length
    return sub_24ed8029[arg1].field_1280
}

function sub_34e11d34(?) {
    require arg1 < sub_24ed8029.length
    return sub_24ed8029[arg1].field_768
}

function sub_38f39d6a(?) {
    require arg1 < sub_24ed8029.length
    return sub_24ed8029[arg1].field_512
}

function sub_402533c1(?) {
    require arg1 < sub_24ed8029.length
    require arg2 < sub_24ed8029[arg1].field_1536
    return stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + arg2].field_0
}

function minContributionAmount() {
    return minContributionAmount
}

function proceeds() {
    return proceedsAddress
}

function getSaleEndTime(uint256 arg1) {
    require arg1 < sub_24ed8029.length
    return sub_24ed8029[arg1].field_256
}

function owner() {
    return owner
}

function sub_9b0b7bea(?) {
    require arg1 < sub_24ed8029.length
    return sub_24ed8029[arg1].field_1024
}

function getSaleStartTime(uint256 arg1) {
    require arg1 < sub_24ed8029.length
    return sub_24ed8029[arg1].field_0
}

function sales(uint256 arg1) {
    require arg1 < sub_24ed8029.length
    require sub_24ed8029[arg1].field_1792 <= 2
    return sub_24ed8029[arg1].field_0, 
           sub_24ed8029[arg1].field_256,
           sub_24ed8029[arg1].field_512,
           sub_24ed8029[arg1].field_768,
           sub_24ed8029[arg1].field_1024,
           sub_24ed8029[arg1].field_1280,
           sub_24ed8029[arg1].field_1792
}

function sub_d4d1f443(?) {
    require arg1 < sub_24ed8029.length
    return sub_24ed8029[arg1].field_1536
}

function newOwner() {
    return newOwner
}

function payments(address arg1) {
    return payments[arg1]
}

function token() {
    return tokenAddress
}

function _fallback() {
  stop
}

function sub_5810c861(?) {
    proceedsAddress = arg1
}

function setToken(address arg1) {
    tokenAddress = arg1
}

function setMinContributionAmount(uint256 arg1) {
    minContributionAmount = arg1
}

function changeOwner(address arg1) {
    require msg.sender == owner
    newOwner = arg1
}

function acceptOwnership() {
    if msg.sender == newOwner:
        owner = newOwner
        newOwner = 0
}

function sub_19d1beb1(?) {
    require arg1 < sub_24ed8029.length
    require sub_24ed8029[arg1].field_1792 <= 2
    require not sub_24ed8029[arg1].field_1792
    sub_24ed8029[arg1].field_1792 = 2
    emit SaleAborted(arg1);
}

function withdrawPayments() {
    require payments[msg.sender]
    require payments[msg.sender] <= eth.balance(this.address)
    require payments[msg.sender] <= totalPayments
    totalPayments -= payments[msg.sender]
    payments[address(msg.sender)] = 0
    call msg.sender with:
       value payments[msg.sender] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function closeSale(uint256 arg1) {
    require arg1 < sub_24ed8029.length
    require sub_24ed8029[arg1].field_1792 <= 2
    require not sub_24ed8029[arg1].field_1792
    require block.timestamp >= sub_24ed8029[arg1].field_0
    if sub_24ed8029[arg1].field_256:
        if block.timestamp < sub_24ed8029[arg1].field_256:
            require sub_24ed8029[arg1].field_768 > 0
            require sub_24ed8029[arg1].field_1280 == sub_24ed8029[arg1].field_768
    if not sub_24ed8029[arg1].field_512:
        sub_24ed8029[arg1].field_1792 = 1
        emit SaleClosed(arg1);
    else:
        if sub_24ed8029[arg1].field_1280 < sub_24ed8029[arg1].field_512:
            sub_24ed8029[arg1].field_1792 = 2
            emit SaleAborted(arg1);
        else:
            sub_24ed8029[arg1].field_1792 = 1
            emit SaleClosed(arg1);
}

function pay(uint256 arg1) payable {
    require arg1 < sub_24ed8029.length
    require msg.value >= minContributionAmount
    require msg.value <= test266151307()
    require arg1 < sub_24ed8029.length
    require sub_24ed8029[arg1].field_1792 <= 2
    require not sub_24ed8029[arg1].field_1792
    require block.timestamp >= sub_24ed8029[arg1].field_0
    if sub_24ed8029[arg1].field_256 > 0:
        require block.timestamp < sub_24ed8029[arg1].field_256
    require msg.value + sub_24ed8029[arg1].field_1280 >= sub_24ed8029[arg1].field_1280
    if sub_24ed8029[arg1].field_768 > 0:
        require msg.value + sub_24ed8029[arg1].field_1280 <= sub_24ed8029[arg1].field_768
    sub_24ed8029[arg1].field_1280 += msg.value
    sub_24ed8029[arg1].field_1536++
    stor[sub_24ed8029[arg1].field_1536 + sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6)].field_0 = msg.value or address(msg.sender)
    emit 0x4d3f6d68: msg.value, arg1, msg.sender
}

function createSale(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require msg.sender == owner
    if arg1:
        if arg2 > 0:
            require arg2 > arg1
        if arg3 > 0:
            if arg4 > 0:
                require arg3 < arg4
        require arg5 > 0
        sub_24ed8029.length++
        sub_24ed8029[sub_24ed8029.length].field_0 = arg1
        sub_24ed8029[sub_24ed8029.length].field_256 = arg2
        sub_24ed8029[sub_24ed8029.length].field_512 = arg3
        sub_24ed8029[sub_24ed8029.length].field_768 = arg4
        sub_24ed8029[sub_24ed8029.length].field_1024 = arg5
        sub_24ed8029[sub_24ed8029.length].field_1280 = 0
        sub_24ed8029[sub_24ed8029.length].field_1536 = 0
        idx = 0
        while sub_24ed8029[sub_24ed8029.length].field_1536 > idx:
            stor[idx + sha3((8 * sub_24ed8029.length) + ('name', 'sub_24ed8029', 5) + 6)].field_0 = 0
            idx = idx + 1
            continue 
        sub_24ed8029[sub_24ed8029.length].field_1792 = 0
        sub_24ed8029[sub_24ed8029.length].field_2048 = 0
        emit SaleCreated(sub_24ed8029.length, arg1, arg2, arg3, arg4, arg5);
    else:
        if arg2 > 0:
            require arg2 > block.timestamp
        if arg3 > 0:
            if arg4 > 0:
                require arg3 < arg4
        require arg5 > 0
        sub_24ed8029.length++
        sub_24ed8029[sub_24ed8029.length].field_0 = block.timestamp
        sub_24ed8029[sub_24ed8029.length].field_256 = arg2
        sub_24ed8029[sub_24ed8029.length].field_512 = arg3
        sub_24ed8029[sub_24ed8029.length].field_768 = arg4
        sub_24ed8029[sub_24ed8029.length].field_1024 = arg5
        sub_24ed8029[sub_24ed8029.length].field_1280 = 0
        sub_24ed8029[sub_24ed8029.length].field_1536 = 0
        idx = 0
        while sub_24ed8029[sub_24ed8029.length].field_1536 > idx:
            stor[idx + sha3((8 * sub_24ed8029.length) + ('name', 'sub_24ed8029', 5) + 6)].field_0 = 0
            idx = idx + 1
            continue 
        sub_24ed8029[sub_24ed8029.length].field_1792 = 0
        sub_24ed8029[sub_24ed8029.length].field_2048 = 0
        emit SaleCreated(sub_24ed8029.length, block.timestamp, arg2, arg3, arg4, arg5);
    return sub_24ed8029.length
}

function sub_272b76e3(?) {
    require arg1 < sub_24ed8029.length
    require sub_24ed8029[arg1].field_1792 <= 2
    require sub_24ed8029[arg1].field_1792 == 2
    if sub_24ed8029[arg1].field_1536:
        if arg3:
            require arg3 + arg2 <= sub_24ed8029[arg1].field_1536
            s = 0
            s = 0
            s = 0
            idx = arg2
            while idx < arg3 + arg2:
                require idx < sub_24ed8029[arg1].field_1536
                if stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_0:
                    require stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_0 + payments[stor[sha3((8 * arg1) + ('name', 'stor5', 5) + 6) + idx].field_0] >= payments[stor[sha3((8 * arg1) + ('name', 'stor5', 5) + 6) + idx].field_0]
                    mem[32] = 2
                    payments[stor[sha3((8 * arg1) + ('name', 'stor5', 5) + 6) + idx].field_0] += stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_0
                    require stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_0 + totalPayments >= totalPayments
                    totalPayments += stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_0
                    mem[96] = stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_0
                    emit 0xa58861f3: stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_0, arg1, stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_96
                require idx < sub_24ed8029[arg1].field_1536
                mem[0] = (8 * arg1) + sha3(5) + 6
                stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_0 = 0
                s = stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_0
                s = stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_96
                s = stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_0
                idx = idx + 1
                continue 
        else:
            require sub_24ed8029[arg1].field_1536 <= sub_24ed8029[arg1].field_1536
            s = 0
            s = 0
            s = 0
            idx = arg2
            while idx < sub_24ed8029[arg1].field_1536:
                if stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_0:
                    require stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_0 + payments[stor[sha3((8 * arg1) + ('name', 'stor5', 5) + 6) + idx].field_0] >= payments[stor[sha3((8 * arg1) + ('name', 'stor5', 5) + 6) + idx].field_0]
                    mem[32] = 2
                    payments[stor[sha3((8 * arg1) + ('name', 'stor5', 5) + 6) + idx].field_0] += stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_0
                    require stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_0 + totalPayments >= totalPayments
                    totalPayments += stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_0
                    mem[96] = stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_0
                    emit 0xa58861f3: stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_0, arg1, stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_96
                require idx < sub_24ed8029[arg1].field_1536
                mem[0] = (8 * arg1) + sha3(5) + 6
                stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_0 = 0
                s = stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_0
                s = stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_96
                s = stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_0
                idx = idx + 1
                continue 
}

function sub_9dc652fe(?) {
    require arg1 < sub_24ed8029.length
    require sub_24ed8029[arg1].field_1792 <= 2
    require sub_24ed8029[arg1].field_1792 == 1
    if sub_24ed8029[arg1].field_1536:
        if arg3:
            require arg3 + arg2 <= sub_24ed8029[arg1].field_1536
            mem[96] = arg3
            if arg3:
                mem[128 len 32 * arg3] = code.data[4832 len 32 * arg3]
            s = 0
            t = 0
            t = 0
            idx = arg2
            t = 0
            while idx < arg3 + arg2:
                require idx < sub_24ed8029[arg1].field_1536
                if not stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_0:
                    require idx < sub_24ed8029[arg1].field_1536
                    mem[0] = (8 * arg1) + sha3(5) + 6
                    stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_0 = 0
                    s = s
                    t = stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_0
                    t = stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_0
                    idx = idx + 1
                    t = t
                    continue 
                require stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_0 + t >= t
                if not stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_0:
                    require sub_24ed8029[arg1].field_1280
                    require 0 / sub_24ed8029[arg1].field_1280 <= test266151307()
                    require idx - arg2 < mem[96]
                    mem[(32 * idx - arg2) + 128] = Mask(160, 96, stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_0) or 0 / sub_24ed8029[arg1].field_1280
                    require idx < sub_24ed8029[arg1].field_1536
                    mem[0] = (8 * arg1) + sha3(5) + 6
                    stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_0 = 0
                    s = 0 / sub_24ed8029[arg1].field_1280
                    t = stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_0
                    t = stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_0
                    idx = idx + 1
                    t = stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_0 + t
                    continue 
                require sub_24ed8029[arg1].field_1024 * stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_0 / stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_0 == sub_24ed8029[arg1].field_1024
                require sub_24ed8029[arg1].field_1280
                require sub_24ed8029[arg1].field_1024 * stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_0 / sub_24ed8029[arg1].field_1280 <= test266151307()
                require idx - arg2 < mem[96]
                mem[(32 * idx - arg2) + 128] = Mask(160, 96, stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_0) or sub_24ed8029[arg1].field_1024 * stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_0 / sub_24ed8029[arg1].field_1280
                require idx < sub_24ed8029[arg1].field_1536
                mem[0] = (8 * arg1) + sha3(5) + 6
                stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_0 = 0
                s = sub_24ed8029[arg1].field_1024 * stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_0 / sub_24ed8029[arg1].field_1280
                t = stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_0
                t = stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_0
                idx = idx + 1
                t = stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_0 + t
                continue 
            mem[(32 * arg3) + 128] = 0x9a0e4ebb00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg3) + 132] = 32
            mem[(32 * arg3) + 164] = mem[96]
            mem[(32 * arg3) + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            require ext_code.size(tokenAddress)
            call tokenAddress.multiMint(uint256[] arg1) with:
                 gas gas_remaining wei
                args 32, mem[(32 * arg3) + 164 len (32 * mem[96]) + 32]
        else:
            require sub_24ed8029[arg1].field_1536 <= sub_24ed8029[arg1].field_1536
            mem[96] = sub_24ed8029[arg1].field_1536 - arg2
            if sub_24ed8029[arg1].field_1536 - arg2:
                mem[128 len 32 * sub_24ed8029[arg1].field_1536 - arg2] = code.data[4832 len 32 * sub_24ed8029[arg1].field_1536 - arg2]
            s = 0
            t = 0
            t = 0
            idx = arg2
            t = 0
            while idx < sub_24ed8029[arg1].field_1536:
                if not stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_0:
                    require idx < sub_24ed8029[arg1].field_1536
                    mem[0] = (8 * arg1) + sha3(5) + 6
                    stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_0 = 0
                    s = s
                    t = stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_0
                    t = stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_0
                    idx = idx + 1
                    t = t
                    continue 
                require stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_0 + t >= t
                if not stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_0:
                    require sub_24ed8029[arg1].field_1280
                    require 0 / sub_24ed8029[arg1].field_1280 <= test266151307()
                    require idx - arg2 < mem[96]
                    mem[(32 * idx - arg2) + 128] = Mask(160, 96, stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_0) or 0 / sub_24ed8029[arg1].field_1280
                    require idx < sub_24ed8029[arg1].field_1536
                    mem[0] = (8 * arg1) + sha3(5) + 6
                    stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_0 = 0
                    s = 0 / sub_24ed8029[arg1].field_1280
                    t = stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_0
                    t = stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_0
                    idx = idx + 1
                    t = stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_0 + t
                    continue 
                require sub_24ed8029[arg1].field_1024 * stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_0 / stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_0 == sub_24ed8029[arg1].field_1024
                require sub_24ed8029[arg1].field_1280
                require sub_24ed8029[arg1].field_1024 * stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_0 / sub_24ed8029[arg1].field_1280 <= test266151307()
                require idx - arg2 < mem[96]
                mem[(32 * idx - arg2) + 128] = Mask(160, 96, stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_0) or sub_24ed8029[arg1].field_1024 * stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_0 / sub_24ed8029[arg1].field_1280
                require idx < sub_24ed8029[arg1].field_1536
                mem[0] = (8 * arg1) + sha3(5) + 6
                stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_0 = 0
                s = sub_24ed8029[arg1].field_1024 * stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_0 / sub_24ed8029[arg1].field_1280
                t = stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_0
                t = stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_0
                idx = idx + 1
                t = stor[sha3((8 * arg1) + ('name', 'sub_24ed8029', 5) + 6) + idx].field_0 + t
                continue 
            mem[(32 * sub_24ed8029[arg1].field_1536 - arg2) + 128] = 0x9a0e4ebb00000000000000000000000000000000000000000000000000000000
            mem[(32 * sub_24ed8029[arg1].field_1536 - arg2) + 132] = 32
            mem[(32 * sub_24ed8029[arg1].field_1536 - arg2) + 164] = mem[96]
            mem[(32 * sub_24ed8029[arg1].field_1536 - arg2) + 196 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            require ext_code.size(tokenAddress)
            call tokenAddress.multiMint(uint256[] arg1) with:
                 gas gas_remaining wei
                args 32, mem[(32 * sub_24ed8029[arg1].field_1536 - arg2) + 164 len (32 * mem[96]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call proceedsAddress with:
           value t wei
             gas 2300 * is_zero(value) wei
        emit 0xf3705030: proceedsAddress, t, arg1
}



}
