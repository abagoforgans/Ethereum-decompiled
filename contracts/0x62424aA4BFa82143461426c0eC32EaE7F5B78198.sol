contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
address stor8;
uint256 stor9;

function _fallback() payable {
    create contract with 0 wei
                    code: code.data[2467 len 2755]
    require create.new_address
    stor8 = address(create.new_address)
    require not msg.value
    stor0 = msg.sender
    stor1 = 0xb4ee29357d91152cd100fdee1126c440fba52157
    stor2 = 0xb4ee29357d91152cd100fdee1126c440fba52157
    stor3 = 10
    stor4 = block.timestamp
    stor6 = 28
    stor7 = 5500000 * 10^18
    stor9 = 30 * 10^18
    stor5 = block.timestamp
    return code.data[245 len 2222]
}



// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 supplyLimit;
address tokenAddress;
uint256 stor9;

function owner() {
    return owner
}

function getSupplyLimit() {
    return supplyLimit
}

function token() {
    return tokenAddress
}

function sub_0ba9325c(?) {
    return ((24 * 3600 * stor6) + stor4)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function startICO() {
    require owner == msg.sender
    stor4 = block.timestamp
    supplyLimit = 25500000 * 10^18
    stor6 = 24
}

function sub_295f71bd(?) {
    if block.timestamp <= stor4:
        return (block.timestamp > stor4)
    return (block.timestamp < stor4 + (24 * 3600 * stor6))
}

function burnTokens(uint256 arg1) {
    require ext_code.size(tokenAddress)
    call tokenAddress.burn(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1
    require ext_call.success
}

function finishMinting() {
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0] / 100:
        require ext_call.return_data[0] / 100
        require stor3 * ext_call.return_data[0] / 100 / ext_call.return_data[0] / 100 == stor3
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args stor2, stor3 * ext_call.return_data[0] / 100
    require ext_call.success
}

function payBounties(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require owner == msg.sender
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        _17 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg1.length) + (32 * arg2.length) + 196] = _17
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args mem[(32 * arg1.length) + (32 * arg2.length) + 164], _17
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
        require ext_call.success
        idx = idx + 1
        continue 
}

function _fallback() payable {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] < supplyLimit
    require block.timestamp > stor4
    require block.timestamp < stor4 + (24 * 3600 * stor6)
    call stor1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if block.timestamp < stor5 + (168 * 24 * 3600):
        if stor9:
            require stor9
            require 40 * stor9 / stor9 == 40
        if 40 * stor9:
            require 40 * stor9
            require 40 * msg.value * stor9 / 40 * stor9 == msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, 40 * msg.value * stor9 / 10^18
    else:
        if block.timestamp < stor5 + (336 * 24 * 3600):
            if stor9:
                require stor9
                require 35 * stor9 / stor9 == 35
            if 35 * stor9:
                require 35 * stor9
                require 35 * msg.value * stor9 / 35 * stor9 == msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, 35 * msg.value * stor9 / 10^18
        else:
            if block.timestamp < stor5 + (504 * 24 * 3600):
                if stor9:
                    require stor9
                    require 30 * stor9 / stor9 == 30
                if 30 * stor9:
                    require 30 * stor9
                    require 30 * msg.value * stor9 / 30 * stor9 == msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 30 * msg.value * stor9 / 10^18
            else:
                if block.timestamp < stor5 + (672 * 24 * 3600):
                    if stor9:
                        require stor9
                        require 25 * stor9 / stor9 == 25
                    if 25 * stor9:
                        require 25 * stor9
                        require 25 * msg.value * stor9 / 25 * stor9 == msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 25 * msg.value * stor9 / 10^18
                else:
                    if block.timestamp < stor5 + (696 * 24 * 3600):
                        if stor9:
                            require stor9
                            require 20 * stor9 / stor9 == 20
                        if 20 * stor9:
                            require 20 * stor9
                            require 20 * msg.value * stor9 / 20 * stor9 == msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 20 * msg.value * stor9 / 10^18
                    else:
                        if block.timestamp < stor5 + (816 * 24 * 3600):
                            if stor9:
                                require stor9
                                require 18 * stor9 / stor9 == 18
                            if 18 * stor9:
                                require 18 * stor9
                                require 18 * msg.value * stor9 / 18 * stor9 == msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 18 * msg.value * stor9 / 10^18
                        else:
                            if block.timestamp < stor5 + (912 * 24 * 3600):
                                if stor9:
                                    require stor9
                                    require 15 * stor9 / stor9 == 15
                                if 15 * stor9:
                                    require 15 * stor9
                                    require 15 * msg.value * stor9 / 15 * stor9 == msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, 15 * msg.value * stor9 / 10^18
                            else:
                                if block.timestamp >= stor5 + (984 * 24 * 3600):
                                    if stor9:
                                        require stor9
                                        require 10 * stor9 / stor9 == 10
                                    if 10 * stor9:
                                        require 10 * stor9
                                        require 10 * msg.value * stor9 / 10 * stor9 == msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 10 * msg.value * stor9 / 10^18
                                else:
                                    if stor9:
                                        require stor9
                                        require 12 * stor9 / stor9 == 12
                                    if 12 * stor9:
                                        require 12 * stor9
                                        require 12 * msg.value * stor9 / 12 * stor9 == msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 12 * msg.value * stor9 / 10^18
    require ext_call.success
}

