contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
address stor3;

function _fallback() payable {
    create contract with 0 wei
                    code: code.data[4380 len 1984]
    require create.new_address
    stor3 = address(create.new_address)
    require not msg.value
    stor0 = msg.sender
    stor1 = 0xacd4e174e484ad3f6052b7361c7c601abc27af7b
    stor2 = 0x5b2d028a16281f18d02a2189ceee0614a65e58ca
    return code.data[204 len 4176]
}



// =====================  Runtime code  =====================


#
#  - createTokens()
#
address owner;
address stor1;
address stor2;
address tokenAddress;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint8 stor8;
uint256 stor8; offset 8
uint256 stor8;
uint8 stor9;
uint256 stor9; offset 8
uint256 stor9;
array of struct stor10;

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function ChangeEmissionRate(uint256 arg1) {
    require owner == msg.sender
    stor5 = arg1
    emit ChangeRate(arg1);
}

function ChangeEmissionSumm(uint256 arg1) {
    require owner == msg.sender
    stor7 = arg1
    emit ChangeEmission(arg1);
}

function ChangeEmissionRateCoefficient(uint8 arg1) {
    require owner == msg.sender
    uint8(stor9.field_0) = arg1
    Mask(248, 0, stor9.field_8) = 0
    emit ChangeRateCoefficient(arg1);
}

function ChangeEmissionGrowthCoefficient(uint8 arg1) {
    require owner == msg.sender
    uint8(stor8.field_0) = arg1
    Mask(248, 0, stor8.field_8) = 0
    emit ChangeEmissionCoefficient(arg1);
}

