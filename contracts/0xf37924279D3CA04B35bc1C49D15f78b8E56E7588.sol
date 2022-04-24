contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
address stor3;
address stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;

function _fallback() payable {
    create contract with 0 wei
                    code: code.data[2325 len 2250]
    require create.new_address
    stor4 = address(create.new_address)
    require not msg.value
    stor0 = msg.sender
    stor1 = 0x7c7d18fa8ced3f4e16af82f7d3c834025469ea14
    stor3 = 0x952be68d0526bf226a1d0a7bb36bf94d22f2e63c
    stor2 = 30
    stor8 = 100
    stor5 = 420216 * 24 * 3600
    stor6 = 110
    stor7 = 10 * 10^6
    stor9 = 10^6
    return code.data[241 len 2084]
}



// =====================  Runtime code  =====================


address owner;
address multisigAddress;
uint256 restrictedPercent;
address restrictedAddress;
address tokenAddress;
uint256 start;
uint256 period;
uint256 hardcap;
uint256 rate;
uint256 softcap;
mapping of uint256 balances;

function balances(address arg1) {
    return balances[arg1]
}

function rate() {
    return rate
}

function restrictedPercent() {
    return restrictedPercent
}

function multisig() {
    return multisigAddress
}

function restricted() {
    return restrictedAddress
}

function owner() {
    return owner
}

function hardcap() {
    return hardcap
}

function start() {
    return start
}

function period() {
    return period
}

function softcap() {
    return softcap
}

