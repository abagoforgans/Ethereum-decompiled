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
                    code: code.data[2619 len 2546]
    require create.new_address
    stor4 = address(create.new_address)
    require not msg.value
    stor0 = msg.sender
    stor1 = 0xe490ea9e5f95dd54d4153469723a0c128e2cd80b
    stor3 = 0xe490ea9e5f95dd54d4153469723a0c128e2cd80b
    stor2 = 0
    stor8 = 100 * 10^18
    stor5 = 419112 * 24 * 3600
    stor6 = 61
    stor7 = 10000 * 10^18
    stor9 = 1000 * 10^18
    return code.data[256 len 2363]
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
    call msg.sender with:
       value balances[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    balances[address(msg.sender)] = 0
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
        if ext_call.return_data[0]:
            require ext_call.return_data[0]
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
    if rate:
        require rate
        require msg.value * rate / rate == msg.value
    if block.timestamp < start + (24 * 3600 * period / 4):
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, (msg.value * rate / 10^18 / 4) + (msg.value * rate / 10^18)
    else:
        if Mask(254, 2, 24 * 3600 * period):
            require 24 * 3600 * period / 4
            require Mask(254, 2, 24 * 3600 * period) >> 1 / 24 * 3600 * period / 4 == 2
        if block.timestamp < start + (24 * 3600 * period / 4):
            if block.timestamp < start + (Mask(254, 2, 24 * 3600 * period) >> 1):
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, msg.value * rate / 10^18
            else:
                if Mask(254, 2, 24 * 3600 * period):
                    require 24 * 3600 * period / 4
                    require 3 * 24 * 3600 * period / 4 / 24 * 3600 * period / 4 == 3
                require ext_code.size(tokenAddress)
                if block.timestamp >= start + (3 * 24 * 3600 * period / 4):
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.value * rate / 10^18
                else:
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (msg.value * rate / 10^18 / 20) + (msg.value * rate / 10^18)
        else:
            if block.timestamp < start + (Mask(254, 2, 24 * 3600 * period) >> 1):
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (msg.value * rate / 10^18 / 10) + (msg.value * rate / 10^18)
            else:
                if Mask(254, 2, 24 * 3600 * period):
                    require 24 * 3600 * period / 4
                    require Mask(254, 2, 24 * 3600 * period) >> 1 / 24 * 3600 * period / 4 == 2
                if block.timestamp < start + (Mask(254, 2, 24 * 3600 * period) >> 1):
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.value * rate / 10^18
                else:
                    if Mask(254, 2, 24 * 3600 * period):
                        require 24 * 3600 * period / 4
                        require 3 * 24 * 3600 * period / 4 / 24 * 3600 * period / 4 == 3
                    require ext_code.size(tokenAddress)
                    if block.timestamp >= start + (3 * 24 * 3600 * period / 4):
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value * rate / 10^18
                    else:
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (msg.value * rate / 10^18 / 20) + (msg.value * rate / 10^18)
    require ext_call.success
    require msg.value + balances[address(msg.sender)] >= balances[address(msg.sender)]
    balances[address(msg.sender)] += msg.value
}

function createTokens() payable {
    require eth.balance(multisigAddress) <= hardcap
    require block.timestamp > start
    require block.timestamp < start + (24 * 3600 * period)
    if rate:
        require rate
        require msg.value * rate / rate == msg.value
    if block.timestamp < start + (24 * 3600 * period / 4):
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, (msg.value * rate / 10^18 / 4) + (msg.value * rate / 10^18)
    else:
        if Mask(254, 2, 24 * 3600 * period):
            require 24 * 3600 * period / 4
            require Mask(254, 2, 24 * 3600 * period) >> 1 / 24 * 3600 * period / 4 == 2
        if block.timestamp < start + (24 * 3600 * period / 4):
            if block.timestamp < start + (Mask(254, 2, 24 * 3600 * period) >> 1):
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, msg.value * rate / 10^18
            else:
                if Mask(254, 2, 24 * 3600 * period):
                    require 24 * 3600 * period / 4
                    require 3 * 24 * 3600 * period / 4 / 24 * 3600 * period / 4 == 3
                require ext_code.size(tokenAddress)
                if block.timestamp >= start + (3 * 24 * 3600 * period / 4):
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.value * rate / 10^18
                else:
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (msg.value * rate / 10^18 / 20) + (msg.value * rate / 10^18)
        else:
            if block.timestamp < start + (Mask(254, 2, 24 * 3600 * period) >> 1):
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (msg.value * rate / 10^18 / 10) + (msg.value * rate / 10^18)
            else:
                if Mask(254, 2, 24 * 3600 * period):
                    require 24 * 3600 * period / 4
                    require Mask(254, 2, 24 * 3600 * period) >> 1 / 24 * 3600 * period / 4 == 2
                if block.timestamp < start + (Mask(254, 2, 24 * 3600 * period) >> 1):
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.value * rate / 10^18
                else:
                    if Mask(254, 2, 24 * 3600 * period):
                        require 24 * 3600 * period / 4
                        require 3 * 24 * 3600 * period / 4 / 24 * 3600 * period / 4 == 3
                    require ext_code.size(tokenAddress)
                    if block.timestamp >= start + (3 * 24 * 3600 * period / 4):
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value * rate / 10^18
                    else:
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (msg.value * rate / 10^18 / 20) + (msg.value * rate / 10^18)
    require ext_call.success
    require msg.value + balances[address(msg.sender)] >= balances[address(msg.sender)]
    balances[address(msg.sender)] += msg.value
}



}
