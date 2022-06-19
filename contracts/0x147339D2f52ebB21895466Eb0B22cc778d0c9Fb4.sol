contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
array of address stor1;
mapping of uint8 stor57896044618658097711785492504343953926634992332820282019728792003956564819969;
mapping of uint256 addressIndex;
mapping of uint256 allowance;
uint256 numberOfAddress;
uint256 sub_a370d6d2;
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
uint8 isPrivate;
uint8 decimals; offset 8
array of uint256 sub_5f643358;
array of uint256 sub_ac8e482a;
array of uint256 sub_d7bd8d6c;
array of uint256 sub_626ecc13;
array of uint256 sub_7651bc92;
uint256 sub_2c59f188;
uint8 sub_ff3be796;
uint256 sub_cb4372d0;
uint256 sub_10ae4b0b;
address sub_8eabbf8cAddress;
address owner;

function name() {
    return name[0 len name.length]
}

function sub_10ae4b0b(?) {
    return sub_10ae4b0b
}

function totalSupply() {
    return totalSupply
}

function canMintBurn() {
    return bool(canMintBurn)
}

function sub_2c59f188(?) {
    return sub_2c59f188
}

function decimals() {
    return decimals
}

function numberOfAddress() {
    return numberOfAddress
}

function lastHoldingTax() {
    return lastHoldingTax
}

function sub_5f643358(?) {
    return sub_5f643358[0 len sub_5f643358.length]
}

function sub_626ecc13(?) {
    return sub_626ecc13[0 len sub_626ecc13.length]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[arg1]
}

function txnTax() {
    return txnTax
}

function sub_7651bc92(?) {
    return sub_7651bc92[0 len sub_7651bc92.length]
}

function isSecured() {
    return bool(isSecured)
}

function owner() {
    return owner
}

function sub_8eabbf8c(?) {
    return sub_8eabbf8cAddress
}

