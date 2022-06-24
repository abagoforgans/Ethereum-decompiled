contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
mapping of uint8 stor2;
uint8 stor3;
uint8 stor3; offset 8
uint256 stor3; offset 8
uint256 sub_a199e3c6;
address tokenAddress;
uint256 rate;
uint256 weiRaised;
uint256 cap;
uint256 sub_f87c5570;
uint256 sub_b87e603d;

function isInWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor2[address(arg1)])
}

function rate() {
    return rate
}

function cap() {
    return cap
}

function weiRaised() {
    return weiRaised
}

function owner() {
    return owner
}

function isStop() {
    return bool(uint8(stor3.field_8))
}

function sub_a199e3c6(?) {
    return sub_a199e3c6
}

function sub_b87e603d(?) {
    return sub_b87e603d
}

function isWhitelistOnlyStatus() {
    return bool(uint8(stor3.field_0))
}

function sub_f87c5570(?) {
    return sub_f87c5570
}

function token() {
    return tokenAddress
}

function setTimeBegin(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_a199e3c6 = arg1
}

function setCap(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1 > weiRaised
    cap = arg1
}

function confirmChangeOwnership() {
    require msg.sender == stor1
    emit OwnershipTransferred(owner, stor1);
    owner = stor1
    stor1 = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    stor1 = arg1
}

function changeWhitelistOnly(bool arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    uint8(stor3.field_0) = uint8(arg1)
}

function setBuyRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1 > 0
    rate = arg1
    return 1
}

function setStopStatus(bool arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    Mask(248, 0, stor3.field_8) = Mask(248, 0, arg1)
}

function setBuyMinLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1 > 0
    sub_f87c5570 = arg1
    return 1
}

function setBuyMaxLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1 > 0
    sub_b87e603d = arg1
    return 1
}

