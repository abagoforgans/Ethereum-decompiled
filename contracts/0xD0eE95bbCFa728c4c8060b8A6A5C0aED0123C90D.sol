contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
mapping of address stor1;
mapping of uint8 stor2;
mapping of uint256 stor3;
uint256 stor5;
array of uint256 stor6;
array of uint256 stor7;
array of uint256 stor9;
array of uint256 stor10;
uint256 stor11;
uint8 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint8 stor18;
address stor18; offset 8

function _fallback() payable {
    stor5 = 0
    stor17 = 2
    require not msg.value
    mem[96 len -4537] = code.data[5522 len -4537]
    mem[64] = -4441
    stor9[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor10[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor11 = mem[160]
    stor0[address(msg.sender)] = mem[160]
    stor6[] = Array(len=mem[mem[256] + 96], data=mem[mem[256] + 128 len mem[mem[256] + 96]])
    stor7[] = Array(len=mem[mem[288] + 96], data=mem[mem[288] + 128 len mem[mem[288] + 96]])
    stor12 = uint8(bool(mem[224]))
    address(stor18.field_8) = msg.sender
    stor13 = mem[320]
    stor14 = mem[352]
    stor15 = mem[384]
    if mem[384]:
        stor16 = block.timestamp
        # nil
    else:
        uint8(stor18.field_0) = uint8(bool(mem[416]))
        if not stor2[Mask(160, 8, bool(mem[416])) >> 8 or address(stor18.field_8)]:
            stor3[Mask(160, 8, bool(mem[416])) >> 8 or address(stor18.field_8)] = stor5
            stor5++
            stor1[stor5] = Mask(160, 8, bool(mem[416])) >> 8
            stor1[stor5] = address(stor18.field_8)
            stor2[Mask(160, 8, bool(mem[416])) >> 8 or address(stor18.field_8)] = 1
        return code.data[985 len 4537]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of address addresses;
mapping of uint8 stor2;
mapping of uint256 addressIndex;
mapping of uint256 allowance;
uint256 numberOfAddress;
array of uint256 physicalString;
array of uint256 cryptoString;
uint8 stor8;
array of uint256 name;
array of uint256 symbol;
uint256 totalSupply;
uint8 canMintBurn;
uint256 txnTax;
uint256 holdingTax;
uint256 holdingTaxInterval;
uint256 lastHoldingTax;
uint256 holdingTaxDecimals;
uint8 stor18;
address owner; offset 8

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function canMintBurn() {
    return bool(canMintBurn)
}

function numberOfAddress() {
    return numberOfAddress
}

function lastHoldingTax() {
    return lastHoldingTax
}

function physicalString() {
    return physicalString[0 len physicalString.length]
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function txnTax() {
    return txnTax
}

function isSecured() {
    return bool(stor8)
}

function owner() {
    return owner
}

function addressIndex(address arg1) {
    return addressIndex[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function addressExists(address arg1) {
    return bool(stor2[arg1])
}

function holdingTaxInterval() {
    return holdingTaxInterval
}

function cryptoString() {
    return cryptoString[0 len cryptoString.length]
}

function holdingTaxDecimals() {
    return holdingTaxDecimals
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function holdingTax() {
    return holdingTax
}

function addresses(uint256 arg1) {
    return addresses[arg1]
}

function isPrivate() {
    return bool(uint8(stor18.field_0))
}

function _fallback() payable {
    revert
}

function getSecond(uint256 arg1) {
    return uint8(arg1 % 60)
}

function getMinute(uint256 arg1) {
    return uint8(arg1 / 60 % 60)
}

function getHour(uint256 arg1) {
    return uint8(arg1 / 60 / 60 % 24)
}

function getWeekday(uint256 arg1) {
    return uint8((arg1 / 24 * 3600) + 4 % 7)
}

function changeTxnTax(uint256 arg1) {
    require owner == msg.sender
    txnTax = arg1
}

function changeHoldingTax(uint256 arg1) {
    require owner == msg.sender
    holdingTax = arg1
}

function changeHoldingTaxInterval(uint256 arg1) {
    require owner == msg.sender
    holdingTaxInterval = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function removeAddressManual(address arg1) {
    require owner == msg.sender
    require uint8(stor18.field_0)
    if stor2[address(arg1)]:
        numberOfAddress--
        addresses[stor3[address(arg1)]] = 0
        stor2[address(arg1)] = 0
}

function burn(uint256 arg1) {
    if canMintBurn:
        if owner == msg.sender:
            require balanceOf[address(msg.sender)] >= arg1
            balanceOf[address(msg.sender)] -= arg1
            totalSupply -= arg1
            emit Transfer(arg1, msg.sender, 0);
}

function addAddressManual(address arg1) {
    require owner == msg.sender
    require uint8(stor18.field_0)
    if not stor2[address(arg1)]:
        addressIndex[address(arg1)] = numberOfAddress
        numberOfAddress++
        addresses[stor5] = arg1
        stor2[address(arg1)] = 1
}

function mint(uint256 arg1) {
    if canMintBurn:
        if owner == msg.sender:
            require balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += arg1
            totalSupply += arg1
            emit Transfer(arg1, 0, msg.sender);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    if owner != arg1:
        if owner != arg2:
            if txnTax:
                call owner with:
                   value txnTax wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    return 0
    if uint8(stor18.field_0):
        if owner != arg1:
            if not stor2[address(arg2)]:
                return 0
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function chargeHoldingTax() {
    if 0 == holdingTaxInterval:
    s = 0
    idx = block.timestamp - lastHoldingTax
    while idx >= 168 * 24 * 3600 * holdingTaxInterval:
        t = 0
        s = 0
        while s < numberOfAddress:
            mem[0] = s
            mem[32] = 1
            if owner == addresses[s]:
                t = t
                s = s + 1
                continue 
            require 10^holdingTaxDecimals
            mem[32] = 0
            balanceOf[stor1[s]] -= holdingTax * balanceOf[stor1[s]] / 10^holdingTaxDecimals / 10^holdingTaxDecimals
            mem[0] = owner
            balanceOf[address(stor18.field_8)] += holdingTax * balanceOf[stor1[s]] / 10^holdingTaxDecimals / 10^holdingTaxDecimals
            t = holdingTax * balanceOf[stor1[s]] / 10^holdingTaxDecimals / 10^holdingTaxDecimals
            s = s + 1
            continue 
        s = 1
        idx = idx - (168 * 24 * 3600 * holdingTaxInterval)
        continue 
    if not s:
    lastHoldingTax = block.timestamp
    # nil
}

function transfer(address arg1, uint256 arg2) payable {
    if 0 == holdingTaxInterval:
        if balanceOf[address(msg.sender)] < arg2:
            return 0
        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
            return 0
        if owner != msg.sender:
            if owner != arg1:
                if txnTax:
                    call owner with:
                       value txnTax wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        return 0
        if uint8(stor18.field_0):
            if owner != msg.sender:
                if not stor2[address(arg1)]:
                    return 0
        balanceOf[address(msg.sender)] -= arg2
        balanceOf[arg1] += arg2
        if not stor2[address(arg1)]:
            addressIndex[address(arg1)] = numberOfAddress
            numberOfAddress++
            addresses[stor5] = arg1
            stor2[address(arg1)] = 1
        emit Transfer(arg2, msg.sender, arg1);
        return 1
    s = 0
    idx = block.timestamp - lastHoldingTax
    while idx >= 168 * 24 * 3600 * holdingTaxInterval:
        t = 0
        s = 0
        while s < numberOfAddress:
            mem[0] = s
            mem[32] = 1
            if owner == addresses[s]:
                t = t
                s = s + 1
                continue 
            require 10^holdingTaxDecimals
            mem[32] = 0
            balanceOf[stor1[s]] -= holdingTax * balanceOf[stor1[s]] / 10^holdingTaxDecimals / 10^holdingTaxDecimals
            mem[0] = owner
            balanceOf[address(stor18.field_8)] += holdingTax * balanceOf[stor1[s]] / 10^holdingTaxDecimals / 10^holdingTaxDecimals
            t = holdingTax * balanceOf[stor1[s]] / 10^holdingTaxDecimals / 10^holdingTaxDecimals
            s = s + 1
            continue 
        s = 1
        idx = idx - (168 * 24 * 3600 * holdingTaxInterval)
        continue 
    if s:
        lastHoldingTax = block.timestamp
        # nil
    else:
        if balanceOf[address(msg.sender)] < arg2:
            return 0
        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
            return 0
        if owner != msg.sender:
            if owner != arg1:
                if txnTax:
                    call owner with:
                       value txnTax wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        return 0
        if uint8(stor18.field_0):
            if owner != msg.sender:
                if not stor2[address(arg1)]:
                    return 0
        balanceOf[address(msg.sender)] -= arg2
        balanceOf[arg1] += arg2
        if not stor2[address(arg1)]:
            addressIndex[address(arg1)] = numberOfAddress
            numberOfAddress++
            addresses[stor5] = arg1
            stor2[address(arg1)] = 1
        emit Transfer(arg2, msg.sender, arg1);
        return 1
}



}
