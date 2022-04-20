contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor4;
address stor5;
uint256 stor6;
address stor7;
address stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;

function _fallback() payable {
    stor4 = 10000000 * 10^18
    create contract with 0 wei
                    code: code.data[3273 len 1834]
    require create.new_address
    stor8 = address(create.new_address)
    require not msg.value
    stor0 = msg.sender
    stor5 = 0xb398d6f446bd3b46c056873997c66a5b187a3898
    stor7 = 0xc9f90b30121a4efbb2b4f66024f5a21a8ef4bb01
    stor6 = 50
    stor11 = 1000 * 10^18
    stor9 = 416772 * 3600
    stor10 = 280
    return code.data[251 len 3022]
}



// =====================  Runtime code  =====================


const name = 'First Easy Token'

const decimals = 18

const symbol = 'FET'


address owner;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 INITIAL_SUPPLY;
address stor5;
uint256 stor6;
address stor7;
address tokenAddress;
uint256 stor9;
uint256 stor10;
uint256 stor11;

function totalSupply() {
    return totalSupply
}

function INITIAL_SUPPLY() {
    return INITIAL_SUPPLY
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function token() {
    return tokenAddress
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function sub_79f6779e(?) {
    totalSupply = INITIAL_SUPPLY
    balanceOf[address(msg.sender)] = INITIAL_SUPPLY
}

function burn(uint256 arg1) {
    require arg1 > 0
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(msg.sender, arg1);
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require block.timestamp > stor9
    require block.timestamp < stor9 + (24 * 3600 * stor10)
    call stor5 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if stor11:
        require stor11
        require msg.value * stor11 / stor11 == msg.value
    if block.timestamp < stor9 + (24 * 3600 * stor10 / 4):
        require (msg.value * stor11 / 10^18 / 4) + (msg.value * stor11 / 10^18) >= msg.value * stor11 / 10^18
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, (msg.value * stor11 / 10^18 / 4) + (msg.value * stor11 / 10^18)
    else:
        if Mask(254, 2, 24 * 3600 * stor10):
            require 24 * 3600 * stor10 / 4
            require Mask(254, 2, 24 * 3600 * stor10) >> 1 / 24 * 3600 * stor10 / 4 == 2
        if block.timestamp < stor9 + (24 * 3600 * stor10 / 4):
            if block.timestamp < stor9 + (Mask(254, 2, 24 * 3600 * stor10) >> 1):
                require msg.value * stor11 / 10^18 >= msg.value * stor11 / 10^18
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, msg.value * stor11 / 10^18
            else:
                if Mask(254, 2, 24 * 3600 * stor10):
                    require 24 * 3600 * stor10 / 4
                    require 3 * 24 * 3600 * stor10 / 4 / 24 * 3600 * stor10 / 4 == 3
                if block.timestamp >= stor9 + (3 * 24 * 3600 * stor10 / 4):
                    require msg.value * stor11 / 10^18 >= msg.value * stor11 / 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.value * stor11 / 10^18
                else:
                    require (msg.value * stor11 / 10^18 / 20) + (msg.value * stor11 / 10^18) >= msg.value * stor11 / 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (msg.value * stor11 / 10^18 / 20) + (msg.value * stor11 / 10^18)
        else:
            if block.timestamp < stor9 + (Mask(254, 2, 24 * 3600 * stor10) >> 1):
                require (msg.value * stor11 / 10^18 / 10) + (msg.value * stor11 / 10^18) >= msg.value * stor11 / 10^18
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (msg.value * stor11 / 10^18 / 10) + (msg.value * stor11 / 10^18)
            else:
                if Mask(254, 2, 24 * 3600 * stor10):
                    require 24 * 3600 * stor10 / 4
                    require Mask(254, 2, 24 * 3600 * stor10) >> 1 / 24 * 3600 * stor10 / 4 == 2
                if block.timestamp < stor9 + (Mask(254, 2, 24 * 3600 * stor10) >> 1):
                    require msg.value * stor11 / 10^18 >= msg.value * stor11 / 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.value * stor11 / 10^18
                else:
                    if Mask(254, 2, 24 * 3600 * stor10):
                        require 24 * 3600 * stor10 / 4
                        require 3 * 24 * 3600 * stor10 / 4 / 24 * 3600 * stor10 / 4 == 3
                    if block.timestamp >= stor9 + (3 * 24 * 3600 * stor10 / 4):
                        require msg.value * stor11 / 10^18 >= msg.value * stor11 / 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value * stor11 / 10^18
                    else:
                        require (msg.value * stor11 / 10^18 / 20) + (msg.value * stor11 / 10^18) >= msg.value * stor11 / 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (msg.value * stor11 / 10^18 / 20) + (msg.value * stor11 / 10^18)
    require ext_call.success
    if msg.value * stor11 / 10^18:
        require msg.value * stor11 / 10^18
        require stor6 * msg.value * stor11 / 10^18 / msg.value * stor11 / 10^18 == stor6
    require -stor6 + 100
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args stor7, stor6 * msg.value * stor11 / 10^18 / -stor6 + 100
    require ext_call.success
    if balanceOf[stor7] < 1000:
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args stor7, 2500000 * 10^18
        require ext_call.success
}

function createTokens() payable {
    require block.timestamp > stor9
    require block.timestamp < stor9 + (24 * 3600 * stor10)
    call stor5 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if stor11:
        require stor11
        require msg.value * stor11 / stor11 == msg.value
    if block.timestamp < stor9 + (24 * 3600 * stor10 / 4):
        require (msg.value * stor11 / 10^18 / 4) + (msg.value * stor11 / 10^18) >= msg.value * stor11 / 10^18
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, (msg.value * stor11 / 10^18 / 4) + (msg.value * stor11 / 10^18)
    else:
        if Mask(254, 2, 24 * 3600 * stor10):
            require 24 * 3600 * stor10 / 4
            require Mask(254, 2, 24 * 3600 * stor10) >> 1 / 24 * 3600 * stor10 / 4 == 2
        if block.timestamp < stor9 + (24 * 3600 * stor10 / 4):
            if block.timestamp < stor9 + (Mask(254, 2, 24 * 3600 * stor10) >> 1):
                require msg.value * stor11 / 10^18 >= msg.value * stor11 / 10^18
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, msg.value * stor11 / 10^18
            else:
                if Mask(254, 2, 24 * 3600 * stor10):
                    require 24 * 3600 * stor10 / 4
                    require 3 * 24 * 3600 * stor10 / 4 / 24 * 3600 * stor10 / 4 == 3
                if block.timestamp >= stor9 + (3 * 24 * 3600 * stor10 / 4):
                    require msg.value * stor11 / 10^18 >= msg.value * stor11 / 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.value * stor11 / 10^18
                else:
                    require (msg.value * stor11 / 10^18 / 20) + (msg.value * stor11 / 10^18) >= msg.value * stor11 / 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (msg.value * stor11 / 10^18 / 20) + (msg.value * stor11 / 10^18)
        else:
            if block.timestamp < stor9 + (Mask(254, 2, 24 * 3600 * stor10) >> 1):
                require (msg.value * stor11 / 10^18 / 10) + (msg.value * stor11 / 10^18) >= msg.value * stor11 / 10^18
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (msg.value * stor11 / 10^18 / 10) + (msg.value * stor11 / 10^18)
            else:
                if Mask(254, 2, 24 * 3600 * stor10):
                    require 24 * 3600 * stor10 / 4
                    require Mask(254, 2, 24 * 3600 * stor10) >> 1 / 24 * 3600 * stor10 / 4 == 2
                if block.timestamp < stor9 + (Mask(254, 2, 24 * 3600 * stor10) >> 1):
                    require msg.value * stor11 / 10^18 >= msg.value * stor11 / 10^18
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.value * stor11 / 10^18
                else:
                    if Mask(254, 2, 24 * 3600 * stor10):
                        require 24 * 3600 * stor10 / 4
                        require 3 * 24 * 3600 * stor10 / 4 / 24 * 3600 * stor10 / 4 == 3
                    if block.timestamp >= stor9 + (3 * 24 * 3600 * stor10 / 4):
                        require msg.value * stor11 / 10^18 >= msg.value * stor11 / 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value * stor11 / 10^18
                    else:
                        require (msg.value * stor11 / 10^18 / 20) + (msg.value * stor11 / 10^18) >= msg.value * stor11 / 10^18
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (msg.value * stor11 / 10^18 / 20) + (msg.value * stor11 / 10^18)
    require ext_call.success
    if msg.value * stor11 / 10^18:
        require msg.value * stor11 / 10^18
        require stor6 * msg.value * stor11 / 10^18 / msg.value * stor11 / 10^18 == stor6
    require -stor6 + 100
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args stor7, stor6 * msg.value * stor11 / 10^18 / -stor6 + 100
    require ext_call.success
    if balanceOf[stor7] < 1000:
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args stor7, 2500000 * 10^18
        require ext_call.success
}



}