function addressIndex(address arg1) {
    require calldata.size - 4 >= 32
    return addressIndex[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_a370d6d2(?) {
    return sub_a370d6d2
}

function addressExists(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor8000[arg1])
}

function sub_ac8e482a(?) {
    return sub_ac8e482a[0 len sub_ac8e482a.length]
}

function holdingTaxInterval() {
    return holdingTaxInterval
}

function sub_cb4372d0(?) {
    return sub_cb4372d0
}

function holdingTaxDecimals() {
    return holdingTaxDecimals
}

function sub_d7bd8d6c(?) {
    return sub_d7bd8d6c[0 len sub_d7bd8d6c.length]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function holdingTax() {
    return holdingTax
}

function isPrivate() {
    return bool(isPrivate)
}

function sub_ff3be796(?) {
    return bool(sub_ff3be796)
}

function _fallback() payable {
    revert
}

function sub_ccb3c32f(?) {
    require calldata.size - 4 >= 32
    sub_2c59f188 = arg1
}

function getSecond(uint256 arg1) {
    require calldata.size - 4 >= 32
    return uint8(arg1 % 60)
}

function getMinute(uint256 arg1) {
    require calldata.size - 4 >= 32
    return uint8(arg1 / 60 % 60)
}

function getHour(uint256 arg1) {
    require calldata.size - 4 >= 32
    return uint8(arg1 / 60 / 60 % 24)
}

function getWeekday(uint256 arg1) {
    require calldata.size - 4 >= 32
    return uint8((arg1 / 24 * 3600) + 4 % 7)
}

function changeTxnTax(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    txnTax = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if msg.sender == owner:
        owner = arg1
}

function changeHoldingTax(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    holdingTax = arg1
}

function changeHoldingTaxInterval(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    holdingTaxInterval = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    if canMintBurn:
        if msg.sender == owner:
            require arg1 <= balanceOf[msg.sender]
            balanceOf[msg.sender] -= arg1
            totalSupply -= arg1
            emit 0xfeddf252: arg1, msg.sender, 0
}

function mint(uint256 arg1) {
    require calldata.size - 4 >= 32
    if canMintBurn:
        if msg.sender == owner:
            require balanceOf[msg.sender] + arg1 >= balanceOf[msg.sender]
            balanceOf[msg.sender] += arg1
            totalSupply += arg1
            emit 0xfeddf252: arg1, 0, msg.sender
}

function removeAddressManual(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require isPrivate
    if stor8000[address(arg1)]:
        numberOfAddress--
        require addressIndex[address(arg1)] < 0x8000000000000000000000000000000000000000000000000000000000000000
        stor1[stor8000[address(arg1)]] = 0
        stor8000[address(arg1)] = 0
}

function addAddressManual(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require isPrivate
    if not stor8000[address(arg1)]:
        addressIndex[address(arg1)] = numberOfAddress
        numberOfAddress++
        require numberOfAddress < 0x8000000000000000000000000000000000000000000000000000000000000000
        stor1[stor8000] = arg1
        stor8000[address(arg1)] = 1
}

function liquidate() {
    require msg.sender == owner
    sub_ff3be796 = 1
    require numberOfAddress
    sub_cb4372d0 = eth.balance(this.address) / numberOfAddress
    require ext_code.size(sub_8eabbf8cAddress)
    staticcall sub_8eabbf8cAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require numberOfAddress
    sub_10ae4b0b = ext_call.return_data[0] / numberOfAddress
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if owner != arg1:
        if owner != arg2:
            if txnTax:
                call owner with:
                   value txnTax wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    return 0
    if isPrivate:
        if owner != arg1:
            if not stor8000[address(arg2)]:
                return 0
    if arg3 > balanceOf[address(arg1)]:
        return 0
    if arg3 > allowance[address(arg1)][msg.sender]:
        return 0
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][msg.sender] -= arg3
    balanceOf[address(arg2)] += arg3
    emit 0xfeddf252: arg3, arg1, arg2
    return 1
}

function chargeHoldingTax() {
    if not holdingTaxInterval:
    s = 0
    idx = block.timestamp - lastHoldingTax
    while idx >= 168 * 24 * 3600 * holdingTaxInterval:
        s = 0
        while s < numberOfAddress:
            if stor1[s] != owner:
                require s < 0x8000000000000000000000000000000000000000000000000000000000000000
                require 10^holdingTaxDecimals
                require s < 0x8000000000000000000000000000000000000000000000000000000000000000
                balanceOf[stor1[s]] -= balanceOf[stor1[s]] * holdingTax / 10^holdingTaxDecimals / 10^holdingTaxDecimals
                mem[0] = owner
                mem[32] = 0
                balanceOf[stor8000] += balanceOf[stor1[s]] * holdingTax / 10^holdingTaxDecimals / 10^holdingTaxDecimals
            s = s + 1
            continue 
        s = 1
        idx = idx - (168 * 24 * 3600 * holdingTaxInterval)
        continue 
    if not s:
    lastHoldingTax = block.timestamp
    # nil
}

function sub_385cd9f6(?) {
    require msg.sender == owner
    idx = 0
    while idx < 10:
        if sub_a370d6d2 < numberOfAddress:
            require idx < 0x8000000000000000000000000000000000000000000000000000000000000000
            call stor1[idx] with:
               value sub_cb4372d0 wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                require idx < 0x8000000000000000000000000000000000000000000000000000000000000000
                mem[100] = stor1[idx]
                mem[132] = sub_10ae4b0b
                require ext_code.size(sub_8eabbf8cAddress)
                call sub_8eabbf8cAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor1[idx], sub_10ae4b0b
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    sub_a370d6d2++
        idx = idx + 1
        continue 
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not holdingTaxInterval:
        if arg2 > balanceOf[msg.sender]:
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
        if isPrivate:
            if owner != msg.sender:
                if not stor8000[address(arg1)]:
                    return 0
        balanceOf[msg.sender] -= arg2
        balanceOf[arg1] += arg2
        if not stor8000[address(arg1)]:
            addressIndex[address(arg1)] = numberOfAddress
            numberOfAddress++
            require numberOfAddress < 0x8000000000000000000000000000000000000000000000000000000000000000
            stor1[stor8000] = arg1
            stor8000[address(arg1)] = 1
        emit 0xfeddf252: arg2, msg.sender, arg1
        return 1
    s = 0
    idx = block.timestamp - lastHoldingTax
    while idx >= 168 * 24 * 3600 * holdingTaxInterval:
        s = 0
        while s < numberOfAddress:
            if stor1[s] != owner:
                require s < 0x8000000000000000000000000000000000000000000000000000000000000000
                require 10^holdingTaxDecimals
                require s < 0x8000000000000000000000000000000000000000000000000000000000000000
                balanceOf[stor1[s]] -= balanceOf[stor1[s]] * holdingTax / 10^holdingTaxDecimals / 10^holdingTaxDecimals
                mem[0] = owner
                mem[32] = 0
                balanceOf[stor8000] += balanceOf[stor1[s]] * holdingTax / 10^holdingTaxDecimals / 10^holdingTaxDecimals
            s = s + 1
            continue 
        s = 1
        idx = idx - (168 * 24 * 3600 * holdingTaxInterval)
        continue 
    if s:
        lastHoldingTax = block.timestamp
        # nil
    else:
        if arg2 > balanceOf[msg.sender]:
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
        if isPrivate:
            if owner != msg.sender:
                if not stor8000[address(arg1)]:
                    return 0
        balanceOf[msg.sender] -= arg2
        balanceOf[arg1] += arg2
        if not stor8000[address(arg1)]:
            addressIndex[address(arg1)] = numberOfAddress
            numberOfAddress++
            require numberOfAddress < 0x8000000000000000000000000000000000000000000000000000000000000000
            stor1[stor8000] = arg1
            stor8000[address(arg1)] = 1
        emit 0xfeddf252: arg2, msg.sender, arg1
        return 1
}

function sub_387f7f80(?) {
    require calldata.size - 4 >= 160
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg3.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len arg3.length] = arg3[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 192] = 0
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192] = arg4.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224 len arg4.length] = arg4[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 224] = 0
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224] = arg5.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 256 len arg5.length] = arg5[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg5.length + 256] = 0
    require msg.sender == owner
    sub_5f643358.length = (2 * arg1.length) + 1
    s = sha3(0x8000000000000000000000000000000000000000000000000000000000000011)
    idx = 128
    while arg1.length + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = sha3(0x8000000000000000000000000000000000000000000000000000000000000011) + (Mask(251, 0, arg1.length + 31) >> 5)
    while sha3(0x8000000000000000000000000000000000000000000000000000000000000011) + (sub_5f643358.length + 31 / 32) > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    sub_ac8e482a.length = (2 * arg2.length) + 1
    s = sha3(0x8000000000000000000000000000000000000000000000000000000000000012)
    idx = ceil32(arg1.length) + 160
    while ceil32(arg1.length) + arg2.length + 160 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = sha3(0x8000000000000000000000000000000000000000000000000000000000000012) + (Mask(251, 0, arg2.length + 31) >> 5)
    while sha3(0x8000000000000000000000000000000000000000000000000000000000000012) + (sub_ac8e482a.length + 31 / 32) > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    sub_d7bd8d6c.length = (2 * arg3.length) + 1
    s = sha3(0x8000000000000000000000000000000000000000000000000000000000000013)
    idx = ceil32(arg1.length) + ceil32(arg2.length) + 192
    while ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 192 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = sha3(0x8000000000000000000000000000000000000000000000000000000000000013) + (Mask(251, 0, arg3.length + 31) >> 5)
    while sha3(0x8000000000000000000000000000000000000000000000000000000000000013) + (sub_d7bd8d6c.length + 31 / 32) > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    sub_626ecc13.length = (2 * arg4.length) + 1
    s = sha3(0x8000000000000000000000000000000000000000000000000000000000000014)
    idx = ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224
    while ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 224 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = sha3(0x8000000000000000000000000000000000000000000000000000000000000014) + (Mask(251, 0, arg4.length + 31) >> 5)
    while sha3(0x8000000000000000000000000000000000000000000000000000000000000014) + (sub_626ecc13.length + 31 / 32) > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    sub_7651bc92.length = (2 * arg5.length) + 1
    s = sha3(0x8000000000000000000000000000000000000000000000000000000000000015)
    idx = ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 256
    while ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + arg5.length + 256 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = sha3(0x8000000000000000000000000000000000000000000000000000000000000015) + (Mask(251, 0, arg5.length + 31) >> 5)
    while sha3(0x8000000000000000000000000000000000000000000000000000000000000015) + (sub_7651bc92.length + 31 / 32) > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
}



}
