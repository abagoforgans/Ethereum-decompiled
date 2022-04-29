contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
address stor4;
array of uint256 stor5;
array of uint256 stor6;
uint256 stor7;
uint128 stor8;
uint128 stor8; offset 128
uint32 stor9;
uint256 stor9; offset 32
uint32 stor10;
uint256 stor10; offset 32
uint256 stor12;
address stor13;
uint256 stor14;

function _fallback() payable {
    stor7 = 18
    require not msg.value
    mem[96 len -10217] = code.data[11123 len -10217]
    mem[64] = -10121
    stor1[address(msg.sender)] = 0
    stor0 = 0
    stor4 = msg.sender
    emit LogSetOwner(msg.sender);
    stor6[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor5[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    uint32(stor9.field_0) = mem[188 len 4]
    Mask(224, 0, stor9.field_32) = 0
    uint32(stor10.field_0) = mem[220 len 4]
    Mask(224, 0, stor10.field_32) = 0
    uint128(stor8.field_0) = mem[240 len 16]
    uint128(stor8.field_128) = mem[272 len 16]
    stor12 = mem[288]
    stor13 = mem[332 len 20]
    stor14 = mem[352]
    stor1[177] = uint128(stor8.field_128)
    return code.data[906 len 10217]
}



// =====================  Runtime code  =====================


uint256 stor0;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address authorityAddress;
uint8 stor4; offset 160
uint128 stor4; offset 160
address owner;
array of uint256 symbol;
array of uint256 name;
uint256 decimals;
uint128 totalSupply;
uint128 foundersAllocation; offset 128
uint256 startTime;
uint256 endTime;
uint128 stor12;
uint256 createPerDay;
address stor13;
uint256 stor14;
mapping of struct dailyTotals;
mapping of uint128 userBuys;
mapping of uint256 stor17;
mapping of uint8 stor18;

function name() {
    return name[0 len name.length]
}

function claimed(uint256 arg1, address arg2) {
    return bool(stor18[arg1][arg2])
}

function totalSupply() {
    return totalSupply
}

function foundersAllocation() {
    return foundersAllocation
}

function decimals() {
    return decimals
}

function endTime() {
    return endTime
}

function userBuys(uint256 arg1, address arg2) {
    return uint256(userBuys[arg1][arg2])
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function stopped() {
    return bool(uint8(stor4.field_160))
}

function startTime() {
    return startTime
}

function dailyTotals(uint256 arg1) {
    return dailyTotals[arg1].field_0
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function authority() {
    return authorityAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function createPerDay() {
    return uint256(createPerDay)
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor4.field_160)
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function isAuthorized(address arg1, bytes4 arg2) {
    if arg1 == this.address:
        return 1
    if arg1 == owner:
        return 1
    if not authorityAddress:
        return 0
    require ext_code.size(authorityAddress)
    call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
         gas gas_remaining - 710 wei
        args address(arg1), address(this.address), Mask(32, 224, arg2)
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function setOwner(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    owner = arg1
    emit LogSetOwner(owner);
}

function setAuthority(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    authorityAddress = arg1
    emit LogSetAuthority(authorityAddress);
}

function push(address arg1, uint128 arg2) {
    require not uint8(stor4.field_160)
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    require block.timestamp >= stor17[address(msg.sender)]
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(msg.sender)] - arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor4.field_160)
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    require block.timestamp >= stor17[address(msg.sender)]
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(msg.sender)] - arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function stop() {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    Mask(96, 0, stor4.field_160) = 1
}

function start() {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    Mask(96, 0, stor4.field_160) = 0
}

function buy() payable {
    require block.timestamp - startTime <= block.timestamp
    require block.timestamp <= endTime
    require msg.value >= 10^17
    require block.timestamp - startTime <= block.timestamp
    uint256(userBuys[(block.timestamp - stor9 / 23 * 3600) + 1][address(msg.sender)]) += msg.value
    dailyTotals[(block.timestamp - stor9 / 23 * 3600) + 1].field_0 += msg.value
    if not stor17[address(msg.sender)]:
        stor17[address(msg.sender)] = block.timestamp + (24 * 3600 * stor14)
    call stor13 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit LogBuy((block.timestamp - startTime / 23 * 3600) + 1, msg.sender, msg.value);
}

function _fallback() payable {
    require block.timestamp - startTime <= block.timestamp
    require block.timestamp <= endTime
    require msg.value >= 10^17
    require block.timestamp - startTime <= block.timestamp
    uint256(userBuys[(block.timestamp - stor9 / 23 * 3600) + 1][address(msg.sender)]) += msg.value
    dailyTotals[(block.timestamp - stor9 / 23 * 3600) + 1].field_0 += msg.value
    if not stor17[address(msg.sender)]:
        stor17[address(msg.sender)] = block.timestamp + (24 * 3600 * stor14)
    call stor13 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit LogBuy((block.timestamp - startTime / 23 * 3600) + 1, msg.sender, msg.value);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor4.field_160)
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] - arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg1)] - arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function pull(address arg1, uint128 arg2) {
    require not uint8(stor4.field_160)
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    require balanceOf[address(arg1)] >= arg2
    require allowance[address(arg1)][address(msg.sender)] >= arg2
    require allowance[address(arg1)][address(msg.sender)] - arg2 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] - arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require balanceOf[address(msg.sender)] + arg2 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += arg2
    emit Transfer(arg2, arg1, msg.sender);
    return 1
}

