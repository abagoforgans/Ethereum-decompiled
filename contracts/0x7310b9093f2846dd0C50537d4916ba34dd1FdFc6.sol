contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor4;
uint256 stor5;
uint8 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor11;

function _fallback() {
    stor2 = 0xa6c9e4d4b34d432d4aea793fa8c380b9940a5279
    require ext_code.size(0xa6c9e4d4b34d432d4aea793fa8c380b9940a5279)
    call 0xa6c9e4d4b34d432d4aea793fa8c380b9940a5279.getDecimals() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor4 = ext_call.return_data[0]
    stor11 = 20
    stor6 = 0
    stor9 = block.timestamp
    require block.number + 15247 >= block.number
    stor7 = block.number + 15247
    stor8 = block.number + 167717
    stor0 = 0xfe777fa444fae128169754877d51b665ee557ee
    stor1 = 0xa6c9e4d4b34d432d4aea793fa8c380b9940a5279
    stor5 = 15 * 10^6 * 10^stor4
    return code.data[388 len 2710]
}



// =====================  Runtime code  =====================


address ethOwner;
address kairosOwner;
address tokenAddress;
mapping of uint256 stor3;
uint256 decimals;
uint256 icoMinCap;
uint8 stor6;
uint256 icoStartBlock;
uint256 icoEndBlock;
uint256 icoStartTime;
uint256 totalSupply;
uint256 exchangeRate;

