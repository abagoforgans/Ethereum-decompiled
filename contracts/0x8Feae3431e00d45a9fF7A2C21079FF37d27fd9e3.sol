contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
mapping of address stor1;
mapping of uint8 stor2;
mapping of uint256 stor3;
uint256 stor4;
array of uint256 stor5;
array of uint256 stor6;
array of uint256 stor8;
array of uint256 stor9;
uint256 stor10;
uint8 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint8 stor17;
address stor17; offset 8

function _fallback() payable {
    stor4 = 0
    stor16 = 2
    require not msg.value
    mem[96 len -4553] = code.data[5597 len -4553]
    mem[64] = -4457
    stor8[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor9[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor10 = mem[160]
    stor0[address(msg.sender)] = mem[160]
    stor5[] = Array(len=mem[mem[256] + 96], data=mem[mem[256] + 128 len mem[mem[256] + 96]])
    stor6[] = Array(len=mem[mem[288] + 96], data=mem[mem[288] + 128 len mem[mem[288] + 96]])
    stor11 = uint8(bool(mem[224]))
    address(stor17.field_8) = msg.sender
    stor12 = mem[320]
    stor13 = mem[352]
    stor14 = mem[384]
    if mem[384]:
        stor15 = block.timestamp
        # nil
    else:
        uint8(stor17.field_0) = uint8(bool(mem[416]))
        if not stor2[Mask(160, 8, bool(mem[416])) >> 8 or address(stor17.field_8)]:
            stor3[Mask(160, 8, bool(mem[416])) >> 8 or address(stor17.field_8)] = stor4
            stor4++
            stor1[stor4] = Mask(160, 8, bool(mem[416])) >> 8
            stor1[stor4] = address(stor17.field_8)
            stor2[Mask(160, 8, bool(mem[416])) >> 8 or address(stor17.field_8)] = 1
        return code.data[1044 len 4553]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of address addresses;
mapping of uint8 stor2;
mapping of uint256 addressIndex;
uint256 numberOfAddress;
array of uint256 physicalString;
array of uint256 cryptoString;
uint8 stor7;
array of uint256 name;
array of uint256 symbol;
uint256 totalSupply;
uint8 stor11;
uint256 txnTax;
uint256 holdingTax;
uint256 holdingTaxInterval;
uint256 lastHoldingTax;
uint256 holdingTaxDecimals;
uint8 isPrivate;
address owner; offset 8

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function canMintBurn() {
    return bool(stor11)
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
    return bool(stor7)
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

function holdingTax() {
    return holdingTax
}

function addresses(uint256 arg1) {
    return addresses[arg1]
}

function isPrivate() {
    return bool(isPrivate)
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

function removeAddressManual(address arg1) {
    require owner == msg.sender
    require isPrivate
    if stor2[address(arg1)]:
        numberOfAddress--
        addresses[stor3[address(arg1)]] = 0
        stor2[address(arg1)] = 0
}

function burn(uint256 arg1) {
    if stor11:
        if owner == msg.sender:
            require balanceOf[address(msg.sender)] >= arg1
            balanceOf[address(msg.sender)] -= arg1
            totalSupply -= arg1
            emit Transfer(arg1, msg.sender, 0);
}

function addAddressManual(address arg1) {
    require owner == msg.sender
    require isPrivate
    if not stor2[address(arg1)]:
        addressIndex[address(arg1)] = numberOfAddress
        numberOfAddress++
        addresses[stor4] = arg1
        stor2[address(arg1)] = 1
}

function mint(uint256 arg1) {
    if stor11:
        if owner == msg.sender:
            require balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += arg1
            totalSupply += arg1
            emit Transfer(arg1, 0, msg.sender);
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
            balanceOf[stor17] += holdingTax * balanceOf[stor1[s]] / 10^holdingTaxDecimals / 10^holdingTaxDecimals
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
        require balanceOf[address(msg.sender)] >= arg2
        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
        if owner != msg.sender:
            if owner != arg1:
                if txnTax:
                    call owner with:
                       value txnTax wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
        if isPrivate:
            if owner != msg.sender:
                require stor2[address(arg1)]
        balanceOf[address(msg.sender)] -= arg2
        balanceOf[arg1] += arg2
        if not stor2[address(arg1)]:
            addressIndex[address(arg1)] = numberOfAddress
            numberOfAddress++
            addresses[stor4] = arg1
            stor2[address(arg1)] = 1
        emit Transfer(arg2, msg.sender, arg1);
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
            balanceOf[stor17] += holdingTax * balanceOf[stor1[s]] / 10^holdingTaxDecimals / 10^holdingTaxDecimals
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
        require balanceOf[address(msg.sender)] >= arg2
        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
        if owner != msg.sender:
            if owner != arg1:
                if txnTax:
                    call owner with:
                       value txnTax wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
        if isPrivate:
            if owner != msg.sender:
                require stor2[address(arg1)]
        balanceOf[address(msg.sender)] -= arg2
        balanceOf[arg1] += arg2
        if not stor2[address(arg1)]:
            addressIndex[address(arg1)] = numberOfAddress
            numberOfAddress++
            addresses[stor4] = arg1
            stor2[address(arg1)] = 1
        emit Transfer(arg2, msg.sender, arg1);
}



}
