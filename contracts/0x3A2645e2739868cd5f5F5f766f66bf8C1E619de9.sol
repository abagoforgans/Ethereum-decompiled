contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
address stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;

function _fallback() payable {
    stor8 = 0
    require not msg.value
    stor0 = msg.sender
    require code.data[2109 len 32] >= block.timestamp
    require code.data[2141 len 32] > code.data[2109 len 32]
    require code.data[2013 len 32] > 0
    require code.data[2045 len 32] > 0
    require code.data[2217 len 20]
    require code.data[2185 len 20]
    stor5 = code.data[2013 len 32]
    stor6 = code.data[2045 len 32]
    stor7 = code.data[2077 len 32]
    stor2 = code.data[2109 len 32]
    stor3 = code.data[2141 len 32]
    stor1 = code.data[2185 len 20]
    stor4 = code.data[2217 len 20]
    return code.data[305 len 1708]
}



// =====================  Runtime code  =====================


address owner;
address tokenAddress;
uint256 startTime;
uint256 endTime;
address walletAddress;
uint256 rate;
uint256 weiGoal;
uint256 sub_40f46fb6;
uint256 weiRaised;

function rate() {
    return rate
}

function endTime() {
    return endTime
}

function weiRaised() {
    return weiRaised
}

function sub_40f46fb6(?) {
    return sub_40f46fb6
}

function wallet() {
    return walletAddress
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function weiGoal() {
    return weiGoal
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

function isActive() {
    if block.timestamp < startTime:
        return block.timestamp >= startTime
    if block.timestamp > endTime:
        return block.timestamp <= endTime
    return (weiRaised < weiGoal)
}

function withdraw() {
    require owner == msg.sender
    require walletAddress
    require eth.balance(this.address) > 0
    call walletAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit 0x59957b5a: eth.balance(this.address)
}

function _fallback() payable {
    require msg.sender
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require weiRaised < weiGoal
    require msg.value > 0
    require msg.value >= sub_40f46fb6
    require msg.value + weiRaised >= weiRaised
    require msg.value + weiRaised <= weiGoal
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    if msg.value < 100 * 10^18:
        if not msg.value:
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining - 710 wei
                args owner, msg.sender, 0
            require ext_call.success
            emit TokenPurchase(msg.value, 0, msg.sender);
        else:
            require rate * msg.value / msg.value == rate
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining - 710 wei
                args owner, msg.sender, rate * msg.value
            require ext_call.success
            emit TokenPurchase(msg.value, rate * msg.value, msg.sender);
    else:
        if msg.value < 300 * 10^18:
            if not msg.value:
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining - 710 wei
                    args owner, msg.sender, 0
                require ext_call.success
                emit TokenPurchase(msg.value, 0, msg.sender);
            else:
                require 115 * msg.value / msg.value == 115
                if not 115 * msg.value / 100:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args owner, msg.sender, 0
                    require ext_call.success
                    emit TokenPurchase(msg.value, 0, msg.sender);
                else:
                    require rate * 115 * msg.value / 100 / 115 * msg.value / 100 == rate
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args owner, msg.sender, rate * 115 * msg.value / 100
                    require ext_call.success
                    emit TokenPurchase(msg.value, rate * 115 * msg.value / 100, msg.sender);
        else:
            if msg.value < 500 * 10^18:
                if not msg.value:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args owner, msg.sender, 0
                    require ext_call.success
                    emit TokenPurchase(msg.value, 0, msg.sender);
                else:
                    require 120 * msg.value / msg.value == 120
                    if not 120 * msg.value / 100:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args owner, msg.sender, 0
                        require ext_call.success
                        emit TokenPurchase(msg.value, 0, msg.sender);
                    else:
                        require rate * 120 * msg.value / 100 / 120 * msg.value / 100 == rate
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args owner, msg.sender, rate * 120 * msg.value / 100
                        require ext_call.success
                        emit TokenPurchase(msg.value, rate * 120 * msg.value / 100, msg.sender);
            else:
                if msg.value >= 700 * 10^18:
                    if not msg.value:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args owner, msg.sender, 0
                        require ext_call.success
                        emit TokenPurchase(msg.value, 0, msg.sender);
                    else:
                        require 130 * msg.value / msg.value == 130
                        if not 130 * msg.value / 100:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args owner, msg.sender, 0
                            require ext_call.success
                            emit TokenPurchase(msg.value, 0, msg.sender);
                        else:
                            require rate * 130 * msg.value / 100 / 130 * msg.value / 100 == rate
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args owner, msg.sender, rate * 130 * msg.value / 100
                            require ext_call.success
                            emit TokenPurchase(msg.value, rate * 130 * msg.value / 100, msg.sender);
                else:
                    if not msg.value:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args owner, msg.sender, 0
                        require ext_call.success
                        emit TokenPurchase(msg.value, 0, msg.sender);
                    else:
                        require 125 * msg.value / msg.value == 125
                        if not 125 * msg.value / 100:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args owner, msg.sender, 0
                            require ext_call.success
                            emit TokenPurchase(msg.value, 0, msg.sender);
                        else:
                            require rate * 125 * msg.value / 100 / 125 * msg.value / 100 == rate
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args owner, msg.sender, rate * 125 * msg.value / 100
                            require ext_call.success
                            emit TokenPurchase(msg.value, rate * 125 * msg.value / 100, msg.sender);
}



}
