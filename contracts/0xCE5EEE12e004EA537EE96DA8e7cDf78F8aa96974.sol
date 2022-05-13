contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint8 stor3; offset 152
address stor3;
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
    if 1526565300 > block.timestamp:
        require 1526565300 >= block.timestamp
        stor0 = 0
        stor1 = 1526565300
    else:
        require block.timestamp >= block.timestamp
        require 1526565900 >= block.timestamp
        stor0 = 0
        stor1 = block.timestamp
    stor2 = 1526565900
    stor4 = 1000 * 10^18
    Mask(152, 0, stor3.field_0) = 0x25ea8bbbb72199cf70fe25f92d3b298c3b162a
    uint8(stor3.field_152) = 0
    address(stor6.field_0) = msg.sender
    create contract with 0 wei
                    code: code.data[3126 len 1548], address(stor3.field_0)
    require create.new_address
    stor8 = address(create.new_address)
    stor7 = 120 * 10^18
    stor9 = 1000000000000 * 10^18
    stor0 = code.data[4686 len 20]
    return code.data[498 len 2628]
}



// =====================  Runtime code  =====================


address tokenAddress;
uint256 startTime;
uint256 endTime;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint8 stor6; offset 152
uint8 stor6; offset 160
address stor6;
address owner;
uint256 goal;
address vaultAddress;
uint256 cap;
uint8 stor10;

function initialized() {
    return bool(stor10)
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
    return bool(uint8(stor6.field_160))
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
    require uint8(stor6.field_160)
    require weiRaised < goal
    require ext_code.size(vaultAddress)
    call vaultAddress.refund(address arg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
}

function init() {
    require owner == msg.sender
    require not stor10
    stor10 = 1
    require ext_code.size(tokenAddress)
    call tokenAddress.0x8456cb59 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require owner == msg.sender
    emit OwnershipTransferred(owner, 0x8024069546651883a2b948ae67b345d7c42b19);
    Mask(152, 0, stor6.field_0) = 0x8024069546651883a2b948ae67b345d7c42b19
    uint8(stor6.field_152) = 0
    emit Initialized()
}

function finalize() {
    require owner == msg.sender
    require not uint8(stor6.field_160)
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
    call tokenAddress.0x3f4ba83a with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args 0x8024069546651883a2b948ae67b345d7c42b19
    require ext_call.success
    emit Finalized()
    uint8(stor6.field_160) = 1
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
        require rate * msg.value / msg.value == rate
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args address(arg1), rate * msg.value / 10^18
        require ext_call.success
        emit TokenPurchase(msg.value, rate * msg.value / 10^18, msg.sender, arg1);
    require ext_code.size(vaultAddress)
    call vaultAddress.0xf340fa01 with:
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
        require rate * msg.value / msg.value == rate
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, rate * msg.value / 10^18
        require ext_call.success
        emit TokenPurchase(msg.value, rate * msg.value / 10^18, msg.sender, msg.sender);
    require ext_code.size(vaultAddress)
    call vaultAddress.0xf340fa01 with:
       value msg.value wei
         gas gas_remaining - 9710 wei
        args msg.sender
    require ext_call.success
}



}
