contract main {




// =====================  Runtime code  =====================


address contractOwner;
address stor1;
uint256 tokensSold;
uint256 amountRaised;
uint256 stor4;
address stor5;
uint256 stor6;
uint256 stor7;
mapping of uint8 stor8;

function tokensSold() {
    return tokensSold
}

function amountRaised() {
    return amountRaised
}

function sub_b6e1c4ce(?) {
    return bool(stor8[address(arg1)])
}

function contractOwner() {
    return contractOwner
}

function endTokenSale() {
    require msg.sender == contractOwner
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args contractOwner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    stor7 = block.timestamp
    selfdestruct(contractOwner)
}

function sub_b28ae6ce(?) {
    return (block.timestamp > stor7)
}

function sub_dbe7a82b(?) {
    return (block.timestamp > stor6)
}

function addWhitelist(address arg1) {
    require msg.sender == contractOwner
    stor8[address(arg1)] = 1
}

function startTokenSale() {
    require msg.sender == contractOwner
    stor6 = block.timestamp
    stor7 = block.timestamp + (744 * 24 * 3600)
}

function getContractBalance() {
    require msg.sender == contractOwner
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function _fallback() payable {
    require block.timestamp > stor6
    require block.timestamp <= stor7
    if block.timestamp < stor6:
        if block.timestamp <= stor6 + (72 * 24 * 3600):
            require 10^18 * msg.value / 5 * 10^13 >= 10^18 * msg.value / 5 * 10^13
            require ext_code.size(stor1)
            call stor1.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require msg.value >= stor4
            require ext_call.return_data[0] >= 10^18 * msg.value / 5 * 10^13
        else:
            if block.timestamp <= stor6 + (240 * 24 * 3600):
                if 10^18 * msg.value / 5 * 10^13:
                    require 10^18 * msg.value / 5 * 10^13
                    require 125 * 10^14 * 3600 * msg.value / 5 * 10^13 / 10^18 * msg.value / 5 * 10^13 == 45
                require (125 * 10^14 * 3600 * msg.value / 5 * 10^13 / 100) + (10^18 * msg.value / 5 * 10^13) >= 10^18 * msg.value / 5 * 10^13
                require ext_code.size(stor1)
                call stor1.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require msg.value >= stor4
                require ext_call.return_data[0] >= (125 * 10^14 * 3600 * msg.value / 5 * 10^13 / 100) + (10^18 * msg.value / 5 * 10^13)
            else:
                if block.timestamp <= stor6 + (408 * 24 * 3600):
                    if 10^18 * msg.value / 5 * 10^13:
                        require 10^18 * msg.value / 5 * 10^13
                        require 40 * 10^18 * msg.value / 5 * 10^13 / 10^18 * msg.value / 5 * 10^13 == 40
                    require (40 * 10^18 * msg.value / 5 * 10^13 / 100) + (10^18 * msg.value / 5 * 10^13) >= 10^18 * msg.value / 5 * 10^13
                    require ext_code.size(stor1)
                    call stor1.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require msg.value >= stor4
                    require ext_call.return_data[0] >= (40 * 10^18 * msg.value / 5 * 10^13 / 100) + (10^18 * msg.value / 5 * 10^13)
                else:
                    if block.timestamp <= stor6 + (576 * 24 * 3600):
                        if 10^18 * msg.value / 5 * 10^13:
                            require 10^18 * msg.value / 5 * 10^13
                            require 35 * 10^18 * msg.value / 5 * 10^13 / 10^18 * msg.value / 5 * 10^13 == 35
                        require (35 * 10^18 * msg.value / 5 * 10^13 / 100) + (10^18 * msg.value / 5 * 10^13) >= 10^18 * msg.value / 5 * 10^13
                        require ext_code.size(stor1)
                        call stor1.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require msg.value >= stor4
                        require ext_call.return_data[0] >= (35 * 10^18 * msg.value / 5 * 10^13 / 100) + (10^18 * msg.value / 5 * 10^13)
                    else:
                        if block.timestamp >= stor7:
                            require 10^18 * msg.value / 5 * 10^13 >= 10^18 * msg.value / 5 * 10^13
                            require ext_code.size(stor1)
                            call stor1.0x70a08231 with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require msg.value >= stor4
                            require ext_call.return_data[0] >= 10^18 * msg.value / 5 * 10^13
                        else:
                            if 10^18 * msg.value / 5 * 10^13:
                                require 10^18 * msg.value / 5 * 10^13
                                require 30 * 10^18 * msg.value / 5 * 10^13 / 10^18 * msg.value / 5 * 10^13 == 30
                            require (30 * 10^18 * msg.value / 5 * 10^13 / 100) + (10^18 * msg.value / 5 * 10^13) >= 10^18 * msg.value / 5 * 10^13
                            require ext_code.size(stor1)
                            call stor1.0x70a08231 with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require msg.value >= stor4
                            require ext_call.return_data[0] >= (30 * 10^18 * msg.value / 5 * 10^13 / 100) + (10^18 * msg.value / 5 * 10^13)
    else:
        if block.timestamp <= stor6 + (72 * 24 * 3600):
            if 10^18 * msg.value / 5 * 10^13:
                require 10^18 * msg.value / 5 * 10^13
                require 55 * 10^18 * msg.value / 5 * 10^13 / 10^18 * msg.value / 5 * 10^13 == 55
            require (55 * 10^18 * msg.value / 5 * 10^13 / 100) + (10^18 * msg.value / 5 * 10^13) >= 10^18 * msg.value / 5 * 10^13
            require ext_code.size(stor1)
            call stor1.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require msg.value >= stor4
            require ext_call.return_data[0] >= (55 * 10^18 * msg.value / 5 * 10^13 / 100) + (10^18 * msg.value / 5 * 10^13)
        else:
            if block.timestamp <= stor6 + (240 * 24 * 3600):
                if 10^18 * msg.value / 5 * 10^13:
                    require 10^18 * msg.value / 5 * 10^13
                    require 125 * 10^14 * 3600 * msg.value / 5 * 10^13 / 10^18 * msg.value / 5 * 10^13 == 45
                require (125 * 10^14 * 3600 * msg.value / 5 * 10^13 / 100) + (10^18 * msg.value / 5 * 10^13) >= 10^18 * msg.value / 5 * 10^13
                require ext_code.size(stor1)
                call stor1.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require msg.value >= stor4
                require ext_call.return_data[0] >= (125 * 10^14 * 3600 * msg.value / 5 * 10^13 / 100) + (10^18 * msg.value / 5 * 10^13)
            else:
                if block.timestamp <= stor6 + (408 * 24 * 3600):
                    if 10^18 * msg.value / 5 * 10^13:
                        require 10^18 * msg.value / 5 * 10^13
                        require 40 * 10^18 * msg.value / 5 * 10^13 / 10^18 * msg.value / 5 * 10^13 == 40
                    require (40 * 10^18 * msg.value / 5 * 10^13 / 100) + (10^18 * msg.value / 5 * 10^13) >= 10^18 * msg.value / 5 * 10^13
                    require ext_code.size(stor1)
                    call stor1.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require msg.value >= stor4
                    require ext_call.return_data[0] >= (40 * 10^18 * msg.value / 5 * 10^13 / 100) + (10^18 * msg.value / 5 * 10^13)
                else:
                    if block.timestamp <= stor6 + (576 * 24 * 3600):
                        if 10^18 * msg.value / 5 * 10^13:
                            require 10^18 * msg.value / 5 * 10^13
                            require 35 * 10^18 * msg.value / 5 * 10^13 / 10^18 * msg.value / 5 * 10^13 == 35
                        require (35 * 10^18 * msg.value / 5 * 10^13 / 100) + (10^18 * msg.value / 5 * 10^13) >= 10^18 * msg.value / 5 * 10^13
                        require ext_code.size(stor1)
                        call stor1.0x70a08231 with:
                             gas gas_remaining wei
                            args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require msg.value >= stor4
                        require ext_call.return_data[0] >= (35 * 10^18 * msg.value / 5 * 10^13 / 100) + (10^18 * msg.value / 5 * 10^13)
                    else:
                        if block.timestamp >= stor7:
                            require 10^18 * msg.value / 5 * 10^13 >= 10^18 * msg.value / 5 * 10^13
                            require ext_code.size(stor1)
                            call stor1.0x70a08231 with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require msg.value >= stor4
                            require ext_call.return_data[0] >= 10^18 * msg.value / 5 * 10^13
                        else:
                            if 10^18 * msg.value / 5 * 10^13:
                                require 10^18 * msg.value / 5 * 10^13
                                require 30 * 10^18 * msg.value / 5 * 10^13 / 10^18 * msg.value / 5 * 10^13 == 30
                            require (30 * 10^18 * msg.value / 5 * 10^13 / 100) + (10^18 * msg.value / 5 * 10^13) >= 10^18 * msg.value / 5 * 10^13
                            require ext_code.size(stor1)
                            call stor1.0x70a08231 with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require msg.value >= stor4
                            require ext_call.return_data[0] >= (30 * 10^18 * msg.value / 5 * 10^13 / 100) + (10^18 * msg.value / 5 * 10^13)
    if block.timestamp < stor6:
        if block.timestamp <= stor6 + (72 * 24 * 3600):
            require 10^18 * msg.value / 5 * 10^13 >= 10^18 * msg.value / 5 * 10^13
            require ext_code.size(stor1)
            call stor1.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 10^18 * msg.value / 5 * 10^13
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require msg.value + amountRaised >= amountRaised
            amountRaised += msg.value
            require (10^18 * msg.value / 5 * 10^13) + tokensSold >= tokensSold
            tokensSold += 10^18 * msg.value / 5 * 10^13
        else:
            if block.timestamp <= stor6 + (240 * 24 * 3600):
                if 10^18 * msg.value / 5 * 10^13:
                    require 10^18 * msg.value / 5 * 10^13
                    require 125 * 10^14 * 3600 * msg.value / 5 * 10^13 / 10^18 * msg.value / 5 * 10^13 == 45
                require (125 * 10^14 * 3600 * msg.value / 5 * 10^13 / 100) + (10^18 * msg.value / 5 * 10^13) >= 10^18 * msg.value / 5 * 10^13
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (125 * 10^14 * 3600 * msg.value / 5 * 10^13 / 100) + (10^18 * msg.value / 5 * 10^13)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require msg.value + amountRaised >= amountRaised
                amountRaised += msg.value
                require (125 * 10^14 * 3600 * msg.value / 5 * 10^13 / 100) + (10^18 * msg.value / 5 * 10^13) + tokensSold >= tokensSold
                tokensSold = (125 * 10^14 * 3600 * msg.value / 5 * 10^13 / 100) + (10^18 * msg.value / 5 * 10^13) + tokensSold
            else:
                if block.timestamp <= stor6 + (408 * 24 * 3600):
                    if 10^18 * msg.value / 5 * 10^13:
                        require 10^18 * msg.value / 5 * 10^13
                        require 40 * 10^18 * msg.value / 5 * 10^13 / 10^18 * msg.value / 5 * 10^13 == 40
                    require (40 * 10^18 * msg.value / 5 * 10^13 / 100) + (10^18 * msg.value / 5 * 10^13) >= 10^18 * msg.value / 5 * 10^13
                    require ext_code.size(stor1)
                    call stor1.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (40 * 10^18 * msg.value / 5 * 10^13 / 100) + (10^18 * msg.value / 5 * 10^13)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require msg.value + amountRaised >= amountRaised
                    amountRaised += msg.value
                    require (40 * 10^18 * msg.value / 5 * 10^13 / 100) + (10^18 * msg.value / 5 * 10^13) + tokensSold >= tokensSold
                    tokensSold = (40 * 10^18 * msg.value / 5 * 10^13 / 100) + (10^18 * msg.value / 5 * 10^13) + tokensSold
                else:
                    if block.timestamp <= stor6 + (576 * 24 * 3600):
                        if 10^18 * msg.value / 5 * 10^13:
                            require 10^18 * msg.value / 5 * 10^13
                            require 35 * 10^18 * msg.value / 5 * 10^13 / 10^18 * msg.value / 5 * 10^13 == 35
                        require (35 * 10^18 * msg.value / 5 * 10^13 / 100) + (10^18 * msg.value / 5 * 10^13) >= 10^18 * msg.value / 5 * 10^13
                        require ext_code.size(stor1)
                        call stor1.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (35 * 10^18 * msg.value / 5 * 10^13 / 100) + (10^18 * msg.value / 5 * 10^13)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require msg.value + amountRaised >= amountRaised
                        amountRaised += msg.value
                        require (35 * 10^18 * msg.value / 5 * 10^13 / 100) + (10^18 * msg.value / 5 * 10^13) + tokensSold >= tokensSold
                        tokensSold = (35 * 10^18 * msg.value / 5 * 10^13 / 100) + (10^18 * msg.value / 5 * 10^13) + tokensSold
                    else:
                        if block.timestamp >= stor7:
                            require 10^18 * msg.value / 5 * 10^13 >= 10^18 * msg.value / 5 * 10^13
                            require ext_code.size(stor1)
                            call stor1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 10^18 * msg.value / 5 * 10^13
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require msg.value + amountRaised >= amountRaised
                            amountRaised += msg.value
                            require (10^18 * msg.value / 5 * 10^13) + tokensSold >= tokensSold
                            tokensSold += 10^18 * msg.value / 5 * 10^13
                        else:
                            if 10^18 * msg.value / 5 * 10^13:
                                require 10^18 * msg.value / 5 * 10^13
                                require 30 * 10^18 * msg.value / 5 * 10^13 / 10^18 * msg.value / 5 * 10^13 == 30
                            require (30 * 10^18 * msg.value / 5 * 10^13 / 100) + (10^18 * msg.value / 5 * 10^13) >= 10^18 * msg.value / 5 * 10^13
                            require ext_code.size(stor1)
                            call stor1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (30 * 10^18 * msg.value / 5 * 10^13 / 100) + (10^18 * msg.value / 5 * 10^13)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require msg.value + amountRaised >= amountRaised
                            amountRaised += msg.value
                            require (30 * 10^18 * msg.value / 5 * 10^13 / 100) + (10^18 * msg.value / 5 * 10^13) + tokensSold >= tokensSold
                            tokensSold = (30 * 10^18 * msg.value / 5 * 10^13 / 100) + (10^18 * msg.value / 5 * 10^13) + tokensSold
    else:
        if block.timestamp <= stor6 + (72 * 24 * 3600):
            if 10^18 * msg.value / 5 * 10^13:
                require 10^18 * msg.value / 5 * 10^13
                require 55 * 10^18 * msg.value / 5 * 10^13 / 10^18 * msg.value / 5 * 10^13 == 55
            require (55 * 10^18 * msg.value / 5 * 10^13 / 100) + (10^18 * msg.value / 5 * 10^13) >= 10^18 * msg.value / 5 * 10^13
            require ext_code.size(stor1)
            call stor1.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (55 * 10^18 * msg.value / 5 * 10^13 / 100) + (10^18 * msg.value / 5 * 10^13)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require msg.value + amountRaised >= amountRaised
            amountRaised += msg.value
            require (55 * 10^18 * msg.value / 5 * 10^13 / 100) + (10^18 * msg.value / 5 * 10^13) + tokensSold >= tokensSold
            tokensSold = (55 * 10^18 * msg.value / 5 * 10^13 / 100) + (10^18 * msg.value / 5 * 10^13) + tokensSold
        else:
            if block.timestamp <= stor6 + (240 * 24 * 3600):
                if 10^18 * msg.value / 5 * 10^13:
                    require 10^18 * msg.value / 5 * 10^13
                    require 125 * 10^14 * 3600 * msg.value / 5 * 10^13 / 10^18 * msg.value / 5 * 10^13 == 45
                require (125 * 10^14 * 3600 * msg.value / 5 * 10^13 / 100) + (10^18 * msg.value / 5 * 10^13) >= 10^18 * msg.value / 5 * 10^13
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (125 * 10^14 * 3600 * msg.value / 5 * 10^13 / 100) + (10^18 * msg.value / 5 * 10^13)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require msg.value + amountRaised >= amountRaised
                amountRaised += msg.value
                require (125 * 10^14 * 3600 * msg.value / 5 * 10^13 / 100) + (10^18 * msg.value / 5 * 10^13) + tokensSold >= tokensSold
                tokensSold = (125 * 10^14 * 3600 * msg.value / 5 * 10^13 / 100) + (10^18 * msg.value / 5 * 10^13) + tokensSold
            else:
                if block.timestamp <= stor6 + (408 * 24 * 3600):
                    if 10^18 * msg.value / 5 * 10^13:
                        require 10^18 * msg.value / 5 * 10^13
                        require 40 * 10^18 * msg.value / 5 * 10^13 / 10^18 * msg.value / 5 * 10^13 == 40
                    require (40 * 10^18 * msg.value / 5 * 10^13 / 100) + (10^18 * msg.value / 5 * 10^13) >= 10^18 * msg.value / 5 * 10^13
                    require ext_code.size(stor1)
                    call stor1.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (40 * 10^18 * msg.value / 5 * 10^13 / 100) + (10^18 * msg.value / 5 * 10^13)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require msg.value + amountRaised >= amountRaised
                    amountRaised += msg.value
                    require (40 * 10^18 * msg.value / 5 * 10^13 / 100) + (10^18 * msg.value / 5 * 10^13) + tokensSold >= tokensSold
                    tokensSold = (40 * 10^18 * msg.value / 5 * 10^13 / 100) + (10^18 * msg.value / 5 * 10^13) + tokensSold
                else:
                    if block.timestamp <= stor6 + (576 * 24 * 3600):
                        if 10^18 * msg.value / 5 * 10^13:
                            require 10^18 * msg.value / 5 * 10^13
                            require 35 * 10^18 * msg.value / 5 * 10^13 / 10^18 * msg.value / 5 * 10^13 == 35
                        require (35 * 10^18 * msg.value / 5 * 10^13 / 100) + (10^18 * msg.value / 5 * 10^13) >= 10^18 * msg.value / 5 * 10^13
                        require ext_code.size(stor1)
                        call stor1.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (35 * 10^18 * msg.value / 5 * 10^13 / 100) + (10^18 * msg.value / 5 * 10^13)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require msg.value + amountRaised >= amountRaised
                        amountRaised += msg.value
                        require (35 * 10^18 * msg.value / 5 * 10^13 / 100) + (10^18 * msg.value / 5 * 10^13) + tokensSold >= tokensSold
                        tokensSold = (35 * 10^18 * msg.value / 5 * 10^13 / 100) + (10^18 * msg.value / 5 * 10^13) + tokensSold
                    else:
                        if block.timestamp >= stor7:
                            require 10^18 * msg.value / 5 * 10^13 >= 10^18 * msg.value / 5 * 10^13
                            require ext_code.size(stor1)
                            call stor1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 10^18 * msg.value / 5 * 10^13
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require msg.value + amountRaised >= amountRaised
                            amountRaised += msg.value
                            require (10^18 * msg.value / 5 * 10^13) + tokensSold >= tokensSold
                            tokensSold += 10^18 * msg.value / 5 * 10^13
                        else:
                            if 10^18 * msg.value / 5 * 10^13:
                                require 10^18 * msg.value / 5 * 10^13
                                require 30 * 10^18 * msg.value / 5 * 10^13 / 10^18 * msg.value / 5 * 10^13 == 30
                            require (30 * 10^18 * msg.value / 5 * 10^13 / 100) + (10^18 * msg.value / 5 * 10^13) >= 10^18 * msg.value / 5 * 10^13
                            require ext_code.size(stor1)
                            call stor1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (30 * 10^18 * msg.value / 5 * 10^13 / 100) + (10^18 * msg.value / 5 * 10^13)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require msg.value + amountRaised >= amountRaised
                            amountRaised += msg.value
                            require (30 * 10^18 * msg.value / 5 * 10^13 / 100) + (10^18 * msg.value / 5 * 10^13) + tokensSold >= tokensSold
                            tokensSold = (30 * 10^18 * msg.value / 5 * 10^13 / 100) + (10^18 * msg.value / 5 * 10^13) + tokensSold
    call stor5 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
