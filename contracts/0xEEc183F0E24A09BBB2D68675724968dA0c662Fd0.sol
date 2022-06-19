contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
array of address stor1;
mapping of uint8 stor2;
mapping of uint256 addressIndex;
mapping of uint256 allowance;
uint256 numberOfAddress;
uint256 sub_a370d6d2;
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
    return bool(stor11)
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
    return bool(stor7)
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
    return bool(stor2[arg1])
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
    if stor11:
        if msg.sender == owner:
            require arg1 <= balanceOf[msg.sender]
            balanceOf[msg.sender] -= arg1
            totalSupply -= arg1
            emit 0xfeddf252: arg1, msg.sender, 0
}

function mint(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor11:
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
    if stor2[address(arg1)]:
        numberOfAddress--
        require addressIndex[address(arg1)] < stor1.length
        stor1[stor3[address(arg1)]] = 0
        stor2[address(arg1)] = 0
}

function addAddressManual(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require isPrivate
    if not stor2[address(arg1)]:
        addressIndex[address(arg1)] = numberOfAddress
        numberOfAddress++
        require numberOfAddress < stor1.length
        stor1[stor5] = arg1
        stor2[address(arg1)] = 1
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
            if not stor2[address(arg2)]:
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
            require s < stor1.length
            mem[0] = 1
            if stor1[s] != owner:
                require s < stor1.length
                require 10^holdingTaxDecimals
                require s < stor1.length
                balanceOf[stor1[s]] -= balanceOf[stor1[s]] * holdingTax / 10^holdingTaxDecimals / 10^holdingTaxDecimals
                mem[0] = owner
                mem[32] = 0
                balanceOf[stor28] += balanceOf[stor1[s]] * holdingTax / 10^holdingTaxDecimals / 10^holdingTaxDecimals
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
            require idx < stor1.length
            mem[0] = 1
            call stor1[idx] with:
               value sub_cb4372d0 wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                require idx < stor1.length
                mem[0] = 1
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

function sub_387f7f80(?) {
    require calldata.size - 4 >= 160
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    require msg.sender == owner
    sub_5f643358[] = Array(len=arg1.length, data=arg1[all])
    sub_ac8e482a[] = Array(len=arg2.length, data=arg2[all])
    sub_d7bd8d6c[] = Array(len=arg3.length, data=arg3[all])
    sub_626ecc13[] = Array(len=arg4.length, data=arg4[all])
    sub_7651bc92[] = Array(len=arg5.length, data=arg5[all])
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
                if not stor2[address(arg1)]:
                    return 0
        balanceOf[msg.sender] -= arg2
        balanceOf[arg1] += arg2
        if not stor2[address(arg1)]:
            addressIndex[address(arg1)] = numberOfAddress
            numberOfAddress++
            require numberOfAddress < stor1.length
            stor1[stor5] = arg1
            stor2[address(arg1)] = 1
        emit 0xfeddf252: arg2, msg.sender, arg1
        return 1
    s = 0
    idx = block.timestamp - lastHoldingTax
    while idx >= 168 * 24 * 3600 * holdingTaxInterval:
        s = 0
        while s < numberOfAddress:
            require s < stor1.length
            mem[0] = 1
            if stor1[s] != owner:
                require s < stor1.length
                require 10^holdingTaxDecimals
                require s < stor1.length
                balanceOf[stor1[s]] -= balanceOf[stor1[s]] * holdingTax / 10^holdingTaxDecimals / 10^holdingTaxDecimals
                mem[0] = owner
                mem[32] = 0
                balanceOf[stor28] += balanceOf[stor1[s]] * holdingTax / 10^holdingTaxDecimals / 10^holdingTaxDecimals
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
                if not stor2[address(arg1)]:
                    return 0
        balanceOf[msg.sender] -= arg2
        balanceOf[arg1] += arg2
        if not stor2[address(arg1)]:
            addressIndex[address(arg1)] = numberOfAddress
            numberOfAddress++
            require numberOfAddress < stor1.length
            stor1[stor5] = arg1
            stor2[address(arg1)] = 1
        emit 0xfeddf252: arg2, msg.sender, arg1
        return 1
}



}
