contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
address selfAddress;
address adminAddress;
array of address stor4;
uint8 decimals;
uint256 relativeDateSave;
uint256 totalFunds;
uint256 totalSupply;
uint256 pricePerEther;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint8 dAppReady;
uint8 isFrozen; offset 8
uint8 splitInService; offset 16
uint8 stor14; offset 24
uint8 stor14; offset 32
uint256 stor14; offset 16
uint256 stor14;
array of uint8 stor15;
mapping of uint256 balanceOf;
mapping of uint256 checkMonthlyLimit;
mapping of uint8 stor18;
mapping of uint8 stor19;
mapping of uint256 allowance;
mapping of uint256 stor21;
uint256 storB202;

function name() {
    return name[0 len name.length]
}

function splitInService() {
    return bool(splitInService)
}

function selfAddress() {
    return selfAddress
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function isFrozen() {
    return bool(isFrozen)
}

function checkMonthlyLimit(address arg1) {
    return checkMonthlyLimit[address(arg1)]
}

function pricePerEther() {
    return pricePerEther
}

function relativeDateSave() {
    return relativeDateSave
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function totalFunds() {
    return totalFunds
}

function DAppReady() {
    return bool(dAppReady)
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
  stop
}

function emergencyThaw() {
    require adminAddress == msg.sender
    isFrozen = 0
}

function emergencyFreeze() {
    require adminAddress == msg.sender
    isFrozen = 1
}

function loginUser(address arg1) {
    require dAppReady
    require adminAddress == msg.sender
    stor19[address(arg1)] = 1
}

function logoutUser(address arg1) {
    require dAppReady
    require adminAddress == msg.sender
    stor19[address(arg1)] = 0
}

function emergencySplitToggle() {
    require adminAddress == msg.sender
    Mask(240, 0, stor14.field_16) = Mask(240, 0, not splitInService)
}

function setPriceOfEther(uint256 arg1, string arg2) {
    require adminAddress == msg.sender
    pricePerEther = arg1
    emit CurrentTLSNProof(Array(len=arg2.length, data=arg2[all]), selfAddress);
}

function checkCooldown(address arg1, address arg2) {
    if stor21[address(arg1)][address(arg2)] <= block.timestamp:
        return 0
    return (stor21[address(arg1)][address(arg2)] - block.timestamp)
}

function getPricePerToken() {
    if balanceOf[stor2] > 2 * 10^14:
        return 50
    if balanceOf[stor2] > 15 * 10^13:
        return 200
    if balanceOf[stor2] <= 10^14:
        return 550
    return 400
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    stor21[address(msg.sender)][address(arg1)] = block.timestamp + 1800
    emit 0xef8c5be1: arg2, msg.sender, arg1
}

function approve(address arg1, uint256 arg2, uint256 arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    stor21[address(msg.sender)][address(arg1)] = arg3 + block.timestamp
    emit 0xef8c5be1: arg2, msg.sender, arg1
}

function isDAppReady() {
    require adminAddress == msg.sender
    idx = 0
    s = 0
    while idx < 4:
        if not stor15[uint8(idx)].field_0:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    uint256(stor14.field_0) = uint8(s) >= 2 or Mask(248, 8, uint256(stor14.field_0))
}

function claimTokens(address arg1) {
    require adminAddress == msg.sender
    require selfAddress != arg1
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args selfAddress
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args adminAddress, ext_call.return_data[0]
    require ext_call.success
}

function assureDAppIsReady() {
    if msg.sender == 0x166cb48973c2447daffa8efd3526da18076088de:
        uint8(stor15.length) = 1
    else:
        if msg.sender == 0x1ab13d2c1ac4303737981ce8b8bd5116c84c744d:
            stor15.length.field_8 = 1
        else:
            if msg.sender == 0xec5a48d6f11f8a981aa3d913da0a69194280cdbc:
                stor15.length.field_16 = 1
            else:
                require msg.sender == 0xe59cbd028f71447b804f31cf0fc41f0e5e13f4bf
                stor15.length.field_24 = 1
}

function alterBankBalance(address arg1, uint256 arg2, bool arg3) {
    require dAppReady
    require adminAddress == msg.sender
    if not arg3:
        require allowance[stor2][address(arg1)] - arg2 <= allowance[stor2][address(arg1)]
        allowance[stor2][address(arg1)] -= arg2
    else:
        if allowance[stor2][address(arg1)] + arg2 > allowance[stor2][address(arg1)]:
            allowance[stor2][address(arg1)] += arg2
        else:
            require allowance[stor2][address(arg1)] - arg2 <= allowance[stor2][address(arg1)]
            allowance[stor2][address(arg1)] -= arg2
    emit 0xef8c5be1: allowance[stor2][address(arg1)], selfAddress, arg1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not isFrozen
    require not stor19[address(arg2)]
    require stor21[address(arg1)][address(arg2)] <= block.timestamp
    if selfAddress == arg1:
        require checkMonthlyLimit[address(arg2)] - arg3 <= checkMonthlyLimit[address(arg2)]
        checkMonthlyLimit[address(arg2)] -= arg3
    balanceOf[address(arg2)] += arg3
    require balanceOf[arg1] - arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require allowance[address(arg1)][address(arg2)] - arg3 <= allowance[address(arg1)][address(arg2)]
    allowance[address(arg1)][address(arg2)] -= arg3
    if not stor18[address(arg2)]:
        stor4.length++
        if not stor4.length <= stor4.length + 1:
            idx = stor4.length + 1
            while stor4.length > idx:
                uint256(stor4[idx]) = 0
                idx = idx + 1
                continue 
        address(stor4[stor4.length]) = arg2
        checkMonthlyLimit[address(arg2)] = 5 * 10^12
        stor18[address(arg2)] = 1
    emit Transfer(arg3, arg1, arg2);
}

function ICOSplit() {
    require adminAddress == msg.sender
    require not uint8(stor14.field_24)
    if isFrozen:
        idx = stor12
        while idx < stor4.length:
            if gas_remaining < 240000:
                stor12 = idx
            require idx < stor4.length
            require stor10
            stor13 += balanceOf[address(stor4[idx])] * stor11 / stor10
            require idx < stor4.length
            require stor10
            require idx < stor4.length
            balanceOf[address(stor4[idx])] += balanceOf[address(stor4[idx])] * stor11 / stor10
            if idx == stor4.length - 1:
                isFrozen = 0
                balanceOf[stor2] -= stor13
                uint8(stor14.field_24) = 1
            require idx < stor4.length
            mem[0] = address(stor4[idx])
            mem[32] = 16
            require stor10
            mem[96] = balanceOf[address(stor4[idx])] / stor10 * stor11
            emit Transfer((balanceOf[address(stor4[idx])] / stor10 * stor11), selfAddress, address(stor4[idx]));
            idx = idx + 1
            continue 
    else:
        require -block.timestamp >= -12960000
        isFrozen = 1
        require balanceOf[stor2] > 5 * 10^13
        stor11 = 7 * balanceOf[stor2] - 5 * 10^13 / 10
        require -balanceOf[stor2] + 3 * 10^14 <= 3 * 10^14
        stor10 = -balanceOf[stor2] + 3 * 10^14
        stor12 = 0
        stor13 = 0
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor14.field_32)
    uint8(stor14.field_32) = 1
    require True and not isFrozen
    require balanceOf[address(msg.sender)] - arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    if selfAddress == arg1:
        balanceOf[stor2] += arg2
        emit Transfer(arg2, msg.sender, selfAddress);
        allowance[stor2][address(msg.sender)] += arg2
        emit 0xef8c5be1: allowance[stor2][address(msg.sender)], selfAddress, msg.sender
    else:
        balanceOf[arg1] += arg2
        if ext_code.size(arg1) <= 0:
            if not stor18[address(arg1)]:
                stor4.length++
                if not stor4.length <= stor4.length + 1:
                    idx = stor4.length + 1
                    while stor4.length > idx:
                        uint256(stor4[idx]) = 0
                        idx = idx + 1
                        continue 
                address(stor4[stor4.length]) = arg1
                checkMonthlyLimit[address(arg1)] = 5 * 10^12
                stor18[address(arg1)] = 1
        else:
            require ext_code.size(arg1)
            call arg1.0xc0ee0b8a with:
                 gas gas_remaining - 710 wei
                args msg.sender, arg2, 96, 0
            require ext_call.success
            if not stor18[address(arg1)]:
                stor4.length++
                if not stor4.length <= stor4.length + 1:
                    idx = stor4.length + 1
                    while stor4.length > idx:
                        uint256(stor4[idx]) = 0
                        idx = idx + 1
                        continue 
                address(stor4[stor4.length]) = arg1
                checkMonthlyLimit[address(arg1)] = 5 * 10^12
                stor18[address(arg1)] = 1
        emit Transfer(arg2, msg.sender, arg1);
    uint8(stor14.field_32) = 0
    return 1
}

function transfer(address arg1, uint256 arg2, bytes arg3) {
    require not uint8(stor14.field_32)
    uint8(stor14.field_32) = 1
    require True and not isFrozen
    require balanceOf[address(msg.sender)] - arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    if selfAddress == arg1:
        balanceOf[stor2] += arg2
        emit Transfer(arg2, msg.sender, selfAddress);
        allowance[stor2][address(msg.sender)] += arg2
        emit 0xef8c5be1: allowance[stor2][address(msg.sender)], selfAddress, msg.sender
    else:
        balanceOf[arg1] += arg2
        if ext_code.size(arg1) <= 0:
            if not stor18[address(arg1)]:
                stor4.length++
                if not stor4.length <= stor4.length + 1:
                    idx = stor4.length + 1
                    while stor4.length > idx:
                        uint256(stor4[idx]) = 0
                        idx = idx + 1
                        continue 
                address(stor4[stor4.length]) = arg1
                checkMonthlyLimit[address(arg1)] = 5 * 10^12
                stor18[address(arg1)] = 1
        else:
            require ext_code.size(arg1)
            call arg1.0xc0ee0b8a with:
                 gas gas_remaining - 710 wei
                args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
            require ext_call.success
            if not stor18[address(arg1)]:
                stor4.length++
                if not stor4.length <= stor4.length + 1:
                    idx = stor4.length + 1
                    while stor4.length > idx:
                        uint256(stor4[idx]) = 0
                        idx = idx + 1
                        continue 
                address(stor4[stor4.length]) = arg1
                checkMonthlyLimit[address(arg1)] = 5 * 10^12
                stor18[address(arg1)] = 1
        emit Transfer(arg2, msg.sender, arg1);
    uint8(stor14.field_32) = 0
    return 1
}

function buyTokensForAddress(address arg1) payable {
    totalFunds += msg.value
    require msg.value > 0
    require adminAddress != arg1
    require totalFunds / 10^18 * pricePerEther < 6 * 10^9
    if not stor18[address(arg1)]:
        stor4.length++
        if not stor4.length <= stor4.length + 1:
            idx = stor4.length + 1
            while stor4.length > idx:
                uint256(stor4[idx]) = 0
                idx = idx + 1
                continue 
        address(stor4[stor4.length]) = arg1
        checkMonthlyLimit[address(arg1)] = 5 * 10^12
        stor18[address(arg1)] = 1
    if balanceOf[stor2] > 2 * 10^14:
        require 10 * 10^6 * msg.value / 10^18 * pricePerEther / 50 <= 5 * 10^12
        balanceOf[stor2] -= 10 * 10^6 * msg.value / 10^18 * pricePerEther / 50
        require balanceOf[stor2] >= 5 * 10^13
        balanceOf[address(arg1)] += 10 * 10^6 * msg.value / 10^18 * pricePerEther / 50
        emit Transfer((10 * 10^6 * msg.value / 10^18 * pricePerEther / 50), selfAddress, arg1);
    else:
        if balanceOf[stor2] > 15 * 10^13:
            require 10 * 10^6 * msg.value / 10^18 * pricePerEther / 200 <= 5 * 10^12
            balanceOf[stor2] -= 10 * 10^6 * msg.value / 10^18 * pricePerEther / 200
            require balanceOf[stor2] >= 5 * 10^13
            balanceOf[address(arg1)] += 10 * 10^6 * msg.value / 10^18 * pricePerEther / 200
            emit Transfer((10 * 10^6 * msg.value / 10^18 * pricePerEther / 200), selfAddress, arg1);
        else:
            if balanceOf[stor2] <= 10^14:
                require 10 * 10^6 * msg.value / 10^18 * pricePerEther / 550 <= 5 * 10^12
                balanceOf[stor2] -= 10 * 10^6 * msg.value / 10^18 * pricePerEther / 550
                require balanceOf[stor2] >= 5 * 10^13
                balanceOf[address(arg1)] += 10 * 10^6 * msg.value / 10^18 * pricePerEther / 550
                emit Transfer((10 * 10^6 * msg.value / 10^18 * pricePerEther / 550), selfAddress, arg1);
            else:
                require 10 * 10^6 * msg.value / 10^18 * pricePerEther / 400 <= 5 * 10^12
                balanceOf[stor2] -= 10 * 10^6 * msg.value / 10^18 * pricePerEther / 400
                require balanceOf[stor2] >= 5 * 10^13
                balanceOf[address(arg1)] += 10 * 10^6 * msg.value / 10^18 * pricePerEther / 400
                emit Transfer((10 * 10^6 * msg.value / 10^18 * pricePerEther / 400), selfAddress, arg1);
    call 0x166cb48973c2447daffa8efd3526da18076088de with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function buyTokensForSelf() payable {
    totalFunds += msg.value
    require msg.value > 0
    require 0x166cb48973c2447daffa8efd3526da18076088de != msg.sender
    require totalFunds / 10^18 * pricePerEther < 6 * 10^9
    if not stor18[address(msg.sender)]:
        stor4.length++
        if not stor4.length <= stor4.length + 1:
            idx = stor4.length + 1
            while stor4.length > idx:
                uint256(stor4[idx]) = 0
                idx = idx + 1
                continue 
        address(stor4[stor4.length]) = msg.sender
        checkMonthlyLimit[address(msg.sender)] = 5 * 10^12
        stor18[address(msg.sender)] = 1
    if balanceOf[stor2] > 2 * 10^14:
        require 10 * 10^6 * msg.value / 10^18 * pricePerEther / 50 <= 5 * 10^12
        balanceOf[stor2] -= 10 * 10^6 * msg.value / 10^18 * pricePerEther / 50
        require balanceOf[stor2] >= 5 * 10^13
        balanceOf[address(msg.sender)] += 10 * 10^6 * msg.value / 10^18 * pricePerEther / 50
        emit Transfer((10 * 10^6 * msg.value / 10^18 * pricePerEther / 50), selfAddress, msg.sender);
    else:
        if balanceOf[stor2] > 15 * 10^13:
            require 10 * 10^6 * msg.value / 10^18 * pricePerEther / 200 <= 5 * 10^12
            balanceOf[stor2] -= 10 * 10^6 * msg.value / 10^18 * pricePerEther / 200
            require balanceOf[stor2] >= 5 * 10^13
            balanceOf[address(msg.sender)] += 10 * 10^6 * msg.value / 10^18 * pricePerEther / 200
            emit Transfer((10 * 10^6 * msg.value / 10^18 * pricePerEther / 200), selfAddress, msg.sender);
        else:
            if balanceOf[stor2] <= 10^14:
                require 10 * 10^6 * msg.value / 10^18 * pricePerEther / 550 <= 5 * 10^12
                balanceOf[stor2] -= 10 * 10^6 * msg.value / 10^18 * pricePerEther / 550
                require balanceOf[stor2] >= 5 * 10^13
                balanceOf[address(msg.sender)] += 10 * 10^6 * msg.value / 10^18 * pricePerEther / 550
                emit Transfer((10 * 10^6 * msg.value / 10^18 * pricePerEther / 550), selfAddress, msg.sender);
            else:
                require 10 * 10^6 * msg.value / 10^18 * pricePerEther / 400 <= 5 * 10^12
                balanceOf[stor2] -= 10 * 10^6 * msg.value / 10^18 * pricePerEther / 400
                require balanceOf[stor2] >= 5 * 10^13
                balanceOf[address(msg.sender)] += 10 * 10^6 * msg.value / 10^18 * pricePerEther / 400
                emit Transfer((10 * 10^6 * msg.value / 10^18 * pricePerEther / 400), selfAddress, msg.sender);
    call 0x166cb48973c2447daffa8efd3526da18076088de with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function splitProfits() {
    require splitInService
    if isFrozen:
        idx = stor12
        while idx < stor4.length:
            checkMonthlyLimit[address(stor4[idx])] = 5 * 10^12
            if gas_remaining < 240000:
                stor12 = idx
            require idx < stor4.length
            mem[0] = address(stor4[idx])
            mem[32] = sha3(selfAddress, 20)
            if not allowance[stor2][address(stor4[idx])]:
                if idx == stor4.length - 1:
                    isFrozen = 0
                    storB202 += stor11 / 22
                    mem[0] = selfAddress
                    mem[32] = 16
                    balanceOf[stor2] = balanceOf[stor2] - stor13 - (stor11 / 22)
            else:
                require idx < stor4.length
                mem[0] = address(stor4[idx])
                mem[32] = 16
                require allowance[stor2][address(stor4[idx])]
                if balanceOf[address(stor4[idx])] / allowance[stor2][address(stor4[idx])] < 19:
                    if idx == stor4.length - 1:
                        isFrozen = 0
                        storB202 += stor11 / 22
                        mem[0] = selfAddress
                        mem[32] = 16
                        balanceOf[stor2] = balanceOf[stor2] - stor13 - (stor11 / 22)
                else:
                    require idx < stor4.length
                    require stor10
                    stor13 += balanceOf[address(stor4[idx])] * stor11 / stor10
                    require idx < stor4.length
                    require stor10
                    require idx < stor4.length
                    balanceOf[address(stor4[idx])] += balanceOf[address(stor4[idx])] * stor11 / stor10
                    if idx == stor4.length - 1:
                        isFrozen = 0
                        storB202 += stor11 / 22
                        balanceOf[stor2] = balanceOf[stor2] - stor13 - (stor11 / 22)
                    require idx < stor4.length
                    mem[0] = address(stor4[idx])
                    mem[32] = 16
                    require stor10
                    mem[96] = balanceOf[address(stor4[idx])] / stor10 * stor11
                    emit Transfer((balanceOf[address(stor4[idx])] / stor10 * stor11), selfAddress, address(stor4[idx]));
            idx = idx + 1
            continue 
    else:
        require block.timestamp >= relativeDateSave
        isFrozen = 1
        require balanceOf[stor2] > 3 * 10^13
        relativeDateSave = block.timestamp + (720 * 24 * 3600)
        stor11 = 7 * balanceOf[stor2] - 3 * 10^13 / 10
        require -balanceOf[stor2] + 3 * 10^14 <= 3 * 10^14
        stor10 = -balanceOf[stor2] + 3 * 10^14
        stor12 = 0
        stor13 = 0
}



}