function PauseOn(uint8 arg1) {
    require owner == msg.sender
    bool(stor10.length) = 0
    stor10.length.field_1 = 2
    stor10.length.field_8 = 'On' / 256
    idx = 0
    while stor10.length + 31 / 32 > idx:
        stor10[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[224] = uint256(stor10.field_0)
    idx = 224
    s = 0
    while stor10.length + 224 > idx + 32:
        mem[idx + 32] = stor10[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit Pause(Array(len=stor10.length, data=mem[224 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]));
}

function PauseOff(uint8 arg1) {
    require owner == msg.sender
    bool(stor10.length) = 0
    stor10.length.field_1 = 3
    stor10.length.field_8 = 'Off' / 256
    idx = 0
    while stor10.length + 31 / 32 > idx:
        stor10[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[224] = uint256(stor10.field_0)
    idx = 224
    s = 0
    while stor10.length + 224 > idx + 32:
        mem[idx + 32] = stor10[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit Pause(Array(len=stor10.length, data=mem[224 len stor10.length + (floor32(stor10.length - 1) + -stor10.length + 32 % 32)]));
}

function _fallback() payable {
    require stor5 > 0
    mem[96] = uint256(stor10.field_0)
    idx = 96
    s = 0
    while stor10.length + 96 > idx + 32:
        mem[idx + 32] = stor10[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require sha3(mem[96 len stor10.length]) != sha3('On')
    if stor5:
        require stor5
        require msg.value * stor5 / stor5 == msg.value
    require stor6 <= stor7
    if stor7 - stor6 > msg.value * stor5 / 10^18:
        call stor1 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require (msg.value * stor5 / 10^18) + stor6 >= stor6
        stor6 += msg.value * stor5 / 10^18
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, msg.value * stor5 / 10^18
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args stor2, msg.value * stor5 / 10^18
        require ext_call.success
        emit MintedTokens((msg.value * stor5 / 10^18));
    else:
        if stor7 - stor6 == msg.value * stor5 / 10^18:
            call stor1 with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, msg.value * stor5 / 10^18
            require ext_call.success
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args stor2, msg.value * stor5 / 10^18
            require ext_call.success
            emit MintedTokens((msg.value * stor5 / 10^18));
            require uint256(stor8.field_0) + 100 >= uint256(stor8.field_0)
            if stor7:
                require stor7
                require (100 * stor7) + (uint256(stor8.field_0) * stor7) / stor7 == uint256(stor8.field_0) + 100
            stor7 = (100 * stor7) + (uint256(stor8.field_0) * stor7) / 100
            emit EmissionGrows(((100 * stor7) + (uint256(stor8.field_0) * stor7) / 100));
            require uint256(stor9.field_0) <= 100
            if stor5:
                require stor5
                require (100 * stor5) - (uint256(stor9.field_0) * stor5) / stor5 == -uint256(stor9.field_0) + 100
            stor5 = (100 * stor5) - (uint256(stor9.field_0) * stor5) / 100
            emit EmissionRateDecrease(((100 * stor5) - (uint256(stor9.field_0) * stor5) / 100));
            stor6 = 0
        else:
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, stor7 - stor6
            require ext_call.success
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args stor2, stor7 - stor6
            require ext_call.success
            emit MintedTokens((stor7 - stor6));
            require uint256(stor8.field_0) + 100 >= uint256(stor8.field_0)
            if stor7:
                require stor7
                require (100 * stor7) + (uint256(stor8.field_0) * stor7) / stor7 == uint256(stor8.field_0) + 100
            stor7 = (100 * stor7) + (uint256(stor8.field_0) * stor7) / 100
            emit EmissionGrows(((100 * stor7) + (uint256(stor8.field_0) * stor7) / 100));
            if stor7 - stor6:
                require stor7 - stor6
                require (10^18 * stor7) - (10^18 * stor6) / stor7 - stor6 == 10^18
            require stor5
            require (10^18 * stor7) - (10^18 * stor6) / stor5 <= msg.value
            require uint256(stor9.field_0) <= 100
            if stor5:
                require stor5
                require (100 * stor5) - (uint256(stor9.field_0) * stor5) / stor5 == -uint256(stor9.field_0) + 100
            stor5 = (100 * stor5) - (uint256(stor9.field_0) * stor5) / 100
            emit EmissionRateDecrease(((100 * stor5) - (uint256(stor9.field_0) * stor5) / 100));
            if stor5:
                require stor5
                require (msg.value * stor5) - ((10^18 * stor7) - (10^18 * stor6) / stor5 * stor5) / stor5 == msg.value - ((10^18 * stor7) - (10^18 * stor6) / stor5)
            if stor7 > (msg.value * stor5) - ((10^18 * stor7) - (10^18 * stor6) / stor5 * stor5) / 10^18:
                call stor1 with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                stor6 = (msg.value * stor5) - ((10^18 * stor7) - (10^18 * stor6) / stor5 * stor5) / 10^18
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (msg.value * stor5) - ((10^18 * stor7) - (10^18 * stor6) / stor5 * stor5) / 10^18
                require ext_call.success
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args stor2, (msg.value * stor5) - ((10^18 * stor7) - (10^18 * stor6) / stor5 * stor5) / 10^18
                require ext_call.success
                emit MintedTokens(((msg.value * stor5) - ((10^18 * stor7) - (10^18 * stor6) / stor5 * stor5) / 10^18));
            else:
                if stor7 == (msg.value * stor5) - ((10^18 * stor7) - (10^18 * stor6) / stor5 * stor5) / 10^18:
                    call stor1 with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (msg.value * stor5) - ((10^18 * stor7) - (10^18 * stor6) / stor5 * stor5) / 10^18
                    require ext_call.success
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args stor2, (msg.value * stor5) - ((10^18 * stor7) - (10^18 * stor6) / stor5 * stor5) / 10^18
                    require ext_call.success
                    emit MintedTokens(((msg.value * stor5) - ((10^18 * stor7) - (10^18 * stor6) / stor5 * stor5) / 10^18));
                else:
                    if stor7:
                        require stor7
                        require 10^18 * stor7 / stor7 == 10^18
                    require stor5
                    require ((10^18 * stor7) - (10^18 * stor6) / stor5) + (10^18 * stor7 / stor5) >= 10^18 * stor7 / stor5
                    call stor1 with:
                       value ((10^18 * stor7) - (10^18 * stor6) / stor5) + (10^18 * stor7 / stor5) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require 10^18 * stor7 / stor5 <= msg.value
                    require (10^18 * stor7) - (10^18 * stor6) / stor5 <= msg.value - (10^18 * stor7 / stor5)
                    call msg.sender with:
                       value msg.value - (10^18 * stor7 / stor5) - ((10^18 * stor7) - (10^18 * stor6) / stor5) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, stor7
                    require ext_call.success
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args stor2, stor7
                    require ext_call.success
                    emit MintedTokens(stor7);
                require uint256(stor8.field_0) + 100 >= uint256(stor8.field_0)
                if stor7:
                    require stor7
                    require (100 * stor7) + (uint256(stor8.field_0) * stor7) / stor7 == uint256(stor8.field_0) + 100
                stor7 = (100 * stor7) + (uint256(stor8.field_0) * stor7) / 100
                emit EmissionGrows(((100 * stor7) + (uint256(stor8.field_0) * stor7) / 100));
                require uint256(stor9.field_0) <= 100
                if stor5:
                    require stor5
                    require (100 * stor5) - (uint256(stor9.field_0) * stor5) / stor5 == -uint256(stor9.field_0) + 100
                stor5 = (100 * stor5) - (uint256(stor9.field_0) * stor5) / 100
                emit EmissionRateDecrease(((100 * stor5) - (uint256(stor9.field_0) * stor5) / 100));
                stor6 = 0
}



}