function icoStartBlock() {
    return icoStartBlock
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function exchangeRate() {
    return exchangeRate
}

function icoEndBlock() {
    return icoEndBlock
}

function ethOwner() {
    return ethOwner
}

function kairosOwner() {
    return kairosOwner
}

function isFinalized() {
    return bool(stor6)
}

function icoStartTime() {
    return icoStartTime
}

function token() {
    return tokenAddress
}

function icoMinCap() {
    return icoMinCap
}

function finalize() {
    require not stor6
    require ethOwner == msg.sender
    require block.number > icoEndBlock
    stor6 = 1
    call ethOwner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function refund() {
    require not stor6
    require block.number > icoEndBlock
    require ext_code.size(tokenAddress)
    call tokenAddress.getOwner() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] != msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    require stor3[address(msg.sender)]
    stor3[address(msg.sender)] = 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, kairosOwner, ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
    call msg.sender with:
       value stor3[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        emit RefundError(stor3[address(msg.sender)], msg.sender);
        revert
    emit Refund(stor3[address(msg.sender)], msg.sender);
}

function _fallback() payable {
    if not stor6:
        if block.number >= icoStartBlock:
            if block.number <= icoEndBlock:
                stor3[address(msg.sender)] += msg.value
                require icoStartTime <= block.timestamp
                if block.timestamp - icoStartTime > 504 * 24 * 3600:
                    if msg.value / 100:
                        require msg.value / 100
                        require not 0 / msg.value / 100
                    if msg.value > 10^6:
                        if msg.value / 100:
                            require msg.value / 100
                            require 5 * msg.value / 100 / msg.value / 100 == 5
                        require (5 * msg.value / 100) + msg.value >= msg.value
                        if (5 * msg.value / 100) + msg.value:
                            require (5 * msg.value / 100) + msg.value
                            require (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (5 * msg.value / 100) + msg.value == exchangeRate
                        require (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                        totalSupply = (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                        require ext_code.size(tokenAddress)
                        call tokenAddress.getOwner() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0]), msg.sender, (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                        require ext_call.success
                        if ext_call.return_data[0]:
                        require (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                        totalSupply = totalSupply - (5 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                    else:
                        if msg.value > 999999:
                            if msg.value > 99999:
                                if msg.value > 49999:
                                    if msg.value / 100:
                                        require msg.value / 100
                                        require not 0 / msg.value / 100
                                    require msg.value >= msg.value
                                    if msg.value:
                                        require msg.value
                                        require exchangeRate * msg.value / msg.value == exchangeRate
                                    require (exchangeRate * msg.value) + totalSupply >= totalSupply
                                    totalSupply += exchangeRate * msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.getOwner() with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, exchangeRate * msg.value
                                    require ext_call.success
                                    if ext_call.return_data[0]:
                                    require exchangeRate * msg.value <= totalSupply
                                    totalSupply += -1 * exchangeRate * msg.value
                                else:
                                    if msg.value < 10000:
                                        if msg.value / 100:
                                            require msg.value / 100
                                            require not 0 / msg.value / 100
                                        require msg.value >= msg.value
                                        if msg.value:
                                            require msg.value
                                            require exchangeRate * msg.value / msg.value == exchangeRate
                                        require (exchangeRate * msg.value) + totalSupply >= totalSupply
                                        totalSupply += exchangeRate * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.getOwner() with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x23b872dd with:
                                             gas gas_remaining - 710 wei
                                            args address(ext_call.return_data[0]), msg.sender, exchangeRate * msg.value
                                        require ext_call.success
                                        if ext_call.return_data[0]:
                                        require exchangeRate * msg.value <= totalSupply
                                        totalSupply += -1 * exchangeRate * msg.value
                                    else:
                                        if msg.value / 100:
                                            require msg.value / 100
                                            require msg.value / 100 / msg.value / 100 == 1
                                        require (msg.value / 100) + msg.value >= msg.value
                                        if (msg.value / 100) + msg.value:
                                            require (msg.value / 100) + msg.value
                                            require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (msg.value / 100) + msg.value == exchangeRate
                                        require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                        totalSupply = (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.getOwner() with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x23b872dd with:
                                             gas gas_remaining - 710 wei
                                            args address(ext_call.return_data[0]), msg.sender, (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                        require ext_call.success
                                        if ext_call.return_data[0]:
                                        require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                        totalSupply = totalSupply - (msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                            else:
                                if msg.value >= 50000:
                                    if msg.value / 100:
                                        require msg.value / 100
                                        require 2 * msg.value / 100 / msg.value / 100 == 2
                                    require (2 * msg.value / 100) + msg.value >= msg.value
                                    if (2 * msg.value / 100) + msg.value:
                                        require (2 * msg.value / 100) + msg.value
                                        require (2 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (2 * msg.value / 100) + msg.value == exchangeRate
                                    require (2 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                    totalSupply = (2 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.getOwner() with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, (2 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                    require ext_call.success
                                    if ext_call.return_data[0]:
                                    require (2 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                    totalSupply = totalSupply - (2 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                else:
                                    if msg.value > 49999:
                                        if msg.value / 100:
                                            require msg.value / 100
                                            require not 0 / msg.value / 100
                                        require msg.value >= msg.value
                                        if msg.value:
                                            require msg.value
                                            require exchangeRate * msg.value / msg.value == exchangeRate
                                        require (exchangeRate * msg.value) + totalSupply >= totalSupply
                                        totalSupply += exchangeRate * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.getOwner() with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x23b872dd with:
                                             gas gas_remaining - 710 wei
                                            args address(ext_call.return_data[0]), msg.sender, exchangeRate * msg.value
                                        require ext_call.success
                                        if ext_call.return_data[0]:
                                        require exchangeRate * msg.value <= totalSupply
                                        totalSupply += -1 * exchangeRate * msg.value
                                    else:
                                        if msg.value < 10000:
                                            if msg.value / 100:
                                                require msg.value / 100
                                                require not 0 / msg.value / 100
                                            require msg.value >= msg.value
                                            if msg.value:
                                                require msg.value
                                                require exchangeRate * msg.value / msg.value == exchangeRate
                                            require (exchangeRate * msg.value) + totalSupply >= totalSupply
                                            totalSupply += exchangeRate * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.getOwner() with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args address(ext_call.return_data[0]), msg.sender, exchangeRate * msg.value
                                            require ext_call.success
                                            if ext_call.return_data[0]:
                                            require exchangeRate * msg.value <= totalSupply
                                            totalSupply += -1 * exchangeRate * msg.value
                                        else:
                                            if msg.value / 100:
                                                require msg.value / 100
                                                require msg.value / 100 / msg.value / 100 == 1
                                            require (msg.value / 100) + msg.value >= msg.value
                                            if (msg.value / 100) + msg.value:
                                                require (msg.value / 100) + msg.value
                                                require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (msg.value / 100) + msg.value == exchangeRate
                                            require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                            totalSupply = (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.getOwner() with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args address(ext_call.return_data[0]), msg.sender, (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                            require ext_call.success
                                            if ext_call.return_data[0]:
                                            require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                            totalSupply = totalSupply - (msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                        else:
                            if msg.value >= 100000:
                                if msg.value / 100:
                                    require msg.value / 100
                                    require 3 * msg.value / 100 / msg.value / 100 == 3
                                require (3 * msg.value / 100) + msg.value >= msg.value
                                if (3 * msg.value / 100) + msg.value:
                                    require (3 * msg.value / 100) + msg.value
                                    require (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (3 * msg.value / 100) + msg.value == exchangeRate
                                require (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                totalSupply = (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                require ext_code.size(tokenAddress)
                                call tokenAddress.getOwner() with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                require ext_call.success
                                if ext_call.return_data[0]:
                                require (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                totalSupply = totalSupply - (3 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                            else:
                                if msg.value > 99999:
                                    if msg.value > 49999:
                                        if msg.value / 100:
                                            require msg.value / 100
                                            require not 0 / msg.value / 100
                                        require msg.value >= msg.value
                                        if msg.value:
                                            require msg.value
                                            require exchangeRate * msg.value / msg.value == exchangeRate
                                        require (exchangeRate * msg.value) + totalSupply >= totalSupply
                                        totalSupply += exchangeRate * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.getOwner() with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x23b872dd with:
                                             gas gas_remaining - 710 wei
                                            args address(ext_call.return_data[0]), msg.sender, exchangeRate * msg.value
                                        require ext_call.success
                                        if ext_call.return_data[0]:
                                        require exchangeRate * msg.value <= totalSupply
                                        totalSupply += -1 * exchangeRate * msg.value
                                    else:
                                        if msg.value < 10000:
                                            if msg.value / 100:
                                                require msg.value / 100
                                                require not 0 / msg.value / 100
                                            require msg.value >= msg.value
                                            if msg.value:
                                                require msg.value
                                                require exchangeRate * msg.value / msg.value == exchangeRate
                                            require (exchangeRate * msg.value) + totalSupply >= totalSupply
                                            totalSupply += exchangeRate * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.getOwner() with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args address(ext_call.return_data[0]), msg.sender, exchangeRate * msg.value
                                            require ext_call.success
                                            if ext_call.return_data[0]:
                                            require exchangeRate * msg.value <= totalSupply
                                            totalSupply += -1 * exchangeRate * msg.value
                                        else:
                                            if msg.value / 100:
                                                require msg.value / 100
                                                require msg.value / 100 / msg.value / 100 == 1
                                            require (msg.value / 100) + msg.value >= msg.value
                                            if (msg.value / 100) + msg.value:
                                                require (msg.value / 100) + msg.value
                                                require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (msg.value / 100) + msg.value == exchangeRate
                                            require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                            totalSupply = (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.getOwner() with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args address(ext_call.return_data[0]), msg.sender, (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                            require ext_call.success
                                            if ext_call.return_data[0]:
                                            require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                            totalSupply = totalSupply - (msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                else:
                                    if msg.value >= 50000:
                                        if msg.value / 100:
                                            require msg.value / 100
                                            require 2 * msg.value / 100 / msg.value / 100 == 2
                                        require (2 * msg.value / 100) + msg.value >= msg.value
                                        if (2 * msg.value / 100) + msg.value:
                                            require (2 * msg.value / 100) + msg.value
                                            require (2 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (2 * msg.value / 100) + msg.value == exchangeRate
                                        require (2 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                        totalSupply = (2 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.getOwner() with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x23b872dd with:
                                             gas gas_remaining - 710 wei
                                            args address(ext_call.return_data[0]), msg.sender, (2 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                        require ext_call.success
                                        if ext_call.return_data[0]:
                                        require (2 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                        totalSupply = totalSupply - (2 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                    else:
                                        if msg.value > 49999:
                                            if msg.value / 100:
                                                require msg.value / 100
                                                require not 0 / msg.value / 100
                                            require msg.value >= msg.value
                                            if msg.value:
                                                require msg.value
                                                require exchangeRate * msg.value / msg.value == exchangeRate
                                            require (exchangeRate * msg.value) + totalSupply >= totalSupply
                                            totalSupply += exchangeRate * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.getOwner() with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args address(ext_call.return_data[0]), msg.sender, exchangeRate * msg.value
                                            require ext_call.success
                                            if ext_call.return_data[0]:
                                            require exchangeRate * msg.value <= totalSupply
                                            totalSupply += -1 * exchangeRate * msg.value
                                        else:
                                            if msg.value < 10000:
                                                if msg.value / 100:
                                                    require msg.value / 100
                                                    require not 0 / msg.value / 100
                                                require msg.value >= msg.value
                                                if msg.value:
                                                    require msg.value
                                                    require exchangeRate * msg.value / msg.value == exchangeRate
                                                require (exchangeRate * msg.value) + totalSupply >= totalSupply
                                                totalSupply += exchangeRate * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.getOwner() with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x23b872dd with:
                                                     gas gas_remaining - 710 wei
                                                    args address(ext_call.return_data[0]), msg.sender, exchangeRate * msg.value
                                                require ext_call.success
                                                if ext_call.return_data[0]:
                                                require exchangeRate * msg.value <= totalSupply
                                                totalSupply += -1 * exchangeRate * msg.value
                                            else:
                                                if msg.value / 100:
                                                    require msg.value / 100
                                                    require msg.value / 100 / msg.value / 100 == 1
                                                require (msg.value / 100) + msg.value >= msg.value
                                                if (msg.value / 100) + msg.value:
                                                    require (msg.value / 100) + msg.value
                                                    require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (msg.value / 100) + msg.value == exchangeRate
                                                require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                totalSupply = (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.getOwner() with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x23b872dd with:
                                                     gas gas_remaining - 710 wei
                                                    args address(ext_call.return_data[0]), msg.sender, (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                require ext_call.success
                                                if ext_call.return_data[0]:
                                                require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                totalSupply = totalSupply - (msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                else:
                    if block.timestamp - icoStartTime > 336 * 24 * 3600:
                        if msg.value / 100:
                            require msg.value / 100
                            require msg.value / 100 / msg.value / 100 == 1
                        if msg.value > 10^6:
                            if msg.value / 100:
                                require msg.value / 100
                                require 5 * msg.value / 100 / msg.value / 100 == 5
                            require (5 * msg.value / 100) + msg.value >= msg.value
                            require 6 * msg.value / 100 >= 5 * msg.value / 100
                            if (6 * msg.value / 100) + msg.value:
                                require (6 * msg.value / 100) + msg.value
                                require (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (6 * msg.value / 100) + msg.value == exchangeRate
                            require (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                            totalSupply = (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                            require ext_code.size(tokenAddress)
                            call tokenAddress.getOwner() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), msg.sender, (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                            require ext_call.success
                            if ext_call.return_data[0]:
                            require (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                            totalSupply = totalSupply - (6 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                        else:
                            if msg.value > 999999:
                                if msg.value > 99999:
                                    if msg.value > 49999:
                                        if msg.value / 100:
                                            require msg.value / 100
                                            require not 0 / msg.value / 100
                                        require msg.value >= msg.value
                                        require (msg.value / 100) + msg.value >= msg.value
                                        if (msg.value / 100) + msg.value:
                                            require (msg.value / 100) + msg.value
                                            require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (msg.value / 100) + msg.value == exchangeRate
                                        require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                        totalSupply = (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.getOwner() with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x23b872dd with:
                                             gas gas_remaining - 710 wei
                                            args address(ext_call.return_data[0]), msg.sender, (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                        require ext_call.success
                                        if ext_call.return_data[0]:
                                        require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                        totalSupply = totalSupply - (msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                    else:
                                        if msg.value < 10000:
                                            if msg.value / 100:
                                                require msg.value / 100
                                                require not 0 / msg.value / 100
                                            require msg.value >= msg.value
                                            require (msg.value / 100) + msg.value >= msg.value
                                            if (msg.value / 100) + msg.value:
                                                require (msg.value / 100) + msg.value
                                                require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (msg.value / 100) + msg.value == exchangeRate
                                            require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                            totalSupply = (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.getOwner() with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args address(ext_call.return_data[0]), msg.sender, (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                            require ext_call.success
                                            if ext_call.return_data[0]:
                                            require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                            totalSupply = totalSupply - (msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                        else:
                                            if msg.value / 100:
                                                require msg.value / 100
                                                require msg.value / 100 / msg.value / 100 == 1
                                            require (msg.value / 100) + msg.value >= msg.value
                                            require 2 * msg.value / 100 >= msg.value / 100
                                            if (2 * msg.value / 100) + msg.value:
                                                require (2 * msg.value / 100) + msg.value
                                                require (2 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (2 * msg.value / 100) + msg.value == exchangeRate
                                            require (2 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                            totalSupply = (2 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.getOwner() with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args address(ext_call.return_data[0]), msg.sender, (2 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                            require ext_call.success
                                            if ext_call.return_data[0]:
                                            require (2 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                            totalSupply = totalSupply - (2 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                else:
                                    if msg.value >= 50000:
                                        if msg.value / 100:
                                            require msg.value / 100
                                            require 2 * msg.value / 100 / msg.value / 100 == 2
                                        require (2 * msg.value / 100) + msg.value >= msg.value
                                        require 4 * msg.value / 100 >= 2 * msg.value / 100
                                        if (4 * msg.value / 100) + msg.value:
                                            require (4 * msg.value / 100) + msg.value
                                            require (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (4 * msg.value / 100) + msg.value == exchangeRate
                                        require (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                        totalSupply = (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.getOwner() with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x23b872dd with:
                                             gas gas_remaining - 710 wei
                                            args address(ext_call.return_data[0]), msg.sender, (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                        require ext_call.success
                                        if ext_call.return_data[0]:
                                        require (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                        totalSupply = totalSupply - (4 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                    else:
                                        if msg.value > 49999:
                                            if msg.value / 100:
                                                require msg.value / 100
                                                require not 0 / msg.value / 100
                                            require msg.value >= msg.value
                                            require (msg.value / 100) + msg.value >= msg.value
                                            if (msg.value / 100) + msg.value:
                                                require (msg.value / 100) + msg.value
                                                require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (msg.value / 100) + msg.value == exchangeRate
                                            require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                            totalSupply = (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.getOwner() with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args address(ext_call.return_data[0]), msg.sender, (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                            require ext_call.success
                                            if ext_call.return_data[0]:
                                            require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                            totalSupply = totalSupply - (msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                        else:
                                            if msg.value < 10000:
                                                if msg.value / 100:
                                                    require msg.value / 100
                                                    require not 0 / msg.value / 100
                                                require msg.value >= msg.value
                                                require (msg.value / 100) + msg.value >= msg.value
                                                if (msg.value / 100) + msg.value:
                                                    require (msg.value / 100) + msg.value
                                                    require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (msg.value / 100) + msg.value == exchangeRate
                                                require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                totalSupply = (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.getOwner() with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x23b872dd with:
                                                     gas gas_remaining - 710 wei
                                                    args address(ext_call.return_data[0]), msg.sender, (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                require ext_call.success
                                                if ext_call.return_data[0]:
                                                require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                totalSupply = totalSupply - (msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                            else:
                                                if msg.value / 100:
                                                    require msg.value / 100
                                                    require msg.value / 100 / msg.value / 100 == 1
                                                require (msg.value / 100) + msg.value >= msg.value
                                                require 2 * msg.value / 100 >= msg.value / 100
                                                if (2 * msg.value / 100) + msg.value:
                                                    require (2 * msg.value / 100) + msg.value
                                                    require (2 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (2 * msg.value / 100) + msg.value == exchangeRate
                                                require (2 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                totalSupply = (2 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.getOwner() with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x23b872dd with:
                                                     gas gas_remaining - 710 wei
                                                    args address(ext_call.return_data[0]), msg.sender, (2 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                require ext_call.success
                                                if ext_call.return_data[0]:
                                                require (2 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                totalSupply = totalSupply - (2 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                            else:
                                if msg.value >= 100000:
                                    if msg.value / 100:
                                        require msg.value / 100
                                        require 3 * msg.value / 100 / msg.value / 100 == 3
                                    require (3 * msg.value / 100) + msg.value >= msg.value
                                    require 4 * msg.value / 100 >= 3 * msg.value / 100
                                    if (4 * msg.value / 100) + msg.value:
                                        require (4 * msg.value / 100) + msg.value
                                        require (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (4 * msg.value / 100) + msg.value == exchangeRate
                                    require (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                    totalSupply = (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.getOwner() with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                    require ext_call.success
                                    if ext_call.return_data[0]:
                                    require (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                    totalSupply = totalSupply - (4 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                else:
                                    if msg.value > 99999:
                                        if msg.value > 49999:
                                            if msg.value / 100:
                                                require msg.value / 100
                                                require not 0 / msg.value / 100
                                            require msg.value >= msg.value
                                            require (msg.value / 100) + msg.value >= msg.value
                                            if (msg.value / 100) + msg.value:
                                                require (msg.value / 100) + msg.value
                                                require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (msg.value / 100) + msg.value == exchangeRate
                                            require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                            totalSupply = (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.getOwner() with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args address(ext_call.return_data[0]), msg.sender, (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                            require ext_call.success
                                            if ext_call.return_data[0]:
                                            require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                            totalSupply = totalSupply - (msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                        else:
                                            if msg.value < 10000:
                                                if msg.value / 100:
                                                    require msg.value / 100
                                                    require not 0 / msg.value / 100
                                                require msg.value >= msg.value
                                                require (msg.value / 100) + msg.value >= msg.value
                                                if (msg.value / 100) + msg.value:
                                                    require (msg.value / 100) + msg.value
                                                    require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (msg.value / 100) + msg.value == exchangeRate
                                                require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                totalSupply = (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.getOwner() with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x23b872dd with:
                                                     gas gas_remaining - 710 wei
                                                    args address(ext_call.return_data[0]), msg.sender, (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                require ext_call.success
                                                if ext_call.return_data[0]:
                                                require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                totalSupply = totalSupply - (msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                            else:
                                                if msg.value / 100:
                                                    require msg.value / 100
                                                    require msg.value / 100 / msg.value / 100 == 1
                                                require (msg.value / 100) + msg.value >= msg.value
                                                require 2 * msg.value / 100 >= msg.value / 100
                                                if (2 * msg.value / 100) + msg.value:
                                                    require (2 * msg.value / 100) + msg.value
                                                    require (2 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (2 * msg.value / 100) + msg.value == exchangeRate
                                                require (2 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                totalSupply = (2 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.getOwner() with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x23b872dd with:
                                                     gas gas_remaining - 710 wei
                                                    args address(ext_call.return_data[0]), msg.sender, (2 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                require ext_call.success
                                                if ext_call.return_data[0]:
                                                require (2 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                totalSupply = totalSupply - (2 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                    else:
                                        if msg.value >= 50000:
                                            if msg.value / 100:
                                                require msg.value / 100
                                                require 2 * msg.value / 100 / msg.value / 100 == 2
                                            require (2 * msg.value / 100) + msg.value >= msg.value
                                            require 4 * msg.value / 100 >= 2 * msg.value / 100
                                            if (4 * msg.value / 100) + msg.value:
                                                require (4 * msg.value / 100) + msg.value
                                                require (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (4 * msg.value / 100) + msg.value == exchangeRate
                                            require (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                            totalSupply = (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.getOwner() with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args address(ext_call.return_data[0]), msg.sender, (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                            require ext_call.success
                                            if ext_call.return_data[0]:
                                            require (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                            totalSupply = totalSupply - (4 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                        else:
                                            if msg.value > 49999:
                                                if msg.value / 100:
                                                    require msg.value / 100
                                                    require not 0 / msg.value / 100
                                                require msg.value >= msg.value
                                                require (msg.value / 100) + msg.value >= msg.value
                                                if (msg.value / 100) + msg.value:
                                                    require (msg.value / 100) + msg.value
                                                    require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (msg.value / 100) + msg.value == exchangeRate
                                                require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                totalSupply = (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.getOwner() with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x23b872dd with:
                                                     gas gas_remaining - 710 wei
                                                    args address(ext_call.return_data[0]), msg.sender, (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                require ext_call.success
                                                if ext_call.return_data[0]:
                                                require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                totalSupply = totalSupply - (msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                            else:
                                                if msg.value < 10000:
                                                    if msg.value / 100:
                                                        require msg.value / 100
                                                        require not 0 / msg.value / 100
                                                    require msg.value >= msg.value
                                                    require (msg.value / 100) + msg.value >= msg.value
                                                    if (msg.value / 100) + msg.value:
                                                        require (msg.value / 100) + msg.value
                                                        require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (msg.value / 100) + msg.value == exchangeRate
                                                    require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                    totalSupply = (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.getOwner() with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x23b872dd with:
                                                         gas gas_remaining - 710 wei
                                                        args address(ext_call.return_data[0]), msg.sender, (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                    require ext_call.success
                                                    if ext_call.return_data[0]:
                                                    require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                    totalSupply = totalSupply - (msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                                else:
                                                    if msg.value / 100:
                                                        require msg.value / 100
                                                        require msg.value / 100 / msg.value / 100 == 1
                                                    require (msg.value / 100) + msg.value >= msg.value
                                                    require 2 * msg.value / 100 >= msg.value / 100
                                                    if (2 * msg.value / 100) + msg.value:
                                                        require (2 * msg.value / 100) + msg.value
                                                        require (2 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (2 * msg.value / 100) + msg.value == exchangeRate
                                                    require (2 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                    totalSupply = (2 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.getOwner() with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x23b872dd with:
                                                         gas gas_remaining - 710 wei
                                                        args address(ext_call.return_data[0]), msg.sender, (2 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                    require ext_call.success
                                                    if ext_call.return_data[0]:
                                                    require (2 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                    totalSupply = totalSupply - (2 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                    else:
                        if block.timestamp - icoStartTime <= 168 * 24 * 3600:
                            if msg.value / 100:
                                require msg.value / 100
                                require 5 * msg.value / 100 / msg.value / 100 == 5
                            if msg.value > 10^6:
                                if msg.value / 100:
                                    require msg.value / 100
                                    require 5 * msg.value / 100 / msg.value / 100 == 5
                                require (5 * msg.value / 100) + msg.value >= msg.value
                                require 10 * msg.value / 100 >= 5 * msg.value / 100
                                if (10 * msg.value / 100) + msg.value:
                                    require (10 * msg.value / 100) + msg.value
                                    require (10 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (10 * msg.value / 100) + msg.value == exchangeRate
                                require (10 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                totalSupply = (10 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                require ext_code.size(tokenAddress)
                                call tokenAddress.getOwner() with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, (10 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                require ext_call.success
                                if ext_call.return_data[0]:
                                require (10 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                totalSupply = totalSupply - (10 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                            else:
                                if msg.value > 999999:
                                    if msg.value > 99999:
                                        if msg.value > 49999:
                                            if msg.value / 100:
                                                require msg.value / 100
                                                require not 0 / msg.value / 100
                                            require msg.value >= msg.value
                                            require (5 * msg.value / 100) + msg.value >= msg.value
                                            if (5 * msg.value / 100) + msg.value:
                                                require (5 * msg.value / 100) + msg.value
                                                require (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (5 * msg.value / 100) + msg.value == exchangeRate
                                            require (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                            totalSupply = (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.getOwner() with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args address(ext_call.return_data[0]), msg.sender, (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                            require ext_call.success
                                            if ext_call.return_data[0]:
                                            require (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                            totalSupply = totalSupply - (5 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                        else:
                                            if msg.value < 10000:
                                                if msg.value / 100:
                                                    require msg.value / 100
                                                    require not 0 / msg.value / 100
                                                require msg.value >= msg.value
                                                require (5 * msg.value / 100) + msg.value >= msg.value
                                                if (5 * msg.value / 100) + msg.value:
                                                    require (5 * msg.value / 100) + msg.value
                                                    require (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (5 * msg.value / 100) + msg.value == exchangeRate
                                                require (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                totalSupply = (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.getOwner() with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x23b872dd with:
                                                     gas gas_remaining - 710 wei
                                                    args address(ext_call.return_data[0]), msg.sender, (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                require ext_call.success
                                                if ext_call.return_data[0]:
                                                require (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                totalSupply = totalSupply - (5 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                            else:
                                                if msg.value / 100:
                                                    require msg.value / 100
                                                    require msg.value / 100 / msg.value / 100 == 1
                                                require (msg.value / 100) + msg.value >= msg.value
                                                require 6 * msg.value / 100 >= msg.value / 100
                                                if (6 * msg.value / 100) + msg.value:
                                                    require (6 * msg.value / 100) + msg.value
                                                    require (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (6 * msg.value / 100) + msg.value == exchangeRate
                                                require (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                totalSupply = (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.getOwner() with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x23b872dd with:
                                                     gas gas_remaining - 710 wei
                                                    args address(ext_call.return_data[0]), msg.sender, (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                require ext_call.success
                                                if ext_call.return_data[0]:
                                                require (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                totalSupply = totalSupply - (6 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                    else:
                                        if msg.value >= 50000:
                                            if msg.value / 100:
                                                require msg.value / 100
                                                require 2 * msg.value / 100 / msg.value / 100 == 2
                                            require (2 * msg.value / 100) + msg.value >= msg.value
                                            require 8 * msg.value / 100 >= 2 * msg.value / 100
                                            if (8 * msg.value / 100) + msg.value:
                                                require (8 * msg.value / 100) + msg.value
                                                require (8 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (8 * msg.value / 100) + msg.value == exchangeRate
                                            require (8 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                            totalSupply = (8 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.getOwner() with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args address(ext_call.return_data[0]), msg.sender, (8 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                            require ext_call.success
                                            if ext_call.return_data[0]:
                                            require (8 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                            totalSupply = totalSupply - (8 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                        else:
                                            if msg.value > 49999:
                                                if msg.value / 100:
                                                    require msg.value / 100
                                                    require not 0 / msg.value / 100
                                                require msg.value >= msg.value
                                                require (5 * msg.value / 100) + msg.value >= msg.value
                                                if (5 * msg.value / 100) + msg.value:
                                                    require (5 * msg.value / 100) + msg.value
                                                    require (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (5 * msg.value / 100) + msg.value == exchangeRate
                                                require (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                totalSupply = (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.getOwner() with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x23b872dd with:
                                                     gas gas_remaining - 710 wei
                                                    args address(ext_call.return_data[0]), msg.sender, (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                require ext_call.success
                                                if ext_call.return_data[0]:
                                                require (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                totalSupply = totalSupply - (5 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                            else:
                                                if msg.value < 10000:
                                                    if msg.value / 100:
                                                        require msg.value / 100
                                                        require not 0 / msg.value / 100
                                                    require msg.value >= msg.value
                                                    require (5 * msg.value / 100) + msg.value >= msg.value
                                                    if (5 * msg.value / 100) + msg.value:
                                                        require (5 * msg.value / 100) + msg.value
                                                        require (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (5 * msg.value / 100) + msg.value == exchangeRate
                                                    require (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                    totalSupply = (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.getOwner() with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x23b872dd with:
                                                         gas gas_remaining - 710 wei
                                                        args address(ext_call.return_data[0]), msg.sender, (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                    require ext_call.success
                                                    if ext_call.return_data[0]:
                                                    require (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                    totalSupply = totalSupply - (5 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                                else:
                                                    if msg.value / 100:
                                                        require msg.value / 100
                                                        require msg.value / 100 / msg.value / 100 == 1
                                                    require (msg.value / 100) + msg.value >= msg.value
                                                    require 6 * msg.value / 100 >= msg.value / 100
                                                    if (6 * msg.value / 100) + msg.value:
                                                        require (6 * msg.value / 100) + msg.value
                                                        require (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (6 * msg.value / 100) + msg.value == exchangeRate
                                                    require (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                    totalSupply = (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.getOwner() with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x23b872dd with:
                                                         gas gas_remaining - 710 wei
                                                        args address(ext_call.return_data[0]), msg.sender, (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                    require ext_call.success
                                                    if ext_call.return_data[0]:
                                                    require (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                    totalSupply = totalSupply - (6 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                else:
                                    if msg.value >= 100000:
                                        if msg.value / 100:
                                            require msg.value / 100
                                            require 3 * msg.value / 100 / msg.value / 100 == 3
                                        require (3 * msg.value / 100) + msg.value >= msg.value
                                        require 8 * msg.value / 100 >= 3 * msg.value / 100
                                        if (8 * msg.value / 100) + msg.value:
                                            require (8 * msg.value / 100) + msg.value
                                            require (8 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (8 * msg.value / 100) + msg.value == exchangeRate
                                        require (8 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                        totalSupply = (8 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.getOwner() with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x23b872dd with:
                                             gas gas_remaining - 710 wei
                                            args address(ext_call.return_data[0]), msg.sender, (8 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                        require ext_call.success
                                        if ext_call.return_data[0]:
                                        require (8 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                        totalSupply = totalSupply - (8 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                    else:
                                        if msg.value > 99999:
                                            if msg.value > 49999:
                                                if msg.value / 100:
                                                    require msg.value / 100
                                                    require not 0 / msg.value / 100
                                                require msg.value >= msg.value
                                                require (5 * msg.value / 100) + msg.value >= msg.value
                                                if (5 * msg.value / 100) + msg.value:
                                                    require (5 * msg.value / 100) + msg.value
                                                    require (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (5 * msg.value / 100) + msg.value == exchangeRate
                                                require (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                totalSupply = (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.getOwner() with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x23b872dd with:
                                                     gas gas_remaining - 710 wei
                                                    args address(ext_call.return_data[0]), msg.sender, (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                require ext_call.success
                                                if ext_call.return_data[0]:
                                                require (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                totalSupply = totalSupply - (5 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                            else:
                                                if msg.value < 10000:
                                                    if msg.value / 100:
                                                        require msg.value / 100
                                                        require not 0 / msg.value / 100
                                                    require msg.value >= msg.value
                                                    require (5 * msg.value / 100) + msg.value >= msg.value
                                                    if (5 * msg.value / 100) + msg.value:
                                                        require (5 * msg.value / 100) + msg.value
                                                        require (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (5 * msg.value / 100) + msg.value == exchangeRate
                                                    require (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                    totalSupply = (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.getOwner() with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x23b872dd with:
                                                         gas gas_remaining - 710 wei
                                                        args address(ext_call.return_data[0]), msg.sender, (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                    require ext_call.success
                                                    if ext_call.return_data[0]:
                                                    require (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                    totalSupply = totalSupply - (5 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                                else:
                                                    if msg.value / 100:
                                                        require msg.value / 100
                                                        require msg.value / 100 / msg.value / 100 == 1
                                                    require (msg.value / 100) + msg.value >= msg.value
                                                    require 6 * msg.value / 100 >= msg.value / 100
                                                    if (6 * msg.value / 100) + msg.value:
                                                        require (6 * msg.value / 100) + msg.value
                                                        require (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (6 * msg.value / 100) + msg.value == exchangeRate
                                                    require (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                    totalSupply = (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.getOwner() with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x23b872dd with:
                                                         gas gas_remaining - 710 wei
                                                        args address(ext_call.return_data[0]), msg.sender, (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                    require ext_call.success
                                                    if ext_call.return_data[0]:
                                                    require (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                    totalSupply = totalSupply - (6 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                        else:
                                            if msg.value >= 50000:
                                                if msg.value / 100:
                                                    require msg.value / 100
                                                    require 2 * msg.value / 100 / msg.value / 100 == 2
                                                require (2 * msg.value / 100) + msg.value >= msg.value
                                                require 8 * msg.value / 100 >= 2 * msg.value / 100
                                                if (8 * msg.value / 100) + msg.value:
                                                    require (8 * msg.value / 100) + msg.value
                                                    require (8 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (8 * msg.value / 100) + msg.value == exchangeRate
                                                require (8 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                totalSupply = (8 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.getOwner() with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x23b872dd with:
                                                     gas gas_remaining - 710 wei
                                                    args address(ext_call.return_data[0]), msg.sender, (8 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                require ext_call.success
                                                if ext_call.return_data[0]:
                                                require (8 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                totalSupply = totalSupply - (8 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                            else:
                                                if msg.value > 49999:
                                                    if msg.value / 100:
                                                        require msg.value / 100
                                                        require not 0 / msg.value / 100
                                                    require msg.value >= msg.value
                                                    require (5 * msg.value / 100) + msg.value >= msg.value
                                                    if (5 * msg.value / 100) + msg.value:
                                                        require (5 * msg.value / 100) + msg.value
                                                        require (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (5 * msg.value / 100) + msg.value == exchangeRate
                                                    require (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                    totalSupply = (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.getOwner() with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x23b872dd with:
                                                         gas gas_remaining - 710 wei
                                                        args address(ext_call.return_data[0]), msg.sender, (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                    require ext_call.success
                                                    if ext_call.return_data[0]:
                                                    require (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                    totalSupply = totalSupply - (5 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                                else:
                                                    if msg.value < 10000:
                                                        if msg.value / 100:
                                                            require msg.value / 100
                                                            require not 0 / msg.value / 100
                                                        require msg.value >= msg.value
                                                        require (5 * msg.value / 100) + msg.value >= msg.value
                                                        if (5 * msg.value / 100) + msg.value:
                                                            require (5 * msg.value / 100) + msg.value
                                                            require (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (5 * msg.value / 100) + msg.value == exchangeRate
                                                        require (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                        totalSupply = (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.getOwner() with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x23b872dd with:
                                                             gas gas_remaining - 710 wei
                                                            args address(ext_call.return_data[0]), msg.sender, (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                        require ext_call.success
                                                        if ext_call.return_data[0]:
                                                        require (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                        totalSupply = totalSupply - (5 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                                    else:
                                                        if msg.value / 100:
                                                            require msg.value / 100
                                                            require msg.value / 100 / msg.value / 100 == 1
                                                        require (msg.value / 100) + msg.value >= msg.value
                                                        require 6 * msg.value / 100 >= msg.value / 100
                                                        if (6 * msg.value / 100) + msg.value:
                                                            require (6 * msg.value / 100) + msg.value
                                                            require (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (6 * msg.value / 100) + msg.value == exchangeRate
                                                        require (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                        totalSupply = (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.getOwner() with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x23b872dd with:
                                                             gas gas_remaining - 710 wei
                                                            args address(ext_call.return_data[0]), msg.sender, (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                        require ext_call.success
                                                        if ext_call.return_data[0]:
                                                        require (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                        totalSupply = totalSupply - (6 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                        else:
                            if msg.value / 100:
                                require msg.value / 100
                                require 3 * msg.value / 100 / msg.value / 100 == 3
                            if msg.value > 10^6:
                                if msg.value / 100:
                                    require msg.value / 100
                                    require 5 * msg.value / 100 / msg.value / 100 == 5
                                require (5 * msg.value / 100) + msg.value >= msg.value
                                require 8 * msg.value / 100 >= 5 * msg.value / 100
                                if (8 * msg.value / 100) + msg.value:
                                    require (8 * msg.value / 100) + msg.value
                                    require (8 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (8 * msg.value / 100) + msg.value == exchangeRate
                                require (8 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                totalSupply = (8 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                require ext_code.size(tokenAddress)
                                call tokenAddress.getOwner() with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, (8 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                require ext_call.success
                                if ext_call.return_data[0]:
                                require (8 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                totalSupply = totalSupply - (8 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                            else:
                                if msg.value > 999999:
                                    if msg.value > 99999:
                                        if msg.value > 49999:
                                            if msg.value / 100:
                                                require msg.value / 100
                                                require not 0 / msg.value / 100
                                            require msg.value >= msg.value
                                            require (3 * msg.value / 100) + msg.value >= msg.value
                                            if (3 * msg.value / 100) + msg.value:
                                                require (3 * msg.value / 100) + msg.value
                                                require (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (3 * msg.value / 100) + msg.value == exchangeRate
                                            require (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                            totalSupply = (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.getOwner() with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args address(ext_call.return_data[0]), msg.sender, (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                            require ext_call.success
                                            if ext_call.return_data[0]:
                                            require (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                            totalSupply = totalSupply - (3 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                        else:
                                            if msg.value < 10000:
                                                if msg.value / 100:
                                                    require msg.value / 100
                                                    require not 0 / msg.value / 100
                                                require msg.value >= msg.value
                                                require (3 * msg.value / 100) + msg.value >= msg.value
                                                if (3 * msg.value / 100) + msg.value:
                                                    require (3 * msg.value / 100) + msg.value
                                                    require (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (3 * msg.value / 100) + msg.value == exchangeRate
                                                require (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                totalSupply = (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.getOwner() with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x23b872dd with:
                                                     gas gas_remaining - 710 wei
                                                    args address(ext_call.return_data[0]), msg.sender, (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                require ext_call.success
                                                if ext_call.return_data[0]:
                                                require (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                totalSupply = totalSupply - (3 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                            else:
                                                if msg.value / 100:
                                                    require msg.value / 100
                                                    require msg.value / 100 / msg.value / 100 == 1
                                                require (msg.value / 100) + msg.value >= msg.value
                                                require 4 * msg.value / 100 >= msg.value / 100
                                                if (4 * msg.value / 100) + msg.value:
                                                    require (4 * msg.value / 100) + msg.value
                                                    require (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (4 * msg.value / 100) + msg.value == exchangeRate
                                                require (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                totalSupply = (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.getOwner() with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x23b872dd with:
                                                     gas gas_remaining - 710 wei
                                                    args address(ext_call.return_data[0]), msg.sender, (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                require ext_call.success
                                                if ext_call.return_data[0]:
                                                require (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                totalSupply = totalSupply - (4 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                    else:
                                        if msg.value >= 50000:
                                            if msg.value / 100:
                                                require msg.value / 100
                                                require 2 * msg.value / 100 / msg.value / 100 == 2
                                            require (2 * msg.value / 100) + msg.value >= msg.value
                                            require 6 * msg.value / 100 >= 2 * msg.value / 100
                                            if (6 * msg.value / 100) + msg.value:
                                                require (6 * msg.value / 100) + msg.value
                                                require (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (6 * msg.value / 100) + msg.value == exchangeRate
                                            require (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                            totalSupply = (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.getOwner() with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args address(ext_call.return_data[0]), msg.sender, (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                            require ext_call.success
                                            if ext_call.return_data[0]:
                                            require (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                            totalSupply = totalSupply - (6 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                        else:
                                            if msg.value > 49999:
                                                if msg.value / 100:
                                                    require msg.value / 100
                                                    require not 0 / msg.value / 100
                                                require msg.value >= msg.value
                                                require (3 * msg.value / 100) + msg.value >= msg.value
                                                if (3 * msg.value / 100) + msg.value:
                                                    require (3 * msg.value / 100) + msg.value
                                                    require (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (3 * msg.value / 100) + msg.value == exchangeRate
                                                require (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                totalSupply = (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.getOwner() with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x23b872dd with:
                                                     gas gas_remaining - 710 wei
                                                    args address(ext_call.return_data[0]), msg.sender, (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                require ext_call.success
                                                if ext_call.return_data[0]:
                                                require (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                totalSupply = totalSupply - (3 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                            else:
                                                if msg.value < 10000:
                                                    if msg.value / 100:
                                                        require msg.value / 100
                                                        require not 0 / msg.value / 100
                                                    require msg.value >= msg.value
                                                    require (3 * msg.value / 100) + msg.value >= msg.value
                                                    if (3 * msg.value / 100) + msg.value:
                                                        require (3 * msg.value / 100) + msg.value
                                                        require (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (3 * msg.value / 100) + msg.value == exchangeRate
                                                    require (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                    totalSupply = (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.getOwner() with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x23b872dd with:
                                                         gas gas_remaining - 710 wei
                                                        args address(ext_call.return_data[0]), msg.sender, (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                    require ext_call.success
                                                    if ext_call.return_data[0]:
                                                    require (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                    totalSupply = totalSupply - (3 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                                else:
                                                    if msg.value / 100:
                                                        require msg.value / 100
                                                        require msg.value / 100 / msg.value / 100 == 1
                                                    require (msg.value / 100) + msg.value >= msg.value
                                                    require 4 * msg.value / 100 >= msg.value / 100
                                                    if (4 * msg.value / 100) + msg.value:
                                                        require (4 * msg.value / 100) + msg.value
                                                        require (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (4 * msg.value / 100) + msg.value == exchangeRate
                                                    require (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                    totalSupply = (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.getOwner() with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x23b872dd with:
                                                         gas gas_remaining - 710 wei
                                                        args address(ext_call.return_data[0]), msg.sender, (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                    require ext_call.success
                                                    if ext_call.return_data[0]:
                                                    require (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                    totalSupply = totalSupply - (4 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                else:
                                    if msg.value >= 100000:
                                        if msg.value / 100:
                                            require msg.value / 100
                                            require 3 * msg.value / 100 / msg.value / 100 == 3
                                        require (3 * msg.value / 100) + msg.value >= msg.value
                                        require 6 * msg.value / 100 >= 3 * msg.value / 100
                                        if (6 * msg.value / 100) + msg.value:
                                            require (6 * msg.value / 100) + msg.value
                                            require (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (6 * msg.value / 100) + msg.value == exchangeRate
                                        require (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                        totalSupply = (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.getOwner() with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x23b872dd with:
                                             gas gas_remaining - 710 wei
                                            args address(ext_call.return_data[0]), msg.sender, (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                        require ext_call.success
                                        if ext_call.return_data[0]:
                                        require (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                        totalSupply = totalSupply - (6 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                    else:
                                        if msg.value > 99999:
                                            if msg.value > 49999:
                                                if msg.value / 100:
                                                    require msg.value / 100
                                                    require not 0 / msg.value / 100
                                                require msg.value >= msg.value
                                                require (3 * msg.value / 100) + msg.value >= msg.value
                                                if (3 * msg.value / 100) + msg.value:
                                                    require (3 * msg.value / 100) + msg.value
                                                    require (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (3 * msg.value / 100) + msg.value == exchangeRate
                                                require (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                totalSupply = (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.getOwner() with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x23b872dd with:
                                                     gas gas_remaining - 710 wei
                                                    args address(ext_call.return_data[0]), msg.sender, (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                require ext_call.success
                                                if ext_call.return_data[0]:
                                                require (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                totalSupply = totalSupply - (3 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                            else:
                                                if msg.value < 10000:
                                                    if msg.value / 100:
                                                        require msg.value / 100
                                                        require not 0 / msg.value / 100
                                                    require msg.value >= msg.value
                                                    require (3 * msg.value / 100) + msg.value >= msg.value
                                                    if (3 * msg.value / 100) + msg.value:
                                                        require (3 * msg.value / 100) + msg.value
                                                        require (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (3 * msg.value / 100) + msg.value == exchangeRate
                                                    require (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                    totalSupply = (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.getOwner() with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x23b872dd with:
                                                         gas gas_remaining - 710 wei
                                                        args address(ext_call.return_data[0]), msg.sender, (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                    require ext_call.success
                                                    if ext_call.return_data[0]:
                                                    require (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                    totalSupply = totalSupply - (3 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                                else:
                                                    if msg.value / 100:
                                                        require msg.value / 100
                                                        require msg.value / 100 / msg.value / 100 == 1
                                                    require (msg.value / 100) + msg.value >= msg.value
                                                    require 4 * msg.value / 100 >= msg.value / 100
                                                    if (4 * msg.value / 100) + msg.value:
                                                        require (4 * msg.value / 100) + msg.value
                                                        require (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (4 * msg.value / 100) + msg.value == exchangeRate
                                                    require (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                    totalSupply = (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.getOwner() with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x23b872dd with:
                                                         gas gas_remaining - 710 wei
                                                        args address(ext_call.return_data[0]), msg.sender, (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                    require ext_call.success
                                                    if ext_call.return_data[0]:
                                                    require (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                    totalSupply = totalSupply - (4 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                        else:
                                            if msg.value >= 50000:
                                                if msg.value / 100:
                                                    require msg.value / 100
                                                    require 2 * msg.value / 100 / msg.value / 100 == 2
                                                require (2 * msg.value / 100) + msg.value >= msg.value
                                                require 6 * msg.value / 100 >= 2 * msg.value / 100
                                                if (6 * msg.value / 100) + msg.value:
                                                    require (6 * msg.value / 100) + msg.value
                                                    require (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (6 * msg.value / 100) + msg.value == exchangeRate
                                                require (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                totalSupply = (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.getOwner() with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x23b872dd with:
                                                     gas gas_remaining - 710 wei
                                                    args address(ext_call.return_data[0]), msg.sender, (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                require ext_call.success
                                                if ext_call.return_data[0]:
                                                require (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                totalSupply = totalSupply - (6 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                            else:
                                                if msg.value > 49999:
                                                    if msg.value / 100:
                                                        require msg.value / 100
                                                        require not 0 / msg.value / 100
                                                    require msg.value >= msg.value
                                                    require (3 * msg.value / 100) + msg.value >= msg.value
                                                    if (3 * msg.value / 100) + msg.value:
                                                        require (3 * msg.value / 100) + msg.value
                                                        require (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (3 * msg.value / 100) + msg.value == exchangeRate
                                                    require (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                    totalSupply = (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.getOwner() with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x23b872dd with:
                                                         gas gas_remaining - 710 wei
                                                        args address(ext_call.return_data[0]), msg.sender, (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                    require ext_call.success
                                                    if ext_call.return_data[0]:
                                                    require (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                    totalSupply = totalSupply - (3 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                                else:
                                                    if msg.value < 10000:
                                                        if msg.value / 100:
                                                            require msg.value / 100
                                                            require not 0 / msg.value / 100
                                                        require msg.value >= msg.value
                                                        require (3 * msg.value / 100) + msg.value >= msg.value
                                                        if (3 * msg.value / 100) + msg.value:
                                                            require (3 * msg.value / 100) + msg.value
                                                            require (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (3 * msg.value / 100) + msg.value == exchangeRate
                                                        require (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                        totalSupply = (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.getOwner() with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x23b872dd with:
                                                             gas gas_remaining - 710 wei
                                                            args address(ext_call.return_data[0]), msg.sender, (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                        require ext_call.success
                                                        if ext_call.return_data[0]:
                                                        require (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                        totalSupply = totalSupply - (3 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                                    else:
                                                        if msg.value / 100:
                                                            require msg.value / 100
                                                            require msg.value / 100 / msg.value / 100 == 1
                                                        require (msg.value / 100) + msg.value >= msg.value
                                                        require 4 * msg.value / 100 >= msg.value / 100
                                                        if (4 * msg.value / 100) + msg.value:
                                                            require (4 * msg.value / 100) + msg.value
                                                            require (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (4 * msg.value / 100) + msg.value == exchangeRate
                                                        require (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                        totalSupply = (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.getOwner() with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x23b872dd with:
                                                             gas gas_remaining - 710 wei
                                                            args address(ext_call.return_data[0]), msg.sender, (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                        require ext_call.success
                                                        if ext_call.return_data[0]:
                                                        require (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                        totalSupply = totalSupply - (4 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
    else:
        if msg.value > 0:
            if block.number >= icoStartBlock:
                if block.number <= icoEndBlock:
                    stor3[address(msg.sender)] += msg.value
                    require icoStartTime <= block.timestamp
                    if block.timestamp - icoStartTime > 504 * 24 * 3600:
                        if msg.value / 100:
                            require msg.value / 100
                            require not 0 / msg.value / 100
                        if msg.value > 10^6:
                            if msg.value / 100:
                                require msg.value / 100
                                require 5 * msg.value / 100 / msg.value / 100 == 5
                            require (5 * msg.value / 100) + msg.value >= msg.value
                            if (5 * msg.value / 100) + msg.value:
                                require (5 * msg.value / 100) + msg.value
                                require (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (5 * msg.value / 100) + msg.value == exchangeRate
                            require (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                            totalSupply = (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                            require ext_code.size(tokenAddress)
                            call tokenAddress.getOwner() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), msg.sender, (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                            require ext_call.success
                            if ext_call.return_data[0]:
                            require (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                            totalSupply = totalSupply - (5 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                        else:
                            if msg.value > 999999:
                                if msg.value > 99999:
                                    if msg.value > 49999:
                                        if msg.value / 100:
                                            require msg.value / 100
                                            require not 0 / msg.value / 100
                                        require msg.value >= msg.value
                                        if msg.value:
                                            require msg.value
                                            require exchangeRate * msg.value / msg.value == exchangeRate
                                        require (exchangeRate * msg.value) + totalSupply >= totalSupply
                                        totalSupply += exchangeRate * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.getOwner() with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x23b872dd with:
                                             gas gas_remaining - 710 wei
                                            args address(ext_call.return_data[0]), msg.sender, exchangeRate * msg.value
                                        require ext_call.success
                                        if ext_call.return_data[0]:
                                        require exchangeRate * msg.value <= totalSupply
                                        totalSupply += -1 * exchangeRate * msg.value
                                    else:
                                        if msg.value < 10000:
                                            if msg.value / 100:
                                                require msg.value / 100
                                                require not 0 / msg.value / 100
                                            require msg.value >= msg.value
                                            if msg.value:
                                                require msg.value
                                                require exchangeRate * msg.value / msg.value == exchangeRate
                                            require (exchangeRate * msg.value) + totalSupply >= totalSupply
                                            totalSupply += exchangeRate * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.getOwner() with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args address(ext_call.return_data[0]), msg.sender, exchangeRate * msg.value
                                            require ext_call.success
                                            if ext_call.return_data[0]:
                                            require exchangeRate * msg.value <= totalSupply
                                            totalSupply += -1 * exchangeRate * msg.value
                                        else:
                                            if msg.value / 100:
                                                require msg.value / 100
                                                require msg.value / 100 / msg.value / 100 == 1
                                            require (msg.value / 100) + msg.value >= msg.value
                                            if (msg.value / 100) + msg.value:
                                                require (msg.value / 100) + msg.value
                                                require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (msg.value / 100) + msg.value == exchangeRate
                                            require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                            totalSupply = (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.getOwner() with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args address(ext_call.return_data[0]), msg.sender, (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                            require ext_call.success
                                            if ext_call.return_data[0]:
                                            require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                            totalSupply = totalSupply - (msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                else:
                                    if msg.value >= 50000:
                                        if msg.value / 100:
                                            require msg.value / 100
                                            require 2 * msg.value / 100 / msg.value / 100 == 2
                                        require (2 * msg.value / 100) + msg.value >= msg.value
                                        if (2 * msg.value / 100) + msg.value:
                                            require (2 * msg.value / 100) + msg.value
                                            require (2 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (2 * msg.value / 100) + msg.value == exchangeRate
                                        require (2 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                        totalSupply = (2 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.getOwner() with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x23b872dd with:
                                             gas gas_remaining - 710 wei
                                            args address(ext_call.return_data[0]), msg.sender, (2 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                        require ext_call.success
                                        if ext_call.return_data[0]:
                                        require (2 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                        totalSupply = totalSupply - (2 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                    else:
                                        if msg.value > 49999:
                                            if msg.value / 100:
                                                require msg.value / 100
                                                require not 0 / msg.value / 100
                                            require msg.value >= msg.value
                                            if msg.value:
                                                require msg.value
                                                require exchangeRate * msg.value / msg.value == exchangeRate
                                            require (exchangeRate * msg.value) + totalSupply >= totalSupply
                                            totalSupply += exchangeRate * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.getOwner() with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args address(ext_call.return_data[0]), msg.sender, exchangeRate * msg.value
                                            require ext_call.success
                                            if ext_call.return_data[0]:
                                            require exchangeRate * msg.value <= totalSupply
                                            totalSupply += -1 * exchangeRate * msg.value
                                        else:
                                            if msg.value < 10000:
                                                if msg.value / 100:
                                                    require msg.value / 100
                                                    require not 0 / msg.value / 100
                                                require msg.value >= msg.value
                                                if msg.value:
                                                    require msg.value
                                                    require exchangeRate * msg.value / msg.value == exchangeRate
                                                require (exchangeRate * msg.value) + totalSupply >= totalSupply
                                                totalSupply += exchangeRate * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.getOwner() with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x23b872dd with:
                                                     gas gas_remaining - 710 wei
                                                    args address(ext_call.return_data[0]), msg.sender, exchangeRate * msg.value
                                                require ext_call.success
                                                if ext_call.return_data[0]:
                                                require exchangeRate * msg.value <= totalSupply
                                                totalSupply += -1 * exchangeRate * msg.value
                                            else:
                                                if msg.value / 100:
                                                    require msg.value / 100
                                                    require msg.value / 100 / msg.value / 100 == 1
                                                require (msg.value / 100) + msg.value >= msg.value
                                                if (msg.value / 100) + msg.value:
                                                    require (msg.value / 100) + msg.value
                                                    require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (msg.value / 100) + msg.value == exchangeRate
                                                require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                totalSupply = (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.getOwner() with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x23b872dd with:
                                                     gas gas_remaining - 710 wei
                                                    args address(ext_call.return_data[0]), msg.sender, (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                require ext_call.success
                                                if ext_call.return_data[0]:
                                                require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                totalSupply = totalSupply - (msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                            else:
                                if msg.value >= 100000:
                                    if msg.value / 100:
                                        require msg.value / 100
                                        require 3 * msg.value / 100 / msg.value / 100 == 3
                                    require (3 * msg.value / 100) + msg.value >= msg.value
                                    if (3 * msg.value / 100) + msg.value:
                                        require (3 * msg.value / 100) + msg.value
                                        require (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (3 * msg.value / 100) + msg.value == exchangeRate
                                    require (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                    totalSupply = (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.getOwner() with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                    require ext_call.success
                                    if ext_call.return_data[0]:
                                    require (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                    totalSupply = totalSupply - (3 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                else:
                                    if msg.value > 99999:
                                        if msg.value > 49999:
                                            if msg.value / 100:
                                                require msg.value / 100
                                                require not 0 / msg.value / 100
                                            require msg.value >= msg.value
                                            if msg.value:
                                                require msg.value
                                                require exchangeRate * msg.value / msg.value == exchangeRate
                                            require (exchangeRate * msg.value) + totalSupply >= totalSupply
                                            totalSupply += exchangeRate * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.getOwner() with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args address(ext_call.return_data[0]), msg.sender, exchangeRate * msg.value
                                            require ext_call.success
                                            if ext_call.return_data[0]:
                                            require exchangeRate * msg.value <= totalSupply
                                            totalSupply += -1 * exchangeRate * msg.value
                                        else:
                                            if msg.value < 10000:
                                                if msg.value / 100:
                                                    require msg.value / 100
                                                    require not 0 / msg.value / 100
                                                require msg.value >= msg.value
                                                if msg.value:
                                                    require msg.value
                                                    require exchangeRate * msg.value / msg.value == exchangeRate
                                                require (exchangeRate * msg.value) + totalSupply >= totalSupply
                                                totalSupply += exchangeRate * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.getOwner() with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x23b872dd with:
                                                     gas gas_remaining - 710 wei
                                                    args address(ext_call.return_data[0]), msg.sender, exchangeRate * msg.value
                                                require ext_call.success
                                                if ext_call.return_data[0]:
                                                require exchangeRate * msg.value <= totalSupply
                                                totalSupply += -1 * exchangeRate * msg.value
                                            else:
                                                if msg.value / 100:
                                                    require msg.value / 100
                                                    require msg.value / 100 / msg.value / 100 == 1
                                                require (msg.value / 100) + msg.value >= msg.value
                                                if (msg.value / 100) + msg.value:
                                                    require (msg.value / 100) + msg.value
                                                    require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (msg.value / 100) + msg.value == exchangeRate
                                                require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                totalSupply = (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.getOwner() with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x23b872dd with:
                                                     gas gas_remaining - 710 wei
                                                    args address(ext_call.return_data[0]), msg.sender, (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                require ext_call.success
                                                if ext_call.return_data[0]:
                                                require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                totalSupply = totalSupply - (msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                    else:
                                        if msg.value >= 50000:
                                            if msg.value / 100:
                                                require msg.value / 100
                                                require 2 * msg.value / 100 / msg.value / 100 == 2
                                            require (2 * msg.value / 100) + msg.value >= msg.value
                                            if (2 * msg.value / 100) + msg.value:
                                                require (2 * msg.value / 100) + msg.value
                                                require (2 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (2 * msg.value / 100) + msg.value == exchangeRate
                                            require (2 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                            totalSupply = (2 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.getOwner() with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args address(ext_call.return_data[0]), msg.sender, (2 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                            require ext_call.success
                                            if ext_call.return_data[0]:
                                            require (2 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                            totalSupply = totalSupply - (2 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                        else:
                                            if msg.value > 49999:
                                                if msg.value / 100:
                                                    require msg.value / 100
                                                    require not 0 / msg.value / 100
                                                require msg.value >= msg.value
                                                if msg.value:
                                                    require msg.value
                                                    require exchangeRate * msg.value / msg.value == exchangeRate
                                                require (exchangeRate * msg.value) + totalSupply >= totalSupply
                                                totalSupply += exchangeRate * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.getOwner() with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x23b872dd with:
                                                     gas gas_remaining - 710 wei
                                                    args address(ext_call.return_data[0]), msg.sender, exchangeRate * msg.value
                                                require ext_call.success
                                                if ext_call.return_data[0]:
                                                require exchangeRate * msg.value <= totalSupply
                                                totalSupply += -1 * exchangeRate * msg.value
                                            else:
                                                if msg.value < 10000:
                                                    if msg.value / 100:
                                                        require msg.value / 100
                                                        require not 0 / msg.value / 100
                                                    require msg.value >= msg.value
                                                    if msg.value:
                                                        require msg.value
                                                        require exchangeRate * msg.value / msg.value == exchangeRate
                                                    require (exchangeRate * msg.value) + totalSupply >= totalSupply
                                                    totalSupply += exchangeRate * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.getOwner() with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x23b872dd with:
                                                         gas gas_remaining - 710 wei
                                                        args address(ext_call.return_data[0]), msg.sender, exchangeRate * msg.value
                                                    require ext_call.success
                                                    if ext_call.return_data[0]:
                                                    require exchangeRate * msg.value <= totalSupply
                                                    totalSupply += -1 * exchangeRate * msg.value
                                                else:
                                                    if msg.value / 100:
                                                        require msg.value / 100
                                                        require msg.value / 100 / msg.value / 100 == 1
                                                    require (msg.value / 100) + msg.value >= msg.value
                                                    if (msg.value / 100) + msg.value:
                                                        require (msg.value / 100) + msg.value
                                                        require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (msg.value / 100) + msg.value == exchangeRate
                                                    require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                    totalSupply = (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.getOwner() with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x23b872dd with:
                                                         gas gas_remaining - 710 wei
                                                        args address(ext_call.return_data[0]), msg.sender, (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                    require ext_call.success
                                                    if ext_call.return_data[0]:
                                                    require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                    totalSupply = totalSupply - (msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                    else:
                        if block.timestamp - icoStartTime > 336 * 24 * 3600:
                            if msg.value / 100:
                                require msg.value / 100
                                require msg.value / 100 / msg.value / 100 == 1
                            if msg.value > 10^6:
                                if msg.value / 100:
                                    require msg.value / 100
                                    require 5 * msg.value / 100 / msg.value / 100 == 5
                                require (5 * msg.value / 100) + msg.value >= msg.value
                                require 6 * msg.value / 100 >= 5 * msg.value / 100
                                if (6 * msg.value / 100) + msg.value:
                                    require (6 * msg.value / 100) + msg.value
                                    require (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (6 * msg.value / 100) + msg.value == exchangeRate
                                require (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                totalSupply = (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                require ext_code.size(tokenAddress)
                                call tokenAddress.getOwner() with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), msg.sender, (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                require ext_call.success
                                if ext_call.return_data[0]:
                                require (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                totalSupply = totalSupply - (6 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                            else:
                                if msg.value > 999999:
                                    if msg.value > 99999:
                                        if msg.value > 49999:
                                            if msg.value / 100:
                                                require msg.value / 100
                                                require not 0 / msg.value / 100
                                            require msg.value >= msg.value
                                            require (msg.value / 100) + msg.value >= msg.value
                                            if (msg.value / 100) + msg.value:
                                                require (msg.value / 100) + msg.value
                                                require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (msg.value / 100) + msg.value == exchangeRate
                                            require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                            totalSupply = (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.getOwner() with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args address(ext_call.return_data[0]), msg.sender, (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                            require ext_call.success
                                            if ext_call.return_data[0]:
                                            require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                            totalSupply = totalSupply - (msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                        else:
                                            if msg.value < 10000:
                                                if msg.value / 100:
                                                    require msg.value / 100
                                                    require not 0 / msg.value / 100
                                                require msg.value >= msg.value
                                                require (msg.value / 100) + msg.value >= msg.value
                                                if (msg.value / 100) + msg.value:
                                                    require (msg.value / 100) + msg.value
                                                    require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (msg.value / 100) + msg.value == exchangeRate
                                                require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                totalSupply = (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.getOwner() with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x23b872dd with:
                                                     gas gas_remaining - 710 wei
                                                    args address(ext_call.return_data[0]), msg.sender, (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                require ext_call.success
                                                if ext_call.return_data[0]:
                                                require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                totalSupply = totalSupply - (msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                            else:
                                                if msg.value / 100:
                                                    require msg.value / 100
                                                    require msg.value / 100 / msg.value / 100 == 1
                                                require (msg.value / 100) + msg.value >= msg.value
                                                require 2 * msg.value / 100 >= msg.value / 100
                                                if (2 * msg.value / 100) + msg.value:
                                                    require (2 * msg.value / 100) + msg.value
                                                    require (2 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (2 * msg.value / 100) + msg.value == exchangeRate
                                                require (2 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                totalSupply = (2 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.getOwner() with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x23b872dd with:
                                                     gas gas_remaining - 710 wei
                                                    args address(ext_call.return_data[0]), msg.sender, (2 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                require ext_call.success
                                                if ext_call.return_data[0]:
                                                require (2 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                totalSupply = totalSupply - (2 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                    else:
                                        if msg.value >= 50000:
                                            if msg.value / 100:
                                                require msg.value / 100
                                                require 2 * msg.value / 100 / msg.value / 100 == 2
                                            require (2 * msg.value / 100) + msg.value >= msg.value
                                            require 4 * msg.value / 100 >= 2 * msg.value / 100
                                            if (4 * msg.value / 100) + msg.value:
                                                require (4 * msg.value / 100) + msg.value
                                                require (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (4 * msg.value / 100) + msg.value == exchangeRate
                                            require (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                            totalSupply = (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.getOwner() with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args address(ext_call.return_data[0]), msg.sender, (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                            require ext_call.success
                                            if ext_call.return_data[0]:
                                            require (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                            totalSupply = totalSupply - (4 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                        else:
                                            if msg.value > 49999:
                                                if msg.value / 100:
                                                    require msg.value / 100
                                                    require not 0 / msg.value / 100
                                                require msg.value >= msg.value
                                                require (msg.value / 100) + msg.value >= msg.value
                                                if (msg.value / 100) + msg.value:
                                                    require (msg.value / 100) + msg.value
                                                    require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (msg.value / 100) + msg.value == exchangeRate
                                                require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                totalSupply = (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.getOwner() with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x23b872dd with:
                                                     gas gas_remaining - 710 wei
                                                    args address(ext_call.return_data[0]), msg.sender, (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                require ext_call.success
                                                if ext_call.return_data[0]:
                                                require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                totalSupply = totalSupply - (msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                            else:
                                                if msg.value < 10000:
                                                    if msg.value / 100:
                                                        require msg.value / 100
                                                        require not 0 / msg.value / 100
                                                    require msg.value >= msg.value
                                                    require (msg.value / 100) + msg.value >= msg.value
                                                    if (msg.value / 100) + msg.value:
                                                        require (msg.value / 100) + msg.value
                                                        require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (msg.value / 100) + msg.value == exchangeRate
                                                    require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                    totalSupply = (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.getOwner() with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x23b872dd with:
                                                         gas gas_remaining - 710 wei
                                                        args address(ext_call.return_data[0]), msg.sender, (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                    require ext_call.success
                                                    if ext_call.return_data[0]:
                                                    require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                    totalSupply = totalSupply - (msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                                else:
                                                    if msg.value / 100:
                                                        require msg.value / 100
                                                        require msg.value / 100 / msg.value / 100 == 1
                                                    require (msg.value / 100) + msg.value >= msg.value
                                                    require 2 * msg.value / 100 >= msg.value / 100
                                                    if (2 * msg.value / 100) + msg.value:
                                                        require (2 * msg.value / 100) + msg.value
                                                        require (2 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (2 * msg.value / 100) + msg.value == exchangeRate
                                                    require (2 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                    totalSupply = (2 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.getOwner() with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x23b872dd with:
                                                         gas gas_remaining - 710 wei
                                                        args address(ext_call.return_data[0]), msg.sender, (2 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                    require ext_call.success
                                                    if ext_call.return_data[0]:
                                                    require (2 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                    totalSupply = totalSupply - (2 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                else:
                                    if msg.value >= 100000:
                                        if msg.value / 100:
                                            require msg.value / 100
                                            require 3 * msg.value / 100 / msg.value / 100 == 3
                                        require (3 * msg.value / 100) + msg.value >= msg.value
                                        require 4 * msg.value / 100 >= 3 * msg.value / 100
                                        if (4 * msg.value / 100) + msg.value:
                                            require (4 * msg.value / 100) + msg.value
                                            require (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (4 * msg.value / 100) + msg.value == exchangeRate
                                        require (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                        totalSupply = (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.getOwner() with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x23b872dd with:
                                             gas gas_remaining - 710 wei
                                            args address(ext_call.return_data[0]), msg.sender, (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                        require ext_call.success
                                        if ext_call.return_data[0]:
                                        require (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                        totalSupply = totalSupply - (4 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                    else:
                                        if msg.value > 99999:
                                            if msg.value > 49999:
                                                if msg.value / 100:
                                                    require msg.value / 100
                                                    require not 0 / msg.value / 100
                                                require msg.value >= msg.value
                                                require (msg.value / 100) + msg.value >= msg.value
                                                if (msg.value / 100) + msg.value:
                                                    require (msg.value / 100) + msg.value
                                                    require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (msg.value / 100) + msg.value == exchangeRate
                                                require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                totalSupply = (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.getOwner() with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x23b872dd with:
                                                     gas gas_remaining - 710 wei
                                                    args address(ext_call.return_data[0]), msg.sender, (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                require ext_call.success
                                                if ext_call.return_data[0]:
                                                require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                totalSupply = totalSupply - (msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                            else:
                                                if msg.value < 10000:
                                                    if msg.value / 100:
                                                        require msg.value / 100
                                                        require not 0 / msg.value / 100
                                                    require msg.value >= msg.value
                                                    require (msg.value / 100) + msg.value >= msg.value
                                                    if (msg.value / 100) + msg.value:
                                                        require (msg.value / 100) + msg.value
                                                        require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (msg.value / 100) + msg.value == exchangeRate
                                                    require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                    totalSupply = (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.getOwner() with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x23b872dd with:
                                                         gas gas_remaining - 710 wei
                                                        args address(ext_call.return_data[0]), msg.sender, (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                    require ext_call.success
                                                    if ext_call.return_data[0]:
                                                    require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                    totalSupply = totalSupply - (msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                                else:
                                                    if msg.value / 100:
                                                        require msg.value / 100
                                                        require msg.value / 100 / msg.value / 100 == 1
                                                    require (msg.value / 100) + msg.value >= msg.value
                                                    require 2 * msg.value / 100 >= msg.value / 100
                                                    if (2 * msg.value / 100) + msg.value:
                                                        require (2 * msg.value / 100) + msg.value
                                                        require (2 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (2 * msg.value / 100) + msg.value == exchangeRate
                                                    require (2 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                    totalSupply = (2 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.getOwner() with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x23b872dd with:
                                                         gas gas_remaining - 710 wei
                                                        args address(ext_call.return_data[0]), msg.sender, (2 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                    require ext_call.success
                                                    if ext_call.return_data[0]:
                                                    require (2 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                    totalSupply = totalSupply - (2 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                        else:
                                            if msg.value >= 50000:
                                                if msg.value / 100:
                                                    require msg.value / 100
                                                    require 2 * msg.value / 100 / msg.value / 100 == 2
                                                require (2 * msg.value / 100) + msg.value >= msg.value
                                                require 4 * msg.value / 100 >= 2 * msg.value / 100
                                                if (4 * msg.value / 100) + msg.value:
                                                    require (4 * msg.value / 100) + msg.value
                                                    require (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (4 * msg.value / 100) + msg.value == exchangeRate
                                                require (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                totalSupply = (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.getOwner() with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x23b872dd with:
                                                     gas gas_remaining - 710 wei
                                                    args address(ext_call.return_data[0]), msg.sender, (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                require ext_call.success
                                                if ext_call.return_data[0]:
                                                require (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                totalSupply = totalSupply - (4 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                            else:
                                                if msg.value > 49999:
                                                    if msg.value / 100:
                                                        require msg.value / 100
                                                        require not 0 / msg.value / 100
                                                    require msg.value >= msg.value
                                                    require (msg.value / 100) + msg.value >= msg.value
                                                    if (msg.value / 100) + msg.value:
                                                        require (msg.value / 100) + msg.value
                                                        require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (msg.value / 100) + msg.value == exchangeRate
                                                    require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                    totalSupply = (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.getOwner() with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x23b872dd with:
                                                         gas gas_remaining - 710 wei
                                                        args address(ext_call.return_data[0]), msg.sender, (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                    require ext_call.success
                                                    if ext_call.return_data[0]:
                                                    require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                    totalSupply = totalSupply - (msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                                else:
                                                    if msg.value < 10000:
                                                        if msg.value / 100:
                                                            require msg.value / 100
                                                            require not 0 / msg.value / 100
                                                        require msg.value >= msg.value
                                                        require (msg.value / 100) + msg.value >= msg.value
                                                        if (msg.value / 100) + msg.value:
                                                            require (msg.value / 100) + msg.value
                                                            require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (msg.value / 100) + msg.value == exchangeRate
                                                        require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                        totalSupply = (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.getOwner() with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x23b872dd with:
                                                             gas gas_remaining - 710 wei
                                                            args address(ext_call.return_data[0]), msg.sender, (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                        require ext_call.success
                                                        if ext_call.return_data[0]:
                                                        require (msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                        totalSupply = totalSupply - (msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                                    else:
                                                        if msg.value / 100:
                                                            require msg.value / 100
                                                            require msg.value / 100 / msg.value / 100 == 1
                                                        require (msg.value / 100) + msg.value >= msg.value
                                                        require 2 * msg.value / 100 >= msg.value / 100
                                                        if (2 * msg.value / 100) + msg.value:
                                                            require (2 * msg.value / 100) + msg.value
                                                            require (2 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (2 * msg.value / 100) + msg.value == exchangeRate
                                                        require (2 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                        totalSupply = (2 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.getOwner() with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x23b872dd with:
                                                             gas gas_remaining - 710 wei
                                                            args address(ext_call.return_data[0]), msg.sender, (2 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                        require ext_call.success
                                                        if ext_call.return_data[0]:
                                                        require (2 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                        totalSupply = totalSupply - (2 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                        else:
                            if block.timestamp - icoStartTime <= 168 * 24 * 3600:
                                if msg.value / 100:
                                    require msg.value / 100
                                    require 5 * msg.value / 100 / msg.value / 100 == 5
                                if msg.value > 10^6:
                                    if msg.value / 100:
                                        require msg.value / 100
                                        require 5 * msg.value / 100 / msg.value / 100 == 5
                                    require (5 * msg.value / 100) + msg.value >= msg.value
                                    require 10 * msg.value / 100 >= 5 * msg.value / 100
                                    if (10 * msg.value / 100) + msg.value:
                                        require (10 * msg.value / 100) + msg.value
                                        require (10 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (10 * msg.value / 100) + msg.value == exchangeRate
                                    require (10 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                    totalSupply = (10 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.getOwner() with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, (10 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                    require ext_call.success
                                    if ext_call.return_data[0]:
                                    require (10 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                    totalSupply = totalSupply - (10 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                else:
                                    if msg.value > 999999:
                                        if msg.value > 99999:
                                            if msg.value > 49999:
                                                if msg.value / 100:
                                                    require msg.value / 100
                                                    require not 0 / msg.value / 100
                                                require msg.value >= msg.value
                                                require (5 * msg.value / 100) + msg.value >= msg.value
                                                if (5 * msg.value / 100) + msg.value:
                                                    require (5 * msg.value / 100) + msg.value
                                                    require (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (5 * msg.value / 100) + msg.value == exchangeRate
                                                require (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                totalSupply = (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.getOwner() with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x23b872dd with:
                                                     gas gas_remaining - 710 wei
                                                    args address(ext_call.return_data[0]), msg.sender, (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                require ext_call.success
                                                if ext_call.return_data[0]:
                                                require (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                totalSupply = totalSupply - (5 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                            else:
                                                if msg.value < 10000:
                                                    if msg.value / 100:
                                                        require msg.value / 100
                                                        require not 0 / msg.value / 100
                                                    require msg.value >= msg.value
                                                    require (5 * msg.value / 100) + msg.value >= msg.value
                                                    if (5 * msg.value / 100) + msg.value:
                                                        require (5 * msg.value / 100) + msg.value
                                                        require (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (5 * msg.value / 100) + msg.value == exchangeRate
                                                    require (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                    totalSupply = (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.getOwner() with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x23b872dd with:
                                                         gas gas_remaining - 710 wei
                                                        args address(ext_call.return_data[0]), msg.sender, (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                    require ext_call.success
                                                    if ext_call.return_data[0]:
                                                    require (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                    totalSupply = totalSupply - (5 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                                else:
                                                    if msg.value / 100:
                                                        require msg.value / 100
                                                        require msg.value / 100 / msg.value / 100 == 1
                                                    require (msg.value / 100) + msg.value >= msg.value
                                                    require 6 * msg.value / 100 >= msg.value / 100
                                                    if (6 * msg.value / 100) + msg.value:
                                                        require (6 * msg.value / 100) + msg.value
                                                        require (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (6 * msg.value / 100) + msg.value == exchangeRate
                                                    require (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                    totalSupply = (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.getOwner() with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x23b872dd with:
                                                         gas gas_remaining - 710 wei
                                                        args address(ext_call.return_data[0]), msg.sender, (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                    require ext_call.success
                                                    if ext_call.return_data[0]:
                                                    require (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                    totalSupply = totalSupply - (6 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                        else:
                                            if msg.value >= 50000:
                                                if msg.value / 100:
                                                    require msg.value / 100
                                                    require 2 * msg.value / 100 / msg.value / 100 == 2
                                                require (2 * msg.value / 100) + msg.value >= msg.value
                                                require 8 * msg.value / 100 >= 2 * msg.value / 100
                                                if (8 * msg.value / 100) + msg.value:
                                                    require (8 * msg.value / 100) + msg.value
                                                    require (8 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (8 * msg.value / 100) + msg.value == exchangeRate
                                                require (8 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                totalSupply = (8 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.getOwner() with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x23b872dd with:
                                                     gas gas_remaining - 710 wei
                                                    args address(ext_call.return_data[0]), msg.sender, (8 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                require ext_call.success
                                                if ext_call.return_data[0]:
                                                require (8 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                totalSupply = totalSupply - (8 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                            else:
                                                if msg.value > 49999:
                                                    if msg.value / 100:
                                                        require msg.value / 100
                                                        require not 0 / msg.value / 100
                                                    require msg.value >= msg.value
                                                    require (5 * msg.value / 100) + msg.value >= msg.value
                                                    if (5 * msg.value / 100) + msg.value:
                                                        require (5 * msg.value / 100) + msg.value
                                                        require (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (5 * msg.value / 100) + msg.value == exchangeRate
                                                    require (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                    totalSupply = (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.getOwner() with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x23b872dd with:
                                                         gas gas_remaining - 710 wei
                                                        args address(ext_call.return_data[0]), msg.sender, (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                    require ext_call.success
                                                    if ext_call.return_data[0]:
                                                    require (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                    totalSupply = totalSupply - (5 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                                else:
                                                    if msg.value < 10000:
                                                        if msg.value / 100:
                                                            require msg.value / 100
                                                            require not 0 / msg.value / 100
                                                        require msg.value >= msg.value
                                                        require (5 * msg.value / 100) + msg.value >= msg.value
                                                        if (5 * msg.value / 100) + msg.value:
                                                            require (5 * msg.value / 100) + msg.value
                                                            require (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (5 * msg.value / 100) + msg.value == exchangeRate
                                                        require (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                        totalSupply = (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.getOwner() with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x23b872dd with:
                                                             gas gas_remaining - 710 wei
                                                            args address(ext_call.return_data[0]), msg.sender, (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                        require ext_call.success
                                                        if ext_call.return_data[0]:
                                                        require (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                        totalSupply = totalSupply - (5 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                                    else:
                                                        if msg.value / 100:
                                                            require msg.value / 100
                                                            require msg.value / 100 / msg.value / 100 == 1
                                                        require (msg.value / 100) + msg.value >= msg.value
                                                        require 6 * msg.value / 100 >= msg.value / 100
                                                        if (6 * msg.value / 100) + msg.value:
                                                            require (6 * msg.value / 100) + msg.value
                                                            require (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (6 * msg.value / 100) + msg.value == exchangeRate
                                                        require (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                        totalSupply = (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.getOwner() with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x23b872dd with:
                                                             gas gas_remaining - 710 wei
                                                            args address(ext_call.return_data[0]), msg.sender, (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                        require ext_call.success
                                                        if ext_call.return_data[0]:
                                                        require (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                        totalSupply = totalSupply - (6 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                    else:
                                        if msg.value >= 100000:
                                            if msg.value / 100:
                                                require msg.value / 100
                                                require 3 * msg.value / 100 / msg.value / 100 == 3
                                            require (3 * msg.value / 100) + msg.value >= msg.value
                                            require 8 * msg.value / 100 >= 3 * msg.value / 100
                                            if (8 * msg.value / 100) + msg.value:
                                                require (8 * msg.value / 100) + msg.value
                                                require (8 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (8 * msg.value / 100) + msg.value == exchangeRate
                                            require (8 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                            totalSupply = (8 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.getOwner() with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args address(ext_call.return_data[0]), msg.sender, (8 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                            require ext_call.success
                                            if ext_call.return_data[0]:
                                            require (8 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                            totalSupply = totalSupply - (8 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                        else:
                                            if msg.value > 99999:
                                                if msg.value > 49999:
                                                    if msg.value / 100:
                                                        require msg.value / 100
                                                        require not 0 / msg.value / 100
                                                    require msg.value >= msg.value
                                                    require (5 * msg.value / 100) + msg.value >= msg.value
                                                    if (5 * msg.value / 100) + msg.value:
                                                        require (5 * msg.value / 100) + msg.value
                                                        require (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (5 * msg.value / 100) + msg.value == exchangeRate
                                                    require (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                    totalSupply = (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.getOwner() with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x23b872dd with:
                                                         gas gas_remaining - 710 wei
                                                        args address(ext_call.return_data[0]), msg.sender, (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                    require ext_call.success
                                                    if ext_call.return_data[0]:
                                                    require (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                    totalSupply = totalSupply - (5 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                                else:
                                                    if msg.value < 10000:
                                                        if msg.value / 100:
                                                            require msg.value / 100
                                                            require not 0 / msg.value / 100
                                                        require msg.value >= msg.value
                                                        require (5 * msg.value / 100) + msg.value >= msg.value
                                                        if (5 * msg.value / 100) + msg.value:
                                                            require (5 * msg.value / 100) + msg.value
                                                            require (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (5 * msg.value / 100) + msg.value == exchangeRate
                                                        require (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                        totalSupply = (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.getOwner() with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x23b872dd with:
                                                             gas gas_remaining - 710 wei
                                                            args address(ext_call.return_data[0]), msg.sender, (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                        require ext_call.success
                                                        if ext_call.return_data[0]:
                                                        require (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                        totalSupply = totalSupply - (5 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                                    else:
                                                        if msg.value / 100:
                                                            require msg.value / 100
                                                            require msg.value / 100 / msg.value / 100 == 1
                                                        require (msg.value / 100) + msg.value >= msg.value
                                                        require 6 * msg.value / 100 >= msg.value / 100
                                                        if (6 * msg.value / 100) + msg.value:
                                                            require (6 * msg.value / 100) + msg.value
                                                            require (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (6 * msg.value / 100) + msg.value == exchangeRate
                                                        require (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                        totalSupply = (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.getOwner() with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x23b872dd with:
                                                             gas gas_remaining - 710 wei
                                                            args address(ext_call.return_data[0]), msg.sender, (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                        require ext_call.success
                                                        if ext_call.return_data[0]:
                                                        require (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                        totalSupply = totalSupply - (6 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                            else:
                                                if msg.value >= 50000:
                                                    if msg.value / 100:
                                                        require msg.value / 100
                                                        require 2 * msg.value / 100 / msg.value / 100 == 2
                                                    require (2 * msg.value / 100) + msg.value >= msg.value
                                                    require 8 * msg.value / 100 >= 2 * msg.value / 100
                                                    if (8 * msg.value / 100) + msg.value:
                                                        require (8 * msg.value / 100) + msg.value
                                                        require (8 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (8 * msg.value / 100) + msg.value == exchangeRate
                                                    require (8 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                    totalSupply = (8 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.getOwner() with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x23b872dd with:
                                                         gas gas_remaining - 710 wei
                                                        args address(ext_call.return_data[0]), msg.sender, (8 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                    require ext_call.success
                                                    if ext_call.return_data[0]:
                                                    require (8 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                    totalSupply = totalSupply - (8 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                                else:
                                                    if msg.value > 49999:
                                                        if msg.value / 100:
                                                            require msg.value / 100
                                                            require not 0 / msg.value / 100
                                                        require msg.value >= msg.value
                                                        require (5 * msg.value / 100) + msg.value >= msg.value
                                                        if (5 * msg.value / 100) + msg.value:
                                                            require (5 * msg.value / 100) + msg.value
                                                            require (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (5 * msg.value / 100) + msg.value == exchangeRate
                                                        require (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                        totalSupply = (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.getOwner() with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x23b872dd with:
                                                             gas gas_remaining - 710 wei
                                                            args address(ext_call.return_data[0]), msg.sender, (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                        require ext_call.success
                                                        if ext_call.return_data[0]:
                                                        require (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                        totalSupply = totalSupply - (5 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                                    else:
                                                        if msg.value < 10000:
                                                            if msg.value / 100:
                                                                require msg.value / 100
                                                                require not 0 / msg.value / 100
                                                            require msg.value >= msg.value
                                                            require (5 * msg.value / 100) + msg.value >= msg.value
                                                            if (5 * msg.value / 100) + msg.value:
                                                                require (5 * msg.value / 100) + msg.value
                                                                require (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (5 * msg.value / 100) + msg.value == exchangeRate
                                                            require (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                            totalSupply = (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.getOwner() with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0x23b872dd with:
                                                                 gas gas_remaining - 710 wei
                                                                args address(ext_call.return_data[0]), msg.sender, (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                            require ext_call.success
                                                            if ext_call.return_data[0]:
                                                            require (5 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                            totalSupply = totalSupply - (5 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                                        else:
                                                            if msg.value / 100:
                                                                require msg.value / 100
                                                                require msg.value / 100 / msg.value / 100 == 1
                                                            require (msg.value / 100) + msg.value >= msg.value
                                                            require 6 * msg.value / 100 >= msg.value / 100
                                                            if (6 * msg.value / 100) + msg.value:
                                                                require (6 * msg.value / 100) + msg.value
                                                                require (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (6 * msg.value / 100) + msg.value == exchangeRate
                                                            require (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                            totalSupply = (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.getOwner() with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0x23b872dd with:
                                                                 gas gas_remaining - 710 wei
                                                                args address(ext_call.return_data[0]), msg.sender, (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                            require ext_call.success
                                                            if ext_call.return_data[0]:
                                                            require (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                            totalSupply = totalSupply - (6 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                            else:
                                if msg.value / 100:
                                    require msg.value / 100
                                    require 3 * msg.value / 100 / msg.value / 100 == 3
                                if msg.value > 10^6:
                                    if msg.value / 100:
                                        require msg.value / 100
                                        require 5 * msg.value / 100 / msg.value / 100 == 5
                                    require (5 * msg.value / 100) + msg.value >= msg.value
                                    require 8 * msg.value / 100 >= 5 * msg.value / 100
                                    if (8 * msg.value / 100) + msg.value:
                                        require (8 * msg.value / 100) + msg.value
                                        require (8 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (8 * msg.value / 100) + msg.value == exchangeRate
                                    require (8 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                    totalSupply = (8 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.getOwner() with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args address(ext_call.return_data[0]), msg.sender, (8 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                    require ext_call.success
                                    if ext_call.return_data[0]:
                                    require (8 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                    totalSupply = totalSupply - (8 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                else:
                                    if msg.value > 999999:
                                        if msg.value > 99999:
                                            if msg.value > 49999:
                                                if msg.value / 100:
                                                    require msg.value / 100
                                                    require not 0 / msg.value / 100
                                                require msg.value >= msg.value
                                                require (3 * msg.value / 100) + msg.value >= msg.value
                                                if (3 * msg.value / 100) + msg.value:
                                                    require (3 * msg.value / 100) + msg.value
                                                    require (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (3 * msg.value / 100) + msg.value == exchangeRate
                                                require (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                totalSupply = (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.getOwner() with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x23b872dd with:
                                                     gas gas_remaining - 710 wei
                                                    args address(ext_call.return_data[0]), msg.sender, (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                require ext_call.success
                                                if ext_call.return_data[0]:
                                                require (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                totalSupply = totalSupply - (3 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                            else:
                                                if msg.value < 10000:
                                                    if msg.value / 100:
                                                        require msg.value / 100
                                                        require not 0 / msg.value / 100
                                                    require msg.value >= msg.value
                                                    require (3 * msg.value / 100) + msg.value >= msg.value
                                                    if (3 * msg.value / 100) + msg.value:
                                                        require (3 * msg.value / 100) + msg.value
                                                        require (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (3 * msg.value / 100) + msg.value == exchangeRate
                                                    require (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                    totalSupply = (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.getOwner() with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x23b872dd with:
                                                         gas gas_remaining - 710 wei
                                                        args address(ext_call.return_data[0]), msg.sender, (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                    require ext_call.success
                                                    if ext_call.return_data[0]:
                                                    require (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                    totalSupply = totalSupply - (3 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                                else:
                                                    if msg.value / 100:
                                                        require msg.value / 100
                                                        require msg.value / 100 / msg.value / 100 == 1
                                                    require (msg.value / 100) + msg.value >= msg.value
                                                    require 4 * msg.value / 100 >= msg.value / 100
                                                    if (4 * msg.value / 100) + msg.value:
                                                        require (4 * msg.value / 100) + msg.value
                                                        require (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (4 * msg.value / 100) + msg.value == exchangeRate
                                                    require (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                    totalSupply = (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.getOwner() with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x23b872dd with:
                                                         gas gas_remaining - 710 wei
                                                        args address(ext_call.return_data[0]), msg.sender, (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                    require ext_call.success
                                                    if ext_call.return_data[0]:
                                                    require (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                    totalSupply = totalSupply - (4 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                        else:
                                            if msg.value >= 50000:
                                                if msg.value / 100:
                                                    require msg.value / 100
                                                    require 2 * msg.value / 100 / msg.value / 100 == 2
                                                require (2 * msg.value / 100) + msg.value >= msg.value
                                                require 6 * msg.value / 100 >= 2 * msg.value / 100
                                                if (6 * msg.value / 100) + msg.value:
                                                    require (6 * msg.value / 100) + msg.value
                                                    require (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (6 * msg.value / 100) + msg.value == exchangeRate
                                                require (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                totalSupply = (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.getOwner() with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x23b872dd with:
                                                     gas gas_remaining - 710 wei
                                                    args address(ext_call.return_data[0]), msg.sender, (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                require ext_call.success
                                                if ext_call.return_data[0]:
                                                require (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                totalSupply = totalSupply - (6 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                            else:
                                                if msg.value > 49999:
                                                    if msg.value / 100:
                                                        require msg.value / 100
                                                        require not 0 / msg.value / 100
                                                    require msg.value >= msg.value
                                                    require (3 * msg.value / 100) + msg.value >= msg.value
                                                    if (3 * msg.value / 100) + msg.value:
                                                        require (3 * msg.value / 100) + msg.value
                                                        require (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (3 * msg.value / 100) + msg.value == exchangeRate
                                                    require (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                    totalSupply = (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.getOwner() with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x23b872dd with:
                                                         gas gas_remaining - 710 wei
                                                        args address(ext_call.return_data[0]), msg.sender, (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                    require ext_call.success
                                                    if ext_call.return_data[0]:
                                                    require (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                    totalSupply = totalSupply - (3 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                                else:
                                                    if msg.value < 10000:
                                                        if msg.value / 100:
                                                            require msg.value / 100
                                                            require not 0 / msg.value / 100
                                                        require msg.value >= msg.value
                                                        require (3 * msg.value / 100) + msg.value >= msg.value
                                                        if (3 * msg.value / 100) + msg.value:
                                                            require (3 * msg.value / 100) + msg.value
                                                            require (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (3 * msg.value / 100) + msg.value == exchangeRate
                                                        require (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                        totalSupply = (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.getOwner() with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x23b872dd with:
                                                             gas gas_remaining - 710 wei
                                                            args address(ext_call.return_data[0]), msg.sender, (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                        require ext_call.success
                                                        if ext_call.return_data[0]:
                                                        require (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                        totalSupply = totalSupply - (3 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                                    else:
                                                        if msg.value / 100:
                                                            require msg.value / 100
                                                            require msg.value / 100 / msg.value / 100 == 1
                                                        require (msg.value / 100) + msg.value >= msg.value
                                                        require 4 * msg.value / 100 >= msg.value / 100
                                                        if (4 * msg.value / 100) + msg.value:
                                                            require (4 * msg.value / 100) + msg.value
                                                            require (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (4 * msg.value / 100) + msg.value == exchangeRate
                                                        require (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                        totalSupply = (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.getOwner() with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x23b872dd with:
                                                             gas gas_remaining - 710 wei
                                                            args address(ext_call.return_data[0]), msg.sender, (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                        require ext_call.success
                                                        if ext_call.return_data[0]:
                                                        require (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                        totalSupply = totalSupply - (4 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                    else:
                                        if msg.value >= 100000:
                                            if msg.value / 100:
                                                require msg.value / 100
                                                require 3 * msg.value / 100 / msg.value / 100 == 3
                                            require (3 * msg.value / 100) + msg.value >= msg.value
                                            require 6 * msg.value / 100 >= 3 * msg.value / 100
                                            if (6 * msg.value / 100) + msg.value:
                                                require (6 * msg.value / 100) + msg.value
                                                require (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (6 * msg.value / 100) + msg.value == exchangeRate
                                            require (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                            totalSupply = (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.getOwner() with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args address(ext_call.return_data[0]), msg.sender, (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                            require ext_call.success
                                            if ext_call.return_data[0]:
                                            require (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                            totalSupply = totalSupply - (6 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                        else:
                                            if msg.value > 99999:
                                                if msg.value > 49999:
                                                    if msg.value / 100:
                                                        require msg.value / 100
                                                        require not 0 / msg.value / 100
                                                    require msg.value >= msg.value
                                                    require (3 * msg.value / 100) + msg.value >= msg.value
                                                    if (3 * msg.value / 100) + msg.value:
                                                        require (3 * msg.value / 100) + msg.value
                                                        require (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (3 * msg.value / 100) + msg.value == exchangeRate
                                                    require (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                    totalSupply = (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.getOwner() with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x23b872dd with:
                                                         gas gas_remaining - 710 wei
                                                        args address(ext_call.return_data[0]), msg.sender, (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                    require ext_call.success
                                                    if ext_call.return_data[0]:
                                                    require (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                    totalSupply = totalSupply - (3 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                                else:
                                                    if msg.value < 10000:
                                                        if msg.value / 100:
                                                            require msg.value / 100
                                                            require not 0 / msg.value / 100
                                                        require msg.value >= msg.value
                                                        require (3 * msg.value / 100) + msg.value >= msg.value
                                                        if (3 * msg.value / 100) + msg.value:
                                                            require (3 * msg.value / 100) + msg.value
                                                            require (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (3 * msg.value / 100) + msg.value == exchangeRate
                                                        require (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                        totalSupply = (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.getOwner() with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x23b872dd with:
                                                             gas gas_remaining - 710 wei
                                                            args address(ext_call.return_data[0]), msg.sender, (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                        require ext_call.success
                                                        if ext_call.return_data[0]:
                                                        require (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                        totalSupply = totalSupply - (3 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                                    else:
                                                        if msg.value / 100:
                                                            require msg.value / 100
                                                            require msg.value / 100 / msg.value / 100 == 1
                                                        require (msg.value / 100) + msg.value >= msg.value
                                                        require 4 * msg.value / 100 >= msg.value / 100
                                                        if (4 * msg.value / 100) + msg.value:
                                                            require (4 * msg.value / 100) + msg.value
                                                            require (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (4 * msg.value / 100) + msg.value == exchangeRate
                                                        require (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                        totalSupply = (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.getOwner() with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x23b872dd with:
                                                             gas gas_remaining - 710 wei
                                                            args address(ext_call.return_data[0]), msg.sender, (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                        require ext_call.success
                                                        if ext_call.return_data[0]:
                                                        require (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                        totalSupply = totalSupply - (4 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                            else:
                                                if msg.value >= 50000:
                                                    if msg.value / 100:
                                                        require msg.value / 100
                                                        require 2 * msg.value / 100 / msg.value / 100 == 2
                                                    require (2 * msg.value / 100) + msg.value >= msg.value
                                                    require 6 * msg.value / 100 >= 2 * msg.value / 100
                                                    if (6 * msg.value / 100) + msg.value:
                                                        require (6 * msg.value / 100) + msg.value
                                                        require (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (6 * msg.value / 100) + msg.value == exchangeRate
                                                    require (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                    totalSupply = (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.getOwner() with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0x23b872dd with:
                                                         gas gas_remaining - 710 wei
                                                        args address(ext_call.return_data[0]), msg.sender, (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                    require ext_call.success
                                                    if ext_call.return_data[0]:
                                                    require (6 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                    totalSupply = totalSupply - (6 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                                else:
                                                    if msg.value > 49999:
                                                        if msg.value / 100:
                                                            require msg.value / 100
                                                            require not 0 / msg.value / 100
                                                        require msg.value >= msg.value
                                                        require (3 * msg.value / 100) + msg.value >= msg.value
                                                        if (3 * msg.value / 100) + msg.value:
                                                            require (3 * msg.value / 100) + msg.value
                                                            require (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (3 * msg.value / 100) + msg.value == exchangeRate
                                                        require (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                        totalSupply = (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.getOwner() with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0x23b872dd with:
                                                             gas gas_remaining - 710 wei
                                                            args address(ext_call.return_data[0]), msg.sender, (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                        require ext_call.success
                                                        if ext_call.return_data[0]:
                                                        require (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                        totalSupply = totalSupply - (3 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                                    else:
                                                        if msg.value < 10000:
                                                            if msg.value / 100:
                                                                require msg.value / 100
                                                                require not 0 / msg.value / 100
                                                            require msg.value >= msg.value
                                                            require (3 * msg.value / 100) + msg.value >= msg.value
                                                            if (3 * msg.value / 100) + msg.value:
                                                                require (3 * msg.value / 100) + msg.value
                                                                require (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (3 * msg.value / 100) + msg.value == exchangeRate
                                                            require (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                            totalSupply = (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.getOwner() with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0x23b872dd with:
                                                                 gas gas_remaining - 710 wei
                                                                args address(ext_call.return_data[0]), msg.sender, (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                            require ext_call.success
                                                            if ext_call.return_data[0]:
                                                            require (3 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                            totalSupply = totalSupply - (3 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
                                                        else:
                                                            if msg.value / 100:
                                                                require msg.value / 100
                                                                require msg.value / 100 / msg.value / 100 == 1
                                                            require (msg.value / 100) + msg.value >= msg.value
                                                            require 4 * msg.value / 100 >= msg.value / 100
                                                            if (4 * msg.value / 100) + msg.value:
                                                                require (4 * msg.value / 100) + msg.value
                                                                require (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) / (4 * msg.value / 100) + msg.value == exchangeRate
                                                            require (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply >= totalSupply
                                                            totalSupply = (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) + totalSupply
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.getOwner() with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0x23b872dd with:
                                                                 gas gas_remaining - 710 wei
                                                                args address(ext_call.return_data[0]), msg.sender, (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate)
                                                            require ext_call.success
                                                            if ext_call.return_data[0]:
                                                            require (4 * msg.value / 100 * exchangeRate) + (msg.value * exchangeRate) <= totalSupply
                                                            totalSupply = totalSupply - (4 * msg.value / 100 * exchangeRate) - (msg.value * exchangeRate)
    revert
}



}