function createTokens() payable {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] < supplyLimit
    require block.timestamp > stor4
    require block.timestamp < stor4 + (24 * 3600 * stor6)
    call stor1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if block.timestamp < stor5 + (168 * 24 * 3600):
        if stor9:
            require stor9
            require 40 * stor9 / stor9 == 40
        if 40 * stor9:
            require 40 * stor9
            require 40 * msg.value * stor9 / 40 * stor9 == msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, 40 * msg.value * stor9 / 10^18
    else:
        if block.timestamp < stor5 + (336 * 24 * 3600):
            if stor9:
                require stor9
                require 35 * stor9 / stor9 == 35
            if 35 * stor9:
                require 35 * stor9
                require 35 * msg.value * stor9 / 35 * stor9 == msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, 35 * msg.value * stor9 / 10^18
        else:
            if block.timestamp < stor5 + (504 * 24 * 3600):
                if stor9:
                    require stor9
                    require 30 * stor9 / stor9 == 30
                if 30 * stor9:
                    require 30 * stor9
                    require 30 * msg.value * stor9 / 30 * stor9 == msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 30 * msg.value * stor9 / 10^18
            else:
                if block.timestamp < stor5 + (672 * 24 * 3600):
                    if stor9:
                        require stor9
                        require 25 * stor9 / stor9 == 25
                    if 25 * stor9:
                        require 25 * stor9
                        require 25 * msg.value * stor9 / 25 * stor9 == msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 25 * msg.value * stor9 / 10^18
                else:
                    if block.timestamp < stor5 + (696 * 24 * 3600):
                        if stor9:
                            require stor9
                            require 20 * stor9 / stor9 == 20
                        if 20 * stor9:
                            require 20 * stor9
                            require 20 * msg.value * stor9 / 20 * stor9 == msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 20 * msg.value * stor9 / 10^18
                    else:
                        if block.timestamp < stor5 + (816 * 24 * 3600):
                            if stor9:
                                require stor9
                                require 18 * stor9 / stor9 == 18
                            if 18 * stor9:
                                require 18 * stor9
                                require 18 * msg.value * stor9 / 18 * stor9 == msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 18 * msg.value * stor9 / 10^18
                        else:
                            if block.timestamp < stor5 + (912 * 24 * 3600):
                                if stor9:
                                    require stor9
                                    require 15 * stor9 / stor9 == 15
                                if 15 * stor9:
                                    require 15 * stor9
                                    require 15 * msg.value * stor9 / 15 * stor9 == msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, 15 * msg.value * stor9 / 10^18
                            else:
                                if block.timestamp >= stor5 + (984 * 24 * 3600):
                                    if stor9:
                                        require stor9
                                        require 10 * stor9 / stor9 == 10
                                    if 10 * stor9:
                                        require 10 * stor9
                                        require 10 * msg.value * stor9 / 10 * stor9 == msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 10 * msg.value * stor9 / 10^18
                                else:
                                    if stor9:
                                        require stor9
                                        require 12 * stor9 / stor9 == 12
                                    if 12 * stor9:
                                        require 12 * stor9
                                        require 12 * msg.value * stor9 / 12 * stor9 == msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 12 * msg.value * stor9 / 10^18
    require ext_call.success
}



}
