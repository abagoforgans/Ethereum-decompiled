contract main {


// =======================  Init code  ======================


address stor1;
address stor2;
address stor3;
uint8 stor6;
uint256 stor7;
uint8 stor15;

function _fallback() payable {
    stor6 = 0
    stor7 = 0
    stor15 = 0
    require not msg.value
    stor1 = code.data[4129 len 20]
    stor2 = code.data[4161 len 20]
    stor3 = code.data[4193 len 20]
    return code.data[205 len 3912]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
address fuddTokenAddress;
address beneficiaryAddress;
address creatorAddress;
address confirmedByAddress;
uint256 maxSupply;
uint8 stor6;
uint256 totalSupplied;
uint256 startTimestamp;
uint256 rate;
uint256 firstBonus;
uint256 secondBonus;
uint256 firstTimer;
uint256 secondTimer;
uint256 endTimer;
uint8 stage;

function creator() {
    return creatorAddress
}

function firstBonus() {
    return firstBonus
}

function secondTimer() {
    return secondTimer
}

function rate() {
    return rate
}

function beneficiary() {
    return beneficiaryAddress
}

function fuddToken() {
    return fuddTokenAddress
}

function secondBonus() {
    return secondBonus
}

function totalSupplied() {
    return totalSupplied
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function firstTimer() {
    return firstTimer
}

function stage() {
    require stage <= 3
    return stage
}

function endTimer() {
    return endTimer
}

function confirmedBy() {
    return confirmedByAddress
}

function maxSupply() {
    return maxSupply
}

function purchasingAllowed() {
    return bool(stor6)
}

function startTimestamp() {
    return startTimestamp
}

function confirmBeneficiary() {
    require beneficiaryAddress == msg.sender
    confirmedByAddress = msg.sender
}

function disablePurchasing() {
    require beneficiaryAddress == msg.sender
    require stage <= 3
    require stage == 1
    stor6 = 0
    stage = 2
}

function hasEnded() {
    require stage <= 3
    require stage == 1
    require endTimer + startTimestamp >= startTimestamp
    if block.timestamp >= endTimer + startTimestamp:
        stor6 = 0
        stage = 2
}

function tokensAvailable() {
    require ext_code.size(fuddTokenAddress)
    call fuddTokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function withdraw() {
    require beneficiaryAddress == msg.sender
    require stage <= 3
    require stage == 2
    call beneficiaryAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stage = 3
}

function enablePurchasing(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7) {
    require beneficiaryAddress == msg.sender
    require stage <= 3
    require not stage
    firstTimer = arg1
    secondTimer = arg2
    endTimer = arg3
    maxSupply = arg4
    rate = arg5
    firstBonus = arg6
    secondBonus = arg7
    stor6 = 1
    startTimestamp = block.timestamp
    stage = 1
}

function enableNewPurchasing(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7) {
    require beneficiaryAddress == msg.sender
    require stage <= 3
    require stage == 3
    firstTimer = arg1
    secondTimer = arg2
    endTimer = arg3
    maxSupply = arg4
    rate = arg5
    firstBonus = arg6
    secondBonus = arg7
    totalSupplied = 0
    startTimestamp = block.timestamp
    stor6 = 1
    stage = 1
}

function withdrawForeignTokens(address arg1) {
    require beneficiaryAddress == msg.sender
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args beneficiaryAddress, ext_call.return_data[0]
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function _fallback() payable {
    require stage <= 3
    require stage == 1
    require stage <= 3
    require stage == 1
    require endTimer + startTimestamp >= startTimestamp
    if block.timestamp >= endTimer + startTimestamp:
        stor6 = 0
        stage = 2
    require stor6
    if msg.value != 0:
        if msg.value / 100 * 10^6 != 0:
            require msg.value / 100 * 10^6
            require rate * msg.value / 100 * 10^6 / msg.value / 100 * 10^6 == rate
        if msg.value < 10^16:
            emit sendTokens((rate * msg.value / 100 * 10^6), msg.sender);
            require ext_code.size(fuddTokenAddress)
            call fuddTokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, rate * msg.value / 100 * 10^6
            require ext_call.success
            require (rate * msg.value / 100 * 10^6) + totalSupplied >= totalSupplied
            totalSupplied += rate * msg.value / 100 * 10^6
            if (rate * msg.value / 100 * 10^6) + totalSupplied >= maxSupply:
                stor6 = 0
                stage = 2
        else:
            require firstTimer + startTimestamp >= startTimestamp
            if block.timestamp > firstTimer + startTimestamp:
                require firstTimer + startTimestamp >= startTimestamp
                if firstTimer + startTimestamp >= block.timestamp:
                    emit sendTokens((rate * msg.value / 100 * 10^6), msg.sender);
                    require ext_code.size(fuddTokenAddress)
                    call fuddTokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, rate * msg.value / 100 * 10^6
                    require ext_call.success
                    require (rate * msg.value / 100 * 10^6) + totalSupplied >= totalSupplied
                    totalSupplied += rate * msg.value / 100 * 10^6
                    if (rate * msg.value / 100 * 10^6) + totalSupplied >= maxSupply:
                        stor6 = 0
                        stage = 2
                else:
                    require secondTimer + startTimestamp >= startTimestamp
                    if block.timestamp > secondTimer + startTimestamp:
                        emit sendTokens((rate * msg.value / 100 * 10^6), msg.sender);
                        require ext_code.size(fuddTokenAddress)
                        call fuddTokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, rate * msg.value / 100 * 10^6
                        require ext_call.success
                        require (rate * msg.value / 100 * 10^6) + totalSupplied >= totalSupplied
                        totalSupplied += rate * msg.value / 100 * 10^6
                        if (rate * msg.value / 100 * 10^6) + totalSupplied >= maxSupply:
                            stor6 = 0
                            stage = 2
                    else:
                        if rate * msg.value / 100 * 10^6 / 100 != 0:
                            require rate * msg.value / 100 * 10^6 / 100
                            require secondBonus * rate * msg.value / 100 * 10^6 / 100 / rate * msg.value / 100 * 10^6 / 100 == secondBonus
                        require (secondBonus * rate * msg.value / 100 * 10^6 / 100) + (rate * msg.value / 100 * 10^6) >= rate * msg.value / 100 * 10^6
                        emit sendTokens(((secondBonus * rate * msg.value / 100 * 10^6 / 100) + (rate * msg.value / 100 * 10^6)), msg.sender);
                        require ext_code.size(fuddTokenAddress)
                        call fuddTokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (secondBonus * rate * msg.value / 100 * 10^6 / 100) + (rate * msg.value / 100 * 10^6)
                        require ext_call.success
                        require (secondBonus * rate * msg.value / 100 * 10^6 / 100) + (rate * msg.value / 100 * 10^6) + totalSupplied >= totalSupplied
                        totalSupplied = (secondBonus * rate * msg.value / 100 * 10^6 / 100) + (rate * msg.value / 100 * 10^6) + totalSupplied
                        if (secondBonus * rate * msg.value / 100 * 10^6 / 100) + (rate * msg.value / 100 * 10^6) + totalSupplied >= maxSupply:
                            stor6 = 0
                            stage = 2
            else:
                if rate * msg.value / 100 * 10^6 / 100 != 0:
                    require rate * msg.value / 100 * 10^6 / 100
                    require firstBonus * rate * msg.value / 100 * 10^6 / 100 / rate * msg.value / 100 * 10^6 / 100 == firstBonus
                require (firstBonus * rate * msg.value / 100 * 10^6 / 100) + (rate * msg.value / 100 * 10^6) >= rate * msg.value / 100 * 10^6
                require firstTimer + startTimestamp >= startTimestamp
                if firstTimer + startTimestamp >= block.timestamp:
                    emit sendTokens(((firstBonus * rate * msg.value / 100 * 10^6 / 100) + (rate * msg.value / 100 * 10^6)), msg.sender);
                    require ext_code.size(fuddTokenAddress)
                    call fuddTokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (firstBonus * rate * msg.value / 100 * 10^6 / 100) + (rate * msg.value / 100 * 10^6)
                    require ext_call.success
                    require (firstBonus * rate * msg.value / 100 * 10^6 / 100) + (rate * msg.value / 100 * 10^6) + totalSupplied >= totalSupplied
                    totalSupplied = (firstBonus * rate * msg.value / 100 * 10^6 / 100) + (rate * msg.value / 100 * 10^6) + totalSupplied
                    if (firstBonus * rate * msg.value / 100 * 10^6 / 100) + (rate * msg.value / 100 * 10^6) + totalSupplied >= maxSupply:
                        stor6 = 0
                        stage = 2
                else:
                    require secondTimer + startTimestamp >= startTimestamp
                    if block.timestamp > secondTimer + startTimestamp:
                        emit sendTokens(((firstBonus * rate * msg.value / 100 * 10^6 / 100) + (rate * msg.value / 100 * 10^6)), msg.sender);
                        require ext_code.size(fuddTokenAddress)
                        call fuddTokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (firstBonus * rate * msg.value / 100 * 10^6 / 100) + (rate * msg.value / 100 * 10^6)
                        require ext_call.success
                        require (firstBonus * rate * msg.value / 100 * 10^6 / 100) + (rate * msg.value / 100 * 10^6) + totalSupplied >= totalSupplied
                        totalSupplied = (firstBonus * rate * msg.value / 100 * 10^6 / 100) + (rate * msg.value / 100 * 10^6) + totalSupplied
                        if (firstBonus * rate * msg.value / 100 * 10^6 / 100) + (rate * msg.value / 100 * 10^6) + totalSupplied >= maxSupply:
                            stor6 = 0
                            stage = 2
                    else:
                        if (firstBonus * rate * msg.value / 100 * 10^6 / 100) + (rate * msg.value / 100 * 10^6) / 100 != 0:
                            require (firstBonus * rate * msg.value / 100 * 10^6 / 100) + (rate * msg.value / 100 * 10^6) / 100
                            require secondBonus * (firstBonus * rate * msg.value / 100 * 10^6 / 100) + (rate * msg.value / 100 * 10^6) / 100 / (firstBonus * rate * msg.value / 100 * 10^6 / 100) + (rate * msg.value / 100 * 10^6) / 100 == secondBonus
                        require secondBonus * (firstBonus * rate * msg.value / 100 * 10^6 / 100) + (rate * msg.value / 100 * 10^6) / 100 >= 0
                        emit sendTokens(((secondBonus * (firstBonus * rate * msg.value / 100 * 10^6 / 100) + (rate * msg.value / 100 * 10^6) / 100) + (firstBonus * rate * msg.value / 100 * 10^6 / 100) + (rate * msg.value / 100 * 10^6)), msg.sender);
                        require ext_code.size(fuddTokenAddress)
                        call fuddTokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (secondBonus * (firstBonus * rate * msg.value / 100 * 10^6 / 100) + (rate * msg.value / 100 * 10^6) / 100) + (firstBonus * rate * msg.value / 100 * 10^6 / 100) + (rate * msg.value / 100 * 10^6)
                        require ext_call.success
                        require (secondBonus * (firstBonus * rate * msg.value / 100 * 10^6 / 100) + (rate * msg.value / 100 * 10^6) / 100) + (firstBonus * rate * msg.value / 100 * 10^6 / 100) + (rate * msg.value / 100 * 10^6) + totalSupplied >= totalSupplied
                        totalSupplied = (secondBonus * (firstBonus * rate * msg.value / 100 * 10^6 / 100) + (rate * msg.value / 100 * 10^6) / 100) + (firstBonus * rate * msg.value / 100 * 10^6 / 100) + (rate * msg.value / 100 * 10^6) + totalSupplied
                        if (secondBonus * (firstBonus * rate * msg.value / 100 * 10^6 / 100) + (rate * msg.value / 100 * 10^6) / 100) + (firstBonus * rate * msg.value / 100 * 10^6 / 100) + (rate * msg.value / 100 * 10^6) + totalSupplied >= maxSupply:
                            stor6 = 0
                            stage = 2
}



}
