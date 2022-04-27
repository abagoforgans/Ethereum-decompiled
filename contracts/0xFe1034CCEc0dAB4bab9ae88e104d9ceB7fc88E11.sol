contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
address stor3;
uint256 stor4;
uint8 stor6; offset 160
address stor6;
uint256 stor7;
address stor8;
uint256 stor9;
uint8 stor10;

function _fallback() payable {
    uint8(stor6.field_160) = 0
    stor10 = 0
    require not msg.value
    require 1514233740 >= block.timestamp
    stor0 = 0
    stor1 = 1514233740
    stor2 = 1514237340
    stor4 = 34
    stor3 = 0x94408226e26b53732188cfced4117fb41c18a85a
    address(stor6.field_0) = msg.sender
    create contract with 0 wei
                    code: code.data[3574 len 1548], stor3
    require create.new_address
    stor8 = address(create.new_address)
    stor7 = 205882352941176471
    stor9 = 2617647058823529412
    stor0 = code.data[5134 len 20]
    return code.data[467 len 3107]
}



// =====================  Runtime code  =====================


address tokenAddress;
uint256 startTime;
uint256 endTime;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint8 isFinalized; offset 160
address owner;
uint256 goal;
address vaultAddress;
uint256 cap;
uint8 initialized;

function initialized() {
    return bool(initialized)
}

function rate() {
    return rate
}

function endTime() {
    return endTime
}

function cap() {
    return cap
}

function goal() {
    return goal
}

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function startTime() {
    return startTime
}

function isFinalized() {
    return bool(isFinalized)
}

function owner() {
    return owner
}

function vault() {
    return vaultAddress
}

function token() {
    return tokenAddress
}

function goalReached() {
    return weiRaised >= goal
}

function hasStarted() {
    return block.timestamp >= startTime
}

function hasEnded() {
    if block.timestamp > endTime:
        return (block.timestamp > endTime)
    return weiRaised >= cap
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function claimRefund() {
    require isFinalized
    require weiRaised < goal
    require ext_code.size(vaultAddress)
    call vaultAddress.refund(address rg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
}

function finalize() {
    require owner == msg.sender
    require not isFinalized
    if block.timestamp <= endTime:
        require weiRaised >= cap
    require ext_code.size(vaultAddress)
    if weiRaised < goal:
        call vaultAddress.enableRefunds() with:
             gas gas_remaining - 710 wei
    else:
        call vaultAddress.close() with:
             gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x7d64bcb4 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args 0x94408226e26b53732188cfced4117fb41c18a85a
    require ext_call.success
    emit Finalized()
    isFinalized = 1
}

function buyTokens(address arg1) payable {
    require arg1
    require msg.value + weiRaised >= weiRaised
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require msg.value + weiRaised <= cap
    if not msg.value:
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args address(arg1), 0
        require ext_call.success
        emit TokenPurchase(msg.value, 0, msg.sender, arg1);
    else:
        require 34 * msg.value / msg.value == 34
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args address(arg1), 34 * msg.value
        require ext_call.success
        emit TokenPurchase(msg.value, 34 * msg.value, msg.sender, arg1);
    require ext_code.size(vaultAddress)
    call vaultAddress.deposit(address rg1) with:
       value msg.value wei
         gas gas_remaining - 9710 wei
        args msg.sender
    require ext_call.success
}

function _fallback() payable {
    require msg.sender
    require msg.value + weiRaised >= weiRaised
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require msg.value + weiRaised <= cap
    if not msg.value:
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, 0
        require ext_call.success
        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
    else:
        require 34 * msg.value / msg.value == 34
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, 34 * msg.value
        require ext_call.success
        emit TokenPurchase(msg.value, 34 * msg.value, msg.sender, msg.sender);
    require ext_code.size(vaultAddress)
    call vaultAddress.deposit(address rg1) with:
       value msg.value wei
         gas gas_remaining - 9710 wei
        args msg.sender
    require ext_call.success
}

function init() {
    require owner == msg.sender
    require not initialized
    initialized = 1
    mem[192] = 0x1e1fedbeb8ce004a03569a3ff03a1317a6515cf1
    mem[224] = 12000
    mem[256] = 1514237343
    idx = 0
    while idx < 1:
        require idx < 1
        if not mem[(32 * idx) + 280 len 8]:
            _28 = mem[(32 * idx) + 224]
            mem[292] = mem[(32 * idx) + 204 len 20]
            mem[324] = _28
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args mem[292], _28
            mem[288] = ext_call.return_data[0]
        else:
            _23 = mem[(32 * idx) + 192]
            _27 = mem[(32 * idx) + 224]
            _32 = mem[(32 * idx) + 256]
            mem[288] = 0xbb2cd6b00000000000000000000000000000000000000000000000000000000
            mem[292] = address(_23)
            mem[324] = _27
            mem[356] = uint64(_32)
            require ext_code.size(tokenAddress)
            call tokenAddress.mintAndFreeze(address rg1, uint256 rg2, uint64 rg3) with:
                 gas gas_remaining - 710 wei
                args address(_23), _27, uint64(_32)
        require ext_call.success
        idx = idx + 1
        continue 
    require owner == msg.sender
    emit OwnershipTransferred(owner, 0x94408226e26b53732188cfced4117fb41c18a85a);
    owner = 0x94408226e26b53732188cfced4117fb41c18a85a
    emit Initialized()
}



}
