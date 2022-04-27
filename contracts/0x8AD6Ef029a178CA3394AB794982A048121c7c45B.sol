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
uint16 stor8; offset 160
address stor8;

function _fallback() payable {
    uint8(stor6.field_160) = 0
    uint16(stor8.field_160) = 0
    require not msg.value
    require 1514232960 >= block.timestamp
    stor0 = 0
    stor1 = 1514232960
    stor2 = 1514236560
    stor4 = 3
    stor3 = 0x94408226e26b53732188cfced4117fb41c18a85a
    address(stor6.field_0) = msg.sender
    stor7 = 666666666666666667
    address(stor8.field_0) = msg.sender
    stor0 = code.data[2972 len 20]
    return code.data[358 len 2602]
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
uint256 cap;
uint8 stor8; offset 160
uint8 initialized; offset 168
address stor8;

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

function token() {
    return tokenAddress
}

function hasStarted() {
    return block.timestamp >= startTime
}

function isServiceAccount() {
    return (address(stor8.field_0) == msg.sender)
}

function hasEnded() {
    if block.timestamp > endTime:
        return (block.timestamp > endTime)
    return weiRaised >= cap
}

function changeServiceAccount(address arg1) {
    require address(stor8.field_0) == msg.sender
    require arg1
    address(stor8.field_0) = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function init() {
    require owner == msg.sender
    require not initialized
    initialized = 1
    require owner == msg.sender
    emit OwnershipTransferred(owner, 0x94408226e26b53732188cfced4117fb41c18a85a);
    owner = 0x94408226e26b53732188cfced4117fb41c18a85a
    emit Initialized()
}

function finalize() {
    require owner == msg.sender
    require not isFinalized
    if block.timestamp <= endTime:
        require weiRaised >= cap
    require ext_code.size(tokenAddress)
    call tokenAddress.0x3f4ba83a with:
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
        require 3 * msg.value / msg.value == 3
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args address(arg1), 3 * msg.value
        require ext_call.success
        emit TokenPurchase(msg.value, 3 * msg.value, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
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
        require 3 * msg.value / msg.value == 3
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, 3 * msg.value
        require ext_call.success
        emit TokenPurchase(msg.value, 3 * msg.value, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function check() payable {
    require address(stor8.field_0) == msg.sender
    require not uint8(stor8.field_160)
    if not isFinalized:
        if block.timestamp > endTime:
            emit Triggered(eth.balance(this.address));
            uint8(stor8.field_160) = 1
            require ext_code.size(tokenAddress)
            call tokenAddress.0x3f4ba83a with:
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
        else:
            if weiRaised >= cap:
                emit Triggered(eth.balance(this.address));
                uint8(stor8.field_160) = 1
                require ext_code.size(tokenAddress)
                call tokenAddress.0x3f4ba83a with:
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



}
