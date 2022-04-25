contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor6;
uint256 stor7;

function _fallback() {
    stor0 = msg.sender
    require code.data[7790 len 32] > 0
    require code.data[7834 len 20]
    create contract with 0 wei
                    code: code.data[5177 len 2613]
    require create.new_address
    stor1 = address(create.new_address)
    stor7 = code.data[7790 len 32]
    stor6 = code.data[7834 len 20]
    return code.data[248 len 4929]
}



// =====================  Runtime code  =====================


address owner;
address tokenAddress;
uint256 preICOStartTime;
uint256 preICOEndTime;
uint256 iCOStartTime;
uint256 iCOEndTime;
address walletAddress;
uint256 rate;
uint256 weiRaised;

function ICOStartTime() {
    return iCOStartTime
}

function rate() {
    return rate
}

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function owner() {
    return owner
}

function PreICOEndTime() {
    return preICOEndTime
}

function ICOEndTime() {
    return iCOEndTime
}

function PreICOStartTime() {
    return preICOStartTime
}

function token() {
    return tokenAddress
}

function setUsdRate(uint256 arg1) {
    require owner == msg.sender
    require arg1 > 0
    rate = arg1
}

function stopICO() {
    require owner == msg.sender
    require iCOEndTime > block.timestamp
    iCOEndTime = block.timestamp
}

