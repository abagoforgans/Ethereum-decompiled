contract main {


// =======================  Init code  ======================


address stor1;
uint128 stor5;
uint128 stor5; offset 128
array of uint256 stor6;
uint256 stor7;
uint128 stor8;
uint128 stor8; offset 128
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
address stor12;
address stor13;

function _fallback() payable {
    stor12 = 0x28bfe2042b276450c35b7fddc8e64a758081aef3
    stor13 = 0xa3ad4efdd5719eaed1b0f2e12c0d7368a6d11037
    require not msg.value
    mem[96 len -8284] = code.data[9119 len -8284]
    mem[64] = -8188
    stor1 = msg.sender
    emit LogSetOwner(msg.sender);
    stor10 = mem[96]
    stor7 = mem[192]
    stor9 = mem[224]
    uint128(stor5.field_0) = mem[144 len 16]
    uint128(stor5.field_128) = mem[272 len 16]
    stor6[] = Array(len=mem[mem[288] + 96], data=mem[mem[288] + 128 len mem[mem[288] + 96]])
    uint128(stor8.field_0) = mem[176 len 16]
    uint128(stor8.field_128) = 0
    require uint128(stor5.field_0) - uint128(stor5.field_128) <= uint128(stor5.field_0)
    require -uint256(stor8.field_0) <= 0
    require stor10
    stor11 = uint128(stor5.field_0) - uint128(stor5.field_128) - uint256(stor8.field_0) / stor10
    require stor10 > 0
    require uint128(stor5.field_0) > uint128(stor5.field_128)
    require stor7 < stor9
    return code.data[835 len 8284]
}



// =====================  Runtime code  =====================


const time = block.timestamp


address authorityAddress;
address owner;
mapping of uint8 stor2;
mapping of uint8 stor3;
address ONOAddress;
uint128 totalSupply;
uint128 foundersAllocation; offset 128
array of struct foundersKey;
uint256 openTime;
uint128 stor8;
uint256 createFirstRound;
uint256 startTime;
uint256 numberOfRounds;
uint128 stor11;
uint256 createPerRound;
address founderAddr;
address burnAddr;
mapping of struct dailyTotals;
mapping of uint128 userBuys;
mapping of uint8 stor16;
array of uint256 keys;
array of address userBuysArray;
mapping of uint8 stor19;

function claimed(uint256 arg1, address arg2) {
    return bool(stor16[arg1][arg2])
}

function totalSupply() {
    return totalSupply
}

function foundersAllocation() {
    return foundersAllocation
}

function createPerRound() {
    return uint256(createPerRound)
}

function burned(uint256 arg1) {
    return bool(stor19[arg1])
}

function ONO() {
    return ONOAddress
}

function foundersKey() {
    return uint256(foundersKey[0 len foundersKey.length].field_0)
}

function userBuys(uint256 arg1, address arg2) {
    return uint256(userBuys[arg1][arg2])
}

function userBuysArray(uint256 arg1, uint256 arg2) {
    require arg2 < uint256(userBuysArray[arg1])
    return address(userBuysArray[arg1][arg2])
}

function numberOfRounds() {
    return numberOfRounds
}

function keys(address arg1) {
    return keys[arg1][0 len keys[arg1].length]
}

function createFirstRound() {
    return uint256(createFirstRound)
}

function startTime() {
    return startTime
}

function dailyTotals(uint256 arg1) {
    return uint256(dailyTotals[arg1].field_0)
}

function adminlist(address arg1) {
    return bool(stor3[arg1])
}

function owner() {
    return owner
}

function whitelist(address arg1) {
    return bool(stor2[arg1])
}

function openTime() {
    return openTime
}

function authority() {
    return authorityAddress
}

function founderAddr() {
    return founderAddr
}

function burnAddr() {
    return burnAddr
}

function createOnRound(uint256 arg1) {
    if not arg1:
        return uint256(createFirstRound)
    return uint256(createPerRound)
}

function roundFor(uint256 arg1) {
    if arg1 < startTime:
        return 0
    require arg1 - startTime <= arg1
    return ((arg1 - startTime / 300) + 1)
}

function currRound() {
    if block.timestamp < startTime:
        return 0
    require block.timestamp - startTime <= block.timestamp
    return ((block.timestamp - startTime / 300) + 1)
}

function addWhiteList(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require 1 == bool(stor3[address(msg.sender)])
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        stor2[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function removeWhiteList(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require 1 == bool(stor3[address(msg.sender)])
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        stor2[mem[(32 * idx) + 140 len 20]] = 0
        idx = idx + 1
        continue 
}

function register(string arg1) {
    if block.timestamp < startTime:
        require 0 <= numberOfRounds + 1
    else:
        require block.timestamp - startTime <= block.timestamp
        require block.timestamp - startTime / 300 <= numberOfRounds
    require arg1.length <= 64
    keys[address(msg.sender)][] = Array(len=arg1.length, data=arg1[all])
    emit LogRegister(msg.sender, Array(len=arg1.length, data=arg1[all]));
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
    emit LogSetOwner(arg1);
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
    emit LogSetAuthority(arg1);
}

function collect() {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    require block.timestamp >= startTime
    require block.timestamp - startTime <= block.timestamp
    require (block.timestamp - startTime / 300) + 1 > 0
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining - 34710 wei
    require ext_call.success
    emit LogCollect(eth.balance(this.address));
}

function freeze() {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    if block.timestamp < startTime:
        require 0 > numberOfRounds + 1
    else:
        require block.timestamp - startTime <= block.timestamp
        require block.timestamp - startTime / 300 > numberOfRounds
    require ext_code.size(ONOAddress)
    call ONOAddress.stop() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    emit LogFreeze()
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
    require ext_code.size(ONOAddress)
    call ONOAddress.0x69d3e20e with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(ONOAddress)
    call ONOAddress.0x3452f51d with:
         gas gas_remaining - 710 wei
        args founderAddr, arg1
    require ext_call.success
    emit LogMint(founderAddr, arg1);
}

function addAdminList(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            require ext_call.success
            require ext_call.return_data[0]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 3
        stor3[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function initialize(address arg1) {
    if this.address != msg.sender:
        if owner != msg.sender:
            require authorityAddress
            require ext_code.size(authorityAddress)
            call authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(this.address), call.func_hash
            require ext_call.success
            require ext_call.return_data[0]
    require not ONOAddress
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
    ONOAddress = arg1
    require ext_code.size(arg1)
    call arg1.0x69d3e20e with:
         gas gas_remaining - 710 wei
        args totalSupply
    require ext_call.success
    require ext_code.size(ONOAddress)
    call ONOAddress.0x3452f51d with:
         gas gas_remaining - 710 wei
        args founderAddr, foundersAllocation
    require ext_call.success
    if 31 >= foundersKey.length:
        keys[stor12] = foundersKey.length
        idx = 0
        while keys[stor12].length + 31 / 32 > idx:
            keys[stor12][idx] = 0
            idx = idx + 1
            continue 
    else:
        keys[stor12] = Mask(255, 1, foundersKey.length and (256 * not bool(foundersKey.length)) - 1) + 1
        if not Mask(255, 1, foundersKey.length and (256 * not bool(foundersKey.length)) - 1):
            idx = 0
            while keys[stor12].length + 31 / 32 > idx:
                keys[stor12][idx] = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while foundersKey.length + 31 / 32 > idx:
                keys[stor12][s] = uint256(foundersKey[idx].field_0)
                s = s + 1
                idx = idx + 1
                continue 
            idx = foundersKey.length + 31 / 32
            while keys[stor12].length + 31 / 32 > idx:
                keys[stor12][idx] = 0
                idx = idx + 1
                continue 
    mem[192] = uint256(foundersKey.field_0)
    idx = 192
    s = 0
    while foundersKey.length + 192 > idx + 32:
        mem[idx + 32] = uint256(foundersKey[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    emit LogRegister(founderAddr, Array(len=foundersKey.length, data=mem[192 len foundersKey.length + (floor32(foundersKey.length - 1) + -foundersKey.length + 32 % 32)]));
}

function buy() payable {
    require 1 == bool(stor2[address(msg.sender)])
    if block.timestamp < startTime:
        require block.timestamp >= openTime
        require 0 <= numberOfRounds
        require msg.value >= 10^18
        require 0 <= numberOfRounds
        require uint256(userBuys[0][address(msg.sender)]) + msg.value >= uint256(userBuys[0][address(msg.sender)])
        uint256(userBuys[0][address(msg.sender)]) += msg.value
        require uint256(dailyTotals[0].field_0) + msg.value >= uint256(dailyTotals[0].field_0)
        uint256(dailyTotals[0].field_0) += msg.value
        s = 0
        idx = 0
        while idx < uint256(userBuysArray[0]):
            require idx < uint256(userBuysArray[0])
            if address(userBuysArray[0][idx]) == msg.sender:
                emit LogBuy(0, msg.sender, msg.value);
            mem[0] = 0
            mem[32] = 18
            s = address(userBuysArray[0][idx])
            idx = idx + 1
            continue 
        uint256(userBuysArray[0])++
        if not uint256(userBuysArray[0]) <= uint256(userBuysArray[0]) + 1:
            idx = uint256(userBuysArray[0]) + 1
            while uint256(userBuysArray[0]) > idx:
                uint256(userBuysArray[0][idx]) = 0
                idx = idx + 1
                continue 
        address(userBuysArray[0][uint256(userBuysArray[0])]) = msg.sender
        emit LogBuy(0, msg.sender, msg.value);
    else:
        require block.timestamp - startTime <= block.timestamp
        require block.timestamp >= openTime
        require (block.timestamp - startTime / 300) + 1 <= numberOfRounds
        require msg.value >= 10^18
        require (block.timestamp - startTime / 300) + 1 <= numberOfRounds
        require uint256(userBuys[(block.timestamp - stor9 / 300) + 1][address(msg.sender)]) + msg.value >= uint256(userBuys[(block.timestamp - stor9 / 300) + 1][address(msg.sender)])
        uint256(userBuys[(block.timestamp - stor9 / 300) + 1][address(msg.sender)]) += msg.value
        require uint256(dailyTotals[(block.timestamp - stor9 / 300) + 1].field_0) + msg.value >= uint256(dailyTotals[(block.timestamp - stor9 / 300) + 1].field_0)
        uint256(dailyTotals[(block.timestamp - stor9 / 300) + 1].field_0) += msg.value
        s = 0
        idx = 0
        while idx < uint256(userBuysArray[(block.timestamp - stor9 / 300) + 1]):
            require idx < uint256(userBuysArray[(block.timestamp - stor9 / 300) + 1])
            if address(userBuysArray[(block.timestamp - stor9 / 300) + 1][idx]) == msg.sender:
                emit LogBuy((block.timestamp - startTime / 300) + 1, msg.sender, msg.value);
            mem[0] = (block.timestamp - startTime / 300) + 1
            mem[32] = 18
            s = address(userBuysArray[(block.timestamp - stor9 / 300) + 1][idx])
            idx = idx + 1
            continue 
        uint256(userBuysArray[(block.timestamp - stor9 / 300) + 1])++
        if not uint256(userBuysArray[(block.timestamp - stor9 / 300) + 1]) <= uint256(userBuysArray[(block.timestamp - stor9 / 300) + 1]) + 1:
            idx = uint256(userBuysArray[(block.timestamp - stor9 / 300) + 1]) + 1
            while uint256(userBuysArray[(block.timestamp - stor9 / 300) + 1]) > idx:
                uint256(userBuysArray[(block.timestamp - stor9 / 300) + 1][idx]) = 0
                idx = idx + 1
                continue 
        address(userBuysArray[(block.timestamp - stor9 / 300) + 1][uint256(userBuysArray[(block.timestamp - stor9 / 300) + 1])]) = msg.sender
        emit LogBuy((block.timestamp - startTime / 300) + 1, msg.sender, msg.value);
}

function _fallback() payable {
    require 1 == bool(stor2[address(msg.sender)])
    if block.timestamp < startTime:
        require block.timestamp >= openTime
        require 0 <= numberOfRounds
        require msg.value >= 10^18
        require 0 <= numberOfRounds
        require uint256(userBuys[0][address(msg.sender)]) + msg.value >= uint256(userBuys[0][address(msg.sender)])
        uint256(userBuys[0][address(msg.sender)]) += msg.value
        require uint256(dailyTotals[0].field_0) + msg.value >= uint256(dailyTotals[0].field_0)
        uint256(dailyTotals[0].field_0) += msg.value
        s = 0
        idx = 0
        while idx < uint256(userBuysArray[0]):
            require idx < uint256(userBuysArray[0])
            if address(userBuysArray[0][idx]) == msg.sender:
                emit LogBuy(0, msg.sender, msg.value);
            mem[0] = 0
            mem[32] = 18
            s = address(userBuysArray[0][idx])
            idx = idx + 1
            continue 
        uint256(userBuysArray[0])++
        if not uint256(userBuysArray[0]) <= uint256(userBuysArray[0]) + 1:
            idx = uint256(userBuysArray[0]) + 1
            while uint256(userBuysArray[0]) > idx:
                uint256(userBuysArray[0][idx]) = 0
                idx = idx + 1
                continue 
        address(userBuysArray[0][uint256(userBuysArray[0])]) = msg.sender
        emit LogBuy(0, msg.sender, msg.value);
    else:
        require block.timestamp - startTime <= block.timestamp
        require block.timestamp >= openTime
        require (block.timestamp - startTime / 300) + 1 <= numberOfRounds
        require msg.value >= 10^18
        require (block.timestamp - startTime / 300) + 1 <= numberOfRounds
        require uint256(userBuys[(block.timestamp - stor9 / 300) + 1][address(msg.sender)]) + msg.value >= uint256(userBuys[(block.timestamp - stor9 / 300) + 1][address(msg.sender)])
        uint256(userBuys[(block.timestamp - stor9 / 300) + 1][address(msg.sender)]) += msg.value
        require uint256(dailyTotals[(block.timestamp - stor9 / 300) + 1].field_0) + msg.value >= uint256(dailyTotals[(block.timestamp - stor9 / 300) + 1].field_0)
        uint256(dailyTotals[(block.timestamp - stor9 / 300) + 1].field_0) += msg.value
        s = 0
        idx = 0
        while idx < uint256(userBuysArray[(block.timestamp - stor9 / 300) + 1]):
            require idx < uint256(userBuysArray[(block.timestamp - stor9 / 300) + 1])
            if address(userBuysArray[(block.timestamp - stor9 / 300) + 1][idx]) == msg.sender:
                emit LogBuy((block.timestamp - startTime / 300) + 1, msg.sender, msg.value);
            mem[0] = (block.timestamp - startTime / 300) + 1
            mem[32] = 18
            s = address(userBuysArray[(block.timestamp - stor9 / 300) + 1][idx])
            idx = idx + 1
            continue 
        uint256(userBuysArray[(block.timestamp - stor9 / 300) + 1])++
        if not uint256(userBuysArray[(block.timestamp - stor9 / 300) + 1]) <= uint256(userBuysArray[(block.timestamp - stor9 / 300) + 1]) + 1:
            idx = uint256(userBuysArray[(block.timestamp - stor9 / 300) + 1]) + 1
            while uint256(userBuysArray[(block.timestamp - stor9 / 300) + 1]) > idx:
                uint256(userBuysArray[(block.timestamp - stor9 / 300) + 1][idx]) = 0
                idx = idx + 1
                continue 
        address(userBuysArray[(block.timestamp - stor9 / 300) + 1][uint256(userBuysArray[(block.timestamp - stor9 / 300) + 1])]) = msg.sender
        emit LogBuy((block.timestamp - startTime / 300) + 1, msg.sender, msg.value);
}

function burn(uint256 arg1) {
    require 1 == bool(stor3[address(msg.sender)])
    if block.timestamp < startTime:
        require 0 > arg1
    else:
        require block.timestamp - startTime <= block.timestamp
        require (block.timestamp - startTime / 300) + 1 > arg1
    require not stor19[arg1]
    require uint256(dailyTotals[arg1].field_0) == dailyTotals[arg1].field_0
    if not arg1:
        require uint256(createFirstRound) == uint128(stor8)
        if not dailyTotals[arg1].field_0:
            stor19[arg1] = 1
            require ext_code.size(ONOAddress)
            call ONOAddress.0x3452f51d with:
                 gas gas_remaining - 710 wei
                args burnAddr, uint128(stor8)
            require ext_call.success
            emit LogBurn(arg1, burnAddr, uint128(stor8));
        else:
            require 10^18 * uint128(stor8) / 10^18 == uint128(stor8)
            require (10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[arg1].field_1) >= 10^18 * uint128(stor8)
            require dailyTotals[arg1].field_0
            require (10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[arg1].field_1) / dailyTotals[arg1].field_0 == uint128((10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[arg1].field_1) / dailyTotals[arg1].field_0)
            if uint128((10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[arg1].field_1) / dailyTotals[arg1].field_0) > 600000 * 10^18:
                if not dailyTotals[arg1].field_0:
                    require uint128(stor8) > 0
                    stor19[arg1] = 1
                    require uint128(stor8) <= uint128(stor8)
                    require ext_code.size(ONOAddress)
                    call ONOAddress.0x3452f51d with:
                         gas gas_remaining - 710 wei
                        args burnAddr, uint128(stor8)
                    require ext_call.success
                    require uint128(stor8) <= uint128(stor8)
                    emit LogBurn(arg1, burnAddr, uint128(stor8));
                else:
                    require dailyTotals[arg1].field_0
                    require 600000 * 10^18 * dailyTotals[arg1].field_0 / dailyTotals[arg1].field_0 == 600000 * 10^18
                    require (600000 * 10^18 * dailyTotals[arg1].field_0) + 5 * 10^17 >= 600000 * 10^18 * dailyTotals[arg1].field_0
                    require (600000 * 10^18 * dailyTotals[arg1].field_0) + 5 * 10^17 / 10^18 == uint128((600000 * 10^18 * dailyTotals[arg1].field_0) + 5 * 10^17 / 10^18)
                    require uint128(stor8) > uint128((600000 * 10^18 * dailyTotals[arg1].field_0) + 5 * 10^17 / 10^18)
                    stor19[arg1] = 1
                    require uint128(uint256(createFirstRound) - ((600000 * 10^18 * dailyTotals[arg1].field_0) + 5 * 10^17 / 10^18)) <= uint128(stor8)
                    require ext_code.size(ONOAddress)
                    call ONOAddress.0x3452f51d with:
                         gas gas_remaining - 710 wei
                        args burnAddr, uint128(uint256(createFirstRound) - ((600000 * 10^18 * dailyTotals[arg1].field_0) + 5 * 10^17 / 10^18))
                    require ext_call.success
                    require uint128(uint256(createFirstRound) - ((600000 * 10^18 * dailyTotals[arg1].field_0) + 5 * 10^17 / 10^18)) <= uint128(stor8)
                    emit LogBurn(arg1, burnAddr, uint128(uint256(createFirstRound) - ((600000 * 10^18 * dailyTotals[arg1].field_0) + 5 * 10^17 / 10^18)));
    else:
        require uint256(createPerRound) == uint128(stor11)
        if not dailyTotals[arg1].field_0:
            stor19[arg1] = 1
            require ext_code.size(ONOAddress)
            call ONOAddress.0x3452f51d with:
                 gas gas_remaining - 710 wei
                args burnAddr, uint128(stor11)
            require ext_call.success
            emit LogBurn(arg1, burnAddr, uint128(stor11));
        else:
            require 10^18 * uint128(stor11) / 10^18 == uint128(stor11)
            require (10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[arg1].field_1) >= 10^18 * uint128(stor11)
            require dailyTotals[arg1].field_0
            require (10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[arg1].field_1) / dailyTotals[arg1].field_0 == uint128((10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[arg1].field_1) / dailyTotals[arg1].field_0)
            if uint128((10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[arg1].field_1) / dailyTotals[arg1].field_0) > 600000 * 10^18:
                if not dailyTotals[arg1].field_0:
                    require uint128(stor11) > 0
                    stor19[arg1] = 1
                    require uint128(stor11) <= uint128(stor11)
                    require ext_code.size(ONOAddress)
                    call ONOAddress.0x3452f51d with:
                         gas gas_remaining - 710 wei
                        args burnAddr, uint128(stor11)
                    require ext_call.success
                    require uint128(stor11) <= uint128(stor11)
                    emit LogBurn(arg1, burnAddr, uint128(stor11));
                else:
                    require dailyTotals[arg1].field_0
                    require 600000 * 10^18 * dailyTotals[arg1].field_0 / dailyTotals[arg1].field_0 == 600000 * 10^18
                    require (600000 * 10^18 * dailyTotals[arg1].field_0) + 5 * 10^17 >= 600000 * 10^18 * dailyTotals[arg1].field_0
                    require (600000 * 10^18 * dailyTotals[arg1].field_0) + 5 * 10^17 / 10^18 == uint128((600000 * 10^18 * dailyTotals[arg1].field_0) + 5 * 10^17 / 10^18)
                    require uint128(stor11) > uint128((600000 * 10^18 * dailyTotals[arg1].field_0) + 5 * 10^17 / 10^18)
                    stor19[arg1] = 1
                    require uint128(uint256(createPerRound) - ((600000 * 10^18 * dailyTotals[arg1].field_0) + 5 * 10^17 / 10^18)) <= uint128(stor11)
                    require ext_code.size(ONOAddress)
                    call ONOAddress.0x3452f51d with:
                         gas gas_remaining - 710 wei
                        args burnAddr, uint128(uint256(createPerRound) - ((600000 * 10^18 * dailyTotals[arg1].field_0) + 5 * 10^17 / 10^18))
                    require ext_call.success
                    require uint128(uint256(createPerRound) - ((600000 * 10^18 * dailyTotals[arg1].field_0) + 5 * 10^17 / 10^18)) <= uint128(stor11)
                    emit LogBurn(arg1, burnAddr, uint128(uint256(createPerRound) - ((600000 * 10^18 * dailyTotals[arg1].field_0) + 5 * 10^17 / 10^18)));
}

function claimAddress(address arg1, uint256 arg2) {
    require 1 == bool(stor3[address(msg.sender)])
    if block.timestamp < startTime:
        require 0 > arg2
    else:
        require block.timestamp - startTime <= block.timestamp
        require (block.timestamp - startTime / 300) + 1 > arg2
    if not stor16[arg2][address(arg1)]:
        if uint256(dailyTotals[arg2].field_0):
            require uint256(dailyTotals[arg2].field_0) == dailyTotals[arg2].field_0
            require uint256(userBuys[arg2][address(arg1)]) == uint128(userBuys[arg2][address(arg1)])
            if not arg2:
                require uint256(createFirstRound) == uint128(stor8)
                require 10^18 * uint128(stor8) / 10^18 == uint128(stor8)
                require (10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[arg2].field_1) >= 10^18 * uint128(stor8)
                require dailyTotals[arg2].field_0
                require (10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0 == uint128((10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0)
                if uint128((10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0) <= 600000 * 10^18:
                    if not uint128(userBuys[arg2][address(arg1)]):
                        stor16[arg2][address(arg1)] = 1
                        require ext_code.size(ONOAddress)
                        call ONOAddress.0x3452f51d with:
                             gas gas_remaining - 710 wei
                            args address(arg1), 0
                        require ext_call.success
                        emit LogClaim(arg2, address(arg1), 0);
                    else:
                        require uint128(userBuys[arg2][address(arg1)])
                        require uint128((10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0) * uint128(userBuys[arg2][address(arg1)]) / uint128(userBuys[arg2][address(arg1)]) == uint128((10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0)
                        require (uint128((10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0) * uint128(userBuys[arg2][address(arg1)])) + 5 * 10^17 >= uint128((10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0) * uint128(userBuys[arg2][address(arg1)])
                        require (uint128((10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0) * uint128(userBuys[arg2][address(arg1)])) + 5 * 10^17 / 10^18 == uint128((uint128((10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0) * uint128(userBuys[arg2][address(arg1)])) + 5 * 10^17 / 10^18)
                        stor16[arg2][address(arg1)] = 1
                        require ext_code.size(ONOAddress)
                        call ONOAddress.0x3452f51d with:
                             gas gas_remaining - 710 wei
                            args address(arg1), uint128((uint128((10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0) * uint128(userBuys[arg2][address(arg1)])) + 5 * 10^17 / 10^18)
                        require ext_call.success
                        emit LogClaim(arg2, address(arg1), uint128((uint128((10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0) * uint128(userBuys[arg2][address(arg1)])) + 5 * 10^17 / 10^18));
                else:
                    if not uint128(userBuys[arg2][address(arg1)]):
                        stor16[arg2][address(arg1)] = 1
                        require ext_code.size(ONOAddress)
                        call ONOAddress.0x3452f51d with:
                             gas gas_remaining - 710 wei
                            args address(arg1), 0
                        require ext_call.success
                        emit LogClaim(arg2, address(arg1), 0);
                    else:
                        require uint128(userBuys[arg2][address(arg1)])
                        require 600000 * 10^18 * uint128(userBuys[arg2][address(arg1)]) / uint128(userBuys[arg2][address(arg1)]) == 600000 * 10^18
                        require (600000 * 10^18 * uint128(userBuys[arg2][address(arg1)])) + 5 * 10^17 >= 600000 * 10^18 * uint128(userBuys[arg2][address(arg1)])
                        require (600000 * 10^18 * uint128(userBuys[arg2][address(arg1)])) + 5 * 10^17 / 10^18 == uint128((600000 * 10^18 * uint128(userBuys[arg2][address(arg1)])) + 5 * 10^17 / 10^18)
                        stor16[arg2][address(arg1)] = 1
                        require ext_code.size(ONOAddress)
                        call ONOAddress.0x3452f51d with:
                             gas gas_remaining - 710 wei
                            args address(arg1), uint128((600000 * 10^18 * uint128(userBuys[arg2][address(arg1)])) + 5 * 10^17 / 10^18)
                        require ext_call.success
                        emit LogClaim(arg2, address(arg1), uint128((600000 * 10^18 * uint128(userBuys[arg2][address(arg1)])) + 5 * 10^17 / 10^18));
            else:
                require uint256(createPerRound) == uint128(stor11)
                require 10^18 * uint128(stor11) / 10^18 == uint128(stor11)
                require (10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[arg2].field_1) >= 10^18 * uint128(stor11)
                require dailyTotals[arg2].field_0
                require (10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0 == uint128((10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0)
                if uint128((10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0) <= 600000 * 10^18:
                    if not uint128(userBuys[arg2][address(arg1)]):
                        stor16[arg2][address(arg1)] = 1
                        require ext_code.size(ONOAddress)
                        call ONOAddress.0x3452f51d with:
                             gas gas_remaining - 710 wei
                            args address(arg1), 0
                        require ext_call.success
                        emit LogClaim(arg2, address(arg1), 0);
                    else:
                        require uint128(userBuys[arg2][address(arg1)])
                        require uint128((10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0) * uint128(userBuys[arg2][address(arg1)]) / uint128(userBuys[arg2][address(arg1)]) == uint128((10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0)
                        require (uint128((10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0) * uint128(userBuys[arg2][address(arg1)])) + 5 * 10^17 >= uint128((10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0) * uint128(userBuys[arg2][address(arg1)])
                        require (uint128((10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0) * uint128(userBuys[arg2][address(arg1)])) + 5 * 10^17 / 10^18 == uint128((uint128((10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0) * uint128(userBuys[arg2][address(arg1)])) + 5 * 10^17 / 10^18)
                        stor16[arg2][address(arg1)] = 1
                        require ext_code.size(ONOAddress)
                        call ONOAddress.0x3452f51d with:
                             gas gas_remaining - 710 wei
                            args address(arg1), uint128((uint128((10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0) * uint128(userBuys[arg2][address(arg1)])) + 5 * 10^17 / 10^18)
                        require ext_call.success
                        emit LogClaim(arg2, address(arg1), uint128((uint128((10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0) * uint128(userBuys[arg2][address(arg1)])) + 5 * 10^17 / 10^18));
                else:
                    if not uint128(userBuys[arg2][address(arg1)]):
                        stor16[arg2][address(arg1)] = 1
                        require ext_code.size(ONOAddress)
                        call ONOAddress.0x3452f51d with:
                             gas gas_remaining - 710 wei
                            args address(arg1), 0
                        require ext_call.success
                        emit LogClaim(arg2, address(arg1), 0);
                    else:
                        require uint128(userBuys[arg2][address(arg1)])
                        require 600000 * 10^18 * uint128(userBuys[arg2][address(arg1)]) / uint128(userBuys[arg2][address(arg1)]) == 600000 * 10^18
                        require (600000 * 10^18 * uint128(userBuys[arg2][address(arg1)])) + 5 * 10^17 >= 600000 * 10^18 * uint128(userBuys[arg2][address(arg1)])
                        require (600000 * 10^18 * uint128(userBuys[arg2][address(arg1)])) + 5 * 10^17 / 10^18 == uint128((600000 * 10^18 * uint128(userBuys[arg2][address(arg1)])) + 5 * 10^17 / 10^18)
                        stor16[arg2][address(arg1)] = 1
                        require ext_code.size(ONOAddress)
                        call ONOAddress.0x3452f51d with:
                             gas gas_remaining - 710 wei
                            args address(arg1), uint128((600000 * 10^18 * uint128(userBuys[arg2][address(arg1)])) + 5 * 10^17 / 10^18)
                        require ext_call.success
                        emit LogClaim(arg2, address(arg1), uint128((600000 * 10^18 * uint128(userBuys[arg2][address(arg1)])) + 5 * 10^17 / 10^18));
}

function claim(uint256 arg1) {
    require 1 == bool(stor3[address(msg.sender)])
    if block.timestamp < startTime:
        require 0 > arg1
    else:
        require block.timestamp - startTime <= block.timestamp
        require (block.timestamp - startTime / 300) + 1 > arg1
    if not stor16[arg1][address(msg.sender)]:
        if uint256(dailyTotals[arg1].field_0):
            require uint256(dailyTotals[arg1].field_0) == dailyTotals[arg1].field_0
            require uint256(userBuys[arg1][address(msg.sender)]) == uint128(userBuys[arg1][address(msg.sender)])
            if not arg1:
                require uint256(createFirstRound) == uint128(stor8)
                require 10^18 * uint128(stor8) / 10^18 == uint128(stor8)
                require (10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[arg1].field_1) >= 10^18 * uint128(stor8)
                require dailyTotals[arg1].field_0
                require (10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[arg1].field_1) / dailyTotals[arg1].field_0 == uint128((10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[arg1].field_1) / dailyTotals[arg1].field_0)
                if uint128((10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[arg1].field_1) / dailyTotals[arg1].field_0) <= 600000 * 10^18:
                    if not uint128(userBuys[arg1][address(msg.sender)]):
                        stor16[arg1][address(msg.sender)] = 1
                        require ext_code.size(ONOAddress)
                        call ONOAddress.0x3452f51d with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 0
                        require ext_call.success
                        emit LogClaim(arg1, msg.sender, 0);
                    else:
                        require uint128(userBuys[arg1][address(msg.sender)])
                        require uint128((10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[arg1].field_1) / dailyTotals[arg1].field_0) * uint128(userBuys[arg1][address(msg.sender)]) / uint128(userBuys[arg1][address(msg.sender)]) == uint128((10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[arg1].field_1) / dailyTotals[arg1].field_0)
                        require (uint128((10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[arg1].field_1) / dailyTotals[arg1].field_0) * uint128(userBuys[arg1][address(msg.sender)])) + 5 * 10^17 >= uint128((10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[arg1].field_1) / dailyTotals[arg1].field_0) * uint128(userBuys[arg1][address(msg.sender)])
                        require (uint128((10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[arg1].field_1) / dailyTotals[arg1].field_0) * uint128(userBuys[arg1][address(msg.sender)])) + 5 * 10^17 / 10^18 == uint128((uint128((10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[arg1].field_1) / dailyTotals[arg1].field_0) * uint128(userBuys[arg1][address(msg.sender)])) + 5 * 10^17 / 10^18)
                        stor16[arg1][address(msg.sender)] = 1
                        require ext_code.size(ONOAddress)
                        call ONOAddress.0x3452f51d with:
                             gas gas_remaining - 710 wei
                            args msg.sender, uint128((uint128((10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[arg1].field_1) / dailyTotals[arg1].field_0) * uint128(userBuys[arg1][address(msg.sender)])) + 5 * 10^17 / 10^18)
                        require ext_call.success
                        emit LogClaim(arg1, msg.sender, uint128((uint128((10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[arg1].field_1) / dailyTotals[arg1].field_0) * uint128(userBuys[arg1][address(msg.sender)])) + 5 * 10^17 / 10^18));
                else:
                    if not uint128(userBuys[arg1][address(msg.sender)]):
                        stor16[arg1][address(msg.sender)] = 1
                        require ext_code.size(ONOAddress)
                        call ONOAddress.0x3452f51d with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 0
                        require ext_call.success
                        emit LogClaim(arg1, msg.sender, 0);
                    else:
                        require uint128(userBuys[arg1][address(msg.sender)])
                        require 600000 * 10^18 * uint128(userBuys[arg1][address(msg.sender)]) / uint128(userBuys[arg1][address(msg.sender)]) == 600000 * 10^18
                        require (600000 * 10^18 * uint128(userBuys[arg1][address(msg.sender)])) + 5 * 10^17 >= 600000 * 10^18 * uint128(userBuys[arg1][address(msg.sender)])
                        require (600000 * 10^18 * uint128(userBuys[arg1][address(msg.sender)])) + 5 * 10^17 / 10^18 == uint128((600000 * 10^18 * uint128(userBuys[arg1][address(msg.sender)])) + 5 * 10^17 / 10^18)
                        stor16[arg1][address(msg.sender)] = 1
                        require ext_code.size(ONOAddress)
                        call ONOAddress.0x3452f51d with:
                             gas gas_remaining - 710 wei
                            args msg.sender, uint128((600000 * 10^18 * uint128(userBuys[arg1][address(msg.sender)])) + 5 * 10^17 / 10^18)
                        require ext_call.success
                        emit LogClaim(arg1, msg.sender, uint128((600000 * 10^18 * uint128(userBuys[arg1][address(msg.sender)])) + 5 * 10^17 / 10^18));
            else:
                require uint256(createPerRound) == uint128(stor11)
                require 10^18 * uint128(stor11) / 10^18 == uint128(stor11)
                require (10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[arg1].field_1) >= 10^18 * uint128(stor11)
                require dailyTotals[arg1].field_0
                require (10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[arg1].field_1) / dailyTotals[arg1].field_0 == uint128((10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[arg1].field_1) / dailyTotals[arg1].field_0)
                if uint128((10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[arg1].field_1) / dailyTotals[arg1].field_0) <= 600000 * 10^18:
                    if not uint128(userBuys[arg1][address(msg.sender)]):
                        stor16[arg1][address(msg.sender)] = 1
                        require ext_code.size(ONOAddress)
                        call ONOAddress.0x3452f51d with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 0
                        require ext_call.success
                        emit LogClaim(arg1, msg.sender, 0);
                    else:
                        require uint128(userBuys[arg1][address(msg.sender)])
                        require uint128((10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[arg1].field_1) / dailyTotals[arg1].field_0) * uint128(userBuys[arg1][address(msg.sender)]) / uint128(userBuys[arg1][address(msg.sender)]) == uint128((10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[arg1].field_1) / dailyTotals[arg1].field_0)
                        require (uint128((10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[arg1].field_1) / dailyTotals[arg1].field_0) * uint128(userBuys[arg1][address(msg.sender)])) + 5 * 10^17 >= uint128((10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[arg1].field_1) / dailyTotals[arg1].field_0) * uint128(userBuys[arg1][address(msg.sender)])
                        require (uint128((10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[arg1].field_1) / dailyTotals[arg1].field_0) * uint128(userBuys[arg1][address(msg.sender)])) + 5 * 10^17 / 10^18 == uint128((uint128((10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[arg1].field_1) / dailyTotals[arg1].field_0) * uint128(userBuys[arg1][address(msg.sender)])) + 5 * 10^17 / 10^18)
                        stor16[arg1][address(msg.sender)] = 1
                        require ext_code.size(ONOAddress)
                        call ONOAddress.0x3452f51d with:
                             gas gas_remaining - 710 wei
                            args msg.sender, uint128((uint128((10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[arg1].field_1) / dailyTotals[arg1].field_0) * uint128(userBuys[arg1][address(msg.sender)])) + 5 * 10^17 / 10^18)
                        require ext_call.success
                        emit LogClaim(arg1, msg.sender, uint128((uint128((10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[arg1].field_1) / dailyTotals[arg1].field_0) * uint128(userBuys[arg1][address(msg.sender)])) + 5 * 10^17 / 10^18));
                else:
                    if not uint128(userBuys[arg1][address(msg.sender)]):
                        stor16[arg1][address(msg.sender)] = 1
                        require ext_code.size(ONOAddress)
                        call ONOAddress.0x3452f51d with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 0
                        require ext_call.success
                        emit LogClaim(arg1, msg.sender, 0);
                    else:
                        require uint128(userBuys[arg1][address(msg.sender)])
                        require 600000 * 10^18 * uint128(userBuys[arg1][address(msg.sender)]) / uint128(userBuys[arg1][address(msg.sender)]) == 600000 * 10^18
                        require (600000 * 10^18 * uint128(userBuys[arg1][address(msg.sender)])) + 5 * 10^17 >= 600000 * 10^18 * uint128(userBuys[arg1][address(msg.sender)])
                        require (600000 * 10^18 * uint128(userBuys[arg1][address(msg.sender)])) + 5 * 10^17 / 10^18 == uint128((600000 * 10^18 * uint128(userBuys[arg1][address(msg.sender)])) + 5 * 10^17 / 10^18)
                        stor16[arg1][address(msg.sender)] = 1
                        require ext_code.size(ONOAddress)
                        call ONOAddress.0x3452f51d with:
                             gas gas_remaining - 710 wei
                            args msg.sender, uint128((600000 * 10^18 * uint128(userBuys[arg1][address(msg.sender)])) + 5 * 10^17 / 10^18)
                        require ext_call.success
                        emit LogClaim(arg1, msg.sender, uint128((600000 * 10^18 * uint128(userBuys[arg1][address(msg.sender)])) + 5 * 10^17 / 10^18));
}

function claimAll() payable {
    mem[64] = 96
    require not msg.value
    if block.timestamp < startTime:
        if var56005 >= 0:
    else:
        require block.timestamp - startTime <= block.timestamp
        if var56005 >= (block.timestamp - startTime / 300) + 1:
    require 1 == bool(stor3[address(msg.sender)])
    if block.timestamp < startTime:
        require 0 > var56005
    else:
        require block.timestamp - startTime <= block.timestamp
        require (block.timestamp - startTime / 300) + 1 > var56005
    mem[0] = msg.sender
    mem[32] = sha3(var56005, 16)
    if not stor16[var56005][address(msg.sender)]:
        mem[0] = var56005
        mem[32] = 14
        if uint256(dailyTotals[var56005].field_0):
            require uint256(dailyTotals[var56005].field_0) == dailyTotals[var56005].field_0
            require uint256(userBuys[var56005][address(msg.sender)]) == uint128(userBuys[var56005][address(msg.sender)])
            if not var56005:
                require uint256(createFirstRound) == uint128(stor8)
                require 10^18 * uint128(stor8) / 10^18 == uint128(stor8)
                require (10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[var56005].field_1) >= 10^18 * uint128(stor8)
                require dailyTotals[var56005].field_0
                require (10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[var56005].field_1) / dailyTotals[var56005].field_0 == uint128((10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[var56005].field_1) / dailyTotals[var56005].field_0)
                if uint128((10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[var56005].field_1) / dailyTotals[var56005].field_0) <= 600000 * 10^18:
                    if not uint128(userBuys[var56005][address(msg.sender)]):
                        mem[0] = msg.sender
                        mem[32] = sha3(var56005, 16)
                        stor16[var56005][address(msg.sender)] = 1
                        require ext_code.size(ONOAddress)
                        call ONOAddress.0x3452f51d with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 0
                        require ext_call.success
                        mem[96] = var56005
                        mem[128] = msg.sender
                        mem[160] = 0
                        emit LogClaim(var56005, msg.sender, 0);
                    else:
                        require uint128(userBuys[var56005][address(msg.sender)])
                        require uint128((10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[var56005].field_1) / dailyTotals[var56005].field_0) * uint128(userBuys[var56005][address(msg.sender)]) / uint128(userBuys[var56005][address(msg.sender)]) == uint128((10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[var56005].field_1) / dailyTotals[var56005].field_0)
                        require (uint128((10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[var56005].field_1) / dailyTotals[var56005].field_0) * uint128(userBuys[var56005][address(msg.sender)])) + 5 * 10^17 >= uint128((10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[var56005].field_1) / dailyTotals[var56005].field_0) * uint128(userBuys[var56005][address(msg.sender)])
                        require (uint128((10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[var56005].field_1) / dailyTotals[var56005].field_0) * uint128(userBuys[var56005][address(msg.sender)])) + 5 * 10^17 / 10^18 == uint128((uint128((10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[var56005].field_1) / dailyTotals[var56005].field_0) * uint128(userBuys[var56005][address(msg.sender)])) + 5 * 10^17 / 10^18)
                        mem[0] = msg.sender
                        mem[32] = sha3(var56005, 16)
                        stor16[var56005][address(msg.sender)] = 1
                        require ext_code.size(ONOAddress)
                        call ONOAddress.0x3452f51d with:
                             gas gas_remaining - 710 wei
                            args msg.sender, uint128((uint128((10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[var56005].field_1) / dailyTotals[var56005].field_0) * uint128(userBuys[var56005][address(msg.sender)])) + 5 * 10^17 / 10^18)
                        require ext_call.success
                        mem[96] = var56005
                        mem[128] = msg.sender
                        mem[160] = uint128((uint128((10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[var56005].field_1) / dailyTotals[var56005].field_0) * uint128(userBuys[var56005][address(msg.sender)])) + 5 * 10^17 / 10^18)
                        emit LogClaim(var56005, msg.sender, uint128((uint128((10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[var56005].field_1) / dailyTotals[var56005].field_0) * uint128(userBuys[var56005][address(msg.sender)])) + 5 * 10^17 / 10^18));
                else:
                    if not uint128(userBuys[var56005][address(msg.sender)]):
                        mem[0] = msg.sender
                        mem[32] = sha3(var56005, 16)
                        stor16[var56005][address(msg.sender)] = 1
                        require ext_code.size(ONOAddress)
                        call ONOAddress.0x3452f51d with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 0
                        require ext_call.success
                        mem[96] = var56005
                        mem[128] = msg.sender
                        mem[160] = 0
                        emit LogClaim(var56005, msg.sender, 0);
                    else:
                        require uint128(userBuys[var56005][address(msg.sender)])
                        require 600000 * 10^18 * uint128(userBuys[var56005][address(msg.sender)]) / uint128(userBuys[var56005][address(msg.sender)]) == 600000 * 10^18
                        require (600000 * 10^18 * uint128(userBuys[var56005][address(msg.sender)])) + 5 * 10^17 >= 600000 * 10^18 * uint128(userBuys[var56005][address(msg.sender)])
                        require (600000 * 10^18 * uint128(userBuys[var56005][address(msg.sender)])) + 5 * 10^17 / 10^18 == uint128((600000 * 10^18 * uint128(userBuys[var56005][address(msg.sender)])) + 5 * 10^17 / 10^18)
                        mem[0] = msg.sender
                        mem[32] = sha3(var56005, 16)
                        stor16[var56005][address(msg.sender)] = 1
                        require ext_code.size(ONOAddress)
                        call ONOAddress.0x3452f51d with:
                             gas gas_remaining - 710 wei
                            args msg.sender, uint128((600000 * 10^18 * uint128(userBuys[var56005][address(msg.sender)])) + 5 * 10^17 / 10^18)
                        require ext_call.success
                        mem[96] = var56005
                        mem[128] = msg.sender
                        mem[160] = uint128((600000 * 10^18 * uint128(userBuys[var56005][address(msg.sender)])) + 5 * 10^17 / 10^18)
                        emit LogClaim(var56005, msg.sender, uint128((600000 * 10^18 * uint128(userBuys[var56005][address(msg.sender)])) + 5 * 10^17 / 10^18));
            else:
                require uint256(createPerRound) == uint128(stor11)
                require 10^18 * uint128(stor11) / 10^18 == uint128(stor11)
                require (10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[var56005].field_1) >= 10^18 * uint128(stor11)
                require dailyTotals[var56005].field_0
                require (10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[var56005].field_1) / dailyTotals[var56005].field_0 == uint128((10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[var56005].field_1) / dailyTotals[var56005].field_0)
                if uint128((10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[var56005].field_1) / dailyTotals[var56005].field_0) <= 600000 * 10^18:
                    if not uint128(userBuys[var56005][address(msg.sender)]):
                        mem[0] = msg.sender
                        mem[32] = sha3(var56005, 16)
                        stor16[var56005][address(msg.sender)] = 1
                        require ext_code.size(ONOAddress)
                        call ONOAddress.0x3452f51d with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 0
                        require ext_call.success
                        mem[96] = var56005
                        mem[128] = msg.sender
                        mem[160] = 0
                        emit LogClaim(var56005, msg.sender, 0);
                    else:
                        require uint128(userBuys[var56005][address(msg.sender)])
                        require uint128((10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[var56005].field_1) / dailyTotals[var56005].field_0) * uint128(userBuys[var56005][address(msg.sender)]) / uint128(userBuys[var56005][address(msg.sender)]) == uint128((10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[var56005].field_1) / dailyTotals[var56005].field_0)
                        require (uint128((10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[var56005].field_1) / dailyTotals[var56005].field_0) * uint128(userBuys[var56005][address(msg.sender)])) + 5 * 10^17 >= uint128((10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[var56005].field_1) / dailyTotals[var56005].field_0) * uint128(userBuys[var56005][address(msg.sender)])
                        require (uint128((10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[var56005].field_1) / dailyTotals[var56005].field_0) * uint128(userBuys[var56005][address(msg.sender)])) + 5 * 10^17 / 10^18 == uint128((uint128((10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[var56005].field_1) / dailyTotals[var56005].field_0) * uint128(userBuys[var56005][address(msg.sender)])) + 5 * 10^17 / 10^18)
                        mem[0] = msg.sender
                        mem[32] = sha3(var56005, 16)
                        stor16[var56005][address(msg.sender)] = 1
                        require ext_code.size(ONOAddress)
                        call ONOAddress.0x3452f51d with:
                             gas gas_remaining - 710 wei
                            args msg.sender, uint128((uint128((10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[var56005].field_1) / dailyTotals[var56005].field_0) * uint128(userBuys[var56005][address(msg.sender)])) + 5 * 10^17 / 10^18)
                        require ext_call.success
                        mem[96] = var56005
                        mem[128] = msg.sender
                        mem[160] = uint128((uint128((10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[var56005].field_1) / dailyTotals[var56005].field_0) * uint128(userBuys[var56005][address(msg.sender)])) + 5 * 10^17 / 10^18)
                        emit LogClaim(var56005, msg.sender, uint128((uint128((10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[var56005].field_1) / dailyTotals[var56005].field_0) * uint128(userBuys[var56005][address(msg.sender)])) + 5 * 10^17 / 10^18));
                else:
                    if not uint128(userBuys[var56005][address(msg.sender)]):
                        mem[0] = msg.sender
                        mem[32] = sha3(var56005, 16)
                        stor16[var56005][address(msg.sender)] = 1
                        require ext_code.size(ONOAddress)
                        call ONOAddress.0x3452f51d with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 0
                        require ext_call.success
                        mem[96] = var56005
                        mem[128] = msg.sender
                        mem[160] = 0
                        emit LogClaim(var56005, msg.sender, 0);
                    else:
                        require uint128(userBuys[var56005][address(msg.sender)])
                        require 600000 * 10^18 * uint128(userBuys[var56005][address(msg.sender)]) / uint128(userBuys[var56005][address(msg.sender)]) == 600000 * 10^18
                        require (600000 * 10^18 * uint128(userBuys[var56005][address(msg.sender)])) + 5 * 10^17 >= 600000 * 10^18 * uint128(userBuys[var56005][address(msg.sender)])
                        require (600000 * 10^18 * uint128(userBuys[var56005][address(msg.sender)])) + 5 * 10^17 / 10^18 == uint128((600000 * 10^18 * uint128(userBuys[var56005][address(msg.sender)])) + 5 * 10^17 / 10^18)
                        mem[0] = msg.sender
                        mem[32] = sha3(var56005, 16)
                        stor16[var56005][address(msg.sender)] = 1
                        require ext_code.size(ONOAddress)
                        call ONOAddress.0x3452f51d with:
                             gas gas_remaining - 710 wei
                            args msg.sender, uint128((600000 * 10^18 * uint128(userBuys[var56005][address(msg.sender)])) + 5 * 10^17 / 10^18)
                        require ext_call.success
                        mem[96] = var56005
                        mem[128] = msg.sender
                        mem[160] = uint128((600000 * 10^18 * uint128(userBuys[var56005][address(msg.sender)])) + 5 * 10^17 / 10^18)
                        emit LogClaim(var56005, msg.sender, uint128((600000 * 10^18 * uint128(userBuys[var56005][address(msg.sender)])) + 5 * 10^17 / 10^18));
    var56005 = var56005 + 1
    continue 
}

function claimAddresses(address[] arg1, uint256 arg2) {
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require 1 == bool(stor3[address(msg.sender)])
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _164 = mem[(32 * idx) + 128]
        require 1 == bool(stor3[address(msg.sender)])
        if block.timestamp < startTime:
            require 0 > arg2
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = sha3(arg2, 16)
            if not stor16[arg2][address(mem[(32 * idx) + 128])]:
                mem[0] = arg2
                mem[32] = 14
                if uint256(dailyTotals[arg2].field_0):
                    require uint256(dailyTotals[arg2].field_0) == dailyTotals[arg2].field_0
                    _171 = sha3(address(mem[(32 * idx) + 128]), sha3(arg2, 15))
                    require uint256(userBuys[arg2][address(mem[(32 * idx) + 128])]) == uint128(userBuys[arg2][address(mem[(32 * idx) + 128])])
                    if not arg2:
                        require uint256(createFirstRound) == uint128(stor8)
                        require 10^18 * uint128(stor8) / 10^18 == uint128(stor8)
                        require (10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[arg2].field_1) >= 10^18 * uint128(stor8)
                        require dailyTotals[arg2].field_0
                        require (10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0 == uint128((10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0)
                        if uint128((10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0) <= 600000 * 10^18:
                            if not uint128(userBuys[arg2][address(mem[(32 * idx) + 128])]):
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = sha3(arg2, 16)
                                stor16[arg2][address(mem[(32 * idx) + 128])] = 1
                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                require ext_code.size(ONOAddress)
                                call ONOAddress.0x3452f51d with:
                                     gas gas_remaining - 710 wei
                                    args mem[mem[64] + 4], 0
                                require ext_call.success
                                mem[mem[64]] = arg2
                                mem[mem[64] + 32] = address(_164)
                                mem[mem[64] + 64] = 0
                                emit LogClaim(arg2, address(_164), 0);
                            else:
                                require uint128(userBuys[arg2][address(mem[(32 * idx) + 128])])
                                require uint128((10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0) * uint128(userBuys[arg2][address(mem[(32 * idx) + 128])]) / uint128(userBuys[arg2][address(mem[(32 * idx) + 128])]) == uint128((10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0)
                                require (uint128((10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0) * uint128(userBuys[arg2][address(mem[(32 * idx) + 128])])) + 5 * 10^17 >= uint128((10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0) * uint128(userBuys[arg2][address(mem[(32 * idx) + 128])])
                                require (uint128((10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0) * uint128(userBuys[arg2][address(mem[(32 * idx) + 128])])) + 5 * 10^17 / 10^18 == uint128((uint128((10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0) * uint128(userBuys[arg2][address(mem[(32 * idx) + 128])])) + 5 * 10^17 / 10^18)
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = sha3(arg2, 16)
                                stor16[arg2][address(mem[(32 * idx) + 128])] = 1
                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                require ext_code.size(ONOAddress)
                                call ONOAddress.0x3452f51d with:
                                     gas gas_remaining - 710 wei
                                    args mem[mem[64] + 4], (uint128((10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0) * stor[_171]) + 5 * 10^17 / 10^18 << 128
                                require ext_call.success
                                mem[mem[64]] = arg2
                                mem[mem[64] + 32] = address(_164)
                                mem[mem[64] + 64] = uint128((uint128((10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0) * stor[_171]) + 5 * 10^17 / 10^18)
                                emit LogClaim(arg2, address(_164), uint128((uint128((10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0) * stor[_171]) + 5 * 10^17 / 10^18));
                        else:
                            if not uint128(userBuys[arg2][address(mem[(32 * idx) + 128])]):
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = sha3(arg2, 16)
                                stor16[arg2][address(mem[(32 * idx) + 128])] = 1
                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                require ext_code.size(ONOAddress)
                                call ONOAddress.0x3452f51d with:
                                     gas gas_remaining - 710 wei
                                    args mem[mem[64] + 4], 0
                                require ext_call.success
                                mem[mem[64]] = arg2
                                mem[mem[64] + 32] = address(_164)
                                mem[mem[64] + 64] = 0
                                emit LogClaim(arg2, address(_164), 0);
                            else:
                                require uint128(userBuys[arg2][address(mem[(32 * idx) + 128])])
                                require 600000 * 10^18 * uint128(userBuys[arg2][address(mem[(32 * idx) + 128])]) / uint128(userBuys[arg2][address(mem[(32 * idx) + 128])]) == 600000 * 10^18
                                require (600000 * 10^18 * uint128(userBuys[arg2][address(mem[(32 * idx) + 128])])) + 5 * 10^17 >= 600000 * 10^18 * uint128(userBuys[arg2][address(mem[(32 * idx) + 128])])
                                require (600000 * 10^18 * uint128(userBuys[arg2][address(mem[(32 * idx) + 128])])) + 5 * 10^17 / 10^18 == uint128((600000 * 10^18 * uint128(userBuys[arg2][address(mem[(32 * idx) + 128])])) + 5 * 10^17 / 10^18)
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = sha3(arg2, 16)
                                stor16[arg2][address(mem[(32 * idx) + 128])] = 1
                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                require ext_code.size(ONOAddress)
                                call ONOAddress.0x3452f51d with:
                                     gas gas_remaining - 710 wei
                                    args mem[mem[64] + 4], (600000 * 10^18 * stor[_171]) + 5 * 10^17 / 10^18 << 128
                                require ext_call.success
                                mem[mem[64]] = arg2
                                mem[mem[64] + 32] = address(_164)
                                mem[mem[64] + 64] = uint128((600000 * 10^18 * stor[_171]) + 5 * 10^17 / 10^18)
                                emit LogClaim(arg2, address(_164), uint128((600000 * 10^18 * stor[_171]) + 5 * 10^17 / 10^18));
                    else:
                        require uint256(createPerRound) == uint128(stor11)
                        require 10^18 * uint128(stor11) / 10^18 == uint128(stor11)
                        require (10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[arg2].field_1) >= 10^18 * uint128(stor11)
                        require dailyTotals[arg2].field_0
                        require (10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0 == uint128((10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0)
                        if uint128((10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0) <= 600000 * 10^18:
                            if not uint128(userBuys[arg2][address(mem[(32 * idx) + 128])]):
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = sha3(arg2, 16)
                                stor16[arg2][address(mem[(32 * idx) + 128])] = 1
                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                require ext_code.size(ONOAddress)
                                call ONOAddress.0x3452f51d with:
                                     gas gas_remaining - 710 wei
                                    args mem[mem[64] + 4], 0
                                require ext_call.success
                                mem[mem[64]] = arg2
                                mem[mem[64] + 32] = address(_164)
                                mem[mem[64] + 64] = 0
                                emit LogClaim(arg2, address(_164), 0);
                            else:
                                require uint128(userBuys[arg2][address(mem[(32 * idx) + 128])])
                                require uint128((10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0) * uint128(userBuys[arg2][address(mem[(32 * idx) + 128])]) / uint128(userBuys[arg2][address(mem[(32 * idx) + 128])]) == uint128((10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0)
                                require (uint128((10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0) * uint128(userBuys[arg2][address(mem[(32 * idx) + 128])])) + 5 * 10^17 >= uint128((10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0) * uint128(userBuys[arg2][address(mem[(32 * idx) + 128])])
                                require (uint128((10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0) * uint128(userBuys[arg2][address(mem[(32 * idx) + 128])])) + 5 * 10^17 / 10^18 == uint128((uint128((10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0) * uint128(userBuys[arg2][address(mem[(32 * idx) + 128])])) + 5 * 10^17 / 10^18)
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = sha3(arg2, 16)
                                stor16[arg2][address(mem[(32 * idx) + 128])] = 1
                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                require ext_code.size(ONOAddress)
                                call ONOAddress.0x3452f51d with:
                                     gas gas_remaining - 710 wei
                                    args mem[mem[64] + 4], (uint128((10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0) * stor[_171]) + 5 * 10^17 / 10^18 << 128
                                require ext_call.success
                                mem[mem[64]] = arg2
                                mem[mem[64] + 32] = address(_164)
                                mem[mem[64] + 64] = uint128((uint128((10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0) * stor[_171]) + 5 * 10^17 / 10^18)
                                emit LogClaim(arg2, address(_164), uint128((uint128((10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0) * stor[_171]) + 5 * 10^17 / 10^18));
                        else:
                            if not uint128(userBuys[arg2][address(mem[(32 * idx) + 128])]):
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = sha3(arg2, 16)
                                stor16[arg2][address(mem[(32 * idx) + 128])] = 1
                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                require ext_code.size(ONOAddress)
                                call ONOAddress.0x3452f51d with:
                                     gas gas_remaining - 710 wei
                                    args mem[mem[64] + 4], 0
                                require ext_call.success
                                mem[mem[64]] = arg2
                                mem[mem[64] + 32] = address(_164)
                                mem[mem[64] + 64] = 0
                                emit LogClaim(arg2, address(_164), 0);
                            else:
                                require uint128(userBuys[arg2][address(mem[(32 * idx) + 128])])
                                require 600000 * 10^18 * uint128(userBuys[arg2][address(mem[(32 * idx) + 128])]) / uint128(userBuys[arg2][address(mem[(32 * idx) + 128])]) == 600000 * 10^18
                                require (600000 * 10^18 * uint128(userBuys[arg2][address(mem[(32 * idx) + 128])])) + 5 * 10^17 >= 600000 * 10^18 * uint128(userBuys[arg2][address(mem[(32 * idx) + 128])])
                                require (600000 * 10^18 * uint128(userBuys[arg2][address(mem[(32 * idx) + 128])])) + 5 * 10^17 / 10^18 == uint128((600000 * 10^18 * uint128(userBuys[arg2][address(mem[(32 * idx) + 128])])) + 5 * 10^17 / 10^18)
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = sha3(arg2, 16)
                                stor16[arg2][address(mem[(32 * idx) + 128])] = 1
                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                require ext_code.size(ONOAddress)
                                call ONOAddress.0x3452f51d with:
                                     gas gas_remaining - 710 wei
                                    args mem[mem[64] + 4], (600000 * 10^18 * stor[_171]) + 5 * 10^17 / 10^18 << 128
                                require ext_call.success
                                mem[mem[64]] = arg2
                                mem[mem[64] + 32] = address(_164)
                                mem[mem[64] + 64] = uint128((600000 * 10^18 * stor[_171]) + 5 * 10^17 / 10^18)
                                emit LogClaim(arg2, address(_164), uint128((600000 * 10^18 * stor[_171]) + 5 * 10^17 / 10^18));
        else:
            require block.timestamp - startTime <= block.timestamp
            require (block.timestamp - startTime / 300) + 1 > arg2
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = sha3(arg2, 16)
            if not stor16[arg2][address(mem[(32 * idx) + 128])]:
                mem[0] = arg2
                mem[32] = 14
                if uint256(dailyTotals[arg2].field_0):
                    require uint256(dailyTotals[arg2].field_0) == dailyTotals[arg2].field_0
                    _177 = sha3(address(mem[(32 * idx) + 128]), sha3(arg2, 15))
                    require uint256(userBuys[arg2][address(mem[(32 * idx) + 128])]) == uint128(userBuys[arg2][address(mem[(32 * idx) + 128])])
                    if not arg2:
                        require uint256(createFirstRound) == uint128(stor8)
                        require 10^18 * uint128(stor8) / 10^18 == uint128(stor8)
                        require (10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[arg2].field_1) >= 10^18 * uint128(stor8)
                        require dailyTotals[arg2].field_0
                        require (10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0 == uint128((10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0)
                        if uint128((10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0) <= 600000 * 10^18:
                            if not uint128(userBuys[arg2][address(mem[(32 * idx) + 128])]):
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = sha3(arg2, 16)
                                stor16[arg2][address(mem[(32 * idx) + 128])] = 1
                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                require ext_code.size(ONOAddress)
                                call ONOAddress.0x3452f51d with:
                                     gas gas_remaining - 710 wei
                                    args mem[mem[64] + 4], 0
                                require ext_call.success
                                mem[mem[64]] = arg2
                                mem[mem[64] + 32] = address(_164)
                                mem[mem[64] + 64] = 0
                                emit LogClaim(arg2, address(_164), 0);
                            else:
                                require uint128(userBuys[arg2][address(mem[(32 * idx) + 128])])
                                require uint128((10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0) * uint128(userBuys[arg2][address(mem[(32 * idx) + 128])]) / uint128(userBuys[arg2][address(mem[(32 * idx) + 128])]) == uint128((10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0)
                                require (uint128((10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0) * uint128(userBuys[arg2][address(mem[(32 * idx) + 128])])) + 5 * 10^17 >= uint128((10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0) * uint128(userBuys[arg2][address(mem[(32 * idx) + 128])])
                                require (uint128((10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0) * uint128(userBuys[arg2][address(mem[(32 * idx) + 128])])) + 5 * 10^17 / 10^18 == uint128((uint128((10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0) * uint128(userBuys[arg2][address(mem[(32 * idx) + 128])])) + 5 * 10^17 / 10^18)
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = sha3(arg2, 16)
                                stor16[arg2][address(mem[(32 * idx) + 128])] = 1
                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                require ext_code.size(ONOAddress)
                                call ONOAddress.0x3452f51d with:
                                     gas gas_remaining - 710 wei
                                    args mem[mem[64] + 4], (uint128((10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0) * stor[_177]) + 5 * 10^17 / 10^18 << 128
                                require ext_call.success
                                mem[mem[64]] = arg2
                                mem[mem[64] + 32] = address(_164)
                                mem[mem[64] + 64] = uint128((uint128((10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0) * stor[_177]) + 5 * 10^17 / 10^18)
                                emit LogClaim(arg2, address(_164), uint128((uint128((10^18 * uint128(stor8)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0) * stor[_177]) + 5 * 10^17 / 10^18));
                        else:
                            if not uint128(userBuys[arg2][address(mem[(32 * idx) + 128])]):
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = sha3(arg2, 16)
                                stor16[arg2][address(mem[(32 * idx) + 128])] = 1
                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                require ext_code.size(ONOAddress)
                                call ONOAddress.0x3452f51d with:
                                     gas gas_remaining - 710 wei
                                    args mem[mem[64] + 4], 0
                                require ext_call.success
                                mem[mem[64]] = arg2
                                mem[mem[64] + 32] = address(_164)
                                mem[mem[64] + 64] = 0
                                emit LogClaim(arg2, address(_164), 0);
                            else:
                                require uint128(userBuys[arg2][address(mem[(32 * idx) + 128])])
                                require 600000 * 10^18 * uint128(userBuys[arg2][address(mem[(32 * idx) + 128])]) / uint128(userBuys[arg2][address(mem[(32 * idx) + 128])]) == 600000 * 10^18
                                require (600000 * 10^18 * uint128(userBuys[arg2][address(mem[(32 * idx) + 128])])) + 5 * 10^17 >= 600000 * 10^18 * uint128(userBuys[arg2][address(mem[(32 * idx) + 128])])
                                require (600000 * 10^18 * uint128(userBuys[arg2][address(mem[(32 * idx) + 128])])) + 5 * 10^17 / 10^18 == uint128((600000 * 10^18 * uint128(userBuys[arg2][address(mem[(32 * idx) + 128])])) + 5 * 10^17 / 10^18)
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = sha3(arg2, 16)
                                stor16[arg2][address(mem[(32 * idx) + 128])] = 1
                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                require ext_code.size(ONOAddress)
                                call ONOAddress.0x3452f51d with:
                                     gas gas_remaining - 710 wei
                                    args mem[mem[64] + 4], (600000 * 10^18 * stor[_177]) + 5 * 10^17 / 10^18 << 128
                                require ext_call.success
                                mem[mem[64]] = arg2
                                mem[mem[64] + 32] = address(_164)
                                mem[mem[64] + 64] = uint128((600000 * 10^18 * stor[_177]) + 5 * 10^17 / 10^18)
                                emit LogClaim(arg2, address(_164), uint128((600000 * 10^18 * stor[_177]) + 5 * 10^17 / 10^18));
                    else:
                        require uint256(createPerRound) == uint128(stor11)
                        require 10^18 * uint128(stor11) / 10^18 == uint128(stor11)
                        require (10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[arg2].field_1) >= 10^18 * uint128(stor11)
                        require dailyTotals[arg2].field_0
                        require (10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0 == uint128((10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0)
                        if uint128((10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0) <= 600000 * 10^18:
                            if not uint128(userBuys[arg2][address(mem[(32 * idx) + 128])]):
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = sha3(arg2, 16)
                                stor16[arg2][address(mem[(32 * idx) + 128])] = 1
                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                require ext_code.size(ONOAddress)
                                call ONOAddress.0x3452f51d with:
                                     gas gas_remaining - 710 wei
                                    args mem[mem[64] + 4], 0
                                require ext_call.success
                                mem[mem[64]] = arg2
                                mem[mem[64] + 32] = address(_164)
                                mem[mem[64] + 64] = 0
                                emit LogClaim(arg2, address(_164), 0);
                            else:
                                require uint128(userBuys[arg2][address(mem[(32 * idx) + 128])])
                                require uint128((10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0) * uint128(userBuys[arg2][address(mem[(32 * idx) + 128])]) / uint128(userBuys[arg2][address(mem[(32 * idx) + 128])]) == uint128((10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0)
                                require (uint128((10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0) * uint128(userBuys[arg2][address(mem[(32 * idx) + 128])])) + 5 * 10^17 >= uint128((10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0) * uint128(userBuys[arg2][address(mem[(32 * idx) + 128])])
                                require (uint128((10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0) * uint128(userBuys[arg2][address(mem[(32 * idx) + 128])])) + 5 * 10^17 / 10^18 == uint128((uint128((10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0) * uint128(userBuys[arg2][address(mem[(32 * idx) + 128])])) + 5 * 10^17 / 10^18)
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = sha3(arg2, 16)
                                stor16[arg2][address(mem[(32 * idx) + 128])] = 1
                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                require ext_code.size(ONOAddress)
                                call ONOAddress.0x3452f51d with:
                                     gas gas_remaining - 710 wei
                                    args mem[mem[64] + 4], (uint128((10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0) * stor[_177]) + 5 * 10^17 / 10^18 << 128
                                require ext_call.success
                                mem[mem[64]] = arg2
                                mem[mem[64] + 32] = address(_164)
                                mem[mem[64] + 64] = uint128((uint128((10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0) * stor[_177]) + 5 * 10^17 / 10^18)
                                emit LogClaim(arg2, address(_164), uint128((uint128((10^18 * uint128(stor11)) + Mask(127, 0, dailyTotals[arg2].field_1) / dailyTotals[arg2].field_0) * stor[_177]) + 5 * 10^17 / 10^18));
                        else:
                            if not uint128(userBuys[arg2][address(mem[(32 * idx) + 128])]):
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = sha3(arg2, 16)
                                stor16[arg2][address(mem[(32 * idx) + 128])] = 1
                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                require ext_code.size(ONOAddress)
                                call ONOAddress.0x3452f51d with:
                                     gas gas_remaining - 710 wei
                                    args mem[mem[64] + 4], 0
                                require ext_call.success
                                mem[mem[64]] = arg2
                                mem[mem[64] + 32] = address(_164)
                                mem[mem[64] + 64] = 0
                                emit LogClaim(arg2, address(_164), 0);
                            else:
                                require uint128(userBuys[arg2][address(mem[(32 * idx) + 128])])
                                require 600000 * 10^18 * uint128(userBuys[arg2][address(mem[(32 * idx) + 128])]) / uint128(userBuys[arg2][address(mem[(32 * idx) + 128])]) == 600000 * 10^18
                                require (600000 * 10^18 * uint128(userBuys[arg2][address(mem[(32 * idx) + 128])])) + 5 * 10^17 >= 600000 * 10^18 * uint128(userBuys[arg2][address(mem[(32 * idx) + 128])])
                                require (600000 * 10^18 * uint128(userBuys[arg2][address(mem[(32 * idx) + 128])])) + 5 * 10^17 / 10^18 == uint128((600000 * 10^18 * uint128(userBuys[arg2][address(mem[(32 * idx) + 128])])) + 5 * 10^17 / 10^18)
                                mem[0] = mem[(32 * idx) + 140 len 20]
                                mem[32] = sha3(arg2, 16)
                                stor16[arg2][address(mem[(32 * idx) + 128])] = 1
                                mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                                require ext_code.size(ONOAddress)
                                call ONOAddress.0x3452f51d with:
                                     gas gas_remaining - 710 wei
                                    args mem[mem[64] + 4], (600000 * 10^18 * stor[_177]) + 5 * 10^17 / 10^18 << 128
                                require ext_call.success
                                mem[mem[64]] = arg2
                                mem[mem[64] + 32] = address(_164)
                                mem[mem[64] + 64] = uint128((600000 * 10^18 * stor[_177]) + 5 * 10^17 / 10^18)
                                emit LogClaim(arg2, address(_164), uint128((600000 * 10^18 * stor[_177]) + 5 * 10^17 / 10^18));
        idx = idx + 1
        continue 
}



}
