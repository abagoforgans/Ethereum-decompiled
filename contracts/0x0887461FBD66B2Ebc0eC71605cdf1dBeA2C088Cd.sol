contract main {




// =====================  Runtime code  =====================


const icoEnd = 1535500799

const preIcoStart = (424632 * 24 * 3600)

const wallet = 0x7618ef8340a461f6d222ce082f6564b6697e49b9

const icoStart = (425856 * 24 * 3600)

const preIcoEnd = 1531094399

const softCap = 600 * 10^18

const price = 400


address owner;
address tokenAddress;
mapping of uint256 stor2;
uint8 stor3;

function owner() {
    return owner
}

function finished() {
    return bool(stor3)
}

function token() {
    return tokenAddress
}

function calcTokens(uint256 arg1) {
    if not arg1:
        return 0
    require arg1
    require 400 * arg1 / arg1 == 400
    return (400 * arg1)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getState(uint256 arg1) {
    if arg1 < 424632 * 24 * 3600:
        if arg1 <= 1535500799:
            return 0
        return 3
    if arg1 <= 1531094399:
        return 1
    if arg1 < 425856 * 24 * 3600:
        if arg1 <= 1535500799:
            return 0
        return 3
    if arg1 > 1535500799:
        return 3
    return 2
}

function refund() {
    require stor3
    require eth.balance(this.address) < 600 * 10^18
    require stor2[address(msg.sender)] > 0
    stor2[address(msg.sender)] = 0
    call msg.sender with:
       value stor2[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function sub_fe4ebd72(?) {
    require arg1 <= 3
    if arg1 != 1:
        if arg1 <= 3:
            if arg1 != 2:
                return 0
            if arg2 < 425856 * 24 * 3600:
                return 0
            if arg2 >= 426288 * 24 * 3600:
                return 0
            if not arg3:
                return 0
            if arg3:
                if 5 * arg3 / arg3 == 5:
                    return (5 * arg3 / 100)
    else:
        if arg2 < 424632 * 24 * 3600:
            if arg2 <= 118 * 3600 * 24 * 3600:
                return 0
        else:
            if arg2 <= 118 * 3600 * 24 * 3600:
                return arg3
        ('gt', ('param', 'arg2'), 1529280000)
        if not arg3:
            return 0
        if arg2 <= 424944 * 24 * 3600:
            if arg3:
                if 30 * arg3 / arg3 == 30:
                    return (30 * arg3 / 100)
        else:
            if arg2 > 425064 * 24 * 3600:
                if arg3:
                    if 10 * arg3 / arg3 == 10:
                        return (10 * arg3 / 100)
            else:
                if arg3:
                    if 20 * arg3 / arg3 == 20:
                        return (20 * arg3 / 100)
    revert
}

function finish() {
    require msg.sender == owner
    require not stor3
    if block.timestamp >= 424632 * 24 * 3600:
        require block.timestamp > 1531094399
    require block.timestamp > 1535500799
    stor3 = 1
    if eth.balance(this.address) >= 600 * 10^18:
        if not eth.balance(this.address):
            call 0xb11ae3eb2f880cf6196b557ef05c38e1b4cb9d81 with:
                 gas 2300 wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call 0x7618ef8340a461f6d222ce082f6564b6697e49b9 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
        else:
            require eth.balance(this.address)
            require 2 * eth.balance(this.address) / eth.balance(this.address) == 2
            call 0xb11ae3eb2f880cf6196b557ef05c38e1b4cb9d81 with:
               value 2 * eth.balance(this.address) / 100 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call 0x7618ef8340a461f6d222ce082f6564b6697e49b9 with:
               value eth.balance(this.address) - (2 * eth.balance(this.address) / 100) wei
                 gas 2300 * is_zero(value) wei
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
    if block.timestamp < 424632 * 24 * 3600:
        require block.timestamp > 1535500799
        revert
    else:
        if block.timestamp > 1531094399:
            if block.timestamp < 425856 * 24 * 3600:
                require block.timestamp > 1535500799
                revert
            else:
                require block.timestamp <= 1535500799
                if msg.value:
                    require msg.value
                    require 400 * msg.value / msg.value == 400
                    if block.timestamp < 425856 * 24 * 3600:
                        require 400 * msg.value >= 400 * msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 400 * msg.value
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                            stor2[address(msg.sender)] += msg.value
                    else:
                        if block.timestamp >= 426288 * 24 * 3600:
                            require 400 * msg.value >= 400 * msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 400 * msg.value
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                stor2[address(msg.sender)] += msg.value
                        else:
                            if 400 * msg.value:
                                require 400 * msg.value
                                require 2000 * msg.value / 400 * msg.value == 5
                                require (400 * msg.value) + (2000 * msg.value / 100) >= 400 * msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (400 * msg.value) + (2000 * msg.value / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                    stor2[address(msg.sender)] += msg.value
                            else:
                                require 400 * msg.value >= 400 * msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 400 * msg.value
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                    stor2[address(msg.sender)] += msg.value
                else:
                    if block.timestamp < 425856 * 24 * 3600:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                            stor2[address(msg.sender)] += msg.value
                    else:
                        if block.timestamp >= 426288 * 24 * 3600:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
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
                require 400 * msg.value / msg.value == 400
                if block.timestamp < 424632 * 24 * 3600:
                    if block.timestamp <= 118 * 3600 * 24 * 3600:
                        require 400 * msg.value >= 400 * msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 400 * msg.value
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                            stor2[address(msg.sender)] += msg.value
                    else:
                        if block.timestamp > 424944 * 24 * 3600:
                            if block.timestamp > 425064 * 24 * 3600:
                                if 400 * msg.value:
                                    require 400 * msg.value
                                    require 4000 * msg.value / 400 * msg.value == 10
                                    require (400 * msg.value) + (4000 * msg.value / 100) >= 400 * msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (400 * msg.value) + (4000 * msg.value / 100)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                        stor2[address(msg.sender)] += msg.value
                                else:
                                    require 400 * msg.value >= 400 * msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 400 * msg.value
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                        stor2[address(msg.sender)] += msg.value
                            else:
                                if 400 * msg.value:
                                    require 400 * msg.value
                                    require 8000 * msg.value / 400 * msg.value == 20
                                    require (400 * msg.value) + (8000 * msg.value / 100) >= 400 * msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (400 * msg.value) + (8000 * msg.value / 100)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                        stor2[address(msg.sender)] += msg.value
                                else:
                                    require 400 * msg.value >= 400 * msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 400 * msg.value
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                        stor2[address(msg.sender)] += msg.value
                        else:
                            if 400 * msg.value:
                                require 400 * msg.value
                                require 12000 * msg.value / 400 * msg.value == 30
                                require (400 * msg.value) + (12000 * msg.value / 100) >= 400 * msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (400 * msg.value) + (12000 * msg.value / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                    stor2[address(msg.sender)] += msg.value
                            else:
                                require 400 * msg.value >= 400 * msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 400 * msg.value
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                    stor2[address(msg.sender)] += msg.value
                else:
                    if block.timestamp > 118 * 3600 * 24 * 3600:
                        if block.timestamp > 424944 * 24 * 3600:
                            if block.timestamp > 425064 * 24 * 3600:
                                if 400 * msg.value:
                                    require 400 * msg.value
                                    require 4000 * msg.value / 400 * msg.value == 10
                                    require (400 * msg.value) + (4000 * msg.value / 100) >= 400 * msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (400 * msg.value) + (4000 * msg.value / 100)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                        stor2[address(msg.sender)] += msg.value
                                else:
                                    require 400 * msg.value >= 400 * msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 400 * msg.value
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                        stor2[address(msg.sender)] += msg.value
                            else:
                                if 400 * msg.value:
                                    require 400 * msg.value
                                    require 8000 * msg.value / 400 * msg.value == 20
                                    require (400 * msg.value) + (8000 * msg.value / 100) >= 400 * msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (400 * msg.value) + (8000 * msg.value / 100)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                        stor2[address(msg.sender)] += msg.value
                                else:
                                    require 400 * msg.value >= 400 * msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, 400 * msg.value
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                        stor2[address(msg.sender)] += msg.value
                        else:
                            if 400 * msg.value:
                                require 400 * msg.value
                                require 12000 * msg.value / 400 * msg.value == 30
                                require (400 * msg.value) + (12000 * msg.value / 100) >= 400 * msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (400 * msg.value) + (12000 * msg.value / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                    stor2[address(msg.sender)] += msg.value
                            else:
                                require 400 * msg.value >= 400 * msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 400 * msg.value
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                                    stor2[address(msg.sender)] += msg.value
                    else:
                        require 800 * msg.value >= 400 * msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 800 * msg.value
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                            stor2[address(msg.sender)] += msg.value
            else:
                if block.timestamp < 424632 * 24 * 3600:
                    if block.timestamp <= 118 * 3600 * 24 * 3600:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require stor2[address(msg.sender)] + msg.value >= stor2[address(msg.sender)]
                            stor2[address(msg.sender)] += msg.value
                    else:
                        if block.timestamp > 424944 * 24 * 3600:
                            if block.timestamp > 425064 * 24 * 3600:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
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
                    if block.timestamp > 118 * 3600 * 24 * 3600:
                        if block.timestamp > 424944 * 24 * 3600:
                            if block.timestamp > 425064 * 24 * 3600:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
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