function mint(uint128 arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    require not uint8(stor4.field_160)
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, cd[36]
    require balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += arg1
    require stor0 + arg1 >= stor0
    stor0 += arg1
}

function burn(uint128 arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    require not uint8(stor4.field_160)
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, cd[36]
    require balanceOf[address(msg.sender)] - arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require stor0 - arg1 <= stor0
    stor0 -= arg1
}

function claim(uint256 arg1) {
    require block.timestamp - startTime <= block.timestamp
    require (block.timestamp - startTime / 23 * 3600) + 1 > arg1
    if not stor18[arg1][address(msg.sender)]:
        if dailyTotals[arg1].field_0:
            require dailyTotals[arg1].field_0 == dailyTotals[arg1].field_0
            require uint128(userBuys[arg1][address(msg.sender)]) == uint256(userBuys[arg1][address(msg.sender)])
            require uint128(stor12) == uint256(createPerDay)
            require dailyTotals[arg1].field_0
            require uint128((10^18 * uint128(stor12)) + dailyTotals[arg1].field_1 / dailyTotals[arg1].field_0) == (10^18 * uint128(stor12)) + dailyTotals[arg1].field_1 / dailyTotals[arg1].field_0
            require uint128((uint128((10^18 * uint128(stor12)) + dailyTotals[arg1].field_1 / dailyTotals[arg1].field_0) * uint128(userBuys[arg1][address(msg.sender)])) + 5 * 10^17 / 10^18) == (uint128((10^18 * uint128(stor12)) + dailyTotals[arg1].field_1 / dailyTotals[arg1].field_0) * uint128(userBuys[arg1][address(msg.sender)])) + 5 * 10^17 / 10^18
            stor18[arg1][address(msg.sender)] = 1
            balanceOf[address(msg.sender)] += uint128((uint128((10^18 * uint128(stor12)) + dailyTotals[arg1].field_1 / dailyTotals[arg1].field_0) * uint128(userBuys[arg1][address(msg.sender)])) + 5 * 10^17 / 10^18)
            emit LogClaim(arg1, msg.sender, uint128((uint128((10^18 * uint128(stor12)) + dailyTotals[arg1].field_1 / dailyTotals[arg1].field_0) * uint128(userBuys[arg1][address(msg.sender)])) + 5 * 10^17 / 10^18));
}

function claimAll() payable {
    mem[64] = 96
    require not msg.value
    require block.timestamp - startTime <= block.timestamp
    idx = var37002
    while idx < (block.timestamp - startTime / 23 * 3600) + 1:
        require block.timestamp - startTime <= block.timestamp
        require (block.timestamp - startTime / 23 * 3600) + 1 > idx
        mem[0] = msg.sender
        mem[32] = sha3(idx, 18)
        if not stor18[idx][address(msg.sender)]:
            mem[0] = idx
            mem[32] = 15
            if dailyTotals[idx].field_0:
                require dailyTotals[idx].field_0 == dailyTotals[idx].field_0
                require uint128(userBuys[idx][address(msg.sender)]) == uint256(userBuys[idx][address(msg.sender)])
                require uint128(stor12) == uint256(createPerDay)
                require dailyTotals[idx].field_0
                require uint128((10^18 * uint128(stor12)) + dailyTotals[idx].field_1 / dailyTotals[idx].field_0) == (10^18 * uint128(stor12)) + dailyTotals[idx].field_1 / dailyTotals[idx].field_0
                require uint128((uint128((10^18 * uint128(stor12)) + dailyTotals[idx].field_1 / dailyTotals[idx].field_0) * uint128(userBuys[idx][address(msg.sender)])) + 5 * 10^17 / 10^18) == (uint128((10^18 * uint128(stor12)) + dailyTotals[idx].field_1 / dailyTotals[idx].field_0) * uint128(userBuys[idx][address(msg.sender)])) + 5 * 10^17 / 10^18
                stor18[idx][address(msg.sender)] = 1
                mem[0] = msg.sender
                mem[32] = 1
                balanceOf[address(msg.sender)] += uint128((uint128((10^18 * uint128(stor12)) + dailyTotals[idx].field_1 / dailyTotals[idx].field_0) * uint128(userBuys[idx][address(msg.sender)])) + 5 * 10^17 / 10^18)
                mem[mem[64]] = idx
                mem[mem[64] + 32] = msg.sender
                mem[mem[64] + 64] = uint128((uint128((10^18 * uint128(stor12)) + dailyTotals[idx].field_1 / dailyTotals[idx].field_0) * uint128(userBuys[idx][address(msg.sender)])) + 5 * 10^17 / 10^18)
                emit LogClaim(idx, msg.sender, uint128((uint128((10^18 * uint128(stor12)) + dailyTotals[idx].field_1 / dailyTotals[idx].field_0) * uint128(userBuys[idx][address(msg.sender)])) + 5 * 10^17 / 10^18));
        require block.timestamp - startTime <= block.timestamp
        idx = idx + 1
        continue 
}

