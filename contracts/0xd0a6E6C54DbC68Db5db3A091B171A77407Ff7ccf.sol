contract main {


// =======================  Init code  ======================


address stor1;
uint128 stor3;
uint128 stor3; offset 128
array of uint256 stor4;
uint256 stor5;
uint128 stor6;
uint128 stor6; offset 128
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;

function _fallback() {
    mem[96 len -8485] = code.data[9858 len -8485]
    mem[64] = -8389
    stor1 = msg.sender
    emit LogSetOwner(msg.sender);
    stor8 = mem[96]
    uint128(stor3.field_0) = mem[144 len 16]
    stor5 = mem[160]
    stor7 = mem[192]
    uint128(stor3.field_128) = mem[240 len 16]
    stor4[] = Array(len=mem[mem[256] + 96], data=mem[mem[256] + 128 len mem[mem[256] + 96]])
    require uint128((2 * 10^17 * uint128(stor3.field_0)) + 5 * 10^17 / 10^18) == (2 * 10^17 * uint128(stor3.field_0)) + 5 * 10^17 / 10^18
    uint128(stor6.field_0) = uint128((2 * 10^17 * uint128(stor3.field_0)) + 5 * 10^17 / 10^18)
    uint128(stor6.field_128) = 0
    require uint128(stor3.field_0) - uint128(stor3.field_128) <= uint128(stor3.field_0)
    require -uint256(stor6.field_0) <= 0
    require stor8
    stor9 = uint128(stor3.field_0) - uint128(stor3.field_128) - uint256(stor6.field_0) / stor8
    require stor8 > 0
    require uint128(stor3.field_0) > uint128(stor3.field_128)
    require stor5 < stor7
    return code.data[1373 len 8485]
}



// =====================  Runtime code  =====================


const time = block.timestamp


address authorityAddress;
address owner;
address EOSAddress;
uint128 totalSupply;
uint128 foundersAllocation; offset 128
array of struct foundersKey;
uint256 openTime;
uint128 stor6;
uint256 createFirstDay;
uint256 startTime;
uint256 numberOfDays;
uint128 stor9;
uint256 createPerDay;
mapping of struct dailyTotals;
mapping of uint128 userBuys;
mapping of uint8 stor12;
array of uint256 keys;

function claimed(uint256 arg1, address arg2) {
    return bool(stor12[arg1][arg2])
}

function totalSupply() {
    return totalSupply
}

function foundersAllocation() {
    return foundersAllocation
}

function foundersKey() {
    return foundersKey[0 len foundersKey.length].field_0
}

function userBuys(uint256 arg1, address arg2) {
    return uint256(userBuys[arg1][arg2])
}

function keys(address arg1) {
    return keys[arg1][0 len keys[arg1].length]
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

function openTime() {
    return openTime
}

function EOS() {
    return EOSAddress
}

function authority() {
    return authorityAddress
}

function createFirstDay() {
    return uint256(createFirstDay)
}

function numberOfDays() {
    return numberOfDays
}

function createPerDay() {
    return uint256(createPerDay)
}

function createOnDay(uint256 arg1) {
    if not arg1:
        return uint256(createFirstDay)
    return uint256(createPerDay)
}

function dayFor(uint256 arg1) {
    if arg1 < startTime:
        return 0
    require arg1 - startTime <= arg1
    return ((arg1 - startTime / 23 * 3600) + 1)
}

function today() {
    if block.timestamp < startTime:
        return 0
    require block.timestamp - startTime <= block.timestamp
    return ((block.timestamp - startTime / 23 * 3600) + 1)
}

function freeze() {
    if block.timestamp < startTime:
        require 0 > numberOfDays + 1
    else:
        require block.timestamp - startTime <= block.timestamp
        require block.timestamp - startTime / 23 * 3600 > numberOfDays
    require ext_code.size(EOSAddress)
    call EOSAddress.stop() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    emit LogFreeze()
}

function setOwner(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
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
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    authorityAddress = arg1
    emit LogSetAuthority(authorityAddress);
}

function buyWithLimit(uint256 arg1, uint256 arg2) payable {
    require block.timestamp >= openTime
    if block.timestamp < startTime:
        require 0 <= numberOfDays
    else:
        require block.timestamp - startTime <= block.timestamp
        require (block.timestamp - startTime / 23 * 3600) + 1 <= numberOfDays
    require msg.value >= 10^16
    if block.timestamp < startTime:
        require arg1 >= 0
    else:
        require block.timestamp - startTime <= block.timestamp
        require arg1 >= (block.timestamp - startTime / 23 * 3600) + 1
    require arg1 <= numberOfDays
    uint256(userBuys[arg1][address(msg.sender)]) += msg.value
    dailyTotals[arg1].field_0 += msg.value
    if arg2:
        require dailyTotals[arg1].field_0 <= arg2
    emit LogBuy(arg1, msg.sender, msg.value);
}

function collect() {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    require block.timestamp >= startTime
    require block.timestamp - startTime <= block.timestamp
    require (block.timestamp - startTime / 23 * 3600) + 1 > 0
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining - 34710 wei
    require ext_call.success
    emit LogCollect(eth.balance(this.address));
}

function register(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    if block.timestamp < startTime:
        require 0 <= numberOfDays + 1
    else:
        require block.timestamp - startTime <= block.timestamp
        require block.timestamp - startTime / 23 * 3600 <= numberOfDays
    require arg1.length <= 64
    keys[address(msg.sender)][] = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + 128] = msg.sender
    mem[ceil32(arg1.length) + 160] = 64
    mem[ceil32(arg1.length) + 192] = arg1.length
    if arg1.length:
        mem[ceil32(arg1.length) + 224] = mem[128]
        mem[ceil32(arg1.length) + 256 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
    emit LogRegister(msg.sender, Array(len=arg1.length, data=mem[ceil32(arg1.length) + 224 len arg1.length]));
}

function buy() payable {
    if block.timestamp < startTime:
        require block.timestamp >= openTime
        if block.timestamp < startTime:
            require 0 <= numberOfDays
        else:
            require block.timestamp - startTime <= block.timestamp
            require (block.timestamp - startTime / 23 * 3600) + 1 <= numberOfDays
        require msg.value >= 10^16
        if block.timestamp >= startTime:
            require block.timestamp - startTime <= block.timestamp
            require 0 >= (block.timestamp - startTime / 23 * 3600) + 1
        require 0 <= numberOfDays
        uint256(userBuys[0][address(msg.sender)]) += msg.value
        dailyTotals[0].field_0 += msg.value
        emit LogBuy(0, msg.sender, msg.value);
    else:
        require block.timestamp - startTime <= block.timestamp
        require block.timestamp >= openTime
        if block.timestamp < startTime:
            require 0 <= numberOfDays
        else:
            require block.timestamp - startTime <= block.timestamp
            require (block.timestamp - startTime / 23 * 3600) + 1 <= numberOfDays
        require msg.value >= 10^16
        if block.timestamp < startTime:
            require (block.timestamp - startTime / 23 * 3600) + 1 >= 0
        else:
            require block.timestamp - startTime <= block.timestamp
        require (block.timestamp - startTime / 23 * 3600) + 1 <= numberOfDays
        uint256(userBuys[(block.timestamp - stor7 / 23 * 3600) + 1][address(msg.sender)]) += msg.value
        dailyTotals[(block.timestamp - stor7 / 23 * 3600) + 1].field_0 += msg.value
        emit LogBuy((block.timestamp - startTime / 23 * 3600) + 1, msg.sender, msg.value);
}

function _fallback() payable {
    if block.timestamp < startTime:
        require block.timestamp >= openTime
        if block.timestamp < startTime:
            require 0 <= numberOfDays
        else:
            require block.timestamp - startTime <= block.timestamp
            require (block.timestamp - startTime / 23 * 3600) + 1 <= numberOfDays
        require msg.value >= 10^16
        if block.timestamp >= startTime:
            require block.timestamp - startTime <= block.timestamp
            require 0 >= (block.timestamp - startTime / 23 * 3600) + 1
        require 0 <= numberOfDays
        uint256(userBuys[0][address(msg.sender)]) += msg.value
        dailyTotals[0].field_0 += msg.value
        emit LogBuy(0, msg.sender, msg.value);
    else:
        require block.timestamp - startTime <= block.timestamp
        require block.timestamp >= openTime
        if block.timestamp < startTime:
            require 0 <= numberOfDays
        else:
            require block.timestamp - startTime <= block.timestamp
            require (block.timestamp - startTime / 23 * 3600) + 1 <= numberOfDays
        require msg.value >= 10^16
        if block.timestamp < startTime:
            require (block.timestamp - startTime / 23 * 3600) + 1 >= 0
        else:
            require block.timestamp - startTime <= block.timestamp
        require (block.timestamp - startTime / 23 * 3600) + 1 <= numberOfDays
        uint256(userBuys[(block.timestamp - stor7 / 23 * 3600) + 1][address(msg.sender)]) += msg.value
        dailyTotals[(block.timestamp - stor7 / 23 * 3600) + 1].field_0 += msg.value
        emit LogBuy((block.timestamp - startTime / 23 * 3600) + 1, msg.sender, msg.value);
}

function initialize(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address rg1, address rg2, bytes4 rg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    require not EOSAddress
    require ext_code.size(arg1)
    call arg1.0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == this.address
    require ext_code.size(arg1)
    call arg1.0xbf7e214f with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require not ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    call arg1.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require not ext_call.return_data[0]
    EOSAddress = arg1
    require ext_code.size(EOSAddress)
    call EOSAddress.0x69d3e20e with:
         gas gas_remaining - 710 wei
        args totalSupply
    require ext_call.success
    require ext_code.size(EOSAddress)
    call EOSAddress.0x3452f51d with:
         gas gas_remaining - 710 wei
        args 177, foundersAllocation
    require ext_call.success
    if 31 >= foundersKey.length:
        keys[177] = foundersKey.length
        idx = 0
        while keys[177].length + 31 / 32 > idx:
            keys[177][idx] = 0
            idx = idx + 1
            continue 
    else:
        keys[177] = Mask(255, 1, (256 * not bool(foundersKey.length)) - 1 and foundersKey.length) + 1
        if not Mask(255, 1, (256 * not bool(foundersKey.length)) - 1 and foundersKey.length):
            idx = 0
            while keys[177].length + 31 / 32 > idx:
                keys[177][idx] = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while foundersKey.length + 31 / 32 > idx:
                keys[177][s] = foundersKey[idx].field_0
                s = s + 1
                idx = idx + 1
                continue 
            idx = foundersKey.length + 31 / 32
            while keys[177].length + 31 / 32 > idx:
                keys[177][idx] = 0
                idx = idx + 1
                continue 
    mem[192] = uint256(foundersKey.field_0)
    idx = 192
    s = 0
    while foundersKey.length + 192 > idx + 32:
        mem[idx + 32] = foundersKey[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit LogRegister(177, Array(len=foundersKey.length, data=mem[192 len foundersKey.length + (floor32(foundersKey.length - 1) + -foundersKey.length + 32 % 32)]));
}

function claim(uint256 arg1) {
    if block.timestamp < startTime:
        require 0 > arg1
    else:
        require block.timestamp - startTime <= block.timestamp
        require (block.timestamp - startTime / 23 * 3600) + 1 > arg1
    if not stor12[arg1][address(msg.sender)]:
        if dailyTotals[arg1].field_0:
            require dailyTotals[arg1].field_0 == dailyTotals[arg1].field_0
            require uint128(userBuys[arg1][address(msg.sender)]) == uint256(userBuys[arg1][address(msg.sender)])
            if not arg1:
                require uint128(stor6) == uint256(createFirstDay)
                require dailyTotals[arg1].field_0
                require uint128((10^18 * uint128(stor6)) + dailyTotals[arg1].field_1 / dailyTotals[arg1].field_0) == (10^18 * uint128(stor6)) + dailyTotals[arg1].field_1 / dailyTotals[arg1].field_0
                require uint128((uint128((10^18 * uint128(stor6)) + dailyTotals[arg1].field_1 / dailyTotals[arg1].field_0) * uint128(userBuys[arg1][address(msg.sender)])) + 5 * 10^17 / 10^18) == (uint128((10^18 * uint128(stor6)) + dailyTotals[arg1].field_1 / dailyTotals[arg1].field_0) * uint128(userBuys[arg1][address(msg.sender)])) + 5 * 10^17 / 10^18
                stor12[arg1][address(msg.sender)] = 1
                require ext_code.size(EOSAddress)
                call EOSAddress.0x3452f51d with:
                     gas gas_remaining - 710 wei
                    args msg.sender, uint128((uint128((10^18 * uint128(stor6)) + dailyTotals[arg1].field_1 / dailyTotals[arg1].field_0) * uint128(userBuys[arg1][address(msg.sender)])) + 5 * 10^17 / 10^18)
                require ext_call.success
                emit LogClaim(arg1, msg.sender, uint128((uint128((10^18 * uint128(stor6)) + dailyTotals[arg1].field_1 / dailyTotals[arg1].field_0) * uint128(userBuys[arg1][address(msg.sender)])) + 5 * 10^17 / 10^18));
            else:
                require uint128(stor9) == uint256(createPerDay)
                require dailyTotals[arg1].field_0
                require uint128((10^18 * uint128(stor9)) + dailyTotals[arg1].field_1 / dailyTotals[arg1].field_0) == (10^18 * uint128(stor9)) + dailyTotals[arg1].field_1 / dailyTotals[arg1].field_0
                require uint128((uint128((10^18 * uint128(stor9)) + dailyTotals[arg1].field_1 / dailyTotals[arg1].field_0) * uint128(userBuys[arg1][address(msg.sender)])) + 5 * 10^17 / 10^18) == (uint128((10^18 * uint128(stor9)) + dailyTotals[arg1].field_1 / dailyTotals[arg1].field_0) * uint128(userBuys[arg1][address(msg.sender)])) + 5 * 10^17 / 10^18
                stor12[arg1][address(msg.sender)] = 1
                require ext_code.size(EOSAddress)
                call EOSAddress.0x3452f51d with:
                     gas gas_remaining - 710 wei
                    args msg.sender, uint128((uint128((10^18 * uint128(stor9)) + dailyTotals[arg1].field_1 / dailyTotals[arg1].field_0) * uint128(userBuys[arg1][address(msg.sender)])) + 5 * 10^17 / 10^18)
                require ext_call.success
                emit LogClaim(arg1, msg.sender, uint128((uint128((10^18 * uint128(stor9)) + dailyTotals[arg1].field_1 / dailyTotals[arg1].field_0) * uint128(userBuys[arg1][address(msg.sender)])) + 5 * 10^17 / 10^18));
}

function claimAll() payable {
    mem[64] = 96
    require not msg.value
    if block.timestamp < startTime:
        if var57005 >= 0:
    else:
        require block.timestamp - startTime <= block.timestamp
        if var57005 >= (block.timestamp - startTime / 23 * 3600) + 1:
    if block.timestamp < startTime:
        require 0 > var57005
    else:
        require block.timestamp - startTime <= block.timestamp
        require (block.timestamp - startTime / 23 * 3600) + 1 > var57005
    mem[0] = msg.sender
    mem[32] = sha3(var57005, 12)
    if not stor12[var57005][address(msg.sender)]:
        mem[0] = var57005
        mem[32] = 10
        if dailyTotals[var57005].field_0:
            require dailyTotals[var57005].field_0 == dailyTotals[var57005].field_0
            require uint128(userBuys[var57005][address(msg.sender)]) == uint256(userBuys[var57005][address(msg.sender)])
            if not var57005:
                require uint128(stor6) == uint256(createFirstDay)
                require dailyTotals[var57005].field_0
                require uint128((10^18 * uint128(stor6)) + dailyTotals[var57005].field_1 / dailyTotals[var57005].field_0) == (10^18 * uint128(stor6)) + dailyTotals[var57005].field_1 / dailyTotals[var57005].field_0
                require uint128((uint128((10^18 * uint128(stor6)) + dailyTotals[var57005].field_1 / dailyTotals[var57005].field_0) * uint128(userBuys[var57005][address(msg.sender)])) + 5 * 10^17 / 10^18) == (uint128((10^18 * uint128(stor6)) + dailyTotals[var57005].field_1 / dailyTotals[var57005].field_0) * uint128(userBuys[var57005][address(msg.sender)])) + 5 * 10^17 / 10^18
                mem[0] = msg.sender
                mem[32] = sha3(var57005, 12)
                stor12[var57005][address(msg.sender)] = 1
                require ext_code.size(EOSAddress)
                call EOSAddress.0x3452f51d with:
                     gas gas_remaining - 710 wei
                    args msg.sender, uint128((uint128((10^18 * uint128(stor6)) + dailyTotals[var57005].field_1 / dailyTotals[var57005].field_0) * uint128(userBuys[var57005][address(msg.sender)])) + 5 * 10^17 / 10^18)
                require ext_call.success
                mem[96] = var57005
                mem[128] = msg.sender
                mem[160] = uint128((uint128((10^18 * uint128(stor6)) + dailyTotals[var57005].field_1 / dailyTotals[var57005].field_0) * uint128(userBuys[var57005][address(msg.sender)])) + 5 * 10^17 / 10^18)
                emit LogClaim(var57005, msg.sender, uint128((uint128((10^18 * uint128(stor6)) + dailyTotals[var57005].field_1 / dailyTotals[var57005].field_0) * uint128(userBuys[var57005][address(msg.sender)])) + 5 * 10^17 / 10^18));
            else:
                require uint128(stor9) == uint256(createPerDay)
                require dailyTotals[var57005].field_0
                require uint128((10^18 * uint128(stor9)) + dailyTotals[var57005].field_1 / dailyTotals[var57005].field_0) == (10^18 * uint128(stor9)) + dailyTotals[var57005].field_1 / dailyTotals[var57005].field_0
                require uint128((uint128((10^18 * uint128(stor9)) + dailyTotals[var57005].field_1 / dailyTotals[var57005].field_0) * uint128(userBuys[var57005][address(msg.sender)])) + 5 * 10^17 / 10^18) == (uint128((10^18 * uint128(stor9)) + dailyTotals[var57005].field_1 / dailyTotals[var57005].field_0) * uint128(userBuys[var57005][address(msg.sender)])) + 5 * 10^17 / 10^18
                mem[0] = msg.sender
                mem[32] = sha3(var57005, 12)
                stor12[var57005][address(msg.sender)] = 1
                require ext_code.size(EOSAddress)
                call EOSAddress.0x3452f51d with:
                     gas gas_remaining - 710 wei
                    args msg.sender, uint128((uint128((10^18 * uint128(stor9)) + dailyTotals[var57005].field_1 / dailyTotals[var57005].field_0) * uint128(userBuys[var57005][address(msg.sender)])) + 5 * 10^17 / 10^18)
                require ext_call.success
                mem[96] = var57005
                mem[128] = msg.sender
                mem[160] = uint128((uint128((10^18 * uint128(stor9)) + dailyTotals[var57005].field_1 / dailyTotals[var57005].field_0) * uint128(userBuys[var57005][address(msg.sender)])) + 5 * 10^17 / 10^18)
                emit LogClaim(var57005, msg.sender, uint128((uint128((10^18 * uint128(stor9)) + dailyTotals[var57005].field_1 / dailyTotals[var57005].field_0) * uint128(userBuys[var57005][address(msg.sender)])) + 5 * 10^17 / 10^18));
    var57005 = var57005 + 1
    continue 
}



}
