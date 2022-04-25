contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
uint256 stor1;
address stor2;
address stor3;

function _fallback() payable {
    uint8(stor0.field_160) = 0
    require not msg.value
    address(stor0.field_0) = msg.sender
    stor1 = code.data[2097 len 32]
    stor2 = code.data[2141 len 20]
    stor3 = code.data[2173 len 20]
    return code.data[154 len 1943]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
uint256 rate;
address walletAddress;
address tokenAddress;
uint256 weiRaised;

function rate() {
    return rate
}

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function isFinalized() {
    return bool(stor0)
}

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function transferTokenOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa3e67610 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20]
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa3e67610 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    emit 0x670e929e: ext_call.return_data[12 len 20], arg1
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function finalize() {
    require owner == msg.sender
    require not stor0
    require owner == msg.sender
    require owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa3e67610 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20]
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa3e67610 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    emit 0x670e929e: ext_call.return_data[12 len 20], owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args owner
    require ext_call.success
    emit Finalized()
    stor0 = 1
}

function buyTokens(address arg1) payable {
    require not stor0
    require arg1
    require msg.value
    require msg.value >= 5 * 10^18
    if msg.value < 200 * 10^18:
        if not msg.value:
            require msg.value >= msg.value
            if not msg.value:
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 0
                require ext_call.success
                emit TokenPurchase(msg.value, 0, 0, msg.sender, arg1);
            else:
                require rate * msg.value / msg.value == rate
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), rate * msg.value
                require ext_call.success
                emit TokenPurchase(msg.value, 0, rate * msg.value, msg.sender, arg1);
        else:
            require 55 * msg.value / msg.value == 55
            require (55 * msg.value / 100) + msg.value >= msg.value
            if not (55 * msg.value / 100) + msg.value:
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 0
                require ext_call.success
                emit TokenPurchase(msg.value, 55 * msg.value / 100, 0, msg.sender, arg1);
            else:
                require (55 * msg.value / 100 * rate) + (msg.value * rate) / (55 * msg.value / 100) + msg.value == rate
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), (55 * msg.value / 100 * rate) + (msg.value * rate)
                require ext_call.success
                emit TokenPurchase(msg.value, 55 * msg.value / 100, (55 * msg.value / 100 * rate) + (msg.value * rate), msg.sender, arg1);
    else:
        if not msg.value:
            require msg.value >= msg.value
            if not msg.value:
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 0
                require ext_call.success
                emit TokenPurchase(msg.value, 0, 0, msg.sender, arg1);
            else:
                require rate * msg.value / msg.value == rate
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), rate * msg.value
                require ext_call.success
                emit TokenPurchase(msg.value, 0, rate * msg.value, msg.sender, arg1);
        else:
            require 65 * msg.value / msg.value == 65
            require (65 * msg.value / 100) + msg.value >= msg.value
            if not (65 * msg.value / 100) + msg.value:
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 0
                require ext_call.success
                emit TokenPurchase(msg.value, 65 * msg.value / 100, 0, msg.sender, arg1);
            else:
                require (65 * msg.value / 100 * rate) + (msg.value * rate) / (65 * msg.value / 100) + msg.value == rate
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), (65 * msg.value / 100 * rate) + (msg.value * rate)
                require ext_call.success
                emit TokenPurchase(msg.value, 65 * msg.value / 100, (65 * msg.value / 100 * rate) + (msg.value * rate), msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    require not stor0
    require msg.sender
    require msg.value
    require msg.value >= 5 * 10^18
    if msg.value < 200 * 10^18:
        if not msg.value:
            require msg.value >= msg.value
            if not msg.value:
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 0
                require ext_call.success
                emit TokenPurchase(msg.value, 0, 0, msg.sender, msg.sender);
            else:
                require rate * msg.value / msg.value == rate
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, rate * msg.value
                require ext_call.success
                emit TokenPurchase(msg.value, 0, rate * msg.value, msg.sender, msg.sender);
        else:
            require 55 * msg.value / msg.value == 55
            require (55 * msg.value / 100) + msg.value >= msg.value
            if not (55 * msg.value / 100) + msg.value:
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 0
                require ext_call.success
                emit TokenPurchase(msg.value, 55 * msg.value / 100, 0, msg.sender, msg.sender);
            else:
                require (55 * msg.value / 100 * rate) + (msg.value * rate) / (55 * msg.value / 100) + msg.value == rate
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (55 * msg.value / 100 * rate) + (msg.value * rate)
                require ext_call.success
                emit TokenPurchase(msg.value, 55 * msg.value / 100, (55 * msg.value / 100 * rate) + (msg.value * rate), msg.sender, msg.sender);
    else:
        if not msg.value:
            require msg.value >= msg.value
            if not msg.value:
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 0
                require ext_call.success
                emit TokenPurchase(msg.value, 0, 0, msg.sender, msg.sender);
            else:
                require rate * msg.value / msg.value == rate
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, rate * msg.value
                require ext_call.success
                emit TokenPurchase(msg.value, 0, rate * msg.value, msg.sender, msg.sender);
        else:
            require 65 * msg.value / msg.value == 65
            require (65 * msg.value / 100) + msg.value >= msg.value
            if not (65 * msg.value / 100) + msg.value:
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 0
                require ext_call.success
                emit TokenPurchase(msg.value, 65 * msg.value / 100, 0, msg.sender, msg.sender);
            else:
                require (65 * msg.value / 100 * rate) + (msg.value * rate) / (65 * msg.value / 100) + msg.value == rate
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (65 * msg.value / 100 * rate) + (msg.value * rate)
                require ext_call.success
                emit TokenPurchase(msg.value, 65 * msg.value / 100, (65 * msg.value / 100 * rate) + (msg.value * rate), msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
