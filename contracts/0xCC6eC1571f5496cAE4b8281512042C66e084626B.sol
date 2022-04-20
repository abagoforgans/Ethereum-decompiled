contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
mapping of uint256 stor2;
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
                    code: code.data[3377 len 1802]
    require create.new_address
    stor8 = address(create.new_address)
    require not msg.value
    stor0 = msg.sender
    stor1 = stor4
    stor2[address(msg.sender)] = stor4
    stor5 = 0xb398d6f446bd3b46c056873997c66a5b187a3898
    stor7 = 0xc9f90b30121a4efbb2b4f66024f5a21a8ef4bb01
    stor6 = 35
    stor11 = 1000 * 10^18
    stor9 = 416772 * 3600
    stor10 = 280
    return code.data[276 len 3101]
}



// =====================  Runtime code  =====================


const name = 'Pay Easy Token'

const decimals = 18

const symbol = 'PET'


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
uint256 stor12;
uint256 stor13;

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

function MyCoins() {
    require owner == msg.sender
    stor7 = 0xc9f90b30121a4efbb2b4f66024f5a21a8ef4bb01
    stor12 = 4000000 * 10^18
    require 4000000 * 10^18 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= 4000000 * 10^18
    require balanceOf[0xc9f90b30121a4efbb2b4f66024f5a21a8ef4bb01] + 4000000 * 10^18 >= balanceOf[0xc9f90b30121a4efbb2b4f66024f5a21a8ef4bb01]
    balanceOf[0xc9f90b30121a4efbb2b4f66024f5a21a8ef4bb01] += 4000000 * 10^18
    emit Transfer(4000000 * 10^18, msg.sender, 0xc9f90b30121a4efbb2b4f66024f5a21a8ef4bb01);
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
    stor13 = balanceOf[stor7]
    if balanceOf[stor7] < 1000:
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args stor7, 4000000 * 10^18
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
    stor13 = balanceOf[stor7]
    if balanceOf[stor7] < 1000:
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args stor7, 4000000 * 10^18
        require ext_call.success
}



}
