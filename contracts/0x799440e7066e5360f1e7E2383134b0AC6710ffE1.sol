contract main {


// =======================  Init code  ======================


uint128 stor0; offset 160
address stor0;
address stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint8 stor13;

function _fallback() payable {
    Mask(96, 0, stor0.field_160) = 0
    stor5 = 0
    stor6 = 0
    stor7 = 0
    stor8 = 0
    stor13 = 0
    require not msg.value
    address(stor0.field_0) = msg.sender
    stor1 = code.data[6268 len 20]
    stor2 = code.data[6300 len 20]
    stor3 = code.data[6320 len 32]
    stor4 = code.data[6352 len 32]
    stor9 = code.data[6384 len 32]
    stor11 = stor9 + (3600 * code.data[6416 len 32])
    stor12 = stor11 + (3600 * code.data[6448 len 32])
    stor10 = code.data[6384 len 32] + (24 * 3600 * code.data[6480 len 32])
    return code.data[467 len 5789]
}



// =====================  Runtime code  =====================


const name = 'Lord Coin ICO'

const period3Numerator = 125

const premiumValue = 500 * 10^18

const period2Numerator = 110

const period3Denominator = 100

const period2Denominator = 100


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address LCAddress;
address beneficiaryAddress;
uint256 priceETH;
uint256 priceLC;
uint256 weiRaised;
uint256 investorCount;
uint256 lcSold;
uint256 manualLCs;
uint256 startTime;
uint256 endTime;
uint256 time1;
uint256 time2;
uint8 crowdsaleFinished;

function lcSold() {
    return lcSold
}

function priceLC() {
    return priceLC
}

function LC() {
    return LCAddress
}

function endTime() {
    return endTime
}

function beneficiary() {
    return beneficiaryAddress
}

function weiRaised() {
    return weiRaised
}

function manualLCs() {
    return manualLCs
}

function time1() {
    return time1
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function priceETH() {
    return priceETH
}

function time2() {
    return time2
}

function investorCount() {
    return investorCount
}

function crowdsaleFinished() {
    return bool(crowdsaleFinished)
}

function unpause() {
    require msg.sender == owner
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw(uint256 arg1) {
    require msg.sender == owner
    call beneficiaryAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function finishCrowdsale() {
    require msg.sender == owner
    require ext_code.size(LCAddress)
    call LCAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(LCAddress)
    call LCAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args beneficiaryAddress, ext_call.return_data[0]
    require ext_call.success
    crowdsaleFinished = 1
}

function manualSell(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(LCAddress)
    call LCAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    if not ext_call.return_data[0]:
        investorCount++
    require ext_code.size(LCAddress)
    call LCAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    require lcSold + arg2 >= lcSold
    lcSold += arg2
    require weiRaised >= weiRaised
    emit NewContribution(arg2, 0, arg1);
    require ext_code.size(LCAddress)
    call LCAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if not ext_call.return_data[0]:
        emit GoalReached(weiRaised);
    require manualLCs + arg2 >= manualLCs
    manualLCs += arg2
}

function _fallback() payable {
    require not uint8(stor0.field_160)
    require msg.value >= 10^16
    require block.timestamp > startTime
    require block.timestamp < endTime
    require not crowdsaleFinished
    require msg.sender
    if msg.value:
        require msg.value
        require msg.value * priceLC / msg.value == priceLC
    require priceETH
    if block.timestamp <= time1:
        if block.timestamp <= time2:
            require ext_code.size(LCAddress)
            call LCAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            require ext_code.size(LCAddress)
            if ext_call.return_data[0] >= msg.value * priceLC / priceETH:
                call LCAddress.0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args msg.sender
                require ext_call.success
                if not ext_call.return_data[0]:
                    investorCount++
                require ext_code.size(LCAddress)
                call LCAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, msg.value * priceLC / priceETH
                require ext_call.success
                require lcSold + (msg.value * priceLC / priceETH) >= lcSold
                lcSold += msg.value * priceLC / priceETH
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                emit NewContribution(msg.value * priceLC / priceETH, msg.value, msg.sender);
            else:
                call LCAddress.0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args this.address
                require ext_call.success
                if msg.value:
                    require msg.value
                    require msg.value * ext_call.return_data[0] / msg.value == ext_call.return_data[0]
                require msg.value * priceLC / priceETH
                require msg.value * ext_call.return_data[0] / msg.value * priceLC / priceETH <= msg.value
                call msg.sender with:
                   value msg.value - (msg.value * ext_call.return_data[0] / msg.value * priceLC / priceETH) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require ext_code.size(LCAddress)
                call LCAddress.0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args msg.sender
                require ext_call.success
                if not ext_call.return_data[0]:
                    investorCount++
                require ext_code.size(LCAddress)
                call LCAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, ext_call.return_data[0]
                require ext_call.success
                require lcSold + ext_call.return_data[0] >= lcSold
                lcSold += ext_call.return_data[0]
                require weiRaised + (msg.value * ext_call.return_data[0] / msg.value * priceLC / priceETH) >= weiRaised
                weiRaised += msg.value * ext_call.return_data[0] / msg.value * priceLC / priceETH
                emit NewContribution(ext_call.return_data[0], msg.value * ext_call.return_data[0] / msg.value * priceLC / priceETH, msg.sender);
        else:
            if msg.value >= 500 * 10^18:
                require ext_code.size(LCAddress)
                call LCAddress.0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args this.address
                require ext_call.success
                require ext_code.size(LCAddress)
                if ext_call.return_data[0] >= msg.value * priceLC / priceETH:
                    call LCAddress.0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args msg.sender
                    require ext_call.success
                    if not ext_call.return_data[0]:
                        investorCount++
                    require ext_code.size(LCAddress)
                    call LCAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.value * priceLC / priceETH
                    require ext_call.success
                    require lcSold + (msg.value * priceLC / priceETH) >= lcSold
                    lcSold += msg.value * priceLC / priceETH
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    emit NewContribution(msg.value * priceLC / priceETH, msg.value, msg.sender);
                else:
                    call LCAddress.0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args this.address
                    require ext_call.success
                    if msg.value:
                        require msg.value
                        require msg.value * ext_call.return_data[0] / msg.value == ext_call.return_data[0]
                    require msg.value * priceLC / priceETH
                    require msg.value * ext_call.return_data[0] / msg.value * priceLC / priceETH <= msg.value
                    call msg.sender with:
                       value msg.value - (msg.value * ext_call.return_data[0] / msg.value * priceLC / priceETH) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require ext_code.size(LCAddress)
                    call LCAddress.0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args msg.sender
                    require ext_call.success
                    if not ext_call.return_data[0]:
                        investorCount++
                    require ext_code.size(LCAddress)
                    call LCAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, ext_call.return_data[0]
                    require ext_call.success
                    require lcSold + ext_call.return_data[0] >= lcSold
                    lcSold += ext_call.return_data[0]
                    require weiRaised + (msg.value * ext_call.return_data[0] / msg.value * priceLC / priceETH) >= weiRaised
                    weiRaised += msg.value * ext_call.return_data[0] / msg.value * priceLC / priceETH
                    emit NewContribution(ext_call.return_data[0], msg.value * ext_call.return_data[0] / msg.value * priceLC / priceETH, msg.sender);
            else:
                if msg.value * priceLC / priceETH:
                    require msg.value * priceLC / priceETH
                    require 100 * msg.value * priceLC / priceETH / msg.value * priceLC / priceETH == 100
                require ext_code.size(LCAddress)
                call LCAddress.0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args this.address
                require ext_call.success
                require ext_code.size(LCAddress)
                if ext_call.return_data[0] >= 100 * msg.value * priceLC / priceETH / 125:
                    call LCAddress.0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args msg.sender
                    require ext_call.success
                    if not ext_call.return_data[0]:
                        investorCount++
                    require ext_code.size(LCAddress)
                    call LCAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 100 * msg.value * priceLC / priceETH / 125
                    require ext_call.success
                    require lcSold + (100 * msg.value * priceLC / priceETH / 125) >= lcSold
                    lcSold += 100 * msg.value * priceLC / priceETH / 125
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    emit NewContribution(100 * msg.value * priceLC / priceETH / 125, msg.value, msg.sender);
                else:
                    call LCAddress.0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args this.address
                    require ext_call.success
                    if msg.value:
                        require msg.value
                        require msg.value * ext_call.return_data[0] / msg.value == ext_call.return_data[0]
                    require 100 * msg.value * priceLC / priceETH / 125
                    require msg.value * ext_call.return_data[0] / 100 * msg.value * priceLC / priceETH / 125 <= msg.value
                    call msg.sender with:
                       value msg.value - (msg.value * ext_call.return_data[0] / 100 * msg.value * priceLC / priceETH / 125) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require ext_code.size(LCAddress)
                    call LCAddress.0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args msg.sender
                    require ext_call.success
                    if not ext_call.return_data[0]:
                        investorCount++
                    require ext_code.size(LCAddress)
                    call LCAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, ext_call.return_data[0]
                    require ext_call.success
                    require lcSold + ext_call.return_data[0] >= lcSold
                    lcSold += ext_call.return_data[0]
                    require weiRaised + (msg.value * ext_call.return_data[0] / 100 * msg.value * priceLC / priceETH / 125) >= weiRaised
                    weiRaised += msg.value * ext_call.return_data[0] / 100 * msg.value * priceLC / priceETH / 125
                    emit NewContribution(ext_call.return_data[0], msg.value * ext_call.return_data[0] / 100 * msg.value * priceLC / priceETH / 125, msg.sender);
    else:
        if block.timestamp > time2:
            if msg.value >= 500 * 10^18:
                require ext_code.size(LCAddress)
                call LCAddress.0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args this.address
                require ext_call.success
                require ext_code.size(LCAddress)
                if ext_call.return_data[0] >= msg.value * priceLC / priceETH:
                    call LCAddress.0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args msg.sender
                    require ext_call.success
                    if not ext_call.return_data[0]:
                        investorCount++
                    require ext_code.size(LCAddress)
                    call LCAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.value * priceLC / priceETH
                    require ext_call.success
                    require lcSold + (msg.value * priceLC / priceETH) >= lcSold
                    lcSold += msg.value * priceLC / priceETH
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    emit NewContribution(msg.value * priceLC / priceETH, msg.value, msg.sender);
                else:
                    call LCAddress.0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args this.address
                    require ext_call.success
                    if msg.value:
                        require msg.value
                        require msg.value * ext_call.return_data[0] / msg.value == ext_call.return_data[0]
                    require msg.value * priceLC / priceETH
                    require msg.value * ext_call.return_data[0] / msg.value * priceLC / priceETH <= msg.value
                    call msg.sender with:
                       value msg.value - (msg.value * ext_call.return_data[0] / msg.value * priceLC / priceETH) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require ext_code.size(LCAddress)
                    call LCAddress.0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args msg.sender
                    require ext_call.success
                    if not ext_call.return_data[0]:
                        investorCount++
                    require ext_code.size(LCAddress)
                    call LCAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, ext_call.return_data[0]
                    require ext_call.success
                    require lcSold + ext_call.return_data[0] >= lcSold
                    lcSold += ext_call.return_data[0]
                    require weiRaised + (msg.value * ext_call.return_data[0] / msg.value * priceLC / priceETH) >= weiRaised
                    weiRaised += msg.value * ext_call.return_data[0] / msg.value * priceLC / priceETH
                    emit NewContribution(ext_call.return_data[0], msg.value * ext_call.return_data[0] / msg.value * priceLC / priceETH, msg.sender);
            else:
                if msg.value * priceLC / priceETH:
                    require msg.value * priceLC / priceETH
                    require 100 * msg.value * priceLC / priceETH / msg.value * priceLC / priceETH == 100
                require ext_code.size(LCAddress)
                call LCAddress.0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args this.address
                require ext_call.success
                require ext_code.size(LCAddress)
                if ext_call.return_data[0] >= 100 * msg.value * priceLC / priceETH / 125:
                    call LCAddress.0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args msg.sender
                    require ext_call.success
                    if not ext_call.return_data[0]:
                        investorCount++
                    require ext_code.size(LCAddress)
                    call LCAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 100 * msg.value * priceLC / priceETH / 125
                    require ext_call.success
                    require lcSold + (100 * msg.value * priceLC / priceETH / 125) >= lcSold
                    lcSold += 100 * msg.value * priceLC / priceETH / 125
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    emit NewContribution(100 * msg.value * priceLC / priceETH / 125, msg.value, msg.sender);
                else:
                    call LCAddress.0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args this.address
                    require ext_call.success
                    if msg.value:
                        require msg.value
                        require msg.value * ext_call.return_data[0] / msg.value == ext_call.return_data[0]
                    require 100 * msg.value * priceLC / priceETH / 125
                    require msg.value * ext_call.return_data[0] / 100 * msg.value * priceLC / priceETH / 125 <= msg.value
                    call msg.sender with:
                       value msg.value - (msg.value * ext_call.return_data[0] / 100 * msg.value * priceLC / priceETH / 125) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require ext_code.size(LCAddress)
                    call LCAddress.0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args msg.sender
                    require ext_call.success
                    if not ext_call.return_data[0]:
                        investorCount++
                    require ext_code.size(LCAddress)
                    call LCAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, ext_call.return_data[0]
                    require ext_call.success
                    require lcSold + ext_call.return_data[0] >= lcSold
                    lcSold += ext_call.return_data[0]
                    require weiRaised + (msg.value * ext_call.return_data[0] / 100 * msg.value * priceLC / priceETH / 125) >= weiRaised
                    weiRaised += msg.value * ext_call.return_data[0] / 100 * msg.value * priceLC / priceETH / 125
                    emit NewContribution(ext_call.return_data[0], msg.value * ext_call.return_data[0] / 100 * msg.value * priceLC / priceETH / 125, msg.sender);
        else:
            if msg.value >= 500 * 10^18:
                if block.timestamp <= time2:
                    require ext_code.size(LCAddress)
                    call LCAddress.0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args this.address
                    require ext_call.success
                    require ext_code.size(LCAddress)
                    if ext_call.return_data[0] >= msg.value * priceLC / priceETH:
                        call LCAddress.0x70a08231 with:
                             gas gas_remaining - 710 wei
                            args msg.sender
                        require ext_call.success
                        if not ext_call.return_data[0]:
                            investorCount++
                        require ext_code.size(LCAddress)
                        call LCAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value * priceLC / priceETH
                        require ext_call.success
                        require lcSold + (msg.value * priceLC / priceETH) >= lcSold
                        lcSold += msg.value * priceLC / priceETH
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        emit NewContribution(msg.value * priceLC / priceETH, msg.value, msg.sender);
                    else:
                        call LCAddress.0x70a08231 with:
                             gas gas_remaining - 710 wei
                            args this.address
                        require ext_call.success
                        if msg.value:
                            require msg.value
                            require msg.value * ext_call.return_data[0] / msg.value == ext_call.return_data[0]
                        require msg.value * priceLC / priceETH
                        require msg.value * ext_call.return_data[0] / msg.value * priceLC / priceETH <= msg.value
                        call msg.sender with:
                           value msg.value - (msg.value * ext_call.return_data[0] / msg.value * priceLC / priceETH) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require ext_code.size(LCAddress)
                        call LCAddress.0x70a08231 with:
                             gas gas_remaining - 710 wei
                            args msg.sender
                        require ext_call.success
                        if not ext_call.return_data[0]:
                            investorCount++
                        require ext_code.size(LCAddress)
                        call LCAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, ext_call.return_data[0]
                        require ext_call.success
                        require lcSold + ext_call.return_data[0] >= lcSold
                        lcSold += ext_call.return_data[0]
                        require weiRaised + (msg.value * ext_call.return_data[0] / msg.value * priceLC / priceETH) >= weiRaised
                        weiRaised += msg.value * ext_call.return_data[0] / msg.value * priceLC / priceETH
                        emit NewContribution(ext_call.return_data[0], msg.value * ext_call.return_data[0] / msg.value * priceLC / priceETH, msg.sender);
                else:
                    if msg.value >= 500 * 10^18:
                        require ext_code.size(LCAddress)
                        call LCAddress.0x70a08231 with:
                             gas gas_remaining - 710 wei
                            args this.address
                        require ext_call.success
                        require ext_code.size(LCAddress)
                        if ext_call.return_data[0] >= msg.value * priceLC / priceETH:
                            call LCAddress.0x70a08231 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender
                            require ext_call.success
                            if not ext_call.return_data[0]:
                                investorCount++
                            require ext_code.size(LCAddress)
                            call LCAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, msg.value * priceLC / priceETH
                            require ext_call.success
                            require lcSold + (msg.value * priceLC / priceETH) >= lcSold
                            lcSold += msg.value * priceLC / priceETH
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            emit NewContribution(msg.value * priceLC / priceETH, msg.value, msg.sender);
                        else:
                            call LCAddress.0x70a08231 with:
                                 gas gas_remaining - 710 wei
                                args this.address
                            require ext_call.success
                            if msg.value:
                                require msg.value
                                require msg.value * ext_call.return_data[0] / msg.value == ext_call.return_data[0]
                            require msg.value * priceLC / priceETH
                            require msg.value * ext_call.return_data[0] / msg.value * priceLC / priceETH <= msg.value
                            call msg.sender with:
                               value msg.value - (msg.value * ext_call.return_data[0] / msg.value * priceLC / priceETH) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require ext_code.size(LCAddress)
                            call LCAddress.0x70a08231 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender
                            require ext_call.success
                            if not ext_call.return_data[0]:
                                investorCount++
                            require ext_code.size(LCAddress)
                            call LCAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            require lcSold + ext_call.return_data[0] >= lcSold
                            lcSold += ext_call.return_data[0]
                            require weiRaised + (msg.value * ext_call.return_data[0] / msg.value * priceLC / priceETH) >= weiRaised
                            weiRaised += msg.value * ext_call.return_data[0] / msg.value * priceLC / priceETH
                            emit NewContribution(ext_call.return_data[0], msg.value * ext_call.return_data[0] / msg.value * priceLC / priceETH, msg.sender);
                    else:
                        if msg.value * priceLC / priceETH:
                            require msg.value * priceLC / priceETH
                            require 100 * msg.value * priceLC / priceETH / msg.value * priceLC / priceETH == 100
                        require ext_code.size(LCAddress)
                        call LCAddress.0x70a08231 with:
                             gas gas_remaining - 710 wei
                            args this.address
                        require ext_call.success
                        require ext_code.size(LCAddress)
                        if ext_call.return_data[0] >= 100 * msg.value * priceLC / priceETH / 125:
                            call LCAddress.0x70a08231 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender
                            require ext_call.success
                            if not ext_call.return_data[0]:
                                investorCount++
                            require ext_code.size(LCAddress)
                            call LCAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 100 * msg.value * priceLC / priceETH / 125
                            require ext_call.success
                            require lcSold + (100 * msg.value * priceLC / priceETH / 125) >= lcSold
                            lcSold += 100 * msg.value * priceLC / priceETH / 125
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            emit NewContribution(100 * msg.value * priceLC / priceETH / 125, msg.value, msg.sender);
                        else:
                            call LCAddress.0x70a08231 with:
                                 gas gas_remaining - 710 wei
                                args this.address
                            require ext_call.success
                            if msg.value:
                                require msg.value
                                require msg.value * ext_call.return_data[0] / msg.value == ext_call.return_data[0]
                            require 100 * msg.value * priceLC / priceETH / 125
                            require msg.value * ext_call.return_data[0] / 100 * msg.value * priceLC / priceETH / 125 <= msg.value
                            call msg.sender with:
                               value msg.value - (msg.value * ext_call.return_data[0] / 100 * msg.value * priceLC / priceETH / 125) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require ext_code.size(LCAddress)
                            call LCAddress.0x70a08231 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender
                            require ext_call.success
                            if not ext_call.return_data[0]:
                                investorCount++
                            require ext_code.size(LCAddress)
                            call LCAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            require lcSold + ext_call.return_data[0] >= lcSold
                            lcSold += ext_call.return_data[0]
                            require weiRaised + (msg.value * ext_call.return_data[0] / 100 * msg.value * priceLC / priceETH / 125) >= weiRaised
                            weiRaised += msg.value * ext_call.return_data[0] / 100 * msg.value * priceLC / priceETH / 125
                            emit NewContribution(ext_call.return_data[0], msg.value * ext_call.return_data[0] / 100 * msg.value * priceLC / priceETH / 125, msg.sender);
            else:
                if msg.value * priceLC / priceETH:
                    require msg.value * priceLC / priceETH
                    require 100 * msg.value * priceLC / priceETH / msg.value * priceLC / priceETH == 100
                if block.timestamp <= time2:
                    require ext_code.size(LCAddress)
                    call LCAddress.0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args this.address
                    require ext_call.success
                    require ext_code.size(LCAddress)
                    if ext_call.return_data[0] >= 100 * msg.value * priceLC / priceETH / 110:
                        call LCAddress.0x70a08231 with:
                             gas gas_remaining - 710 wei
                            args msg.sender
                        require ext_call.success
                        if not ext_call.return_data[0]:
                            investorCount++
                        require ext_code.size(LCAddress)
                        call LCAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 100 * msg.value * priceLC / priceETH / 110
                        require ext_call.success
                        require lcSold + (100 * msg.value * priceLC / priceETH / 110) >= lcSold
                        lcSold += 100 * msg.value * priceLC / priceETH / 110
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        emit NewContribution(100 * msg.value * priceLC / priceETH / 110, msg.value, msg.sender);
                    else:
                        call LCAddress.0x70a08231 with:
                             gas gas_remaining - 710 wei
                            args this.address
                        require ext_call.success
                        if msg.value:
                            require msg.value
                            require msg.value * ext_call.return_data[0] / msg.value == ext_call.return_data[0]
                        require 100 * msg.value * priceLC / priceETH / 110
                        require msg.value * ext_call.return_data[0] / 100 * msg.value * priceLC / priceETH / 110 <= msg.value
                        call msg.sender with:
                           value msg.value - (msg.value * ext_call.return_data[0] / 100 * msg.value * priceLC / priceETH / 110) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require ext_code.size(LCAddress)
                        call LCAddress.0x70a08231 with:
                             gas gas_remaining - 710 wei
                            args msg.sender
                        require ext_call.success
                        if not ext_call.return_data[0]:
                            investorCount++
                        require ext_code.size(LCAddress)
                        call LCAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, ext_call.return_data[0]
                        require ext_call.success
                        require lcSold + ext_call.return_data[0] >= lcSold
                        lcSold += ext_call.return_data[0]
                        require weiRaised + (msg.value * ext_call.return_data[0] / 100 * msg.value * priceLC / priceETH / 110) >= weiRaised
                        weiRaised += msg.value * ext_call.return_data[0] / 100 * msg.value * priceLC / priceETH / 110
                        emit NewContribution(ext_call.return_data[0], msg.value * ext_call.return_data[0] / 100 * msg.value * priceLC / priceETH / 110, msg.sender);
                else:
                    if msg.value >= 500 * 10^18:
                        require ext_code.size(LCAddress)
                        call LCAddress.0x70a08231 with:
                             gas gas_remaining - 710 wei
                            args this.address
                        require ext_call.success
                        require ext_code.size(LCAddress)
                        if ext_call.return_data[0] >= 100 * msg.value * priceLC / priceETH / 110:
                            call LCAddress.0x70a08231 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender
                            require ext_call.success
                            if not ext_call.return_data[0]:
                                investorCount++
                            require ext_code.size(LCAddress)
                            call LCAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 100 * msg.value * priceLC / priceETH / 110
                            require ext_call.success
                            require lcSold + (100 * msg.value * priceLC / priceETH / 110) >= lcSold
                            lcSold += 100 * msg.value * priceLC / priceETH / 110
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            emit NewContribution(100 * msg.value * priceLC / priceETH / 110, msg.value, msg.sender);
                        else:
                            call LCAddress.0x70a08231 with:
                                 gas gas_remaining - 710 wei
                                args this.address
                            require ext_call.success
                            if msg.value:
                                require msg.value
                                require msg.value * ext_call.return_data[0] / msg.value == ext_call.return_data[0]
                            require 100 * msg.value * priceLC / priceETH / 110
                            require msg.value * ext_call.return_data[0] / 100 * msg.value * priceLC / priceETH / 110 <= msg.value
                            call msg.sender with:
                               value msg.value - (msg.value * ext_call.return_data[0] / 100 * msg.value * priceLC / priceETH / 110) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require ext_code.size(LCAddress)
                            call LCAddress.0x70a08231 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender
                            require ext_call.success
                            if not ext_call.return_data[0]:
                                investorCount++
                            require ext_code.size(LCAddress)
                            call LCAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            require lcSold + ext_call.return_data[0] >= lcSold
                            lcSold += ext_call.return_data[0]
                            require weiRaised + (msg.value * ext_call.return_data[0] / 100 * msg.value * priceLC / priceETH / 110) >= weiRaised
                            weiRaised += msg.value * ext_call.return_data[0] / 100 * msg.value * priceLC / priceETH / 110
                            emit NewContribution(ext_call.return_data[0], msg.value * ext_call.return_data[0] / 100 * msg.value * priceLC / priceETH / 110, msg.sender);
                    else:
                        if 100 * msg.value * priceLC / priceETH / 110:
                            require 100 * msg.value * priceLC / priceETH / 110
                            require 100 * 100 * msg.value * priceLC / priceETH / 110 / 100 * msg.value * priceLC / priceETH / 110 == 100
                        require ext_code.size(LCAddress)
                        call LCAddress.0x70a08231 with:
                             gas gas_remaining - 710 wei
                            args this.address
                        require ext_call.success
                        require ext_code.size(LCAddress)
                        if ext_call.return_data[0] >= 100 * 100 * msg.value * priceLC / priceETH / 110 / 125:
                            call LCAddress.0x70a08231 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender
                            require ext_call.success
                            if not ext_call.return_data[0]:
                                investorCount++
                            require ext_code.size(LCAddress)
                            call LCAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 100 * 100 * msg.value * priceLC / priceETH / 110 / 125
                            require ext_call.success
                            require lcSold + (100 * 100 * msg.value * priceLC / priceETH / 110 / 125) >= lcSold
                            lcSold += 100 * 100 * msg.value * priceLC / priceETH / 110 / 125
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            emit NewContribution(100 * 100 * msg.value * priceLC / priceETH / 110 / 125, msg.value, msg.sender);
                        else:
                            call LCAddress.0x70a08231 with:
                                 gas gas_remaining - 710 wei
                                args this.address
                            require ext_call.success
                            if msg.value:
                                require msg.value
                                require msg.value * ext_call.return_data[0] / msg.value == ext_call.return_data[0]
                            require 100 * 100 * msg.value * priceLC / priceETH / 110 / 125
                            require msg.value * ext_call.return_data[0] / 100 * 100 * msg.value * priceLC / priceETH / 110 / 125 <= msg.value
                            call msg.sender with:
                               value msg.value - (msg.value * ext_call.return_data[0] / 100 * 100 * msg.value * priceLC / priceETH / 110 / 125) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require ext_code.size(LCAddress)
                            call LCAddress.0x70a08231 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender
                            require ext_call.success
                            if not ext_call.return_data[0]:
                                investorCount++
                            require ext_code.size(LCAddress)
                            call LCAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, ext_call.return_data[0]
                            require ext_call.success
                            require lcSold + ext_call.return_data[0] >= lcSold
                            lcSold += ext_call.return_data[0]
                            require weiRaised + (msg.value * ext_call.return_data[0] / 100 * 100 * msg.value * priceLC / priceETH / 110 / 125) >= weiRaised
                            weiRaised += msg.value * ext_call.return_data[0] / 100 * 100 * msg.value * priceLC / priceETH / 110 / 125
                            emit NewContribution(ext_call.return_data[0], msg.value * ext_call.return_data[0] / 100 * 100 * msg.value * priceLC / priceETH / 110 / 125, msg.sender);
    require ext_code.size(LCAddress)
    call LCAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if not ext_call.return_data[0]:
        emit GoalReached(weiRaised);
}



}