function stopPreICO() {
    require owner == msg.sender
    require preICOEndTime > block.timestamp
    preICOEndTime = block.timestamp
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function startICO() {
    require owner == msg.sender
    require not iCOStartTime
    iCOStartTime = block.timestamp
    iCOEndTime = block.timestamp + (720 * 24 * 3600)
}

function startPreICO() {
    require owner == msg.sender
    require not preICOStartTime
    preICOStartTime = block.timestamp
    preICOEndTime = block.timestamp + (720 * 24 * 3600)
}

function transferTokenOwnership(address arg1) {
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function sendTokens(address arg1, uint256 arg2) {
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function getDiscount() {
    if block.timestamp >= iCOStartTime:
        if block.timestamp <= iCOStartTime + (72 * 24 * 3600):
            return 80
        if block.timestamp <= iCOStartTime + (312 * 24 * 3600):
            return 85
        if block.timestamp <= iCOStartTime + (528 * 24 * 3600):
            return 90
        if block.timestamp > iCOStartTime + (720 * 24 * 3600):
            return 100
        return 95
    if block.timestamp <= preICOStartTime + (72 * 24 * 3600):
        return 50
    if block.timestamp <= preICOStartTime + (144 * 24 * 3600):
        return 60
    if block.timestamp <= preICOStartTime + (312 * 24 * 3600):
        return 65
    if block.timestamp <= preICOStartTime + (480 * 24 * 3600):
        return 70
    if block.timestamp <= preICOStartTime + (624 * 24 * 3600):
        return 75
    if block.timestamp > preICOStartTime + (720 * 24 * 3600):
        return 100
    return 80
}

function buyTokens(address arg1) payable {
    require arg1
    if block.timestamp < preICOStartTime:
        if block.timestamp < iCOStartTime:
            if block.timestamp < preICOStartTime:
                require block.timestamp >= iCOStartTime
        else:
            if block.timestamp < preICOStartTime:
                require block.timestamp <= iCOEndTime
    else:
        if block.timestamp < iCOStartTime:
            if block.timestamp > preICOEndTime:
                require block.timestamp >= iCOStartTime
        else:
            if block.timestamp > preICOEndTime:
                require block.timestamp <= iCOEndTime
    require msg.value
    if block.timestamp >= iCOStartTime:
        if block.timestamp <= iCOStartTime + (72 * 24 * 3600):
            require 80 * rate / 100
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args address(arg1), msg.value / 80 * rate / 100
            require ext_call.success
            emit TokenPurchase(msg.value, msg.value / 80 * rate / 100, msg.sender, arg1);
        else:
            if block.timestamp <= iCOStartTime + (312 * 24 * 3600):
                require 85 * rate / 100
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), msg.value / 85 * rate / 100
                require ext_call.success
                emit TokenPurchase(msg.value, msg.value / 85 * rate / 100, msg.sender, arg1);
            else:
                if block.timestamp <= iCOStartTime + (528 * 24 * 3600):
                    require 90 * rate / 100
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), msg.value / 90 * rate / 100
                    require ext_call.success
                    emit TokenPurchase(msg.value, msg.value / 90 * rate / 100, msg.sender, arg1);
                else:
                    if block.timestamp > iCOStartTime + (720 * 24 * 3600):
                        require 100 * rate / 100
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), msg.value / 100 * rate / 100
                        require ext_call.success
                        emit TokenPurchase(msg.value, msg.value / 100 * rate / 100, msg.sender, arg1);
                    else:
                        require 95 * rate / 100
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), msg.value / 95 * rate / 100
                        require ext_call.success
                        emit TokenPurchase(msg.value, msg.value / 95 * rate / 100, msg.sender, arg1);
    else:
        if block.timestamp <= preICOStartTime + (72 * 24 * 3600):
            require 50 * rate / 100
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args address(arg1), msg.value / 50 * rate / 100
            require ext_call.success
            emit TokenPurchase(msg.value, msg.value / 50 * rate / 100, msg.sender, arg1);
        else:
            if block.timestamp <= preICOStartTime + (144 * 24 * 3600):
                require 60 * rate / 100
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), msg.value / 60 * rate / 100
                require ext_call.success
                emit TokenPurchase(msg.value, msg.value / 60 * rate / 100, msg.sender, arg1);
            else:
                if block.timestamp <= preICOStartTime + (312 * 24 * 3600):
                    require 65 * rate / 100
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), msg.value / 65 * rate / 100
                    require ext_call.success
                    emit TokenPurchase(msg.value, msg.value / 65 * rate / 100, msg.sender, arg1);
                else:
                    if block.timestamp <= preICOStartTime + (480 * 24 * 3600):
                        require 70 * rate / 100
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), msg.value / 70 * rate / 100
                        require ext_call.success
                        emit TokenPurchase(msg.value, msg.value / 70 * rate / 100, msg.sender, arg1);
                    else:
                        if block.timestamp <= preICOStartTime + (624 * 24 * 3600):
                            require 75 * rate / 100
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), msg.value / 75 * rate / 100
                            require ext_call.success
                            emit TokenPurchase(msg.value, msg.value / 75 * rate / 100, msg.sender, arg1);
                        else:
                            if block.timestamp > preICOStartTime + (720 * 24 * 3600):
                                require 100 * rate / 100
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), msg.value / 100 * rate / 100
                                require ext_call.success
                                emit TokenPurchase(msg.value, msg.value / 100 * rate / 100, msg.sender, arg1);
                            else:
                                require 80 * rate / 100
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), msg.value / 80 * rate / 100
                                require ext_call.success
                                emit TokenPurchase(msg.value, msg.value / 80 * rate / 100, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    require msg.sender
    if block.timestamp < preICOStartTime:
        if block.timestamp < iCOStartTime:
            if block.timestamp < preICOStartTime:
                require block.timestamp >= iCOStartTime
        else:
            if block.timestamp < preICOStartTime:
                require block.timestamp <= iCOEndTime
    else:
        if block.timestamp < iCOStartTime:
            if block.timestamp > preICOEndTime:
                require block.timestamp >= iCOStartTime
        else:
            if block.timestamp > preICOEndTime:
                require block.timestamp <= iCOEndTime
    require msg.value
    if block.timestamp >= iCOStartTime:
        if block.timestamp <= iCOStartTime + (72 * 24 * 3600):
            require 80 * rate / 100
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, msg.value / 80 * rate / 100
            require ext_call.success
            emit TokenPurchase(msg.value, msg.value / 80 * rate / 100, msg.sender, msg.sender);
        else:
            if block.timestamp <= iCOStartTime + (312 * 24 * 3600):
                require 85 * rate / 100
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, msg.value / 85 * rate / 100
                require ext_call.success
                emit TokenPurchase(msg.value, msg.value / 85 * rate / 100, msg.sender, msg.sender);
            else:
                if block.timestamp <= iCOStartTime + (528 * 24 * 3600):
                    require 90 * rate / 100
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.value / 90 * rate / 100
                    require ext_call.success
                    emit TokenPurchase(msg.value, msg.value / 90 * rate / 100, msg.sender, msg.sender);
                else:
                    if block.timestamp > iCOStartTime + (720 * 24 * 3600):
                        require 100 * rate / 100
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value / 100 * rate / 100
                        require ext_call.success
                        emit TokenPurchase(msg.value, msg.value / 100 * rate / 100, msg.sender, msg.sender);
                    else:
                        require 95 * rate / 100
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value / 95 * rate / 100
                        require ext_call.success
                        emit TokenPurchase(msg.value, msg.value / 95 * rate / 100, msg.sender, msg.sender);
    else:
        if block.timestamp <= preICOStartTime + (72 * 24 * 3600):
            require 50 * rate / 100
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, msg.value / 50 * rate / 100
            require ext_call.success
            emit TokenPurchase(msg.value, msg.value / 50 * rate / 100, msg.sender, msg.sender);
        else:
            if block.timestamp <= preICOStartTime + (144 * 24 * 3600):
                require 60 * rate / 100
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, msg.value / 60 * rate / 100
                require ext_call.success
                emit TokenPurchase(msg.value, msg.value / 60 * rate / 100, msg.sender, msg.sender);
            else:
                if block.timestamp <= preICOStartTime + (312 * 24 * 3600):
                    require 65 * rate / 100
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.value / 65 * rate / 100
                    require ext_call.success
                    emit TokenPurchase(msg.value, msg.value / 65 * rate / 100, msg.sender, msg.sender);
                else:
                    if block.timestamp <= preICOStartTime + (480 * 24 * 3600):
                        require 70 * rate / 100
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value / 70 * rate / 100
                        require ext_call.success
                        emit TokenPurchase(msg.value, msg.value / 70 * rate / 100, msg.sender, msg.sender);
                    else:
                        if block.timestamp <= preICOStartTime + (624 * 24 * 3600):
                            require 75 * rate / 100
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, msg.value / 75 * rate / 100
                            require ext_call.success
                            emit TokenPurchase(msg.value, msg.value / 75 * rate / 100, msg.sender, msg.sender);
                        else:
                            if block.timestamp > preICOStartTime + (720 * 24 * 3600):
                                require 100 * rate / 100
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, msg.value / 100 * rate / 100
                                require ext_call.success
                                emit TokenPurchase(msg.value, msg.value / 100 * rate / 100, msg.sender, msg.sender);
                            else:
                                require 80 * rate / 100
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, msg.value / 80 * rate / 100
                                require ext_call.success
                                emit TokenPurchase(msg.value, msg.value / 80 * rate / 100, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
