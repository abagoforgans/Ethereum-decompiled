contract main {




// =====================  Runtime code  =====================


const sub_06f168ea(?) = 100000000 * 10^18

const sub_13f12c31(?) = 447777778 * 10^18

const sub_14b1d04e(?) = 37500000 * 10^18

const founder1Address = 0xc02845566fdbe6c065da32b03dbb0860a96bbe39

const sub_4241f8c1(?) = 140

const sub_5b984526(?) = 0x72a2547d71ca2f1b49bf07f90a2d565f437e8768

const sub_645ec1e7(?) = 120

const sub_6bb10d34(?) = 0xadfd2a1c1837aa86571ae815da5c4a14eec84b14

const sub_8c167e35(?) = (31250 * 10^18 * 3600)

const sub_8f996b4d(?) = 20000000 * 10^18

const founder2Address = 0x229b3d1ee85178700e4b150415c348c6ecc3705c

const sub_91be634e(?) = 6000 * 10^18

const sub_aa655a42(?) = 110

const sub_b793ba89(?) = 18800 * 10^18

const sub_d8489326(?) = 0x4c661783668d6827c430e9d7476ce8113573a022

const sub_da7d0f25(?) = 30000 * 10^18

const sub_f205b274(?) = 100

const HARDCAP = 50000 * 10^18


address tokenAddress;
address owner;
address walletAddress;
uint256 rate;
uint256 openingTime;
uint256 closingTime;
uint256 weiRaised;
uint256 stor7;
uint8 stor8;
uint256 sub_5a2718ae;
uint256 sub_68b5dcd8;
uint256 sub_9d72da6d;

function rate() {
    return rate
}

function weiRaised() {
    return weiRaised
}

function closingTime() {
    return closingTime
}

function wallet() {
    return walletAddress
}

function sub_5a2718ae(?) {
    return sub_5a2718ae
}

function sub_68b5dcd8(?) {
    return sub_68b5dcd8
}

function owner() {
    return owner
}

function sub_9d72da6d(?) {
    return sub_9d72da6d
}

function openingTime() {
    return openingTime
}

function sub_e7d5b1fa(?) {
    return bool(stor8)
}

function token() {
    return tokenAddress
}

function capReached() {
    return 50000 * 10^18 <= weiRaised
}

function hasClosed() {
    return (block.timestamp > closingTime)
}

function moveLeftOvertokensToartistPool() {
    require msg.sender == owner
    require block.timestamp > closingTime
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args 0xadfd2a1c1837aa86571ae815da5c4a14eec84b14, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getBonus() {
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    if block.timestamp < openingTime:
        if block.timestamp <= sub_5a2718ae:
            if block.timestamp > sub_68b5dcd8:
                if block.timestamp <= sub_9d72da6d:
                    if 30000 * 10^18 > weiRaised:
                        return 110
        else:
            if block.timestamp <= sub_68b5dcd8:
                if 18800 * 10^18 > weiRaised:
                    return 120
                return 110
            if block.timestamp <= sub_9d72da6d:
                if 30000 * 10^18 > weiRaised:
                    return 110
    else:
        if block.timestamp <= sub_5a2718ae:
            if 6000 * 10^18 > weiRaised:
                return 140
            return 120
        if block.timestamp <= sub_68b5dcd8:
            if 18800 * 10^18 > weiRaised:
                return 120
            return 110
        if block.timestamp <= sub_9d72da6d:
            if 30000 * 10^18 > weiRaised:
                return 110
    return 100
}

function allocateFoundersTokens() {
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require msg.sender == owner
    require not stor8
    stor8 = 1
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args 0xc02845566fdbe6c065da32b03dbb0860a96bbe39, 31250 * 10^18 * 3600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args 0x229b3d1ee85178700e4b150415c348c6ecc3705c, 37500000 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args 0x72a2547d71ca2f1b49bf07f90a2d565f437e8768, 100000000 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args 0x4c661783668d6827c430e9d7476ce8113573a022, 20000000 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args 0xadfd2a1c1837aa86571ae815da5c4a14eec84b14, 447777778 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function purchaseTokens(address arg1) payable {
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require arg1
    require msg.value != 0
    require msg.value + weiRaised >= weiRaised
    require msg.value + weiRaised <= 50000 * 10^18
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require msg.value != 0
    require msg.value
    require rate * msg.value / msg.value == rate
    require rate * msg.value / 100 != 0
    require rate * msg.value / 100
    if block.timestamp < openingTime:
        if block.timestamp <= sub_5a2718ae:
            if block.timestamp <= sub_68b5dcd8:
                require 100 * rate * msg.value / 100 / rate * msg.value / 100 == 100
                require 100 * rate * msg.value / 100 > 0
                require (100 * rate * msg.value / 100) + stor7 >= stor7
                stor7 += 100 * rate * msg.value / 100
                require 1000000000 * 10^18 >= (100 * rate * msg.value / 100) + stor7
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), 100 * rate * msg.value / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenPurchase(msg.value, 100 * rate * msg.value / 100, msg.sender, arg1);
            else:
                if block.timestamp > sub_9d72da6d:
                    require 100 * rate * msg.value / 100 / rate * msg.value / 100 == 100
                    require 100 * rate * msg.value / 100 > 0
                    require (100 * rate * msg.value / 100) + stor7 >= stor7
                    stor7 += 100 * rate * msg.value / 100
                    require 1000000000 * 10^18 >= (100 * rate * msg.value / 100) + stor7
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), 100 * rate * msg.value / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit TokenPurchase(msg.value, 100 * rate * msg.value / 100, msg.sender, arg1);
                else:
                    if 30000 * 10^18 > weiRaised:
                        require 110 * rate * msg.value / 100 / rate * msg.value / 100 == 110
                        require 110 * rate * msg.value / 100 > 0
                        require (110 * rate * msg.value / 100) + stor7 >= stor7
                        stor7 += 110 * rate * msg.value / 100
                        require 1000000000 * 10^18 >= (110 * rate * msg.value / 100) + stor7
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), 110 * rate * msg.value / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit TokenPurchase(msg.value, 110 * rate * msg.value / 100, msg.sender, arg1);
                    else:
                        require 100 * rate * msg.value / 100 / rate * msg.value / 100 == 100
                        require 100 * rate * msg.value / 100 > 0
                        require (100 * rate * msg.value / 100) + stor7 >= stor7
                        stor7 += 100 * rate * msg.value / 100
                        require 1000000000 * 10^18 >= (100 * rate * msg.value / 100) + stor7
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), 100 * rate * msg.value / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit TokenPurchase(msg.value, 100 * rate * msg.value / 100, msg.sender, arg1);
        else:
            if block.timestamp <= sub_68b5dcd8:
                if 18800 * 10^18 > weiRaised:
                    require 120 * rate * msg.value / 100 / rate * msg.value / 100 == 120
                    require 120 * rate * msg.value / 100 > 0
                    require (120 * rate * msg.value / 100) + stor7 >= stor7
                    stor7 += 120 * rate * msg.value / 100
                    require 1000000000 * 10^18 >= (120 * rate * msg.value / 100) + stor7
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), 120 * rate * msg.value / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit TokenPurchase(msg.value, 120 * rate * msg.value / 100, msg.sender, arg1);
                else:
                    require 110 * rate * msg.value / 100 / rate * msg.value / 100 == 110
                    require 110 * rate * msg.value / 100 > 0
                    require (110 * rate * msg.value / 100) + stor7 >= stor7
                    stor7 += 110 * rate * msg.value / 100
                    require 1000000000 * 10^18 >= (110 * rate * msg.value / 100) + stor7
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), 110 * rate * msg.value / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit TokenPurchase(msg.value, 110 * rate * msg.value / 100, msg.sender, arg1);
            else:
                if block.timestamp > sub_9d72da6d:
                    require 100 * rate * msg.value / 100 / rate * msg.value / 100 == 100
                    require 100 * rate * msg.value / 100 > 0
                    require (100 * rate * msg.value / 100) + stor7 >= stor7
                    stor7 += 100 * rate * msg.value / 100
                    require 1000000000 * 10^18 >= (100 * rate * msg.value / 100) + stor7
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), 100 * rate * msg.value / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit TokenPurchase(msg.value, 100 * rate * msg.value / 100, msg.sender, arg1);
                else:
                    if 30000 * 10^18 > weiRaised:
                        require 110 * rate * msg.value / 100 / rate * msg.value / 100 == 110
                        require 110 * rate * msg.value / 100 > 0
                        require (110 * rate * msg.value / 100) + stor7 >= stor7
                        stor7 += 110 * rate * msg.value / 100
                        require 1000000000 * 10^18 >= (110 * rate * msg.value / 100) + stor7
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), 110 * rate * msg.value / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit TokenPurchase(msg.value, 110 * rate * msg.value / 100, msg.sender, arg1);
                    else:
                        require 100 * rate * msg.value / 100 / rate * msg.value / 100 == 100
                        require 100 * rate * msg.value / 100 > 0
                        require (100 * rate * msg.value / 100) + stor7 >= stor7
                        stor7 += 100 * rate * msg.value / 100
                        require 1000000000 * 10^18 >= (100 * rate * msg.value / 100) + stor7
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), 100 * rate * msg.value / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit TokenPurchase(msg.value, 100 * rate * msg.value / 100, msg.sender, arg1);
    else:
        if block.timestamp <= sub_5a2718ae:
            if 6000 * 10^18 > weiRaised:
                require 140 * rate * msg.value / 100 / rate * msg.value / 100 == 140
                require 140 * rate * msg.value / 100 > 0
                require (140 * rate * msg.value / 100) + stor7 >= stor7
                stor7 += 140 * rate * msg.value / 100
                require 1000000000 * 10^18 >= (140 * rate * msg.value / 100) + stor7
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), 140 * rate * msg.value / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenPurchase(msg.value, 140 * rate * msg.value / 100, msg.sender, arg1);
            else:
                require 120 * rate * msg.value / 100 / rate * msg.value / 100 == 120
                require 120 * rate * msg.value / 100 > 0
                require (120 * rate * msg.value / 100) + stor7 >= stor7
                stor7 += 120 * rate * msg.value / 100
                require 1000000000 * 10^18 >= (120 * rate * msg.value / 100) + stor7
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args address(arg1), 120 * rate * msg.value / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenPurchase(msg.value, 120 * rate * msg.value / 100, msg.sender, arg1);
        else:
            if block.timestamp <= sub_68b5dcd8:
                if 18800 * 10^18 > weiRaised:
                    require 120 * rate * msg.value / 100 / rate * msg.value / 100 == 120
                    require 120 * rate * msg.value / 100 > 0
                    require (120 * rate * msg.value / 100) + stor7 >= stor7
                    stor7 += 120 * rate * msg.value / 100
                    require 1000000000 * 10^18 >= (120 * rate * msg.value / 100) + stor7
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), 120 * rate * msg.value / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit TokenPurchase(msg.value, 120 * rate * msg.value / 100, msg.sender, arg1);
                else:
                    require 110 * rate * msg.value / 100 / rate * msg.value / 100 == 110
                    require 110 * rate * msg.value / 100 > 0
                    require (110 * rate * msg.value / 100) + stor7 >= stor7
                    stor7 += 110 * rate * msg.value / 100
                    require 1000000000 * 10^18 >= (110 * rate * msg.value / 100) + stor7
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), 110 * rate * msg.value / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit TokenPurchase(msg.value, 110 * rate * msg.value / 100, msg.sender, arg1);
            else:
                if block.timestamp > sub_9d72da6d:
                    require 100 * rate * msg.value / 100 / rate * msg.value / 100 == 100
                    require 100 * rate * msg.value / 100 > 0
                    require (100 * rate * msg.value / 100) + stor7 >= stor7
                    stor7 += 100 * rate * msg.value / 100
                    require 1000000000 * 10^18 >= (100 * rate * msg.value / 100) + stor7
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg1), 100 * rate * msg.value / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit TokenPurchase(msg.value, 100 * rate * msg.value / 100, msg.sender, arg1);
                else:
                    if 30000 * 10^18 > weiRaised:
                        require 110 * rate * msg.value / 100 / rate * msg.value / 100 == 110
                        require 110 * rate * msg.value / 100 > 0
                        require (110 * rate * msg.value / 100) + stor7 >= stor7
                        stor7 += 110 * rate * msg.value / 100
                        require 1000000000 * 10^18 >= (110 * rate * msg.value / 100) + stor7
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), 110 * rate * msg.value / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit TokenPurchase(msg.value, 110 * rate * msg.value / 100, msg.sender, arg1);
                    else:
                        require 100 * rate * msg.value / 100 / rate * msg.value / 100 == 100
                        require 100 * rate * msg.value / 100 > 0
                        require (100 * rate * msg.value / 100) + stor7 >= stor7
                        stor7 += 100 * rate * msg.value / 100
                        require 1000000000 * 10^18 >= (100 * rate * msg.value / 100) + stor7
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), 100 * rate * msg.value / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit TokenPurchase(msg.value, 100 * rate * msg.value / 100, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require msg.sender
    require msg.value != 0
    require msg.value + weiRaised >= weiRaised
    require msg.value + weiRaised <= 50000 * 10^18
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require msg.value != 0
    require msg.value
    require rate * msg.value / msg.value == rate
    require rate * msg.value / 100 != 0
    require rate * msg.value / 100
    if block.timestamp < openingTime:
        if block.timestamp <= sub_5a2718ae:
            if block.timestamp <= sub_68b5dcd8:
                require 100 * rate * msg.value / 100 / rate * msg.value / 100 == 100
                require 100 * rate * msg.value / 100 > 0
                require (100 * rate * msg.value / 100) + stor7 >= stor7
                stor7 += 100 * rate * msg.value / 100
                require 1000000000 * 10^18 >= (100 * rate * msg.value / 100) + stor7
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 100 * rate * msg.value / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenPurchase(msg.value, 100 * rate * msg.value / 100, msg.sender, msg.sender);
            else:
                if block.timestamp > sub_9d72da6d:
                    require 100 * rate * msg.value / 100 / rate * msg.value / 100 == 100
                    require 100 * rate * msg.value / 100 > 0
                    require (100 * rate * msg.value / 100) + stor7 >= stor7
                    stor7 += 100 * rate * msg.value / 100
                    require 1000000000 * 10^18 >= (100 * rate * msg.value / 100) + stor7
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 100 * rate * msg.value / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit TokenPurchase(msg.value, 100 * rate * msg.value / 100, msg.sender, msg.sender);
                else:
                    if 30000 * 10^18 > weiRaised:
                        require 110 * rate * msg.value / 100 / rate * msg.value / 100 == 110
                        require 110 * rate * msg.value / 100 > 0
                        require (110 * rate * msg.value / 100) + stor7 >= stor7
                        stor7 += 110 * rate * msg.value / 100
                        require 1000000000 * 10^18 >= (110 * rate * msg.value / 100) + stor7
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 110 * rate * msg.value / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit TokenPurchase(msg.value, 110 * rate * msg.value / 100, msg.sender, msg.sender);
                    else:
                        require 100 * rate * msg.value / 100 / rate * msg.value / 100 == 100
                        require 100 * rate * msg.value / 100 > 0
                        require (100 * rate * msg.value / 100) + stor7 >= stor7
                        stor7 += 100 * rate * msg.value / 100
                        require 1000000000 * 10^18 >= (100 * rate * msg.value / 100) + stor7
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 100 * rate * msg.value / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit TokenPurchase(msg.value, 100 * rate * msg.value / 100, msg.sender, msg.sender);
        else:
            if block.timestamp <= sub_68b5dcd8:
                if 18800 * 10^18 > weiRaised:
                    require 120 * rate * msg.value / 100 / rate * msg.value / 100 == 120
                    require 120 * rate * msg.value / 100 > 0
                    require (120 * rate * msg.value / 100) + stor7 >= stor7
                    stor7 += 120 * rate * msg.value / 100
                    require 1000000000 * 10^18 >= (120 * rate * msg.value / 100) + stor7
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 120 * rate * msg.value / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit TokenPurchase(msg.value, 120 * rate * msg.value / 100, msg.sender, msg.sender);
                else:
                    require 110 * rate * msg.value / 100 / rate * msg.value / 100 == 110
                    require 110 * rate * msg.value / 100 > 0
                    require (110 * rate * msg.value / 100) + stor7 >= stor7
                    stor7 += 110 * rate * msg.value / 100
                    require 1000000000 * 10^18 >= (110 * rate * msg.value / 100) + stor7
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 110 * rate * msg.value / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit TokenPurchase(msg.value, 110 * rate * msg.value / 100, msg.sender, msg.sender);
            else:
                if block.timestamp > sub_9d72da6d:
                    require 100 * rate * msg.value / 100 / rate * msg.value / 100 == 100
                    require 100 * rate * msg.value / 100 > 0
                    require (100 * rate * msg.value / 100) + stor7 >= stor7
                    stor7 += 100 * rate * msg.value / 100
                    require 1000000000 * 10^18 >= (100 * rate * msg.value / 100) + stor7
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 100 * rate * msg.value / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit TokenPurchase(msg.value, 100 * rate * msg.value / 100, msg.sender, msg.sender);
                else:
                    if 30000 * 10^18 > weiRaised:
                        require 110 * rate * msg.value / 100 / rate * msg.value / 100 == 110
                        require 110 * rate * msg.value / 100 > 0
                        require (110 * rate * msg.value / 100) + stor7 >= stor7
                        stor7 += 110 * rate * msg.value / 100
                        require 1000000000 * 10^18 >= (110 * rate * msg.value / 100) + stor7
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 110 * rate * msg.value / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit TokenPurchase(msg.value, 110 * rate * msg.value / 100, msg.sender, msg.sender);
                    else:
                        require 100 * rate * msg.value / 100 / rate * msg.value / 100 == 100
                        require 100 * rate * msg.value / 100 > 0
                        require (100 * rate * msg.value / 100) + stor7 >= stor7
                        stor7 += 100 * rate * msg.value / 100
                        require 1000000000 * 10^18 >= (100 * rate * msg.value / 100) + stor7
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 100 * rate * msg.value / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit TokenPurchase(msg.value, 100 * rate * msg.value / 100, msg.sender, msg.sender);
    else:
        if block.timestamp <= sub_5a2718ae:
            if 6000 * 10^18 > weiRaised:
                require 140 * rate * msg.value / 100 / rate * msg.value / 100 == 140
                require 140 * rate * msg.value / 100 > 0
                require (140 * rate * msg.value / 100) + stor7 >= stor7
                stor7 += 140 * rate * msg.value / 100
                require 1000000000 * 10^18 >= (140 * rate * msg.value / 100) + stor7
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 140 * rate * msg.value / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenPurchase(msg.value, 140 * rate * msg.value / 100, msg.sender, msg.sender);
            else:
                require 120 * rate * msg.value / 100 / rate * msg.value / 100 == 120
                require 120 * rate * msg.value / 100 > 0
                require (120 * rate * msg.value / 100) + stor7 >= stor7
                stor7 += 120 * rate * msg.value / 100
                require 1000000000 * 10^18 >= (120 * rate * msg.value / 100) + stor7
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 120 * rate * msg.value / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                emit TokenPurchase(msg.value, 120 * rate * msg.value / 100, msg.sender, msg.sender);
        else:
            if block.timestamp <= sub_68b5dcd8:
                if 18800 * 10^18 > weiRaised:
                    require 120 * rate * msg.value / 100 / rate * msg.value / 100 == 120
                    require 120 * rate * msg.value / 100 > 0
                    require (120 * rate * msg.value / 100) + stor7 >= stor7
                    stor7 += 120 * rate * msg.value / 100
                    require 1000000000 * 10^18 >= (120 * rate * msg.value / 100) + stor7
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 120 * rate * msg.value / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit TokenPurchase(msg.value, 120 * rate * msg.value / 100, msg.sender, msg.sender);
                else:
                    require 110 * rate * msg.value / 100 / rate * msg.value / 100 == 110
                    require 110 * rate * msg.value / 100 > 0
                    require (110 * rate * msg.value / 100) + stor7 >= stor7
                    stor7 += 110 * rate * msg.value / 100
                    require 1000000000 * 10^18 >= (110 * rate * msg.value / 100) + stor7
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 110 * rate * msg.value / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit TokenPurchase(msg.value, 110 * rate * msg.value / 100, msg.sender, msg.sender);
            else:
                if block.timestamp > sub_9d72da6d:
                    require 100 * rate * msg.value / 100 / rate * msg.value / 100 == 100
                    require 100 * rate * msg.value / 100 > 0
                    require (100 * rate * msg.value / 100) + stor7 >= stor7
                    stor7 += 100 * rate * msg.value / 100
                    require 1000000000 * 10^18 >= (100 * rate * msg.value / 100) + stor7
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 100 * rate * msg.value / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    emit TokenPurchase(msg.value, 100 * rate * msg.value / 100, msg.sender, msg.sender);
                else:
                    if 30000 * 10^18 > weiRaised:
                        require 110 * rate * msg.value / 100 / rate * msg.value / 100 == 110
                        require 110 * rate * msg.value / 100 > 0
                        require (110 * rate * msg.value / 100) + stor7 >= stor7
                        stor7 += 110 * rate * msg.value / 100
                        require 1000000000 * 10^18 >= (110 * rate * msg.value / 100) + stor7
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 110 * rate * msg.value / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit TokenPurchase(msg.value, 110 * rate * msg.value / 100, msg.sender, msg.sender);
                    else:
                        require 100 * rate * msg.value / 100 / rate * msg.value / 100 == 100
                        require 100 * rate * msg.value / 100 > 0
                        require (100 * rate * msg.value / 100) + stor7 >= stor7
                        stor7 += 100 * rate * msg.value / 100
                        require 1000000000 * 10^18 >= (100 * rate * msg.value / 100) + stor7
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 100 * rate * msg.value / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        emit TokenPurchase(msg.value, 100 * rate * msg.value / 100, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