function takeAllEther(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function reclaimToken(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    sub_a199e3c6 = 0
    Mask(248, 0, stor3.field_8) = 1
}

function addWhitelist(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _11 = mem[(32 * idx) + 128]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        if not stor2[mem[(32 * idx) + 140 len 20]]:
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 2
            stor2[address(mem[(32 * idx) + 128])] = 1
            mem[(32 * arg1.length) + 128] = 1
            mem[(32 * arg1.length) + 160] = 0
            emit WhitelistChanged(1, 0, address(_11));
        idx = idx + 1
        continue 
}

function removeWhitelist(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _11 = mem[(32 * idx) + 128]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        if bool(stor2[mem[(32 * idx) + 140 len 20]]) == 1:
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 2
            stor2[address(mem[(32 * idx) + 128])] = 0
            mem[(32 * arg1.length) + 128] = 0
            mem[(32 * arg1.length) + 160] = 1
            emit WhitelistChanged(0, 1, address(_11));
        idx = idx + 1
        continue 
}

function buyTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    require not uint8(stor3.field_8)
    if bool(uint8(stor3.field_0)) == 1:
        require bool(stor2[address(arg1)]) == 1
    require msg.value >= sub_f87c5570
    require msg.value <= sub_b87e603d
    require rate > 0
    require cap > 0
    require arg1
    require sub_a199e3c6 > 0
    require sub_a199e3c6 < block.timestamp
    require msg.value
    require weiRaised < cap
    require weiRaised <= cap
    if msg.value <= cap - weiRaised:
        require msg.value <= msg.value
        if msg.value <= sub_b87e603d:
            if not msg.value:
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                emit TokenPurchase(msg.value, 0, arg1);
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), 0
            else:
                require msg.value
                require msg.value * rate / msg.value == rate
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                emit TokenPurchase(msg.value, msg.value * rate, arg1);
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), msg.value * rate
        else:
            if not sub_b87e603d:
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                emit TokenPurchase(msg.value, 0, arg1);
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), 0
            else:
                require sub_b87e603d
                require sub_b87e603d * rate / sub_b87e603d == rate
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                emit TokenPurchase(msg.value, sub_b87e603d * rate, arg1);
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), sub_b87e603d * rate
    else:
        require cap - weiRaised <= msg.value
        if msg.value - cap + weiRaised > 0:
            call arg1 with:
               value msg.value - cap + weiRaised wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit TokenRefund((msg.value - cap + weiRaised), arg1);
            Mask(248, 0, stor3.field_8) = 1
        if cap - weiRaised <= sub_b87e603d:
            if not cap - weiRaised:
                require cap >= weiRaised
                weiRaised = cap
                emit TokenPurchase(cap - weiRaised, 0, arg1);
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), 0
            else:
                require cap - weiRaised
                require (cap * rate) - (weiRaised * rate) / cap - weiRaised == rate
                require cap >= weiRaised
                weiRaised = cap
                emit TokenPurchase(cap - weiRaised, (cap * rate) - (weiRaised * rate), arg1);
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), (cap * rate) - (weiRaised * rate)
        else:
            if not sub_b87e603d:
                require cap >= weiRaised
                weiRaised = cap
                emit TokenPurchase(cap - weiRaised, 0, arg1);
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), 0
            else:
                require sub_b87e603d
                require sub_b87e603d * rate / sub_b87e603d == rate
                require cap >= weiRaised
                weiRaised = cap
                emit TokenPurchase(cap - weiRaised, sub_b87e603d * rate, arg1);
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), sub_b87e603d * rate
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function _fallback() payable {
    require not uint8(stor3.field_8)
    if bool(uint8(stor3.field_0)) == 1:
        require bool(stor2[address(msg.sender)]) == 1
    require msg.value >= sub_f87c5570
    require msg.value <= sub_b87e603d
    require rate > 0
    require cap > 0
    require msg.sender
    require sub_a199e3c6 > 0
    require sub_a199e3c6 < block.timestamp
    require msg.value
    require weiRaised < cap
    require weiRaised <= cap
    if msg.value <= cap - weiRaised:
        require msg.value <= msg.value
        if msg.value <= sub_b87e603d:
            if not msg.value:
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                emit TokenPurchase(msg.value, 0, msg.sender);
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 0
            else:
                require msg.value
                require msg.value * rate / msg.value == rate
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                emit TokenPurchase(msg.value, msg.value * rate, msg.sender);
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, msg.value * rate
        else:
            if not sub_b87e603d:
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                emit TokenPurchase(msg.value, 0, msg.sender);
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 0
            else:
                require sub_b87e603d
                require sub_b87e603d * rate / sub_b87e603d == rate
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                emit TokenPurchase(msg.value, sub_b87e603d * rate, msg.sender);
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, sub_b87e603d * rate
    else:
        require cap - weiRaised <= msg.value
        if msg.value - cap + weiRaised > 0:
            call msg.sender with:
               value msg.value - cap + weiRaised wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit TokenRefund((msg.value - cap + weiRaised), msg.sender);
            Mask(248, 0, stor3.field_8) = 1
        if cap - weiRaised <= sub_b87e603d:
            if not cap - weiRaised:
                require cap >= weiRaised
                weiRaised = cap
                emit TokenPurchase(cap - weiRaised, 0, msg.sender);
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 0
            else:
                require cap - weiRaised
                require (cap * rate) - (weiRaised * rate) / cap - weiRaised == rate
                require cap >= weiRaised
                weiRaised = cap
                emit TokenPurchase(cap - weiRaised, (cap * rate) - (weiRaised * rate), msg.sender);
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (cap * rate) - (weiRaised * rate)
        else:
            if not sub_b87e603d:
                require cap >= weiRaised
                weiRaised = cap
                emit TokenPurchase(cap - weiRaised, 0, msg.sender);
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 0
            else:
                require sub_b87e603d
                require sub_b87e603d * rate / sub_b87e603d == rate
                require cap >= weiRaised
                weiRaised = cap
                emit TokenPurchase(cap - weiRaised, sub_b87e603d * rate, msg.sender);
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, sub_b87e603d * rate
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
