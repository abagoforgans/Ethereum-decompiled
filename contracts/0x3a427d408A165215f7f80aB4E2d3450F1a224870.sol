contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
address stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;

function _fallback() payable {
    stor1 = 0xe98bdde8edbfc6ff6bb8804077b6be9d4401a71d
    stor2 = 0x1245ef80f4d9e02ed9425375e8f649b9221b31d8
    stor4 = block.timestamp
    stor5 = 421104 * 24 * 3600
    stor6 = 75 * 10^11
    require not msg.value
    stor0 = msg.sender
    stor3 = stor2
    return code.data[173 len 1716]
}



// =====================  Runtime code  =====================


address owner;
address multisigAddress;
address addressOfERC20Tocken;
address tokenAddress;
uint256 startICO;
uint256 endICO;
uint256 tokenETHAmount;

function multisig() {
    return multisigAddress
}

function endICO() {
    return endICO
}

function startICO() {
    return startICO
}

function owner() {
    return owner
}

function addressOfERC20Tocken() {
    return addressOfERC20Tocken
}

function tokenETHAmount() {
    return tokenETHAmount
}

function token() {
    return tokenAddress
}

function setOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function tokenBalance() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function transferToken(address arg1, uint256 arg2) {
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function _fallback() payable {
    require block.timestamp >= startICO
    require block.timestamp < endICO
    require msg.value >= 10^16
    if msg.value:
        require msg.value
        require tokenETHAmount * msg.value / msg.value == tokenETHAmount
    if msg.value >= 100 * 10^18:
        if tokenETHAmount * msg.value / 10^18:
            require tokenETHAmount * msg.value / 10^18
            require 110 * tokenETHAmount * msg.value / 10^18 / tokenETHAmount * msg.value / 10^18 == 110
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_call.return_data[0] > 110 * tokenETHAmount * msg.value / 10^18 / 100
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, 110 * tokenETHAmount * msg.value / 10^18 / 100
    else:
        if msg.value >= 50 * 10^18:
            if tokenETHAmount * msg.value / 10^18:
                require tokenETHAmount * msg.value / 10^18
                require 109 * tokenETHAmount * msg.value / 10^18 / tokenETHAmount * msg.value / 10^18 == 109
            require ext_code.size(tokenAddress)
            call tokenAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            require ext_call.return_data[0] > 109 * tokenETHAmount * msg.value / 10^18 / 100
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, 109 * tokenETHAmount * msg.value / 10^18 / 100
        else:
            if msg.value >= 30 * 10^18:
                if tokenETHAmount * msg.value / 10^18:
                    require tokenETHAmount * msg.value / 10^18
                    require 108 * tokenETHAmount * msg.value / 10^18 / tokenETHAmount * msg.value / 10^18 == 108
                require ext_code.size(tokenAddress)
                call tokenAddress.0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args this.address
                require ext_call.success
                require ext_call.return_data[0] > 108 * tokenETHAmount * msg.value / 10^18 / 100
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 108 * tokenETHAmount * msg.value / 10^18 / 100
            else:
                if msg.value >= 20 * 10^18:
                    if tokenETHAmount * msg.value / 10^18:
                        require tokenETHAmount * msg.value / 10^18
                        require 107 * tokenETHAmount * msg.value / 10^18 / tokenETHAmount * msg.value / 10^18 == 107
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args this.address
                    require ext_call.success
                    require ext_call.return_data[0] > 107 * tokenETHAmount * msg.value / 10^18 / 100
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 107 * tokenETHAmount * msg.value / 10^18 / 100
                else:
                    if msg.value >= 10 * 10^18:
                        if tokenETHAmount * msg.value / 10^18:
                            require tokenETHAmount * msg.value / 10^18
                            require 106 * tokenETHAmount * msg.value / 10^18 / tokenETHAmount * msg.value / 10^18 == 106
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x70a08231 with:
                             gas gas_remaining - 710 wei
                            args this.address
                        require ext_call.success
                        require ext_call.return_data[0] > 106 * tokenETHAmount * msg.value / 10^18 / 100
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 106 * tokenETHAmount * msg.value / 10^18 / 100
                    else:
                        if msg.value >= 7 * 10^18:
                            if tokenETHAmount * msg.value / 10^18:
                                require tokenETHAmount * msg.value / 10^18
                                require 105 * tokenETHAmount * msg.value / 10^18 / tokenETHAmount * msg.value / 10^18 == 105
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x70a08231 with:
                                 gas gas_remaining - 710 wei
                                args this.address
                            require ext_call.success
                            require ext_call.return_data[0] > 105 * tokenETHAmount * msg.value / 10^18 / 100
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 105 * tokenETHAmount * msg.value / 10^18 / 100
                        else:
                            if msg.value >= 5 * 10^18:
                                if tokenETHAmount * msg.value / 10^18:
                                    require tokenETHAmount * msg.value / 10^18
                                    require 104 * tokenETHAmount * msg.value / 10^18 / tokenETHAmount * msg.value / 10^18 == 104
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x70a08231 with:
                                     gas gas_remaining - 710 wei
                                    args this.address
                                require ext_call.success
                                require ext_call.return_data[0] > 104 * tokenETHAmount * msg.value / 10^18 / 100
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, 104 * tokenETHAmount * msg.value / 10^18 / 100
                            else:
                                if msg.value >= 3 * 10^18:
                                    if tokenETHAmount * msg.value / 10^18:
                                        require tokenETHAmount * msg.value / 10^18
                                        require 103 * tokenETHAmount * msg.value / 10^18 / tokenETHAmount * msg.value / 10^18 == 103
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x70a08231 with:
                                         gas gas_remaining - 710 wei
                                        args this.address
                                    require ext_call.success
                                    require ext_call.return_data[0] > 103 * tokenETHAmount * msg.value / 10^18 / 100
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 103 * tokenETHAmount * msg.value / 10^18 / 100
                                else:
                                    if msg.value >= 2 * 10^18:
                                        if tokenETHAmount * msg.value / 10^18:
                                            require tokenETHAmount * msg.value / 10^18
                                            require 102 * tokenETHAmount * msg.value / 10^18 / tokenETHAmount * msg.value / 10^18 == 102
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x70a08231 with:
                                             gas gas_remaining - 710 wei
                                            args this.address
                                        require ext_call.success
                                        require ext_call.return_data[0] > 102 * tokenETHAmount * msg.value / 10^18 / 100
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 102 * tokenETHAmount * msg.value / 10^18 / 100
                                    else:
                                        if msg.value >= 10^18:
                                            if tokenETHAmount * msg.value / 10^18:
                                                require tokenETHAmount * msg.value / 10^18
                                                require 101 * tokenETHAmount * msg.value / 10^18 / tokenETHAmount * msg.value / 10^18 == 101
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x70a08231 with:
                                                 gas gas_remaining - 710 wei
                                                args this.address
                                            require ext_call.success
                                            require ext_call.return_data[0] > 101 * tokenETHAmount * msg.value / 10^18 / 100
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 101 * tokenETHAmount * msg.value / 10^18 / 100
                                        else:
                                            if msg.value < 5 * 10^17:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x70a08231 with:
                                                     gas gas_remaining - 710 wei
                                                    args this.address
                                                require ext_call.success
                                                require ext_call.return_data[0] > tokenETHAmount * msg.value / 10^18
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, tokenETHAmount * msg.value / 10^18
                                            else:
                                                if tokenETHAmount * msg.value / 10^18:
                                                    require tokenETHAmount * msg.value / 10^18
                                                    require 1005 * tokenETHAmount * msg.value / 10^18 / tokenETHAmount * msg.value / 10^18 == 1005
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x70a08231 with:
                                                     gas gas_remaining - 710 wei
                                                    args this.address
                                                require ext_call.success
                                                require ext_call.return_data[0] > 1005 * tokenETHAmount * msg.value / 10^18 / 1000
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, 1005 * tokenETHAmount * msg.value / 10^18 / 1000
    require ext_call.success
    require ext_call.return_data[0]
    call multisigAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function doPurchase() payable {
    require block.timestamp >= startICO
    require block.timestamp < endICO
    require msg.value >= 10^16
    if msg.value:
        require msg.value
        require tokenETHAmount * msg.value / msg.value == tokenETHAmount
    if msg.value >= 100 * 10^18:
        if tokenETHAmount * msg.value / 10^18:
            require tokenETHAmount * msg.value / 10^18
            require 110 * tokenETHAmount * msg.value / 10^18 / tokenETHAmount * msg.value / 10^18 == 110
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_call.return_data[0] > 110 * tokenETHAmount * msg.value / 10^18 / 100
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, 110 * tokenETHAmount * msg.value / 10^18 / 100
    else:
        if msg.value >= 50 * 10^18:
            if tokenETHAmount * msg.value / 10^18:
                require tokenETHAmount * msg.value / 10^18
                require 109 * tokenETHAmount * msg.value / 10^18 / tokenETHAmount * msg.value / 10^18 == 109
            require ext_code.size(tokenAddress)
            call tokenAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            require ext_call.return_data[0] > 109 * tokenETHAmount * msg.value / 10^18 / 100
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, 109 * tokenETHAmount * msg.value / 10^18 / 100
        else:
            if msg.value >= 30 * 10^18:
                if tokenETHAmount * msg.value / 10^18:
                    require tokenETHAmount * msg.value / 10^18
                    require 108 * tokenETHAmount * msg.value / 10^18 / tokenETHAmount * msg.value / 10^18 == 108
                require ext_code.size(tokenAddress)
                call tokenAddress.0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args this.address
                require ext_call.success
                require ext_call.return_data[0] > 108 * tokenETHAmount * msg.value / 10^18 / 100
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 108 * tokenETHAmount * msg.value / 10^18 / 100
            else:
                if msg.value >= 20 * 10^18:
                    if tokenETHAmount * msg.value / 10^18:
                        require tokenETHAmount * msg.value / 10^18
                        require 107 * tokenETHAmount * msg.value / 10^18 / tokenETHAmount * msg.value / 10^18 == 107
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args this.address
                    require ext_call.success
                    require ext_call.return_data[0] > 107 * tokenETHAmount * msg.value / 10^18 / 100
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 107 * tokenETHAmount * msg.value / 10^18 / 100
                else:
                    if msg.value >= 10 * 10^18:
                        if tokenETHAmount * msg.value / 10^18:
                            require tokenETHAmount * msg.value / 10^18
                            require 106 * tokenETHAmount * msg.value / 10^18 / tokenETHAmount * msg.value / 10^18 == 106
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x70a08231 with:
                             gas gas_remaining - 710 wei
                            args this.address
                        require ext_call.success
                        require ext_call.return_data[0] > 106 * tokenETHAmount * msg.value / 10^18 / 100
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 106 * tokenETHAmount * msg.value / 10^18 / 100
                    else:
                        if msg.value >= 7 * 10^18:
                            if tokenETHAmount * msg.value / 10^18:
                                require tokenETHAmount * msg.value / 10^18
                                require 105 * tokenETHAmount * msg.value / 10^18 / tokenETHAmount * msg.value / 10^18 == 105
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x70a08231 with:
                                 gas gas_remaining - 710 wei
                                args this.address
                            require ext_call.success
                            require ext_call.return_data[0] > 105 * tokenETHAmount * msg.value / 10^18 / 100
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 105 * tokenETHAmount * msg.value / 10^18 / 100
                        else:
                            if msg.value >= 5 * 10^18:
                                if tokenETHAmount * msg.value / 10^18:
                                    require tokenETHAmount * msg.value / 10^18
                                    require 104 * tokenETHAmount * msg.value / 10^18 / tokenETHAmount * msg.value / 10^18 == 104
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x70a08231 with:
                                     gas gas_remaining - 710 wei
                                    args this.address
                                require ext_call.success
                                require ext_call.return_data[0] > 104 * tokenETHAmount * msg.value / 10^18 / 100
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, 104 * tokenETHAmount * msg.value / 10^18 / 100
                            else:
                                if msg.value >= 3 * 10^18:
                                    if tokenETHAmount * msg.value / 10^18:
                                        require tokenETHAmount * msg.value / 10^18
                                        require 103 * tokenETHAmount * msg.value / 10^18 / tokenETHAmount * msg.value / 10^18 == 103
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x70a08231 with:
                                         gas gas_remaining - 710 wei
                                        args this.address
                                    require ext_call.success
                                    require ext_call.return_data[0] > 103 * tokenETHAmount * msg.value / 10^18 / 100
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 103 * tokenETHAmount * msg.value / 10^18 / 100
                                else:
                                    if msg.value >= 2 * 10^18:
                                        if tokenETHAmount * msg.value / 10^18:
                                            require tokenETHAmount * msg.value / 10^18
                                            require 102 * tokenETHAmount * msg.value / 10^18 / tokenETHAmount * msg.value / 10^18 == 102
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x70a08231 with:
                                             gas gas_remaining - 710 wei
                                            args this.address
                                        require ext_call.success
                                        require ext_call.return_data[0] > 102 * tokenETHAmount * msg.value / 10^18 / 100
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 102 * tokenETHAmount * msg.value / 10^18 / 100
                                    else:
                                        if msg.value >= 10^18:
                                            if tokenETHAmount * msg.value / 10^18:
                                                require tokenETHAmount * msg.value / 10^18
                                                require 101 * tokenETHAmount * msg.value / 10^18 / tokenETHAmount * msg.value / 10^18 == 101
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x70a08231 with:
                                                 gas gas_remaining - 710 wei
                                                args this.address
                                            require ext_call.success
                                            require ext_call.return_data[0] > 101 * tokenETHAmount * msg.value / 10^18 / 100
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 101 * tokenETHAmount * msg.value / 10^18 / 100
                                        else:
                                            if msg.value < 5 * 10^17:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x70a08231 with:
                                                     gas gas_remaining - 710 wei
                                                    args this.address
                                                require ext_call.success
                                                require ext_call.return_data[0] > tokenETHAmount * msg.value / 10^18
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, tokenETHAmount * msg.value / 10^18
                                            else:
                                                if tokenETHAmount * msg.value / 10^18:
                                                    require tokenETHAmount * msg.value / 10^18
                                                    require 1005 * tokenETHAmount * msg.value / 10^18 / tokenETHAmount * msg.value / 10^18 == 1005
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0x70a08231 with:
                                                     gas gas_remaining - 710 wei
                                                    args this.address
                                                require ext_call.success
                                                require ext_call.return_data[0] > 1005 * tokenETHAmount * msg.value / 10^18 / 1000
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, 1005 * tokenETHAmount * msg.value / 10^18 / 1000
    require ext_call.success
    require ext_call.return_data[0]
    call multisigAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
