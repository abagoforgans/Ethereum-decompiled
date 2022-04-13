contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
address stor4;
uint256 stor5;
uint256 stor7;
uint256 stor8;
uint256 stor9;

function _fallback() payable {
    stor9 = 5 * 10^17
    require not msg.value
    stor0 = msg.sender
    stor2 = 4204545
    stor3 = 4215000
    stor5 = 500
    stor4 = 0xce5574ff9d1fd16a411c09c488935f4fc613498c
    stor1 = 0x9c3386deba43a24b3653f35926d9da8cbabc3fec
    stor7 = 0
    stor8 = 2 * 10^18
    require 4204545 >= block.number
    require stor3 >= stor2
    return code.data[215 len 2346]
}



// =====================  Runtime code  =====================


address owner;
address tokenAddress;
uint256 startBlock;
uint256 endBlock;
address multiSigWalletAddress;
uint256 rate;
uint256 weiRaised;
uint256 minContribution;
uint256 hardcap;
uint256 raisedInPresale;

function endBlock() {
    return endBlock
}

function rate() {
    return rate
}

function weiRaised() {
    return weiRaised
}

function startBlock() {
    return startBlock
}

function multiSigWallet() {
    return multiSigWalletAddress
}

function raisedInPresale() {
    return raisedInPresale
}

function owner() {
    return owner
}

function minContribution() {
    return minContribution
}

function hardcap() {
    return hardcap
}

function token() {
    return tokenAddress
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function hasEnded() {
    require raisedInPresale + weiRaised >= weiRaised
    if block.number > endBlock:
        return (block.number > endBlock)
    return raisedInPresale + weiRaised >= hardcap
}

function finishMinting() {
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0]:
        require ext_call.return_data[0]
        require 60 * ext_call.return_data[0] / ext_call.return_data[0] == 60
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args multiSigWalletAddress, 60 * ext_call.return_data[0] / 40
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x7d64bcb4 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args owner
    require ext_call.success
    emit MainSaleClosed()
}

function buyTokens(address arg1) payable {
    require arg1
    require msg.value + weiRaised >= weiRaised
    require raisedInPresale >= 0
    if block.number < startBlock:
        require block.number >= startBlock
    else:
        require block.number <= endBlock
    require msg.value >= minContribution
    require raisedInPresale + msg.value + weiRaised <= hardcap
    if msg.value:
        require msg.value
        require rate * msg.value / msg.value == rate
    require startBlock + 10160 >= startBlock
    if block.number < startBlock + 10160:
        if rate * msg.value / 20:
            require rate * msg.value / 20
            require 4 * rate * msg.value / 20 / rate * msg.value / 20 == 4
        require (4 * rate * msg.value / 20) + (rate * msg.value) >= rate * msg.value
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args address(arg1), (rate * msg.value) + (4 * rate * msg.value / 20) + (rate * msg.value)
        require ext_call.success
        emit TokenPurchase(msg.value, (rate * msg.value) + (4 * rate * msg.value / 20) + (rate * msg.value), msg.sender, arg1);
    else:
        require startBlock + 15240 >= startBlock
        if block.number >= startBlock + 15240:
            require startBlock + 20320 >= startBlock
            if block.number >= startBlock + 20320:
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), rate * msg.value
                require ext_call.success
                emit TokenPurchase(msg.value, rate * msg.value, msg.sender, arg1);
            else:
                require (rate * msg.value / 20) + (rate * msg.value) >= rate * msg.value
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), (rate * msg.value) + (rate * msg.value / 20) + (rate * msg.value)
                require ext_call.success
                emit TokenPurchase(msg.value, (rate * msg.value) + (rate * msg.value / 20) + (rate * msg.value), msg.sender, arg1);
        else:
            if rate * msg.value / 20:
                require rate * msg.value / 20
                require 3 * rate * msg.value / 20 / rate * msg.value / 20 == 3
            require (3 * rate * msg.value / 20) + (rate * msg.value) >= rate * msg.value
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args address(arg1), (rate * msg.value) + (3 * rate * msg.value / 20) + (rate * msg.value)
            require ext_call.success
            emit TokenPurchase(msg.value, (rate * msg.value) + (3 * rate * msg.value / 20) + (rate * msg.value), msg.sender, arg1);
    call multiSigWalletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    require msg.sender
    require msg.value + weiRaised >= weiRaised
    require raisedInPresale >= 0
    if block.number < startBlock:
        require block.number >= startBlock
    else:
        require block.number <= endBlock
    require msg.value >= minContribution
    require raisedInPresale + msg.value + weiRaised <= hardcap
    if msg.value:
        require msg.value
        require rate * msg.value / msg.value == rate
    require startBlock + 10160 >= startBlock
    if block.number < startBlock + 10160:
        if rate * msg.value / 20:
            require rate * msg.value / 20
            require 4 * rate * msg.value / 20 / rate * msg.value / 20 == 4
        require (4 * rate * msg.value / 20) + (rate * msg.value) >= rate * msg.value
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, (rate * msg.value) + (4 * rate * msg.value / 20) + (rate * msg.value)
        require ext_call.success
        emit TokenPurchase(msg.value, (rate * msg.value) + (4 * rate * msg.value / 20) + (rate * msg.value), msg.sender, msg.sender);
    else:
        require startBlock + 15240 >= startBlock
        if block.number >= startBlock + 15240:
            require startBlock + 20320 >= startBlock
            if block.number >= startBlock + 20320:
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, rate * msg.value
                require ext_call.success
                emit TokenPurchase(msg.value, rate * msg.value, msg.sender, msg.sender);
            else:
                require (rate * msg.value / 20) + (rate * msg.value) >= rate * msg.value
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (rate * msg.value) + (rate * msg.value / 20) + (rate * msg.value)
                require ext_call.success
                emit TokenPurchase(msg.value, (rate * msg.value) + (rate * msg.value / 20) + (rate * msg.value), msg.sender, msg.sender);
        else:
            if rate * msg.value / 20:
                require rate * msg.value / 20
                require 3 * rate * msg.value / 20 / rate * msg.value / 20 == 3
            require (3 * rate * msg.value / 20) + (rate * msg.value) >= rate * msg.value
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, (rate * msg.value) + (3 * rate * msg.value / 20) + (rate * msg.value)
            require ext_call.success
            emit TokenPurchase(msg.value, (rate * msg.value) + (3 * rate * msg.value / 20) + (rate * msg.value), msg.sender, msg.sender);
    call multiSigWalletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