function token() {
    return tokenAddress
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function refund() {
    require eth.balance(this.address) < softcap
    require block.timestamp > start + (24 * 3600 * period)
    balances[address(msg.sender)] = 0
    call msg.sender with:
       value balances[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function finishMinting() {
    require owner == msg.sender
    if eth.balance(this.address) > softcap:
        call multisigAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.0x18160ddd with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if not ext_call.return_data[0]:
            require -restrictedPercent + 100
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args restrictedAddress, 0 / -restrictedPercent + 100
        else:
            require restrictedPercent * ext_call.return_data[0] / ext_call.return_data[0] == restrictedPercent
            require -restrictedPercent + 100
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args restrictedAddress, restrictedPercent * ext_call.return_data[0] / -restrictedPercent + 100
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.0x7d64bcb4 with:
             gas gas_remaining - 710 wei
        require ext_call.success
}

function _fallback() payable {
    require eth.balance(multisigAddress) <= hardcap
    require block.timestamp > start
    require block.timestamp < start + (24 * 3600 * period)
    if not rate:
        if block.timestamp >= start + (24 * 3600 * period / 4):
            if block.timestamp < start + (24 * 3600 * period / 4):
                if not 24 * 3600 * period / 4:
                    if block.timestamp >= start:
                        if 24 * 3600 * period / 4:
                            require 3 * 24 * 3600 * period / 4 / 24 * 3600 * period / 4 == 3
                else:
                    require Mask(254, 2, 24 * 3600 * period) >> 1 / 24 * 3600 * period / 4 == 2
                    if block.timestamp >= start + (Mask(254, 2, 24 * 3600 * period) >> 1):
                        if 24 * 3600 * period / 4:
                            require 3 * 24 * 3600 * period / 4 / 24 * 3600 * period / 4 == 3
            else:
                if not 24 * 3600 * period / 4:
                    if block.timestamp >= start:
                        if not 24 * 3600 * period / 4:
                            if block.timestamp >= start:
                                if 24 * 3600 * period / 4:
                                    require 3 * 24 * 3600 * period / 4 / 24 * 3600 * period / 4 == 3
                        else:
                            require Mask(254, 2, 24 * 3600 * period) >> 1 / 24 * 3600 * period / 4 == 2
                            if block.timestamp >= start + (Mask(254, 2, 24 * 3600 * period) >> 1):
                                if 24 * 3600 * period / 4:
                                    require 3 * 24 * 3600 * period / 4 / 24 * 3600 * period / 4 == 3
                else:
                    require Mask(254, 2, 24 * 3600 * period) >> 1 / 24 * 3600 * period / 4 == 2
                    if block.timestamp >= start + (Mask(254, 2, 24 * 3600 * period) >> 1):
                        if not 24 * 3600 * period / 4:
                            if block.timestamp >= start:
                                if 24 * 3600 * period / 4:
                                    require 3 * 24 * 3600 * period / 4 / 24 * 3600 * period / 4 == 3
                        else:
                            require Mask(254, 2, 24 * 3600 * period) >> 1 / 24 * 3600 * period / 4 == 2
                            if block.timestamp >= start + (Mask(254, 2, 24 * 3600 * period) >> 1):
                                if 24 * 3600 * period / 4:
                                    require 3 * 24 * 3600 * period / 4 / 24 * 3600 * period / 4 == 3
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, 0
    else:
        require msg.value * rate / rate == msg.value
        if block.timestamp < start + (24 * 3600 * period / 4):
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, (msg.value * rate / 10^18 / 10) + (msg.value * rate / 10^18)
        else:
            if block.timestamp < start + (24 * 3600 * period / 4):
                if not 24 * 3600 * period / 4:
                    if block.timestamp < start:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value * rate / 10^18
                    else:
                        if not 24 * 3600 * period / 4:
                            require ext_code.size(tokenAddress)
                            if block.timestamp >= start:
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, msg.value * rate / 10^18
                            else:
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (msg.value * rate / 10^18 / 50) + (msg.value * rate / 10^18)
                        else:
                            require 3 * 24 * 3600 * period / 4 / 24 * 3600 * period / 4 == 3
                            require ext_code.size(tokenAddress)
                            if block.timestamp >= start + (3 * 24 * 3600 * period / 4):
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, msg.value * rate / 10^18
                            else:
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (msg.value * rate / 10^18 / 50) + (msg.value * rate / 10^18)
                else:
                    require Mask(254, 2, 24 * 3600 * period) >> 1 / 24 * 3600 * period / 4 == 2
                    if block.timestamp < start + (Mask(254, 2, 24 * 3600 * period) >> 1):
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value * rate / 10^18
                    else:
                        if not 24 * 3600 * period / 4:
                            require ext_code.size(tokenAddress)
                            if block.timestamp >= start:
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, msg.value * rate / 10^18
                            else:
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (msg.value * rate / 10^18 / 50) + (msg.value * rate / 10^18)
                        else:
                            require 3 * 24 * 3600 * period / 4 / 24 * 3600 * period / 4 == 3
                            require ext_code.size(tokenAddress)
                            if block.timestamp >= start + (3 * 24 * 3600 * period / 4):
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, msg.value * rate / 10^18
                            else:
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (msg.value * rate / 10^18 / 50) + (msg.value * rate / 10^18)
            else:
                if not 24 * 3600 * period / 4:
                    if block.timestamp < start:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (msg.value * rate / 10^18 / 20) + (msg.value * rate / 10^18)
                    else:
                        if not 24 * 3600 * period / 4:
                            if block.timestamp < start:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, msg.value * rate / 10^18
                            else:
                                if not 24 * 3600 * period / 4:
                                    require ext_code.size(tokenAddress)
                                    if block.timestamp >= start:
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, msg.value * rate / 10^18
                                    else:
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, (msg.value * rate / 10^18 / 50) + (msg.value * rate / 10^18)
                                else:
                                    require 3 * 24 * 3600 * period / 4 / 24 * 3600 * period / 4 == 3
                                    require ext_code.size(tokenAddress)
                                    if block.timestamp >= start + (3 * 24 * 3600 * period / 4):
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, msg.value * rate / 10^18
                                    else:
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, (msg.value * rate / 10^18 / 50) + (msg.value * rate / 10^18)
                        else:
                            require Mask(254, 2, 24 * 3600 * period) >> 1 / 24 * 3600 * period / 4 == 2
                            if block.timestamp < start + (Mask(254, 2, 24 * 3600 * period) >> 1):
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, msg.value * rate / 10^18
                            else:
                                if not 24 * 3600 * period / 4:
                                    require ext_code.size(tokenAddress)
                                    if block.timestamp >= start:
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, msg.value * rate / 10^18
                                    else:
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, (msg.value * rate / 10^18 / 50) + (msg.value * rate / 10^18)
                                else:
                                    require 3 * 24 * 3600 * period / 4 / 24 * 3600 * period / 4 == 3
                                    require ext_code.size(tokenAddress)
                                    if block.timestamp >= start + (3 * 24 * 3600 * period / 4):
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, msg.value * rate / 10^18
                                    else:
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, (msg.value * rate / 10^18 / 50) + (msg.value * rate / 10^18)
                else:
                    require Mask(254, 2, 24 * 3600 * period) >> 1 / 24 * 3600 * period / 4 == 2
                    if block.timestamp < start + (Mask(254, 2, 24 * 3600 * period) >> 1):
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (msg.value * rate / 10^18 / 20) + (msg.value * rate / 10^18)
                    else:
                        if not 24 * 3600 * period / 4:
                            if block.timestamp < start:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, msg.value * rate / 10^18
                            else:
                                if not 24 * 3600 * period / 4:
                                    require ext_code.size(tokenAddress)
                                    if block.timestamp >= start:
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, msg.value * rate / 10^18
                                    else:
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, (msg.value * rate / 10^18 / 50) + (msg.value * rate / 10^18)
                                else:
                                    require 3 * 24 * 3600 * period / 4 / 24 * 3600 * period / 4 == 3
                                    require ext_code.size(tokenAddress)
                                    if block.timestamp >= start + (3 * 24 * 3600 * period / 4):
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, msg.value * rate / 10^18
                                    else:
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, (msg.value * rate / 10^18 / 50) + (msg.value * rate / 10^18)
                        else:
                            require Mask(254, 2, 24 * 3600 * period) >> 1 / 24 * 3600 * period / 4 == 2
                            if block.timestamp < start + (Mask(254, 2, 24 * 3600 * period) >> 1):
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, msg.value * rate / 10^18
                            else:
                                if not 24 * 3600 * period / 4:
                                    require ext_code.size(tokenAddress)
                                    if block.timestamp >= start:
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, msg.value * rate / 10^18
                                    else:
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, (msg.value * rate / 10^18 / 50) + (msg.value * rate / 10^18)
                                else:
                                    require 3 * 24 * 3600 * period / 4 / 24 * 3600 * period / 4 == 3
                                    require ext_code.size(tokenAddress)
                                    if block.timestamp >= start + (3 * 24 * 3600 * period / 4):
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, msg.value * rate / 10^18
                                    else:
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, (msg.value * rate / 10^18 / 50) + (msg.value * rate / 10^18)
    require ext_call.success
    require msg.value + balances[address(msg.sender)] >= balances[address(msg.sender)]
    balances[address(msg.sender)] += msg.value
}

function createTokens() payable {
    require eth.balance(multisigAddress) <= hardcap
    require block.timestamp > start
    require block.timestamp < start + (24 * 3600 * period)
    if not rate:
        if block.timestamp >= start + (24 * 3600 * period / 4):
            if block.timestamp < start + (24 * 3600 * period / 4):
                if not 24 * 3600 * period / 4:
                    if block.timestamp >= start:
                        if 24 * 3600 * period / 4:
                            require 3 * 24 * 3600 * period / 4 / 24 * 3600 * period / 4 == 3
                else:
                    require Mask(254, 2, 24 * 3600 * period) >> 1 / 24 * 3600 * period / 4 == 2
                    if block.timestamp >= start + (Mask(254, 2, 24 * 3600 * period) >> 1):
                        if 24 * 3600 * period / 4:
                            require 3 * 24 * 3600 * period / 4 / 24 * 3600 * period / 4 == 3
            else:
                if not 24 * 3600 * period / 4:
                    if block.timestamp >= start:
                        if not 24 * 3600 * period / 4:
                            if block.timestamp >= start:
                                if 24 * 3600 * period / 4:
                                    require 3 * 24 * 3600 * period / 4 / 24 * 3600 * period / 4 == 3
                        else:
                            require Mask(254, 2, 24 * 3600 * period) >> 1 / 24 * 3600 * period / 4 == 2
                            if block.timestamp >= start + (Mask(254, 2, 24 * 3600 * period) >> 1):
                                if 24 * 3600 * period / 4:
                                    require 3 * 24 * 3600 * period / 4 / 24 * 3600 * period / 4 == 3
                else:
                    require Mask(254, 2, 24 * 3600 * period) >> 1 / 24 * 3600 * period / 4 == 2
                    if block.timestamp >= start + (Mask(254, 2, 24 * 3600 * period) >> 1):
                        if not 24 * 3600 * period / 4:
                            if block.timestamp >= start:
                                if 24 * 3600 * period / 4:
                                    require 3 * 24 * 3600 * period / 4 / 24 * 3600 * period / 4 == 3
                        else:
                            require Mask(254, 2, 24 * 3600 * period) >> 1 / 24 * 3600 * period / 4 == 2
                            if block.timestamp >= start + (Mask(254, 2, 24 * 3600 * period) >> 1):
                                if 24 * 3600 * period / 4:
                                    require 3 * 24 * 3600 * period / 4 / 24 * 3600 * period / 4 == 3
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, 0
    else:
        require msg.value * rate / rate == msg.value
        if block.timestamp < start + (24 * 3600 * period / 4):
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, (msg.value * rate / 10^18 / 10) + (msg.value * rate / 10^18)
        else:
            if block.timestamp < start + (24 * 3600 * period / 4):
                if not 24 * 3600 * period / 4:
                    if block.timestamp < start:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value * rate / 10^18
                    else:
                        if not 24 * 3600 * period / 4:
                            require ext_code.size(tokenAddress)
                            if block.timestamp >= start:
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, msg.value * rate / 10^18
                            else:
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (msg.value * rate / 10^18 / 50) + (msg.value * rate / 10^18)
                        else:
                            require 3 * 24 * 3600 * period / 4 / 24 * 3600 * period / 4 == 3
                            require ext_code.size(tokenAddress)
                            if block.timestamp >= start + (3 * 24 * 3600 * period / 4):
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, msg.value * rate / 10^18
                            else:
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (msg.value * rate / 10^18 / 50) + (msg.value * rate / 10^18)
                else:
                    require Mask(254, 2, 24 * 3600 * period) >> 1 / 24 * 3600 * period / 4 == 2
                    if block.timestamp < start + (Mask(254, 2, 24 * 3600 * period) >> 1):
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value * rate / 10^18
                    else:
                        if not 24 * 3600 * period / 4:
                            require ext_code.size(tokenAddress)
                            if block.timestamp >= start:
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, msg.value * rate / 10^18
                            else:
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (msg.value * rate / 10^18 / 50) + (msg.value * rate / 10^18)
                        else:
                            require 3 * 24 * 3600 * period / 4 / 24 * 3600 * period / 4 == 3
                            require ext_code.size(tokenAddress)
                            if block.timestamp >= start + (3 * 24 * 3600 * period / 4):
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, msg.value * rate / 10^18
                            else:
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (msg.value * rate / 10^18 / 50) + (msg.value * rate / 10^18)
            else:
                if not 24 * 3600 * period / 4:
                    if block.timestamp < start:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (msg.value * rate / 10^18 / 20) + (msg.value * rate / 10^18)
                    else:
                        if not 24 * 3600 * period / 4:
                            if block.timestamp < start:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, msg.value * rate / 10^18
                            else:
                                if not 24 * 3600 * period / 4:
                                    require ext_code.size(tokenAddress)
                                    if block.timestamp >= start:
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, msg.value * rate / 10^18
                                    else:
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, (msg.value * rate / 10^18 / 50) + (msg.value * rate / 10^18)
                                else:
                                    require 3 * 24 * 3600 * period / 4 / 24 * 3600 * period / 4 == 3
                                    require ext_code.size(tokenAddress)
                                    if block.timestamp >= start + (3 * 24 * 3600 * period / 4):
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, msg.value * rate / 10^18
                                    else:
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, (msg.value * rate / 10^18 / 50) + (msg.value * rate / 10^18)
                        else:
                            require Mask(254, 2, 24 * 3600 * period) >> 1 / 24 * 3600 * period / 4 == 2
                            if block.timestamp < start + (Mask(254, 2, 24 * 3600 * period) >> 1):
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, msg.value * rate / 10^18
                            else:
                                if not 24 * 3600 * period / 4:
                                    require ext_code.size(tokenAddress)
                                    if block.timestamp >= start:
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, msg.value * rate / 10^18
                                    else:
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, (msg.value * rate / 10^18 / 50) + (msg.value * rate / 10^18)
                                else:
                                    require 3 * 24 * 3600 * period / 4 / 24 * 3600 * period / 4 == 3
                                    require ext_code.size(tokenAddress)
                                    if block.timestamp >= start + (3 * 24 * 3600 * period / 4):
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, msg.value * rate / 10^18
                                    else:
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, (msg.value * rate / 10^18 / 50) + (msg.value * rate / 10^18)
                else:
                    require Mask(254, 2, 24 * 3600 * period) >> 1 / 24 * 3600 * period / 4 == 2
                    if block.timestamp < start + (Mask(254, 2, 24 * 3600 * period) >> 1):
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (msg.value * rate / 10^18 / 20) + (msg.value * rate / 10^18)
                    else:
                        if not 24 * 3600 * period / 4:
                            if block.timestamp < start:
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, msg.value * rate / 10^18
                            else:
                                if not 24 * 3600 * period / 4:
                                    require ext_code.size(tokenAddress)
                                    if block.timestamp >= start:
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, msg.value * rate / 10^18
                                    else:
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, (msg.value * rate / 10^18 / 50) + (msg.value * rate / 10^18)
                                else:
                                    require 3 * 24 * 3600 * period / 4 / 24 * 3600 * period / 4 == 3
                                    require ext_code.size(tokenAddress)
                                    if block.timestamp >= start + (3 * 24 * 3600 * period / 4):
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, msg.value * rate / 10^18
                                    else:
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, (msg.value * rate / 10^18 / 50) + (msg.value * rate / 10^18)
                        else:
                            require Mask(254, 2, 24 * 3600 * period) >> 1 / 24 * 3600 * period / 4 == 2
                            if block.timestamp < start + (Mask(254, 2, 24 * 3600 * period) >> 1):
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, msg.value * rate / 10^18
                            else:
                                if not 24 * 3600 * period / 4:
                                    require ext_code.size(tokenAddress)
                                    if block.timestamp >= start:
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, msg.value * rate / 10^18
                                    else:
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, (msg.value * rate / 10^18 / 50) + (msg.value * rate / 10^18)
                                else:
                                    require 3 * 24 * 3600 * period / 4 / 24 * 3600 * period / 4 == 3
                                    require ext_code.size(tokenAddress)
                                    if block.timestamp >= start + (3 * 24 * 3600 * period / 4):
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, msg.value * rate / 10^18
                                    else:
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, (msg.value * rate / 10^18 / 50) + (msg.value * rate / 10^18)
    require ext_call.success
    require msg.value + balances[address(msg.sender)] >= balances[address(msg.sender)]
    balances[address(msg.sender)] += msg.value
}



}
