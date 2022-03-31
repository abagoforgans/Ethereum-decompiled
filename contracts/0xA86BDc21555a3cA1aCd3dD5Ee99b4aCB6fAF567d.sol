contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
mapping of address stor1;
uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;
array of uint256 stor6;
array of uint256 stor7;
uint256 stor8;
uint8 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
address stor15;

function _fallback() payable {
    stor2 = 0
    stor14 = 2
    require not msg.value
    mem[96 len -3903] = code.data[4921 len -3903]
    mem[64] = -3807
    stor6[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor7[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor8 = mem[160]
    stor0[address(msg.sender)] = mem[160]
    stor3[] = Array(len=mem[mem[256] + 96], data=mem[mem[256] + 128 len mem[mem[256] + 96]])
    stor4[] = Array(len=mem[mem[288] + 96], data=mem[mem[288] + 128 len mem[mem[288] + 96]])
    stor9 = uint8(bool(mem[224]))
    stor15 = msg.sender
    stor10 = mem[320]
    stor11 = mem[352]
    stor12 = mem[384]
    if mem[384]:
        stor13 = block.timestamp
        # nil
    else:
        idx = 0
        s = 0
        while idx < stor2:
            mem[0] = idx
            mem[32] = 1
            if stor1[idx] != stor15:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = 1
            continue 
        if not s:
            stor2++
            stor1[stor2] = stor15
        return code.data[1018 len 3903]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of address addresses;
uint256 numberOfAddress;
array of uint256 physicalString;
array of uint256 cryptoString;
uint8 isSecured;
array of uint256 name;
array of uint256 symbol;
uint256 totalSupply;
uint8 canMintBurn;
uint256 txnTax;
uint256 holdingTax;
uint256 holdingTaxInterval;
uint256 lastHoldingTax;
uint256 holdingTaxDecimals;
address owner;

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
    return bool(isSecured)
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
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

function burn(uint256 arg1) {
    if canMintBurn:
        if owner == msg.sender:
            require balanceOf[address(msg.sender)] >= arg1
            balanceOf[address(msg.sender)] -= arg1
            totalSupply -= arg1
            emit Transfer(arg1, msg.sender, 0);
}

function mint(uint256 arg1) {
    if canMintBurn:
        if owner == msg.sender:
            require balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += arg1
            totalSupply += arg1
            emit Transfer(arg1, 0, msg.sender);
}

function addAddress(address arg1) {
    idx = 0
    s = 0
    while idx < numberOfAddress:
        mem[0] = idx
        mem[32] = 1
        if addresses[idx] != arg1:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if not s:
        numberOfAddress++
        addresses[stor2] = arg1
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
            balanceOf[stor15] += holdingTax * balanceOf[stor1[s]] / 10^holdingTaxDecimals / 10^holdingTaxDecimals
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
        balanceOf[address(msg.sender)] -= arg2
        balanceOf[arg1] += arg2
        idx = 0
        s = 0
        while idx < numberOfAddress:
            mem[0] = idx
            mem[32] = 1
            if addresses[idx] != arg1:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = 1
            continue 
        if not s:
            numberOfAddress++
            addresses[stor2] = arg1
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
            balanceOf[stor15] += holdingTax * balanceOf[stor1[s]] / 10^holdingTaxDecimals / 10^holdingTaxDecimals
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
        balanceOf[address(msg.sender)] -= arg2
        balanceOf[arg1] += arg2
        idx = 0
        s = 0
        while idx < numberOfAddress:
            mem[0] = idx
            mem[32] = 1
            if addresses[idx] != arg1:
                idx = idx + 1
                s = s
                continue 
            idx = idx + 1
            s = 1
            continue 
        if not s:
            numberOfAddress++
            addresses[stor2] = arg1
        emit Transfer(arg2, msg.sender, arg1);
}



}