function distributeToken(address arg1) payable {
    mem[64] = 96
    require not msg.value
    if msg.sender == this.address:
        require block.timestamp - startTime <= block.timestamp
        idx = var40002
        while idx < (block.timestamp - startTime / 23 * 3600) + 1:
            require block.timestamp - startTime <= block.timestamp
            require (block.timestamp - startTime / 23 * 3600) + 1 > idx
            mem[0] = arg1
            mem[32] = sha3(idx, 18)
            if not stor18[idx][address(arg1)]:
                mem[0] = idx
                mem[32] = 15
                if dailyTotals[idx].field_0:
                    require dailyTotals[idx].field_0 == dailyTotals[idx].field_0
                    require uint128(userBuys[idx][address(arg1)]) == uint256(userBuys[idx][address(arg1)])
                    require uint128(stor12) == uint256(createPerDay)
                    require dailyTotals[idx].field_0
                    require uint128((10^18 * uint128(stor12)) + dailyTotals[idx].field_1 / dailyTotals[idx].field_0) == (10^18 * uint128(stor12)) + dailyTotals[idx].field_1 / dailyTotals[idx].field_0
                    require uint128((uint128((10^18 * uint128(stor12)) + dailyTotals[idx].field_1 / dailyTotals[idx].field_0) * uint128(userBuys[idx][address(arg1)])) + 5 * 10^17 / 10^18) == (uint128((10^18 * uint128(stor12)) + dailyTotals[idx].field_1 / dailyTotals[idx].field_0) * uint128(userBuys[idx][address(arg1)])) + 5 * 10^17 / 10^18
                    stor18[idx][address(arg1)] = 1
                    mem[0] = arg1
                    mem[32] = 1
                    balanceOf[address(arg1)] += uint128((uint128((10^18 * uint128(stor12)) + dailyTotals[idx].field_1 / dailyTotals[idx].field_0) * uint128(userBuys[idx][address(arg1)])) + 5 * 10^17 / 10^18)
                    mem[mem[64]] = idx
                    mem[mem[64] + 32] = arg1
                    mem[mem[64] + 64] = uint128((uint128((10^18 * uint128(stor12)) + dailyTotals[idx].field_1 / dailyTotals[idx].field_0) * uint128(userBuys[idx][address(arg1)])) + 5 * 10^17 / 10^18)
                    emit LogClaim(idx, address(arg1), uint128((uint128((10^18 * uint128(stor12)) + dailyTotals[idx].field_1 / dailyTotals[idx].field_0) * uint128(userBuys[idx][address(arg1)])) + 5 * 10^17 / 10^18));
            require block.timestamp - startTime <= block.timestamp
            idx = idx + 1
            continue 
    else:
        if msg.sender == owner:
            require block.timestamp - startTime <= block.timestamp
            idx = var41002
            while idx < (block.timestamp - startTime / 23 * 3600) + 1:
                require block.timestamp - startTime <= block.timestamp
                require (block.timestamp - startTime / 23 * 3600) + 1 > idx
                mem[0] = arg1
                mem[32] = sha3(idx, 18)
                if not stor18[idx][address(arg1)]:
                    mem[0] = idx
                    mem[32] = 15
                    if dailyTotals[idx].field_0:
                        require dailyTotals[idx].field_0 == dailyTotals[idx].field_0
                        require uint128(userBuys[idx][address(arg1)]) == uint256(userBuys[idx][address(arg1)])
                        require uint128(stor12) == uint256(createPerDay)
                        require dailyTotals[idx].field_0
                        require uint128((10^18 * uint128(stor12)) + dailyTotals[idx].field_1 / dailyTotals[idx].field_0) == (10^18 * uint128(stor12)) + dailyTotals[idx].field_1 / dailyTotals[idx].field_0
                        require uint128((uint128((10^18 * uint128(stor12)) + dailyTotals[idx].field_1 / dailyTotals[idx].field_0) * uint128(userBuys[idx][address(arg1)])) + 5 * 10^17 / 10^18) == (uint128((10^18 * uint128(stor12)) + dailyTotals[idx].field_1 / dailyTotals[idx].field_0) * uint128(userBuys[idx][address(arg1)])) + 5 * 10^17 / 10^18
                        stor18[idx][address(arg1)] = 1
                        mem[0] = arg1
                        mem[32] = 1
                        balanceOf[address(arg1)] += uint128((uint128((10^18 * uint128(stor12)) + dailyTotals[idx].field_1 / dailyTotals[idx].field_0) * uint128(userBuys[idx][address(arg1)])) + 5 * 10^17 / 10^18)
                        mem[mem[64]] = idx
                        mem[mem[64] + 32] = arg1
                        mem[mem[64] + 64] = uint128((uint128((10^18 * uint128(stor12)) + dailyTotals[idx].field_1 / dailyTotals[idx].field_0) * uint128(userBuys[idx][address(arg1)])) + 5 * 10^17 / 10^18)
                        emit LogClaim(idx, address(arg1), uint128((uint128((10^18 * uint128(stor12)) + dailyTotals[idx].field_1 / dailyTotals[idx].field_0) * uint128(userBuys[idx][address(arg1)])) + 5 * 10^17 / 10^18));
                require block.timestamp - startTime <= block.timestamp
                idx = idx + 1
                continue 
        else:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
            require block.timestamp - startTime <= block.timestamp
            idx = var44002
            while idx < (block.timestamp - startTime / 23 * 3600) + 1:
                require block.timestamp - startTime <= block.timestamp
                require (block.timestamp - startTime / 23 * 3600) + 1 > idx
                mem[0] = arg1
                mem[32] = sha3(idx, 18)
                if not stor18[idx][address(arg1)]:
                    mem[0] = idx
                    mem[32] = 15
                    if dailyTotals[idx].field_0:
                        require dailyTotals[idx].field_0 == dailyTotals[idx].field_0
                        require uint128(userBuys[idx][address(arg1)]) == uint256(userBuys[idx][address(arg1)])
                        require uint128(stor12) == uint256(createPerDay)
                        require dailyTotals[idx].field_0
                        require uint128((10^18 * uint128(stor12)) + dailyTotals[idx].field_1 / dailyTotals[idx].field_0) == (10^18 * uint128(stor12)) + dailyTotals[idx].field_1 / dailyTotals[idx].field_0
                        require uint128((uint128((10^18 * uint128(stor12)) + dailyTotals[idx].field_1 / dailyTotals[idx].field_0) * uint128(userBuys[idx][address(arg1)])) + 5 * 10^17 / 10^18) == (uint128((10^18 * uint128(stor12)) + dailyTotals[idx].field_1 / dailyTotals[idx].field_0) * uint128(userBuys[idx][address(arg1)])) + 5 * 10^17 / 10^18
                        stor18[idx][address(arg1)] = 1
                        mem[0] = arg1
                        mem[32] = 1
                        balanceOf[address(arg1)] += uint128((uint128((10^18 * uint128(stor12)) + dailyTotals[idx].field_1 / dailyTotals[idx].field_0) * uint128(userBuys[idx][address(arg1)])) + 5 * 10^17 / 10^18)
                        mem[mem[64]] = idx
                        mem[mem[64] + 32] = arg1
                        mem[mem[64] + 64] = uint128((uint128((10^18 * uint128(stor12)) + dailyTotals[idx].field_1 / dailyTotals[idx].field_0) * uint128(userBuys[idx][address(arg1)])) + 5 * 10^17 / 10^18)
                        emit LogClaim(idx, address(arg1), uint128((uint128((10^18 * uint128(stor12)) + dailyTotals[idx].field_1 / dailyTotals[idx].field_0) * uint128(userBuys[idx][address(arg1)])) + 5 * 10^17 / 10^18));
                require block.timestamp - startTime <= block.timestamp
                idx = idx + 1
                continue 
}



}
