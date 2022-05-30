contract main {




// =====================  Runtime code  =====================


const icoEnd = (428952 * 24 * 3600)

const preSaleHardCap = (132275 * 10^14 * 3600)

const preSaleStart = (427485 * 3600)

const preIcoPrice = 95

const minPurchase = 10^15

const icoPrice = 60

const preIcoStart = (428232 * 24 * 3600)

const preSaleEnd = (428952 * 24 * 3600)

const icoStart = (428232 * 24 * 3600)

const preIcoEnd = (428952 * 24 * 3600)

const sub_92d7d2eb(?) = 1300 * 10^18

const sub_a81ec0c5(?) = 189

const sub_b62a86a8(?) = (350875 * 10^14 * 3600)

const sub_d33e225a(?) = 650000 * 10^18


uint8 state; offset 160
address owner;
address tokenAddress;
mapping of uint256 stor2;

function owner() {
    return owner
}

function state() {
    require state <= 5
    return state
}

function token() {
    return tokenAddress
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function isValidPeriod(uint256 arg1) {
    require state <= 5
    if state == 1:
        if arg1 < 427485 * 3600:
            return 0
    else:
        require state <= 5
        if state != 2:
            require state <= 5
            if state != 3:
                return 0
        if arg1 < 428232 * 24 * 3600:
            return 0
    if arg1 > 428952 * 24 * 3600:
        return 0
    return 1
}

function isReachedHardCap(uint256 arg1) {
    require state <= 5
    if state == 1:
        if arg1 + eth.balance(this.address) >= arg1:
            return (arg1 + eth.balance(this.address) > 132275 * 10^14 * 3600)
    else:
        if state <= 5:
            if state == 2:
                if arg1 + eth.balance(this.address) >= arg1:
                    return (arg1 + eth.balance(this.address) > 350875 * 10^14 * 3600)
            else:
                if state <= 5:
                    if state != 3:
                        return 0
                    if arg1 + eth.balance(this.address) >= arg1:
                        return (arg1 + eth.balance(this.address) > 650000 * 10^18)
    revert
}

function refund() {
    require state <= 5
    require state == 5
    require stor2[address(msg.sender)] > 0
    stor2[address(msg.sender)] = 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0x42966c68 with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value stor2[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
}

function getBonus(uint256 arg1, uint256 arg2) {
    require state <= 5
    if state != 1:
        return 0
    if arg1 < 427485 * 3600:
        return 0
    if arg1 < 427653 * 3600:
        if not arg2:
            return 0
        if arg2:
            if 20 * arg2 / arg2 == 20:
                return (20 * arg2 / 100)
    else:
        if arg1 < 427821 * 3600:
            if not arg2:
                return 0
            if arg2:
                if 10 * arg2 / arg2 == 10:
                    return (10 * arg2 / 100)
        else:
            if arg1 >= 427989 * 3600:
                return 0
            if not arg2:
                return 0
            if arg2:
                if 5 * arg2 / arg2 == 5:
                    return (5 * arg2 / 100)
    revert
}

function calcTokens(uint256 arg1) {
    require state <= 5
    if state == 1:
        if not arg1:
            return 0
        if arg1:
            if 189 * arg1 / arg1 == 189:
                return (189 * arg1)
    else:
        if state <= 5:
            if state == 2:
                if not arg1:
                    return 0
                if arg1:
                    if 95 * arg1 / arg1 == 95:
                        return (95 * arg1)
            else:
                if state <= 5:
                    if state != 3:
                        return 0
                    if not arg1:
                        return 0
                    if arg1:
                        if 60 * arg1 / arg1 == 60:
                            return (60 * arg1)
    revert
}

function nextState() {
    require msg.sender == owner
    require state <= 5
    require state <= 5
    if state:
        if state != 1:
            require state <= 5
            if state != 2:
                require state <= 5
                require state == 3
    if not state:
        state = 1
    else:
        require state <= 5
        if state == 1:
            if eth.balance(this.address) <= 1300 * 10^18:
                state = 5
            else:
                state = 2
                call owner with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            require state <= 5
            if state == 2:
                state = 3
                call owner with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                require state <= 5
                if state == 3:
                    state = 4
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x42966c68 with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require msg.sender
    require msg.value >= 10^15
    require state <= 5
    if state != 1:
        require state <= 5
        if state != 2:
            require state <= 5
            require state == 3
            require block.timestamp >= 428232 * 24 * 3600
            require block.timestamp <= 428952 * 24 * 3600
            require state <= 5
            if state != 1:
                require state <= 5
                if state != 2:
                    require state <= 5
                    if state != 3:
                        require state <= 5
                        if state != 1:
                            require state <= 5
                            if state != 2:
                                require state <= 5
                                if state != 3:
                                    require state <= 5
                                    if state != 1:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                                    else:
                                        if block.timestamp < 427485 * 3600:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                        else:
                                            if block.timestamp >= 427653 * 3600:
                                                if block.timestamp >= 427821 * 3600:
                                                    if block.timestamp >= 427989 * 3600:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                                    else:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                else:
                                    if msg.value:
                                        require msg.value
                                        require 60 * msg.value / msg.value == 60
                                        require state <= 5
                                        if state != 1:
                                            require 60 * msg.value >= 60 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 60 * msg.value
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                        else:
                                            if block.timestamp < 427485 * 3600:
                                                require 60 * msg.value >= 60 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 60 * msg.value
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                            else:
                                                if block.timestamp >= 427653 * 3600:
                                                    if block.timestamp >= 427821 * 3600:
                                                        if block.timestamp >= 427989 * 3600:
                                                            require 60 * msg.value >= 60 * msg.value
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 60 * msg.value
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                                stor2[address(msg.sender)] += msg.value
                                                        else:
                                                            if 60 * msg.value:
                                                                require 60 * msg.value
                                                                require 300 * msg.value / 60 * msg.value == 5
                                                                require (60 * msg.value) + (300 * msg.value / 100) >= 60 * msg.value
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0xa9059cbb with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, (60 * msg.value) + (300 * msg.value / 100)
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                                    stor2[address(msg.sender)] += msg.value
                                                            else:
                                                                require 60 * msg.value >= 60 * msg.value
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0xa9059cbb with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, 60 * msg.value
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                                    stor2[address(msg.sender)] += msg.value
                                                    else:
                                                        if 60 * msg.value:
                                                            require 60 * msg.value
                                                            require 600 * msg.value / 60 * msg.value == 10
                                                            require (60 * msg.value) + (600 * msg.value / 100) >= 60 * msg.value
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, (60 * msg.value) + (600 * msg.value / 100)
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                                stor2[address(msg.sender)] += msg.value
                                                        else:
                                                            require 60 * msg.value >= 60 * msg.value
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 60 * msg.value
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                                stor2[address(msg.sender)] += msg.value
                                                else:
                                                    if 60 * msg.value:
                                                        require 60 * msg.value
                                                        require 1200 * msg.value / 60 * msg.value == 20
                                                        require (60 * msg.value) + (1200 * msg.value / 100) >= 60 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, (60 * msg.value) + (1200 * msg.value / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                                    else:
                                                        require 60 * msg.value >= 60 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 60 * msg.value
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                    else:
                                        require state <= 5
                                        if state != 1:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                        else:
                                            if block.timestamp < 427485 * 3600:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                            else:
                                                if block.timestamp >= 427653 * 3600:
                                                    if block.timestamp >= 427821 * 3600:
                                                        if block.timestamp >= 427989 * 3600:
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                                stor2[address(msg.sender)] += msg.value
                                                        else:
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                                stor2[address(msg.sender)] += msg.value
                                                    else:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                            else:
                                if msg.value:
                                    require msg.value
                                    require 95 * msg.value / msg.value == 95
                                    require state <= 5
                                    if state != 1:
                                        require 95 * msg.value >= 95 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 95 * msg.value
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                                    else:
                                        if block.timestamp < 427485 * 3600:
                                            require 95 * msg.value >= 95 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 95 * msg.value
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                        else:
                                            if block.timestamp >= 427653 * 3600:
                                                if block.timestamp >= 427821 * 3600:
                                                    if block.timestamp >= 427989 * 3600:
                                                        require 95 * msg.value >= 95 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 95 * msg.value
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                                    else:
                                                        if 95 * msg.value:
                                                            require 95 * msg.value
                                                            require 475 * msg.value / 95 * msg.value == 5
                                                            require (95 * msg.value) + (475 * msg.value / 100) >= 95 * msg.value
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, (95 * msg.value) + (475 * msg.value / 100)
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                                stor2[address(msg.sender)] += msg.value
                                                        else:
                                                            require 95 * msg.value >= 95 * msg.value
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 95 * msg.value
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                                stor2[address(msg.sender)] += msg.value
                                                else:
                                                    if 95 * msg.value:
                                                        require 95 * msg.value
                                                        require 950 * msg.value / 95 * msg.value == 10
                                                        require (95 * msg.value) + (950 * msg.value / 100) >= 95 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, (95 * msg.value) + (950 * msg.value / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                                    else:
                                                        require 95 * msg.value >= 95 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 95 * msg.value
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                            else:
                                                if 95 * msg.value:
                                                    require 95 * msg.value
                                                    require 1900 * msg.value / 95 * msg.value == 20
                                                    require (95 * msg.value) + (1900 * msg.value / 100) >= 95 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, (95 * msg.value) + (1900 * msg.value / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                                else:
                                                    require 95 * msg.value >= 95 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 95 * msg.value
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                else:
                                    require state <= 5
                                    if state != 1:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                                    else:
                                        if block.timestamp < 427485 * 3600:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                        else:
                                            if block.timestamp >= 427653 * 3600:
                                                if block.timestamp >= 427821 * 3600:
                                                    if block.timestamp >= 427989 * 3600:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                                    else:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                        else:
                            if msg.value:
                                require msg.value
                                require 189 * msg.value / msg.value == 189
                                require state <= 5
                                if state != 1:
                                    require 189 * msg.value >= 189 * msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 189 * msg.value
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                        stor2[address(msg.sender)] += msg.value
                                else:
                                    if block.timestamp < 427485 * 3600:
                                        require 189 * msg.value >= 189 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 189 * msg.value
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                                    else:
                                        if block.timestamp >= 427653 * 3600:
                                            if block.timestamp >= 427821 * 3600:
                                                if block.timestamp >= 427989 * 3600:
                                                    require 189 * msg.value >= 189 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 189 * msg.value
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                                else:
                                                    if 189 * msg.value:
                                                        require 189 * msg.value
                                                        require 945 * msg.value / 189 * msg.value == 5
                                                        require (189 * msg.value) + (945 * msg.value / 100) >= 189 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, (189 * msg.value) + (945 * msg.value / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                                    else:
                                                        require 189 * msg.value >= 189 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 189 * msg.value
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                            else:
                                                if 189 * msg.value:
                                                    require 189 * msg.value
                                                    require 1890 * msg.value / 189 * msg.value == 10
                                                    require (189 * msg.value) + (1890 * msg.value / 100) >= 189 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, (189 * msg.value) + (1890 * msg.value / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                                else:
                                                    require 189 * msg.value >= 189 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 189 * msg.value
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                        else:
                                            if 189 * msg.value:
                                                require 189 * msg.value
                                                require 3780 * msg.value / 189 * msg.value == 20
                                                require (189 * msg.value) + (3780 * msg.value / 100) >= 189 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (189 * msg.value) + (3780 * msg.value / 100)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                            else:
                                                require 189 * msg.value >= 189 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 189 * msg.value
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                            else:
                                require state <= 5
                                if state != 1:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                        stor2[address(msg.sender)] += msg.value
                                else:
                                    if block.timestamp < 427485 * 3600:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                                    else:
                                        if block.timestamp >= 427653 * 3600:
                                            if block.timestamp >= 427821 * 3600:
                                                if block.timestamp >= 427989 * 3600:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                    else:
                        require msg.value + eth.balance(this.address) >= msg.value
                        require msg.value + eth.balance(this.address) <= 650000 * 10^18
                        require state <= 5
                        if state != 1:
                            require state <= 5
                            if state != 2:
                                require state <= 5
                                if state != 3:
                                    require state <= 5
                                    if state != 1:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                                    else:
                                        if block.timestamp < 427485 * 3600:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                        else:
                                            if block.timestamp >= 427653 * 3600:
                                                if block.timestamp >= 427821 * 3600:
                                                    if block.timestamp >= 427989 * 3600:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                                    else:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                else:
                                    if msg.value:
                                        require msg.value
                                        require 60 * msg.value / msg.value == 60
                                        require state <= 5
                                        if state != 1:
                                            require 60 * msg.value >= 60 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 60 * msg.value
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                        else:
                                            if block.timestamp < 427485 * 3600:
                                                require 60 * msg.value >= 60 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 60 * msg.value
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                            else:
                                                if block.timestamp >= 427653 * 3600:
                                                    if block.timestamp >= 427821 * 3600:
                                                        if block.timestamp >= 427989 * 3600:
                                                            require 60 * msg.value >= 60 * msg.value
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 60 * msg.value
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                                stor2[address(msg.sender)] += msg.value
                                                        else:
                                                            if 60 * msg.value:
                                                                require 60 * msg.value
                                                                require 300 * msg.value / 60 * msg.value == 5
                                                                require (60 * msg.value) + (300 * msg.value / 100) >= 60 * msg.value
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0xa9059cbb with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, (60 * msg.value) + (300 * msg.value / 100)
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                                    stor2[address(msg.sender)] += msg.value
                                                            else:
                                                                require 60 * msg.value >= 60 * msg.value
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0xa9059cbb with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, 60 * msg.value
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                                    stor2[address(msg.sender)] += msg.value
                                                    else:
                                                        if 60 * msg.value:
                                                            require 60 * msg.value
                                                            require 600 * msg.value / 60 * msg.value == 10
                                                            require (60 * msg.value) + (600 * msg.value / 100) >= 60 * msg.value
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, (60 * msg.value) + (600 * msg.value / 100)
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                                stor2[address(msg.sender)] += msg.value
                                                        else:
                                                            require 60 * msg.value >= 60 * msg.value
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 60 * msg.value
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                                stor2[address(msg.sender)] += msg.value
                                                else:
                                                    if 60 * msg.value:
                                                        require 60 * msg.value
                                                        require 1200 * msg.value / 60 * msg.value == 20
                                                        require (60 * msg.value) + (1200 * msg.value / 100) >= 60 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, (60 * msg.value) + (1200 * msg.value / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                                    else:
                                                        require 60 * msg.value >= 60 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 60 * msg.value
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                    else:
                                        require state <= 5
                                        if state != 1:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                        else:
                                            if block.timestamp < 427485 * 3600:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                            else:
                                                if block.timestamp >= 427653 * 3600:
                                                    if block.timestamp >= 427821 * 3600:
                                                        if block.timestamp >= 427989 * 3600:
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                                stor2[address(msg.sender)] += msg.value
                                                        else:
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                                stor2[address(msg.sender)] += msg.value
                                                    else:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                            else:
                                if msg.value:
                                    require msg.value
                                    require 95 * msg.value / msg.value == 95
                                    require state <= 5
                                    if state != 1:
                                        require 95 * msg.value >= 95 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 95 * msg.value
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                                    else:
                                        if block.timestamp < 427485 * 3600:
                                            require 95 * msg.value >= 95 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 95 * msg.value
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                        else:
                                            if block.timestamp >= 427653 * 3600:
                                                if block.timestamp >= 427821 * 3600:
                                                    if block.timestamp >= 427989 * 3600:
                                                        require 95 * msg.value >= 95 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 95 * msg.value
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                                    else:
                                                        if 95 * msg.value:
                                                            require 95 * msg.value
                                                            require 475 * msg.value / 95 * msg.value == 5
                                                            require (95 * msg.value) + (475 * msg.value / 100) >= 95 * msg.value
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, (95 * msg.value) + (475 * msg.value / 100)
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                                stor2[address(msg.sender)] += msg.value
                                                        else:
                                                            require 95 * msg.value >= 95 * msg.value
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 95 * msg.value
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                                stor2[address(msg.sender)] += msg.value
                                                else:
                                                    if 95 * msg.value:
                                                        require 95 * msg.value
                                                        require 950 * msg.value / 95 * msg.value == 10
                                                        require (95 * msg.value) + (950 * msg.value / 100) >= 95 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, (95 * msg.value) + (950 * msg.value / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                                    else:
                                                        require 95 * msg.value >= 95 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 95 * msg.value
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                            else:
                                                if 95 * msg.value:
                                                    require 95 * msg.value
                                                    require 1900 * msg.value / 95 * msg.value == 20
                                                    require (95 * msg.value) + (1900 * msg.value / 100) >= 95 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, (95 * msg.value) + (1900 * msg.value / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                                else:
                                                    require 95 * msg.value >= 95 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 95 * msg.value
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                else:
                                    require state <= 5
                                    if state != 1:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                                    else:
                                        if block.timestamp < 427485 * 3600:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                        else:
                                            if block.timestamp >= 427653 * 3600:
                                                if block.timestamp >= 427821 * 3600:
                                                    if block.timestamp >= 427989 * 3600:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                                    else:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                        else:
                            if msg.value:
                                require msg.value
                                require 189 * msg.value / msg.value == 189
                                require state <= 5
                                if state != 1:
                                    require 189 * msg.value >= 189 * msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 189 * msg.value
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                        stor2[address(msg.sender)] += msg.value
                                else:
                                    if block.timestamp < 427485 * 3600:
                                        require 189 * msg.value >= 189 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 189 * msg.value
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                                    else:
                                        if block.timestamp >= 427653 * 3600:
                                            if block.timestamp >= 427821 * 3600:
                                                if block.timestamp >= 427989 * 3600:
                                                    require 189 * msg.value >= 189 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 189 * msg.value
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                                else:
                                                    if 189 * msg.value:
                                                        require 189 * msg.value
                                                        require 945 * msg.value / 189 * msg.value == 5
                                                        require (189 * msg.value) + (945 * msg.value / 100) >= 189 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, (189 * msg.value) + (945 * msg.value / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                                    else:
                                                        require 189 * msg.value >= 189 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 189 * msg.value
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                            else:
                                                if 189 * msg.value:
                                                    require 189 * msg.value
                                                    require 1890 * msg.value / 189 * msg.value == 10
                                                    require (189 * msg.value) + (1890 * msg.value / 100) >= 189 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, (189 * msg.value) + (1890 * msg.value / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                                else:
                                                    require 189 * msg.value >= 189 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 189 * msg.value
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                        else:
                                            if 189 * msg.value:
                                                require 189 * msg.value
                                                require 3780 * msg.value / 189 * msg.value == 20
                                                require (189 * msg.value) + (3780 * msg.value / 100) >= 189 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (189 * msg.value) + (3780 * msg.value / 100)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                            else:
                                                require 189 * msg.value >= 189 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 189 * msg.value
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                            else:
                                require state <= 5
                                if state != 1:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                        stor2[address(msg.sender)] += msg.value
                                else:
                                    if block.timestamp < 427485 * 3600:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                                    else:
                                        if block.timestamp >= 427653 * 3600:
                                            if block.timestamp >= 427821 * 3600:
                                                if block.timestamp >= 427989 * 3600:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                else:
                    require msg.value + eth.balance(this.address) >= msg.value
                    require msg.value + eth.balance(this.address) <= 350875 * 10^14 * 3600
                    require state <= 5
                    if state != 1:
                        require state <= 5
                        if state != 2:
                            require state <= 5
                            if state != 3:
                                require state <= 5
                                if state != 1:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                        stor2[address(msg.sender)] += msg.value
                                else:
                                    if block.timestamp < 427485 * 3600:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                                    else:
                                        if block.timestamp >= 427653 * 3600:
                                            if block.timestamp >= 427821 * 3600:
                                                if block.timestamp >= 427989 * 3600:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                            else:
                                if msg.value:
                                    require msg.value
                                    require 60 * msg.value / msg.value == 60
                                    require state <= 5
                                    if state != 1:
                                        require 60 * msg.value >= 60 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 60 * msg.value
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                                    else:
                                        if block.timestamp < 427485 * 3600:
                                            require 60 * msg.value >= 60 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 60 * msg.value
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                        else:
                                            if block.timestamp >= 427653 * 3600:
                                                if block.timestamp >= 427821 * 3600:
                                                    if block.timestamp >= 427989 * 3600:
                                                        require 60 * msg.value >= 60 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 60 * msg.value
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                                    else:
                                                        if 60 * msg.value:
                                                            require 60 * msg.value
                                                            require 300 * msg.value / 60 * msg.value == 5
                                                            require (60 * msg.value) + (300 * msg.value / 100) >= 60 * msg.value
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, (60 * msg.value) + (300 * msg.value / 100)
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                                stor2[address(msg.sender)] += msg.value
                                                        else:
                                                            require 60 * msg.value >= 60 * msg.value
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 60 * msg.value
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                                stor2[address(msg.sender)] += msg.value
                                                else:
                                                    if 60 * msg.value:
                                                        require 60 * msg.value
                                                        require 600 * msg.value / 60 * msg.value == 10
                                                        require (60 * msg.value) + (600 * msg.value / 100) >= 60 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, (60 * msg.value) + (600 * msg.value / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                                    else:
                                                        require 60 * msg.value >= 60 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 60 * msg.value
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                            else:
                                                if 60 * msg.value:
                                                    require 60 * msg.value
                                                    require 1200 * msg.value / 60 * msg.value == 20
                                                    require (60 * msg.value) + (1200 * msg.value / 100) >= 60 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, (60 * msg.value) + (1200 * msg.value / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                                else:
                                                    require 60 * msg.value >= 60 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 60 * msg.value
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                else:
                                    require state <= 5
                                    if state != 1:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                                    else:
                                        if block.timestamp < 427485 * 3600:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                        else:
                                            if block.timestamp >= 427653 * 3600:
                                                if block.timestamp >= 427821 * 3600:
                                                    if block.timestamp >= 427989 * 3600:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                                    else:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                        else:
                            if msg.value:
                                require msg.value
                                require 95 * msg.value / msg.value == 95
                                require state <= 5
                                if state != 1:
                                    require 95 * msg.value >= 95 * msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 95 * msg.value
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                        stor2[address(msg.sender)] += msg.value
                                else:
                                    if block.timestamp < 427485 * 3600:
                                        require 95 * msg.value >= 95 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 95 * msg.value
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                                    else:
                                        if block.timestamp >= 427653 * 3600:
                                            if block.timestamp >= 427821 * 3600:
                                                if block.timestamp >= 427989 * 3600:
                                                    require 95 * msg.value >= 95 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 95 * msg.value
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                                else:
                                                    if 95 * msg.value:
                                                        require 95 * msg.value
                                                        require 475 * msg.value / 95 * msg.value == 5
                                                        require (95 * msg.value) + (475 * msg.value / 100) >= 95 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, (95 * msg.value) + (475 * msg.value / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                                    else:
                                                        require 95 * msg.value >= 95 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 95 * msg.value
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                            else:
                                                if 95 * msg.value:
                                                    require 95 * msg.value
                                                    require 950 * msg.value / 95 * msg.value == 10
                                                    require (95 * msg.value) + (950 * msg.value / 100) >= 95 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, (95 * msg.value) + (950 * msg.value / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                                else:
                                                    require 95 * msg.value >= 95 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 95 * msg.value
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                        else:
                                            if 95 * msg.value:
                                                require 95 * msg.value
                                                require 1900 * msg.value / 95 * msg.value == 20
                                                require (95 * msg.value) + (1900 * msg.value / 100) >= 95 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (95 * msg.value) + (1900 * msg.value / 100)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                            else:
                                                require 95 * msg.value >= 95 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 95 * msg.value
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                            else:
                                require state <= 5
                                if state != 1:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                        stor2[address(msg.sender)] += msg.value
                                else:
                                    if block.timestamp < 427485 * 3600:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                                    else:
                                        if block.timestamp >= 427653 * 3600:
                                            if block.timestamp >= 427821 * 3600:
                                                if block.timestamp >= 427989 * 3600:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                    else:
                        if msg.value:
                            require msg.value
                            require 189 * msg.value / msg.value == 189
                            require state <= 5
                            if state != 1:
                                require 189 * msg.value >= 189 * msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 189 * msg.value
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                    stor2[address(msg.sender)] += msg.value
                            else:
                                if block.timestamp < 427485 * 3600:
                                    require 189 * msg.value >= 189 * msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 189 * msg.value
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                        stor2[address(msg.sender)] += msg.value
                                else:
                                    if block.timestamp >= 427653 * 3600:
                                        if block.timestamp >= 427821 * 3600:
                                            if block.timestamp >= 427989 * 3600:
                                                require 189 * msg.value >= 189 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 189 * msg.value
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                            else:
                                                if 189 * msg.value:
                                                    require 189 * msg.value
                                                    require 945 * msg.value / 189 * msg.value == 5
                                                    require (189 * msg.value) + (945 * msg.value / 100) >= 189 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, (189 * msg.value) + (945 * msg.value / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                                else:
                                                    require 189 * msg.value >= 189 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 189 * msg.value
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                        else:
                                            if 189 * msg.value:
                                                require 189 * msg.value
                                                require 1890 * msg.value / 189 * msg.value == 10
                                                require (189 * msg.value) + (1890 * msg.value / 100) >= 189 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (189 * msg.value) + (1890 * msg.value / 100)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                            else:
                                                require 189 * msg.value >= 189 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 189 * msg.value
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                    else:
                                        if 189 * msg.value:
                                            require 189 * msg.value
                                            require 3780 * msg.value / 189 * msg.value == 20
                                            require (189 * msg.value) + (3780 * msg.value / 100) >= 189 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (189 * msg.value) + (3780 * msg.value / 100)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                        else:
                                            require 189 * msg.value >= 189 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 189 * msg.value
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                        else:
                            require state <= 5
                            if state != 1:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                    stor2[address(msg.sender)] += msg.value
                            else:
                                if block.timestamp < 427485 * 3600:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                        stor2[address(msg.sender)] += msg.value
                                else:
                                    if block.timestamp >= 427653 * 3600:
                                        if block.timestamp >= 427821 * 3600:
                                            if block.timestamp >= 427989 * 3600:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
            else:
                require msg.value + eth.balance(this.address) >= msg.value
                require msg.value + eth.balance(this.address) <= 132275 * 10^14 * 3600
                require state <= 5
                if state != 1:
                    require state <= 5
                    if state != 2:
                        require state <= 5
                        if state != 3:
                            require state <= 5
                            if state != 1:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                    stor2[address(msg.sender)] += msg.value
                            else:
                                if block.timestamp < 427485 * 3600:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                        stor2[address(msg.sender)] += msg.value
                                else:
                                    if block.timestamp >= 427653 * 3600:
                                        if block.timestamp >= 427821 * 3600:
                                            if block.timestamp >= 427989 * 3600:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                        else:
                            if msg.value:
                                require msg.value
                                require 60 * msg.value / msg.value == 60
                                require state <= 5
                                if state != 1:
                                    require 60 * msg.value >= 60 * msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 60 * msg.value
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                        stor2[address(msg.sender)] += msg.value
                                else:
                                    if block.timestamp < 427485 * 3600:
                                        require 60 * msg.value >= 60 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 60 * msg.value
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                                    else:
                                        if block.timestamp >= 427653 * 3600:
                                            if block.timestamp >= 427821 * 3600:
                                                if block.timestamp >= 427989 * 3600:
                                                    require 60 * msg.value >= 60 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 60 * msg.value
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                                else:
                                                    if 60 * msg.value:
                                                        require 60 * msg.value
                                                        require 300 * msg.value / 60 * msg.value == 5
                                                        require (60 * msg.value) + (300 * msg.value / 100) >= 60 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, (60 * msg.value) + (300 * msg.value / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                                    else:
                                                        require 60 * msg.value >= 60 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 60 * msg.value
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                            else:
                                                if 60 * msg.value:
                                                    require 60 * msg.value
                                                    require 600 * msg.value / 60 * msg.value == 10
                                                    require (60 * msg.value) + (600 * msg.value / 100) >= 60 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, (60 * msg.value) + (600 * msg.value / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                                else:
                                                    require 60 * msg.value >= 60 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 60 * msg.value
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                        else:
                                            if 60 * msg.value:
                                                require 60 * msg.value
                                                require 1200 * msg.value / 60 * msg.value == 20
                                                require (60 * msg.value) + (1200 * msg.value / 100) >= 60 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (60 * msg.value) + (1200 * msg.value / 100)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                            else:
                                                require 60 * msg.value >= 60 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 60 * msg.value
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                            else:
                                require state <= 5
                                if state != 1:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                        stor2[address(msg.sender)] += msg.value
                                else:
                                    if block.timestamp < 427485 * 3600:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                                    else:
                                        if block.timestamp >= 427653 * 3600:
                                            if block.timestamp >= 427821 * 3600:
                                                if block.timestamp >= 427989 * 3600:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                    else:
                        if msg.value:
                            require msg.value
                            require 95 * msg.value / msg.value == 95
                            require state <= 5
                            if state != 1:
                                require 95 * msg.value >= 95 * msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 95 * msg.value
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                    stor2[address(msg.sender)] += msg.value
                            else:
                                if block.timestamp < 427485 * 3600:
                                    require 95 * msg.value >= 95 * msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 95 * msg.value
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                        stor2[address(msg.sender)] += msg.value
                                else:
                                    if block.timestamp >= 427653 * 3600:
                                        if block.timestamp >= 427821 * 3600:
                                            if block.timestamp >= 427989 * 3600:
                                                require 95 * msg.value >= 95 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 95 * msg.value
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                            else:
                                                if 95 * msg.value:
                                                    require 95 * msg.value
                                                    require 475 * msg.value / 95 * msg.value == 5
                                                    require (95 * msg.value) + (475 * msg.value / 100) >= 95 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, (95 * msg.value) + (475 * msg.value / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                                else:
                                                    require 95 * msg.value >= 95 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 95 * msg.value
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                        else:
                                            if 95 * msg.value:
                                                require 95 * msg.value
                                                require 950 * msg.value / 95 * msg.value == 10
                                                require (95 * msg.value) + (950 * msg.value / 100) >= 95 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (95 * msg.value) + (950 * msg.value / 100)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                            else:
                                                require 95 * msg.value >= 95 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 95 * msg.value
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                    else:
                                        if 95 * msg.value:
                                            require 95 * msg.value
                                            require 1900 * msg.value / 95 * msg.value == 20
                                            require (95 * msg.value) + (1900 * msg.value / 100) >= 95 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (95 * msg.value) + (1900 * msg.value / 100)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                        else:
                                            require 95 * msg.value >= 95 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 95 * msg.value
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                        else:
                            require state <= 5
                            if state != 1:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                    stor2[address(msg.sender)] += msg.value
                            else:
                                if block.timestamp < 427485 * 3600:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                        stor2[address(msg.sender)] += msg.value
                                else:
                                    if block.timestamp >= 427653 * 3600:
                                        if block.timestamp >= 427821 * 3600:
                                            if block.timestamp >= 427989 * 3600:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                else:
                    if msg.value:
                        require msg.value
                        require 189 * msg.value / msg.value == 189
                        require state <= 5
                        if state != 1:
                            require 189 * msg.value >= 189 * msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 189 * msg.value
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                stor2[address(msg.sender)] += msg.value
                        else:
                            if block.timestamp < 427485 * 3600:
                                require 189 * msg.value >= 189 * msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 189 * msg.value
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                    stor2[address(msg.sender)] += msg.value
                            else:
                                if block.timestamp >= 427653 * 3600:
                                    if block.timestamp >= 427821 * 3600:
                                        if block.timestamp >= 427989 * 3600:
                                            require 189 * msg.value >= 189 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 189 * msg.value
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                        else:
                                            if 189 * msg.value:
                                                require 189 * msg.value
                                                require 945 * msg.value / 189 * msg.value == 5
                                                require (189 * msg.value) + (945 * msg.value / 100) >= 189 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (189 * msg.value) + (945 * msg.value / 100)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                            else:
                                                require 189 * msg.value >= 189 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 189 * msg.value
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                    else:
                                        if 189 * msg.value:
                                            require 189 * msg.value
                                            require 1890 * msg.value / 189 * msg.value == 10
                                            require (189 * msg.value) + (1890 * msg.value / 100) >= 189 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (189 * msg.value) + (1890 * msg.value / 100)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                        else:
                                            require 189 * msg.value >= 189 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 189 * msg.value
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                else:
                                    if 189 * msg.value:
                                        require 189 * msg.value
                                        require 3780 * msg.value / 189 * msg.value == 20
                                        require (189 * msg.value) + (3780 * msg.value / 100) >= 189 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (189 * msg.value) + (3780 * msg.value / 100)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                                    else:
                                        require 189 * msg.value >= 189 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 189 * msg.value
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                    else:
                        require state <= 5
                        if state != 1:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                stor2[address(msg.sender)] += msg.value
                        else:
                            if block.timestamp < 427485 * 3600:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                    stor2[address(msg.sender)] += msg.value
                            else:
                                if block.timestamp >= 427653 * 3600:
                                    if block.timestamp >= 427821 * 3600:
                                        if block.timestamp >= 427989 * 3600:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                                else:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                        stor2[address(msg.sender)] += msg.value
        else:
            require block.timestamp >= 428232 * 24 * 3600
            require block.timestamp <= 428952 * 24 * 3600
            require state <= 5
            if state != 1:
                require state <= 5
                if state != 2:
                    require state <= 5
                    if state != 3:
                        require state <= 5
                        if state != 1:
                            require state <= 5
                            if state != 2:
                                require state <= 5
                                if state != 3:
                                    require state <= 5
                                    if state != 1:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                                    else:
                                        if block.timestamp < 427485 * 3600:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                        else:
                                            if block.timestamp >= 427653 * 3600:
                                                if block.timestamp >= 427821 * 3600:
                                                    if block.timestamp >= 427989 * 3600:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                                    else:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                else:
                                    if msg.value:
                                        require msg.value
                                        require 60 * msg.value / msg.value == 60
                                        require state <= 5
                                        if state != 1:
                                            require 60 * msg.value >= 60 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 60 * msg.value
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                        else:
                                            if block.timestamp < 427485 * 3600:
                                                require 60 * msg.value >= 60 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 60 * msg.value
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                            else:
                                                if block.timestamp >= 427653 * 3600:
                                                    if block.timestamp >= 427821 * 3600:
                                                        if block.timestamp >= 427989 * 3600:
                                                            require 60 * msg.value >= 60 * msg.value
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 60 * msg.value
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                                stor2[address(msg.sender)] += msg.value
                                                        else:
                                                            if 60 * msg.value:
                                                                require 60 * msg.value
                                                                require 300 * msg.value / 60 * msg.value == 5
                                                                require (60 * msg.value) + (300 * msg.value / 100) >= 60 * msg.value
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0xa9059cbb with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, (60 * msg.value) + (300 * msg.value / 100)
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                                    stor2[address(msg.sender)] += msg.value
                                                            else:
                                                                require 60 * msg.value >= 60 * msg.value
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0xa9059cbb with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, 60 * msg.value
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                                    stor2[address(msg.sender)] += msg.value
                                                    else:
                                                        if 60 * msg.value:
                                                            require 60 * msg.value
                                                            require 600 * msg.value / 60 * msg.value == 10
                                                            require (60 * msg.value) + (600 * msg.value / 100) >= 60 * msg.value
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, (60 * msg.value) + (600 * msg.value / 100)
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                                stor2[address(msg.sender)] += msg.value
                                                        else:
                                                            require 60 * msg.value >= 60 * msg.value
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 60 * msg.value
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                                stor2[address(msg.sender)] += msg.value
                                                else:
                                                    if 60 * msg.value:
                                                        require 60 * msg.value
                                                        require 1200 * msg.value / 60 * msg.value == 20
                                                        require (60 * msg.value) + (1200 * msg.value / 100) >= 60 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, (60 * msg.value) + (1200 * msg.value / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                                    else:
                                                        require 60 * msg.value >= 60 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 60 * msg.value
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                    else:
                                        require state <= 5
                                        if state != 1:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                        else:
                                            if block.timestamp < 427485 * 3600:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                            else:
                                                if block.timestamp >= 427653 * 3600:
                                                    if block.timestamp >= 427821 * 3600:
                                                        if block.timestamp >= 427989 * 3600:
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                                stor2[address(msg.sender)] += msg.value
                                                        else:
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                                stor2[address(msg.sender)] += msg.value
                                                    else:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                            else:
                                if msg.value:
                                    require msg.value
                                    require 95 * msg.value / msg.value == 95
                                    require state <= 5
                                    if state != 1:
                                        require 95 * msg.value >= 95 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 95 * msg.value
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                                    else:
                                        if block.timestamp < 427485 * 3600:
                                            require 95 * msg.value >= 95 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 95 * msg.value
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                        else:
                                            if block.timestamp >= 427653 * 3600:
                                                if block.timestamp >= 427821 * 3600:
                                                    if block.timestamp >= 427989 * 3600:
                                                        require 95 * msg.value >= 95 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 95 * msg.value
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                                    else:
                                                        if 95 * msg.value:
                                                            require 95 * msg.value
                                                            require 475 * msg.value / 95 * msg.value == 5
                                                            require (95 * msg.value) + (475 * msg.value / 100) >= 95 * msg.value
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, (95 * msg.value) + (475 * msg.value / 100)
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                                stor2[address(msg.sender)] += msg.value
                                                        else:
                                                            require 95 * msg.value >= 95 * msg.value
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 95 * msg.value
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                                stor2[address(msg.sender)] += msg.value
                                                else:
                                                    if 95 * msg.value:
                                                        require 95 * msg.value
                                                        require 950 * msg.value / 95 * msg.value == 10
                                                        require (95 * msg.value) + (950 * msg.value / 100) >= 95 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, (95 * msg.value) + (950 * msg.value / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                                    else:
                                                        require 95 * msg.value >= 95 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 95 * msg.value
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                            else:
                                                if 95 * msg.value:
                                                    require 95 * msg.value
                                                    require 1900 * msg.value / 95 * msg.value == 20
                                                    require (95 * msg.value) + (1900 * msg.value / 100) >= 95 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, (95 * msg.value) + (1900 * msg.value / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                                else:
                                                    require 95 * msg.value >= 95 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 95 * msg.value
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                else:
                                    require state <= 5
                                    if state != 1:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                                    else:
                                        if block.timestamp < 427485 * 3600:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                        else:
                                            if block.timestamp >= 427653 * 3600:
                                                if block.timestamp >= 427821 * 3600:
                                                    if block.timestamp >= 427989 * 3600:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                                    else:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                        else:
                            if msg.value:
                                require msg.value
                                require 189 * msg.value / msg.value == 189
                                require state <= 5
                                if state != 1:
                                    require 189 * msg.value >= 189 * msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 189 * msg.value
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                        stor2[address(msg.sender)] += msg.value
                                else:
                                    if block.timestamp < 427485 * 3600:
                                        require 189 * msg.value >= 189 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 189 * msg.value
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                                    else:
                                        if block.timestamp >= 427653 * 3600:
                                            if block.timestamp >= 427821 * 3600:
                                                if block.timestamp >= 427989 * 3600:
                                                    require 189 * msg.value >= 189 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 189 * msg.value
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                                else:
                                                    if 189 * msg.value:
                                                        require 189 * msg.value
                                                        require 945 * msg.value / 189 * msg.value == 5
                                                        require (189 * msg.value) + (945 * msg.value / 100) >= 189 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, (189 * msg.value) + (945 * msg.value / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                                    else:
                                                        require 189 * msg.value >= 189 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 189 * msg.value
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                            else:
                                                if 189 * msg.value:
                                                    require 189 * msg.value
                                                    require 1890 * msg.value / 189 * msg.value == 10
                                                    require (189 * msg.value) + (1890 * msg.value / 100) >= 189 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, (189 * msg.value) + (1890 * msg.value / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                                else:
                                                    require 189 * msg.value >= 189 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 189 * msg.value
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                        else:
                                            if 189 * msg.value:
                                                require 189 * msg.value
                                                require 3780 * msg.value / 189 * msg.value == 20
                                                require (189 * msg.value) + (3780 * msg.value / 100) >= 189 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (189 * msg.value) + (3780 * msg.value / 100)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                            else:
                                                require 189 * msg.value >= 189 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 189 * msg.value
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                            else:
                                require state <= 5
                                if state != 1:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                        stor2[address(msg.sender)] += msg.value
                                else:
                                    if block.timestamp < 427485 * 3600:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                                    else:
                                        if block.timestamp >= 427653 * 3600:
                                            if block.timestamp >= 427821 * 3600:
                                                if block.timestamp >= 427989 * 3600:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                    else:
                        require msg.value + eth.balance(this.address) >= msg.value
                        require msg.value + eth.balance(this.address) <= 650000 * 10^18
                        require state <= 5
                        if state != 1:
                            require state <= 5
                            if state != 2:
                                require state <= 5
                                if state != 3:
                                    require state <= 5
                                    if state != 1:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                                    else:
                                        if block.timestamp < 427485 * 3600:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                        else:
                                            if block.timestamp >= 427653 * 3600:
                                                if block.timestamp >= 427821 * 3600:
                                                    if block.timestamp >= 427989 * 3600:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                                    else:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                else:
                                    if msg.value:
                                        require msg.value
                                        require 60 * msg.value / msg.value == 60
                                        require state <= 5
                                        if state != 1:
                                            require 60 * msg.value >= 60 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 60 * msg.value
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                        else:
                                            if block.timestamp < 427485 * 3600:
                                                require 60 * msg.value >= 60 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 60 * msg.value
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                            else:
                                                if block.timestamp >= 427653 * 3600:
                                                    if block.timestamp >= 427821 * 3600:
                                                        if block.timestamp >= 427989 * 3600:
                                                            require 60 * msg.value >= 60 * msg.value
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 60 * msg.value
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                                stor2[address(msg.sender)] += msg.value
                                                        else:
                                                            if 60 * msg.value:
                                                                require 60 * msg.value
                                                                require 300 * msg.value / 60 * msg.value == 5
                                                                require (60 * msg.value) + (300 * msg.value / 100) >= 60 * msg.value
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0xa9059cbb with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, (60 * msg.value) + (300 * msg.value / 100)
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                                    stor2[address(msg.sender)] += msg.value
                                                            else:
                                                                require 60 * msg.value >= 60 * msg.value
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0xa9059cbb with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, 60 * msg.value
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                                    stor2[address(msg.sender)] += msg.value
                                                    else:
                                                        if 60 * msg.value:
                                                            require 60 * msg.value
                                                            require 600 * msg.value / 60 * msg.value == 10
                                                            require (60 * msg.value) + (600 * msg.value / 100) >= 60 * msg.value
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, (60 * msg.value) + (600 * msg.value / 100)
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                                stor2[address(msg.sender)] += msg.value
                                                        else:
                                                            require 60 * msg.value >= 60 * msg.value
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 60 * msg.value
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                                stor2[address(msg.sender)] += msg.value
                                                else:
                                                    if 60 * msg.value:
                                                        require 60 * msg.value
                                                        require 1200 * msg.value / 60 * msg.value == 20
                                                        require (60 * msg.value) + (1200 * msg.value / 100) >= 60 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, (60 * msg.value) + (1200 * msg.value / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                                    else:
                                                        require 60 * msg.value >= 60 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 60 * msg.value
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                    else:
                                        require state <= 5
                                        if state != 1:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                        else:
                                            if block.timestamp < 427485 * 3600:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                            else:
                                                if block.timestamp >= 427653 * 3600:
                                                    if block.timestamp >= 427821 * 3600:
                                                        if block.timestamp >= 427989 * 3600:
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                                stor2[address(msg.sender)] += msg.value
                                                        else:
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                                stor2[address(msg.sender)] += msg.value
                                                    else:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                            else:
                                if msg.value:
                                    require msg.value
                                    require 95 * msg.value / msg.value == 95
                                    require state <= 5
                                    if state != 1:
                                        require 95 * msg.value >= 95 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 95 * msg.value
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                                    else:
                                        if block.timestamp < 427485 * 3600:
                                            require 95 * msg.value >= 95 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 95 * msg.value
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                        else:
                                            if block.timestamp >= 427653 * 3600:
                                                if block.timestamp >= 427821 * 3600:
                                                    if block.timestamp >= 427989 * 3600:
                                                        require 95 * msg.value >= 95 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 95 * msg.value
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                                    else:
                                                        if 95 * msg.value:
                                                            require 95 * msg.value
                                                            require 475 * msg.value / 95 * msg.value == 5
                                                            require (95 * msg.value) + (475 * msg.value / 100) >= 95 * msg.value
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, (95 * msg.value) + (475 * msg.value / 100)
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                                stor2[address(msg.sender)] += msg.value
                                                        else:
                                                            require 95 * msg.value >= 95 * msg.value
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 95 * msg.value
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                                stor2[address(msg.sender)] += msg.value
                                                else:
                                                    if 95 * msg.value:
                                                        require 95 * msg.value
                                                        require 950 * msg.value / 95 * msg.value == 10
                                                        require (95 * msg.value) + (950 * msg.value / 100) >= 95 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, (95 * msg.value) + (950 * msg.value / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                                    else:
                                                        require 95 * msg.value >= 95 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 95 * msg.value
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                            else:
                                                if 95 * msg.value:
                                                    require 95 * msg.value
                                                    require 1900 * msg.value / 95 * msg.value == 20
                                                    require (95 * msg.value) + (1900 * msg.value / 100) >= 95 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, (95 * msg.value) + (1900 * msg.value / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                                else:
                                                    require 95 * msg.value >= 95 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 95 * msg.value
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                else:
                                    require state <= 5
                                    if state != 1:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                                    else:
                                        if block.timestamp < 427485 * 3600:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                        else:
                                            if block.timestamp >= 427653 * 3600:
                                                if block.timestamp >= 427821 * 3600:
                                                    if block.timestamp >= 427989 * 3600:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                                    else:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                        else:
                            if msg.value:
                                require msg.value
                                require 189 * msg.value / msg.value == 189
                                require state <= 5
                                if state != 1:
                                    require 189 * msg.value >= 189 * msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 189 * msg.value
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                        stor2[address(msg.sender)] += msg.value
                                else:
                                    if block.timestamp < 427485 * 3600:
                                        require 189 * msg.value >= 189 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 189 * msg.value
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                                    else:
                                        if block.timestamp >= 427653 * 3600:
                                            if block.timestamp >= 427821 * 3600:
                                                if block.timestamp >= 427989 * 3600:
                                                    require 189 * msg.value >= 189 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 189 * msg.value
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                                else:
                                                    if 189 * msg.value:
                                                        require 189 * msg.value
                                                        require 945 * msg.value / 189 * msg.value == 5
                                                        require (189 * msg.value) + (945 * msg.value / 100) >= 189 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, (189 * msg.value) + (945 * msg.value / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                                    else:
                                                        require 189 * msg.value >= 189 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 189 * msg.value
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                            else:
                                                if 189 * msg.value:
                                                    require 189 * msg.value
                                                    require 1890 * msg.value / 189 * msg.value == 10
                                                    require (189 * msg.value) + (1890 * msg.value / 100) >= 189 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, (189 * msg.value) + (1890 * msg.value / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                                else:
                                                    require 189 * msg.value >= 189 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 189 * msg.value
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                        else:
                                            if 189 * msg.value:
                                                require 189 * msg.value
                                                require 3780 * msg.value / 189 * msg.value == 20
                                                require (189 * msg.value) + (3780 * msg.value / 100) >= 189 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (189 * msg.value) + (3780 * msg.value / 100)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                            else:
                                                require 189 * msg.value >= 189 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 189 * msg.value
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                            else:
                                require state <= 5
                                if state != 1:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                        stor2[address(msg.sender)] += msg.value
                                else:
                                    if block.timestamp < 427485 * 3600:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                                    else:
                                        if block.timestamp >= 427653 * 3600:
                                            if block.timestamp >= 427821 * 3600:
                                                if block.timestamp >= 427989 * 3600:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                else:
                    require msg.value + eth.balance(this.address) >= msg.value
                    require msg.value + eth.balance(this.address) <= 350875 * 10^14 * 3600
                    require state <= 5
                    if state != 1:
                        require state <= 5
                        if state != 2:
                            require state <= 5
                            if state != 3:
                                require state <= 5
                                if state != 1:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                        stor2[address(msg.sender)] += msg.value
                                else:
                                    if block.timestamp < 427485 * 3600:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                                    else:
                                        if block.timestamp >= 427653 * 3600:
                                            if block.timestamp >= 427821 * 3600:
                                                if block.timestamp >= 427989 * 3600:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                            else:
                                if msg.value:
                                    require msg.value
                                    require 60 * msg.value / msg.value == 60
                                    require state <= 5
                                    if state != 1:
                                        require 60 * msg.value >= 60 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 60 * msg.value
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                                    else:
                                        if block.timestamp < 427485 * 3600:
                                            require 60 * msg.value >= 60 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 60 * msg.value
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                        else:
                                            if block.timestamp >= 427653 * 3600:
                                                if block.timestamp >= 427821 * 3600:
                                                    if block.timestamp >= 427989 * 3600:
                                                        require 60 * msg.value >= 60 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 60 * msg.value
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                                    else:
                                                        if 60 * msg.value:
                                                            require 60 * msg.value
                                                            require 300 * msg.value / 60 * msg.value == 5
                                                            require (60 * msg.value) + (300 * msg.value / 100) >= 60 * msg.value
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, (60 * msg.value) + (300 * msg.value / 100)
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                                stor2[address(msg.sender)] += msg.value
                                                        else:
                                                            require 60 * msg.value >= 60 * msg.value
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 60 * msg.value
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                                stor2[address(msg.sender)] += msg.value
                                                else:
                                                    if 60 * msg.value:
                                                        require 60 * msg.value
                                                        require 600 * msg.value / 60 * msg.value == 10
                                                        require (60 * msg.value) + (600 * msg.value / 100) >= 60 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, (60 * msg.value) + (600 * msg.value / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                                    else:
                                                        require 60 * msg.value >= 60 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 60 * msg.value
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                            else:
                                                if 60 * msg.value:
                                                    require 60 * msg.value
                                                    require 1200 * msg.value / 60 * msg.value == 20
                                                    require (60 * msg.value) + (1200 * msg.value / 100) >= 60 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, (60 * msg.value) + (1200 * msg.value / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                                else:
                                                    require 60 * msg.value >= 60 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 60 * msg.value
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                else:
                                    require state <= 5
                                    if state != 1:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                                    else:
                                        if block.timestamp < 427485 * 3600:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                        else:
                                            if block.timestamp >= 427653 * 3600:
                                                if block.timestamp >= 427821 * 3600:
                                                    if block.timestamp >= 427989 * 3600:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                                    else:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                        else:
                            if msg.value:
                                require msg.value
                                require 95 * msg.value / msg.value == 95
                                require state <= 5
                                if state != 1:
                                    require 95 * msg.value >= 95 * msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 95 * msg.value
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                        stor2[address(msg.sender)] += msg.value
                                else:
                                    if block.timestamp < 427485 * 3600:
                                        require 95 * msg.value >= 95 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 95 * msg.value
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                                    else:
                                        if block.timestamp >= 427653 * 3600:
                                            if block.timestamp >= 427821 * 3600:
                                                if block.timestamp >= 427989 * 3600:
                                                    require 95 * msg.value >= 95 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 95 * msg.value
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                                else:
                                                    if 95 * msg.value:
                                                        require 95 * msg.value
                                                        require 475 * msg.value / 95 * msg.value == 5
                                                        require (95 * msg.value) + (475 * msg.value / 100) >= 95 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, (95 * msg.value) + (475 * msg.value / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                                    else:
                                                        require 95 * msg.value >= 95 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 95 * msg.value
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                            else:
                                                if 95 * msg.value:
                                                    require 95 * msg.value
                                                    require 950 * msg.value / 95 * msg.value == 10
                                                    require (95 * msg.value) + (950 * msg.value / 100) >= 95 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, (95 * msg.value) + (950 * msg.value / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                                else:
                                                    require 95 * msg.value >= 95 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 95 * msg.value
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                        else:
                                            if 95 * msg.value:
                                                require 95 * msg.value
                                                require 1900 * msg.value / 95 * msg.value == 20
                                                require (95 * msg.value) + (1900 * msg.value / 100) >= 95 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (95 * msg.value) + (1900 * msg.value / 100)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                            else:
                                                require 95 * msg.value >= 95 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 95 * msg.value
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                            else:
                                require state <= 5
                                if state != 1:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                        stor2[address(msg.sender)] += msg.value
                                else:
                                    if block.timestamp < 427485 * 3600:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                                    else:
                                        if block.timestamp >= 427653 * 3600:
                                            if block.timestamp >= 427821 * 3600:
                                                if block.timestamp >= 427989 * 3600:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                    else:
                        if msg.value:
                            require msg.value
                            require 189 * msg.value / msg.value == 189
                            require state <= 5
                            if state != 1:
                                require 189 * msg.value >= 189 * msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 189 * msg.value
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                    stor2[address(msg.sender)] += msg.value
                            else:
                                if block.timestamp < 427485 * 3600:
                                    require 189 * msg.value >= 189 * msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 189 * msg.value
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                        stor2[address(msg.sender)] += msg.value
                                else:
                                    if block.timestamp >= 427653 * 3600:
                                        if block.timestamp >= 427821 * 3600:
                                            if block.timestamp >= 427989 * 3600:
                                                require 189 * msg.value >= 189 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 189 * msg.value
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                            else:
                                                if 189 * msg.value:
                                                    require 189 * msg.value
                                                    require 945 * msg.value / 189 * msg.value == 5
                                                    require (189 * msg.value) + (945 * msg.value / 100) >= 189 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, (189 * msg.value) + (945 * msg.value / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                                else:
                                                    require 189 * msg.value >= 189 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 189 * msg.value
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                        else:
                                            if 189 * msg.value:
                                                require 189 * msg.value
                                                require 1890 * msg.value / 189 * msg.value == 10
                                                require (189 * msg.value) + (1890 * msg.value / 100) >= 189 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (189 * msg.value) + (1890 * msg.value / 100)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                            else:
                                                require 189 * msg.value >= 189 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 189 * msg.value
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                    else:
                                        if 189 * msg.value:
                                            require 189 * msg.value
                                            require 3780 * msg.value / 189 * msg.value == 20
                                            require (189 * msg.value) + (3780 * msg.value / 100) >= 189 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (189 * msg.value) + (3780 * msg.value / 100)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                        else:
                                            require 189 * msg.value >= 189 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 189 * msg.value
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                        else:
                            require state <= 5
                            if state != 1:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                    stor2[address(msg.sender)] += msg.value
                            else:
                                if block.timestamp < 427485 * 3600:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                        stor2[address(msg.sender)] += msg.value
                                else:
                                    if block.timestamp >= 427653 * 3600:
                                        if block.timestamp >= 427821 * 3600:
                                            if block.timestamp >= 427989 * 3600:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
            else:
                require msg.value + eth.balance(this.address) >= msg.value
                require msg.value + eth.balance(this.address) <= 132275 * 10^14 * 3600
                require state <= 5
                if state != 1:
                    require state <= 5
                    if state != 2:
                        require state <= 5
                        if state != 3:
                            require state <= 5
                            if state != 1:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                    stor2[address(msg.sender)] += msg.value
                            else:
                                if block.timestamp < 427485 * 3600:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                        stor2[address(msg.sender)] += msg.value
                                else:
                                    if block.timestamp >= 427653 * 3600:
                                        if block.timestamp >= 427821 * 3600:
                                            if block.timestamp >= 427989 * 3600:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                        else:
                            if msg.value:
                                require msg.value
                                require 60 * msg.value / msg.value == 60
                                require state <= 5
                                if state != 1:
                                    require 60 * msg.value >= 60 * msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 60 * msg.value
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                        stor2[address(msg.sender)] += msg.value
                                else:
                                    if block.timestamp < 427485 * 3600:
                                        require 60 * msg.value >= 60 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 60 * msg.value
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                                    else:
                                        if block.timestamp >= 427653 * 3600:
                                            if block.timestamp >= 427821 * 3600:
                                                if block.timestamp >= 427989 * 3600:
                                                    require 60 * msg.value >= 60 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 60 * msg.value
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                                else:
                                                    if 60 * msg.value:
                                                        require 60 * msg.value
                                                        require 300 * msg.value / 60 * msg.value == 5
                                                        require (60 * msg.value) + (300 * msg.value / 100) >= 60 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, (60 * msg.value) + (300 * msg.value / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                                    else:
                                                        require 60 * msg.value >= 60 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 60 * msg.value
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                            else:
                                                if 60 * msg.value:
                                                    require 60 * msg.value
                                                    require 600 * msg.value / 60 * msg.value == 10
                                                    require (60 * msg.value) + (600 * msg.value / 100) >= 60 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, (60 * msg.value) + (600 * msg.value / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                                else:
                                                    require 60 * msg.value >= 60 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 60 * msg.value
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                        else:
                                            if 60 * msg.value:
                                                require 60 * msg.value
                                                require 1200 * msg.value / 60 * msg.value == 20
                                                require (60 * msg.value) + (1200 * msg.value / 100) >= 60 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (60 * msg.value) + (1200 * msg.value / 100)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                            else:
                                                require 60 * msg.value >= 60 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 60 * msg.value
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                            else:
                                require state <= 5
                                if state != 1:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                        stor2[address(msg.sender)] += msg.value
                                else:
                                    if block.timestamp < 427485 * 3600:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                                    else:
                                        if block.timestamp >= 427653 * 3600:
                                            if block.timestamp >= 427821 * 3600:
                                                if block.timestamp >= 427989 * 3600:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                    else:
                        if msg.value:
                            require msg.value
                            require 95 * msg.value / msg.value == 95
                            require state <= 5
                            if state != 1:
                                require 95 * msg.value >= 95 * msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 95 * msg.value
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                    stor2[address(msg.sender)] += msg.value
                            else:
                                if block.timestamp < 427485 * 3600:
                                    require 95 * msg.value >= 95 * msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 95 * msg.value
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                        stor2[address(msg.sender)] += msg.value
                                else:
                                    if block.timestamp >= 427653 * 3600:
                                        if block.timestamp >= 427821 * 3600:
                                            if block.timestamp >= 427989 * 3600:
                                                require 95 * msg.value >= 95 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 95 * msg.value
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                            else:
                                                if 95 * msg.value:
                                                    require 95 * msg.value
                                                    require 475 * msg.value / 95 * msg.value == 5
                                                    require (95 * msg.value) + (475 * msg.value / 100) >= 95 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, (95 * msg.value) + (475 * msg.value / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                                else:
                                                    require 95 * msg.value >= 95 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 95 * msg.value
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                        else:
                                            if 95 * msg.value:
                                                require 95 * msg.value
                                                require 950 * msg.value / 95 * msg.value == 10
                                                require (95 * msg.value) + (950 * msg.value / 100) >= 95 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (95 * msg.value) + (950 * msg.value / 100)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                            else:
                                                require 95 * msg.value >= 95 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 95 * msg.value
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                    else:
                                        if 95 * msg.value:
                                            require 95 * msg.value
                                            require 1900 * msg.value / 95 * msg.value == 20
                                            require (95 * msg.value) + (1900 * msg.value / 100) >= 95 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (95 * msg.value) + (1900 * msg.value / 100)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                        else:
                                            require 95 * msg.value >= 95 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 95 * msg.value
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                        else:
                            require state <= 5
                            if state != 1:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                    stor2[address(msg.sender)] += msg.value
                            else:
                                if block.timestamp < 427485 * 3600:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                        stor2[address(msg.sender)] += msg.value
                                else:
                                    if block.timestamp >= 427653 * 3600:
                                        if block.timestamp >= 427821 * 3600:
                                            if block.timestamp >= 427989 * 3600:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                else:
                    if msg.value:
                        require msg.value
                        require 189 * msg.value / msg.value == 189
                        require state <= 5
                        if state != 1:
                            require 189 * msg.value >= 189 * msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 189 * msg.value
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                stor2[address(msg.sender)] += msg.value
                        else:
                            if block.timestamp < 427485 * 3600:
                                require 189 * msg.value >= 189 * msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 189 * msg.value
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                    stor2[address(msg.sender)] += msg.value
                            else:
                                if block.timestamp >= 427653 * 3600:
                                    if block.timestamp >= 427821 * 3600:
                                        if block.timestamp >= 427989 * 3600:
                                            require 189 * msg.value >= 189 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 189 * msg.value
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                        else:
                                            if 189 * msg.value:
                                                require 189 * msg.value
                                                require 945 * msg.value / 189 * msg.value == 5
                                                require (189 * msg.value) + (945 * msg.value / 100) >= 189 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (189 * msg.value) + (945 * msg.value / 100)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                            else:
                                                require 189 * msg.value >= 189 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 189 * msg.value
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                    else:
                                        if 189 * msg.value:
                                            require 189 * msg.value
                                            require 1890 * msg.value / 189 * msg.value == 10
                                            require (189 * msg.value) + (1890 * msg.value / 100) >= 189 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (189 * msg.value) + (1890 * msg.value / 100)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                        else:
                                            require 189 * msg.value >= 189 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 189 * msg.value
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                else:
                                    if 189 * msg.value:
                                        require 189 * msg.value
                                        require 3780 * msg.value / 189 * msg.value == 20
                                        require (189 * msg.value) + (3780 * msg.value / 100) >= 189 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (189 * msg.value) + (3780 * msg.value / 100)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                                    else:
                                        require 189 * msg.value >= 189 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 189 * msg.value
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                    else:
                        require state <= 5
                        if state != 1:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                stor2[address(msg.sender)] += msg.value
                        else:
                            if block.timestamp < 427485 * 3600:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                    stor2[address(msg.sender)] += msg.value
                            else:
                                if block.timestamp >= 427653 * 3600:
                                    if block.timestamp >= 427821 * 3600:
                                        if block.timestamp >= 427989 * 3600:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                                else:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                        stor2[address(msg.sender)] += msg.value
    else:
        require block.timestamp >= 427485 * 3600
        require block.timestamp <= 428952 * 24 * 3600
        require state <= 5
        if state != 1:
            require state <= 5
            if state != 2:
                require state <= 5
                if state != 3:
                    require state <= 5
                    if state != 1:
                        require state <= 5
                        if state != 2:
                            require state <= 5
                            if state != 3:
                                require state <= 5
                                if state != 1:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                        stor2[address(msg.sender)] += msg.value
                                else:
                                    if block.timestamp < 427485 * 3600:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                                    else:
                                        if block.timestamp >= 427653 * 3600:
                                            if block.timestamp >= 427821 * 3600:
                                                if block.timestamp >= 427989 * 3600:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                            else:
                                if msg.value:
                                    require msg.value
                                    require 60 * msg.value / msg.value == 60
                                    require state <= 5
                                    if state != 1:
                                        require 60 * msg.value >= 60 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 60 * msg.value
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                                    else:
                                        if block.timestamp < 427485 * 3600:
                                            require 60 * msg.value >= 60 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 60 * msg.value
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                        else:
                                            if block.timestamp >= 427653 * 3600:
                                                if block.timestamp >= 427821 * 3600:
                                                    if block.timestamp >= 427989 * 3600:
                                                        require 60 * msg.value >= 60 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 60 * msg.value
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                                    else:
                                                        if 60 * msg.value:
                                                            require 60 * msg.value
                                                            require 300 * msg.value / 60 * msg.value == 5
                                                            require (60 * msg.value) + (300 * msg.value / 100) >= 60 * msg.value
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, (60 * msg.value) + (300 * msg.value / 100)
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                                stor2[address(msg.sender)] += msg.value
                                                        else:
                                                            require 60 * msg.value >= 60 * msg.value
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 60 * msg.value
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                                stor2[address(msg.sender)] += msg.value
                                                else:
                                                    if 60 * msg.value:
                                                        require 60 * msg.value
                                                        require 600 * msg.value / 60 * msg.value == 10
                                                        require (60 * msg.value) + (600 * msg.value / 100) >= 60 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, (60 * msg.value) + (600 * msg.value / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                                    else:
                                                        require 60 * msg.value >= 60 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 60 * msg.value
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                            else:
                                                if 60 * msg.value:
                                                    require 60 * msg.value
                                                    require 1200 * msg.value / 60 * msg.value == 20
                                                    require (60 * msg.value) + (1200 * msg.value / 100) >= 60 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, (60 * msg.value) + (1200 * msg.value / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                                else:
                                                    require 60 * msg.value >= 60 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 60 * msg.value
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                else:
                                    require state <= 5
                                    if state != 1:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                                    else:
                                        if block.timestamp < 427485 * 3600:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                        else:
                                            if block.timestamp >= 427653 * 3600:
                                                if block.timestamp >= 427821 * 3600:
                                                    if block.timestamp >= 427989 * 3600:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                                    else:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                        else:
                            if msg.value:
                                require msg.value
                                require 95 * msg.value / msg.value == 95
                                require state <= 5
                                if state != 1:
                                    require 95 * msg.value >= 95 * msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 95 * msg.value
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                        stor2[address(msg.sender)] += msg.value
                                else:
                                    if block.timestamp < 427485 * 3600:
                                        require 95 * msg.value >= 95 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 95 * msg.value
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                                    else:
                                        if block.timestamp >= 427653 * 3600:
                                            if block.timestamp >= 427821 * 3600:
                                                if block.timestamp >= 427989 * 3600:
                                                    require 95 * msg.value >= 95 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 95 * msg.value
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                                else:
                                                    if 95 * msg.value:
                                                        require 95 * msg.value
                                                        require 475 * msg.value / 95 * msg.value == 5
                                                        require (95 * msg.value) + (475 * msg.value / 100) >= 95 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, (95 * msg.value) + (475 * msg.value / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                                    else:
                                                        require 95 * msg.value >= 95 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 95 * msg.value
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                            else:
                                                if 95 * msg.value:
                                                    require 95 * msg.value
                                                    require 950 * msg.value / 95 * msg.value == 10
                                                    require (95 * msg.value) + (950 * msg.value / 100) >= 95 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, (95 * msg.value) + (950 * msg.value / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                                else:
                                                    require 95 * msg.value >= 95 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 95 * msg.value
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                        else:
                                            if 95 * msg.value:
                                                require 95 * msg.value
                                                require 1900 * msg.value / 95 * msg.value == 20
                                                require (95 * msg.value) + (1900 * msg.value / 100) >= 95 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (95 * msg.value) + (1900 * msg.value / 100)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                            else:
                                                require 95 * msg.value >= 95 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 95 * msg.value
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                            else:
                                require state <= 5
                                if state != 1:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                        stor2[address(msg.sender)] += msg.value
                                else:
                                    if block.timestamp < 427485 * 3600:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                                    else:
                                        if block.timestamp >= 427653 * 3600:
                                            if block.timestamp >= 427821 * 3600:
                                                if block.timestamp >= 427989 * 3600:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                    else:
                        if msg.value:
                            require msg.value
                            require 189 * msg.value / msg.value == 189
                            require state <= 5
                            if state != 1:
                                require 189 * msg.value >= 189 * msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 189 * msg.value
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                    stor2[address(msg.sender)] += msg.value
                            else:
                                if block.timestamp < 427485 * 3600:
                                    require 189 * msg.value >= 189 * msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 189 * msg.value
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                        stor2[address(msg.sender)] += msg.value
                                else:
                                    if block.timestamp >= 427653 * 3600:
                                        if block.timestamp >= 427821 * 3600:
                                            if block.timestamp >= 427989 * 3600:
                                                require 189 * msg.value >= 189 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 189 * msg.value
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                            else:
                                                if 189 * msg.value:
                                                    require 189 * msg.value
                                                    require 945 * msg.value / 189 * msg.value == 5
                                                    require (189 * msg.value) + (945 * msg.value / 100) >= 189 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, (189 * msg.value) + (945 * msg.value / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                                else:
                                                    require 189 * msg.value >= 189 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 189 * msg.value
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                        else:
                                            if 189 * msg.value:
                                                require 189 * msg.value
                                                require 1890 * msg.value / 189 * msg.value == 10
                                                require (189 * msg.value) + (1890 * msg.value / 100) >= 189 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (189 * msg.value) + (1890 * msg.value / 100)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                            else:
                                                require 189 * msg.value >= 189 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 189 * msg.value
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                    else:
                                        if 189 * msg.value:
                                            require 189 * msg.value
                                            require 3780 * msg.value / 189 * msg.value == 20
                                            require (189 * msg.value) + (3780 * msg.value / 100) >= 189 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (189 * msg.value) + (3780 * msg.value / 100)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                        else:
                                            require 189 * msg.value >= 189 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 189 * msg.value
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                        else:
                            require state <= 5
                            if state != 1:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                    stor2[address(msg.sender)] += msg.value
                            else:
                                if block.timestamp < 427485 * 3600:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                        stor2[address(msg.sender)] += msg.value
                                else:
                                    if block.timestamp >= 427653 * 3600:
                                        if block.timestamp >= 427821 * 3600:
                                            if block.timestamp >= 427989 * 3600:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                else:
                    require msg.value + eth.balance(this.address) >= msg.value
                    require msg.value + eth.balance(this.address) <= 650000 * 10^18
                    require state <= 5
                    if state != 1:
                        require state <= 5
                        if state != 2:
                            require state <= 5
                            if state != 3:
                                require state <= 5
                                if state != 1:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                        stor2[address(msg.sender)] += msg.value
                                else:
                                    if block.timestamp < 427485 * 3600:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                                    else:
                                        if block.timestamp >= 427653 * 3600:
                                            if block.timestamp >= 427821 * 3600:
                                                if block.timestamp >= 427989 * 3600:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                            else:
                                if msg.value:
                                    require msg.value
                                    require 60 * msg.value / msg.value == 60
                                    require state <= 5
                                    if state != 1:
                                        require 60 * msg.value >= 60 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 60 * msg.value
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                                    else:
                                        if block.timestamp < 427485 * 3600:
                                            require 60 * msg.value >= 60 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 60 * msg.value
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                        else:
                                            if block.timestamp >= 427653 * 3600:
                                                if block.timestamp >= 427821 * 3600:
                                                    if block.timestamp >= 427989 * 3600:
                                                        require 60 * msg.value >= 60 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 60 * msg.value
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                                    else:
                                                        if 60 * msg.value:
                                                            require 60 * msg.value
                                                            require 300 * msg.value / 60 * msg.value == 5
                                                            require (60 * msg.value) + (300 * msg.value / 100) >= 60 * msg.value
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, (60 * msg.value) + (300 * msg.value / 100)
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                                stor2[address(msg.sender)] += msg.value
                                                        else:
                                                            require 60 * msg.value >= 60 * msg.value
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 60 * msg.value
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                                stor2[address(msg.sender)] += msg.value
                                                else:
                                                    if 60 * msg.value:
                                                        require 60 * msg.value
                                                        require 600 * msg.value / 60 * msg.value == 10
                                                        require (60 * msg.value) + (600 * msg.value / 100) >= 60 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, (60 * msg.value) + (600 * msg.value / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                                    else:
                                                        require 60 * msg.value >= 60 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 60 * msg.value
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                            else:
                                                if 60 * msg.value:
                                                    require 60 * msg.value
                                                    require 1200 * msg.value / 60 * msg.value == 20
                                                    require (60 * msg.value) + (1200 * msg.value / 100) >= 60 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, (60 * msg.value) + (1200 * msg.value / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                                else:
                                                    require 60 * msg.value >= 60 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 60 * msg.value
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                else:
                                    require state <= 5
                                    if state != 1:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                                    else:
                                        if block.timestamp < 427485 * 3600:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                        else:
                                            if block.timestamp >= 427653 * 3600:
                                                if block.timestamp >= 427821 * 3600:
                                                    if block.timestamp >= 427989 * 3600:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                                    else:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                        else:
                            if msg.value:
                                require msg.value
                                require 95 * msg.value / msg.value == 95
                                require state <= 5
                                if state != 1:
                                    require 95 * msg.value >= 95 * msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 95 * msg.value
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                        stor2[address(msg.sender)] += msg.value
                                else:
                                    if block.timestamp < 427485 * 3600:
                                        require 95 * msg.value >= 95 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 95 * msg.value
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                                    else:
                                        if block.timestamp >= 427653 * 3600:
                                            if block.timestamp >= 427821 * 3600:
                                                if block.timestamp >= 427989 * 3600:
                                                    require 95 * msg.value >= 95 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 95 * msg.value
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                                else:
                                                    if 95 * msg.value:
                                                        require 95 * msg.value
                                                        require 475 * msg.value / 95 * msg.value == 5
                                                        require (95 * msg.value) + (475 * msg.value / 100) >= 95 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, (95 * msg.value) + (475 * msg.value / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                                    else:
                                                        require 95 * msg.value >= 95 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 95 * msg.value
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                            else:
                                                if 95 * msg.value:
                                                    require 95 * msg.value
                                                    require 950 * msg.value / 95 * msg.value == 10
                                                    require (95 * msg.value) + (950 * msg.value / 100) >= 95 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, (95 * msg.value) + (950 * msg.value / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                                else:
                                                    require 95 * msg.value >= 95 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 95 * msg.value
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                        else:
                                            if 95 * msg.value:
                                                require 95 * msg.value
                                                require 1900 * msg.value / 95 * msg.value == 20
                                                require (95 * msg.value) + (1900 * msg.value / 100) >= 95 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (95 * msg.value) + (1900 * msg.value / 100)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                            else:
                                                require 95 * msg.value >= 95 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 95 * msg.value
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                            else:
                                require state <= 5
                                if state != 1:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                        stor2[address(msg.sender)] += msg.value
                                else:
                                    if block.timestamp < 427485 * 3600:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                                    else:
                                        if block.timestamp >= 427653 * 3600:
                                            if block.timestamp >= 427821 * 3600:
                                                if block.timestamp >= 427989 * 3600:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                    else:
                        if msg.value:
                            require msg.value
                            require 189 * msg.value / msg.value == 189
                            require state <= 5
                            if state != 1:
                                require 189 * msg.value >= 189 * msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 189 * msg.value
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                    stor2[address(msg.sender)] += msg.value
                            else:
                                if block.timestamp < 427485 * 3600:
                                    require 189 * msg.value >= 189 * msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 189 * msg.value
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                        stor2[address(msg.sender)] += msg.value
                                else:
                                    if block.timestamp >= 427653 * 3600:
                                        if block.timestamp >= 427821 * 3600:
                                            if block.timestamp >= 427989 * 3600:
                                                require 189 * msg.value >= 189 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 189 * msg.value
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                            else:
                                                if 189 * msg.value:
                                                    require 189 * msg.value
                                                    require 945 * msg.value / 189 * msg.value == 5
                                                    require (189 * msg.value) + (945 * msg.value / 100) >= 189 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, (189 * msg.value) + (945 * msg.value / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                                else:
                                                    require 189 * msg.value >= 189 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 189 * msg.value
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                        else:
                                            if 189 * msg.value:
                                                require 189 * msg.value
                                                require 1890 * msg.value / 189 * msg.value == 10
                                                require (189 * msg.value) + (1890 * msg.value / 100) >= 189 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (189 * msg.value) + (1890 * msg.value / 100)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                            else:
                                                require 189 * msg.value >= 189 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 189 * msg.value
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                    else:
                                        if 189 * msg.value:
                                            require 189 * msg.value
                                            require 3780 * msg.value / 189 * msg.value == 20
                                            require (189 * msg.value) + (3780 * msg.value / 100) >= 189 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (189 * msg.value) + (3780 * msg.value / 100)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                        else:
                                            require 189 * msg.value >= 189 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 189 * msg.value
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                        else:
                            require state <= 5
                            if state != 1:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                    stor2[address(msg.sender)] += msg.value
                            else:
                                if block.timestamp < 427485 * 3600:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                        stor2[address(msg.sender)] += msg.value
                                else:
                                    if block.timestamp >= 427653 * 3600:
                                        if block.timestamp >= 427821 * 3600:
                                            if block.timestamp >= 427989 * 3600:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
            else:
                require msg.value + eth.balance(this.address) >= msg.value
                require msg.value + eth.balance(this.address) <= 350875 * 10^14 * 3600
                require state <= 5
                if state != 1:
                    require state <= 5
                    if state != 2:
                        require state <= 5
                        if state != 3:
                            require state <= 5
                            if state != 1:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                    stor2[address(msg.sender)] += msg.value
                            else:
                                if block.timestamp < 427485 * 3600:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                        stor2[address(msg.sender)] += msg.value
                                else:
                                    if block.timestamp >= 427653 * 3600:
                                        if block.timestamp >= 427821 * 3600:
                                            if block.timestamp >= 427989 * 3600:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                        else:
                            if msg.value:
                                require msg.value
                                require 60 * msg.value / msg.value == 60
                                require state <= 5
                                if state != 1:
                                    require 60 * msg.value >= 60 * msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 60 * msg.value
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                        stor2[address(msg.sender)] += msg.value
                                else:
                                    if block.timestamp < 427485 * 3600:
                                        require 60 * msg.value >= 60 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 60 * msg.value
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                                    else:
                                        if block.timestamp >= 427653 * 3600:
                                            if block.timestamp >= 427821 * 3600:
                                                if block.timestamp >= 427989 * 3600:
                                                    require 60 * msg.value >= 60 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 60 * msg.value
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                                else:
                                                    if 60 * msg.value:
                                                        require 60 * msg.value
                                                        require 300 * msg.value / 60 * msg.value == 5
                                                        require (60 * msg.value) + (300 * msg.value / 100) >= 60 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, (60 * msg.value) + (300 * msg.value / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                                    else:
                                                        require 60 * msg.value >= 60 * msg.value
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 60 * msg.value
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                            stor2[address(msg.sender)] += msg.value
                                            else:
                                                if 60 * msg.value:
                                                    require 60 * msg.value
                                                    require 600 * msg.value / 60 * msg.value == 10
                                                    require (60 * msg.value) + (600 * msg.value / 100) >= 60 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, (60 * msg.value) + (600 * msg.value / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                                else:
                                                    require 60 * msg.value >= 60 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 60 * msg.value
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                        else:
                                            if 60 * msg.value:
                                                require 60 * msg.value
                                                require 1200 * msg.value / 60 * msg.value == 20
                                                require (60 * msg.value) + (1200 * msg.value / 100) >= 60 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (60 * msg.value) + (1200 * msg.value / 100)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                            else:
                                                require 60 * msg.value >= 60 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 60 * msg.value
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                            else:
                                require state <= 5
                                if state != 1:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                        stor2[address(msg.sender)] += msg.value
                                else:
                                    if block.timestamp < 427485 * 3600:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                                    else:
                                        if block.timestamp >= 427653 * 3600:
                                            if block.timestamp >= 427821 * 3600:
                                                if block.timestamp >= 427989 * 3600:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                    else:
                        if msg.value:
                            require msg.value
                            require 95 * msg.value / msg.value == 95
                            require state <= 5
                            if state != 1:
                                require 95 * msg.value >= 95 * msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 95 * msg.value
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                    stor2[address(msg.sender)] += msg.value
                            else:
                                if block.timestamp < 427485 * 3600:
                                    require 95 * msg.value >= 95 * msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 95 * msg.value
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                        stor2[address(msg.sender)] += msg.value
                                else:
                                    if block.timestamp >= 427653 * 3600:
                                        if block.timestamp >= 427821 * 3600:
                                            if block.timestamp >= 427989 * 3600:
                                                require 95 * msg.value >= 95 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 95 * msg.value
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                            else:
                                                if 95 * msg.value:
                                                    require 95 * msg.value
                                                    require 475 * msg.value / 95 * msg.value == 5
                                                    require (95 * msg.value) + (475 * msg.value / 100) >= 95 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, (95 * msg.value) + (475 * msg.value / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                                else:
                                                    require 95 * msg.value >= 95 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 95 * msg.value
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                        else:
                                            if 95 * msg.value:
                                                require 95 * msg.value
                                                require 950 * msg.value / 95 * msg.value == 10
                                                require (95 * msg.value) + (950 * msg.value / 100) >= 95 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (95 * msg.value) + (950 * msg.value / 100)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                            else:
                                                require 95 * msg.value >= 95 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 95 * msg.value
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                    else:
                                        if 95 * msg.value:
                                            require 95 * msg.value
                                            require 1900 * msg.value / 95 * msg.value == 20
                                            require (95 * msg.value) + (1900 * msg.value / 100) >= 95 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (95 * msg.value) + (1900 * msg.value / 100)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                        else:
                                            require 95 * msg.value >= 95 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 95 * msg.value
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                        else:
                            require state <= 5
                            if state != 1:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                    stor2[address(msg.sender)] += msg.value
                            else:
                                if block.timestamp < 427485 * 3600:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                        stor2[address(msg.sender)] += msg.value
                                else:
                                    if block.timestamp >= 427653 * 3600:
                                        if block.timestamp >= 427821 * 3600:
                                            if block.timestamp >= 427989 * 3600:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                else:
                    if msg.value:
                        require msg.value
                        require 189 * msg.value / msg.value == 189
                        require state <= 5
                        if state != 1:
                            require 189 * msg.value >= 189 * msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 189 * msg.value
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                stor2[address(msg.sender)] += msg.value
                        else:
                            if block.timestamp < 427485 * 3600:
                                require 189 * msg.value >= 189 * msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 189 * msg.value
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                    stor2[address(msg.sender)] += msg.value
                            else:
                                if block.timestamp >= 427653 * 3600:
                                    if block.timestamp >= 427821 * 3600:
                                        if block.timestamp >= 427989 * 3600:
                                            require 189 * msg.value >= 189 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 189 * msg.value
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                        else:
                                            if 189 * msg.value:
                                                require 189 * msg.value
                                                require 945 * msg.value / 189 * msg.value == 5
                                                require (189 * msg.value) + (945 * msg.value / 100) >= 189 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (189 * msg.value) + (945 * msg.value / 100)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                            else:
                                                require 189 * msg.value >= 189 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 189 * msg.value
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                    else:
                                        if 189 * msg.value:
                                            require 189 * msg.value
                                            require 1890 * msg.value / 189 * msg.value == 10
                                            require (189 * msg.value) + (1890 * msg.value / 100) >= 189 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (189 * msg.value) + (1890 * msg.value / 100)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                        else:
                                            require 189 * msg.value >= 189 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 189 * msg.value
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                else:
                                    if 189 * msg.value:
                                        require 189 * msg.value
                                        require 3780 * msg.value / 189 * msg.value == 20
                                        require (189 * msg.value) + (3780 * msg.value / 100) >= 189 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (189 * msg.value) + (3780 * msg.value / 100)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                                    else:
                                        require 189 * msg.value >= 189 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 189 * msg.value
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                    else:
                        require state <= 5
                        if state != 1:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                stor2[address(msg.sender)] += msg.value
                        else:
                            if block.timestamp < 427485 * 3600:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                    stor2[address(msg.sender)] += msg.value
                            else:
                                if block.timestamp >= 427653 * 3600:
                                    if block.timestamp >= 427821 * 3600:
                                        if block.timestamp >= 427989 * 3600:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                                else:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                        stor2[address(msg.sender)] += msg.value
        else:
            require msg.value + eth.balance(this.address) >= msg.value
            require msg.value + eth.balance(this.address) <= 132275 * 10^14 * 3600
            require state <= 5
            if state != 1:
                require state <= 5
                if state != 2:
                    require state <= 5
                    if state != 3:
                        require state <= 5
                        if state != 1:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                stor2[address(msg.sender)] += msg.value
                        else:
                            if block.timestamp < 427485 * 3600:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                    stor2[address(msg.sender)] += msg.value
                            else:
                                if block.timestamp >= 427653 * 3600:
                                    if block.timestamp >= 427821 * 3600:
                                        if block.timestamp >= 427989 * 3600:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                                else:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                        stor2[address(msg.sender)] += msg.value
                    else:
                        if msg.value:
                            require msg.value
                            require 60 * msg.value / msg.value == 60
                            require state <= 5
                            if state != 1:
                                require 60 * msg.value >= 60 * msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 60 * msg.value
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                    stor2[address(msg.sender)] += msg.value
                            else:
                                if block.timestamp < 427485 * 3600:
                                    require 60 * msg.value >= 60 * msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 60 * msg.value
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                        stor2[address(msg.sender)] += msg.value
                                else:
                                    if block.timestamp >= 427653 * 3600:
                                        if block.timestamp >= 427821 * 3600:
                                            if block.timestamp >= 427989 * 3600:
                                                require 60 * msg.value >= 60 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 60 * msg.value
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                            else:
                                                if 60 * msg.value:
                                                    require 60 * msg.value
                                                    require 300 * msg.value / 60 * msg.value == 5
                                                    require (60 * msg.value) + (300 * msg.value / 100) >= 60 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, (60 * msg.value) + (300 * msg.value / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                                else:
                                                    require 60 * msg.value >= 60 * msg.value
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 60 * msg.value
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                        stor2[address(msg.sender)] += msg.value
                                        else:
                                            if 60 * msg.value:
                                                require 60 * msg.value
                                                require 600 * msg.value / 60 * msg.value == 10
                                                require (60 * msg.value) + (600 * msg.value / 100) >= 60 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (60 * msg.value) + (600 * msg.value / 100)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                            else:
                                                require 60 * msg.value >= 60 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 60 * msg.value
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                    else:
                                        if 60 * msg.value:
                                            require 60 * msg.value
                                            require 1200 * msg.value / 60 * msg.value == 20
                                            require (60 * msg.value) + (1200 * msg.value / 100) >= 60 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (60 * msg.value) + (1200 * msg.value / 100)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                        else:
                                            require 60 * msg.value >= 60 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 60 * msg.value
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                        else:
                            require state <= 5
                            if state != 1:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                    stor2[address(msg.sender)] += msg.value
                            else:
                                if block.timestamp < 427485 * 3600:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                        stor2[address(msg.sender)] += msg.value
                                else:
                                    if block.timestamp >= 427653 * 3600:
                                        if block.timestamp >= 427821 * 3600:
                                            if block.timestamp >= 427989 * 3600:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                else:
                    if msg.value:
                        require msg.value
                        require 95 * msg.value / msg.value == 95
                        require state <= 5
                        if state != 1:
                            require 95 * msg.value >= 95 * msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 95 * msg.value
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                stor2[address(msg.sender)] += msg.value
                        else:
                            if block.timestamp < 427485 * 3600:
                                require 95 * msg.value >= 95 * msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 95 * msg.value
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                    stor2[address(msg.sender)] += msg.value
                            else:
                                if block.timestamp >= 427653 * 3600:
                                    if block.timestamp >= 427821 * 3600:
                                        if block.timestamp >= 427989 * 3600:
                                            require 95 * msg.value >= 95 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 95 * msg.value
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                        else:
                                            if 95 * msg.value:
                                                require 95 * msg.value
                                                require 475 * msg.value / 95 * msg.value == 5
                                                require (95 * msg.value) + (475 * msg.value / 100) >= 95 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (95 * msg.value) + (475 * msg.value / 100)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                            else:
                                                require 95 * msg.value >= 95 * msg.value
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 95 * msg.value
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                    stor2[address(msg.sender)] += msg.value
                                    else:
                                        if 95 * msg.value:
                                            require 95 * msg.value
                                            require 950 * msg.value / 95 * msg.value == 10
                                            require (95 * msg.value) + (950 * msg.value / 100) >= 95 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (95 * msg.value) + (950 * msg.value / 100)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                        else:
                                            require 95 * msg.value >= 95 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 95 * msg.value
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                else:
                                    if 95 * msg.value:
                                        require 95 * msg.value
                                        require 1900 * msg.value / 95 * msg.value == 20
                                        require (95 * msg.value) + (1900 * msg.value / 100) >= 95 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (95 * msg.value) + (1900 * msg.value / 100)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                                    else:
                                        require 95 * msg.value >= 95 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 95 * msg.value
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                    else:
                        require state <= 5
                        if state != 1:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                stor2[address(msg.sender)] += msg.value
                        else:
                            if block.timestamp < 427485 * 3600:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                    stor2[address(msg.sender)] += msg.value
                            else:
                                if block.timestamp >= 427653 * 3600:
                                    if block.timestamp >= 427821 * 3600:
                                        if block.timestamp >= 427989 * 3600:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                                else:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                        stor2[address(msg.sender)] += msg.value
            else:
                if msg.value:
                    require msg.value
                    require 189 * msg.value / msg.value == 189
                    require state <= 5
                    if state != 1:
                        require 189 * msg.value >= 189 * msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 189 * msg.value
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                            stor2[address(msg.sender)] += msg.value
                    else:
                        if block.timestamp < 427485 * 3600:
                            require 189 * msg.value >= 189 * msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 189 * msg.value
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                stor2[address(msg.sender)] += msg.value
                        else:
                            if block.timestamp >= 427653 * 3600:
                                if block.timestamp >= 427821 * 3600:
                                    if block.timestamp >= 427989 * 3600:
                                        require 189 * msg.value >= 189 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 189 * msg.value
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                                    else:
                                        if 189 * msg.value:
                                            require 189 * msg.value
                                            require 945 * msg.value / 189 * msg.value == 5
                                            require (189 * msg.value) + (945 * msg.value / 100) >= 189 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (189 * msg.value) + (945 * msg.value / 100)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                        else:
                                            require 189 * msg.value >= 189 * msg.value
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 189 * msg.value
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                                stor2[address(msg.sender)] += msg.value
                                else:
                                    if 189 * msg.value:
                                        require 189 * msg.value
                                        require 1890 * msg.value / 189 * msg.value == 10
                                        require (189 * msg.value) + (1890 * msg.value / 100) >= 189 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, (189 * msg.value) + (1890 * msg.value / 100)
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                                    else:
                                        require 189 * msg.value >= 189 * msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 189 * msg.value
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                            else:
                                if 189 * msg.value:
                                    require 189 * msg.value
                                    require 3780 * msg.value / 189 * msg.value == 20
                                    require (189 * msg.value) + (3780 * msg.value / 100) >= 189 * msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (189 * msg.value) + (3780 * msg.value / 100)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                        stor2[address(msg.sender)] += msg.value
                                else:
                                    require 189 * msg.value >= 189 * msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 189 * msg.value
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                        stor2[address(msg.sender)] += msg.value
                else:
                    require state <= 5
                    if state != 1:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                            stor2[address(msg.sender)] += msg.value
                    else:
                        if block.timestamp < 427485 * 3600:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                stor2[address(msg.sender)] += msg.value
                        else:
                            if block.timestamp >= 427653 * 3600:
                                if block.timestamp >= 427821 * 3600:
                                    if block.timestamp >= 427989 * 3600:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                            stor2[address(msg.sender)] += msg.value
                                else:
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                        stor2[address(msg.sender)] += msg.value
                            else:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                    stor2[address(msg.sender)] += msg.value
}



}
