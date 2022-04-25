contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
uint256 stor3;
uint256 stor4;

function _fallback() {
    require address(code.data[8014 len 32])
    stor0 = address(code.data[8014 len 32])
    bool(stor1.length) = 0
    stor1.length.field_1 = 26
    stor1.length.field_8 = 'SwissCryptoExchangeCompany' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 5
    stor2.length.field_8 = '1.0.1' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = 101
    stor4 = block.timestamp
    return code.data[579 len 7435]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address managerAddress;
array of uint256 name;
array of uint256 version;
uint256 identifier;
uint256 createdAt;
address stor5;
address stor6;
address stor7;
address stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint8 stor13;
uint8 stor13; offset 8
uint256 stor13; offset 8

function active() {
    return bool(uint8(stor0.field_160))
}

function name() {
    return name[0 len name.length]
}

function manager() {
    return managerAddress
}

function version() {
    return version[0 len version.length]
}

function identifier() {
    return identifier
}

function createdAt() {
    return createdAt
}

function currentSale() {
    return stor5, stor6, stor7, stor8, stor9, stor10, stor11, stor12, bool(uint8(stor13.field_0)), bool(uint8(stor13.field_8))
}

function activate() {
    require msg.sender == managerAddress
    require managerAddress
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
    emit ActivatedContract(block.timestamp);
}

function deactivate() {
    require msg.sender == managerAddress
    require managerAddress
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
    emit DeactivatedContract(block.timestamp);
}

function token() {
    require ext_code.size(managerAddress)
    call managerAddress.0xd2b73cea with:
         gas gas_remaining - 710 wei
        args 1
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function tokenAddress() {
    require ext_code.size(managerAddress)
    call managerAddress.0xd2b73cea with:
         gas gas_remaining - 710 wei
        args 1
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function finalizeSale() {
    require uint8(stor0.field_160)
    require msg.sender == stor5
    require uint8(stor13.field_8)
    require uint8(stor13.field_0)
    require stor11 == stor12
    call stor6 with:
       value stor10 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit SaleCompleted(stor10, stor11, stor6);
    Mask(248, 0, stor13.field_8) = 0
}

function isShareholder(address arg1) {
    require ext_code.size(managerAddress)
    call managerAddress.0xd2b73cea with:
         gas gas_remaining - 710 wei
        args 1
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    if ext_call.return_data[0] <= 0:
        return (ext_call.return_data[0] > 0)
    return arg1 != this.address
}

function getSharesPercentage(address arg1) {
    require ext_code.size(managerAddress)
    call managerAddress.0xd2b73cea with:
         gas gas_remaining - 710 wei
        args 1
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(managerAddress)
    call managerAddress.0xd2b73cea with:
         gas gas_remaining - 710 wei
        args 1
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    if not ext_call.return_data[0]:
        if ext_call.return_data[0]:
            return (0 / ext_call.return_data[0])
    else:
        if ext_call.return_data[0]:
            if 100 * ext_call.return_data[0] / ext_call.return_data[0] == 100:
                if ext_call.return_data[0]:
                    return (100 * ext_call.return_data[0] / ext_call.return_data[0])
    revert
}

function isMajorityShareholder(address arg1) {
    require ext_code.size(managerAddress)
    call managerAddress.0xd2b73cea with:
         gas gas_remaining - 710 wei
        args 1
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(managerAddress)
    call managerAddress.0xd2b73cea with:
         gas gas_remaining - 710 wei
        args 1
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    if not ext_call.return_data[0]:
        if ext_call.return_data[0]:
            return (0 / ext_call.return_data[0] > 50)
    else:
        if ext_call.return_data[0]:
            if 100 * ext_call.return_data[0] / ext_call.return_data[0] == 100:
                if ext_call.return_data[0]:
                    return (100 * ext_call.return_data[0] / ext_call.return_data[0] > 50)
    revert
}

function abortSale() {
    require uint8(stor0.field_160)
    require msg.sender == stor5
    require uint8(stor13.field_8)
    require not uint8(stor13.field_0)
    call stor7 with:
       value stor10 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(managerAddress)
    call managerAddress.0xd2b73cea with:
         gas gas_remaining - 710 wei
        args 1
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x23b872dd with:
         gas gas_remaining - 710 wei
        args stor7, address(this.address), stor11
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(managerAddress)
    call managerAddress.0xd2b73cea with:
         gas gas_remaining - 710 wei
        args 1
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x23b872dd with:
         gas gas_remaining - 710 wei
        args address(this.address), stor8, stor12
    require ext_call.success
    require ext_call.return_data[0]
    emit SaleAborted(block.timestamp);
    Mask(248, 0, stor13.field_8) = 0
}

function initializeNewSale(uint256 arg1, uint256 arg2, address arg3, address arg4) {
    require uint8(stor0.field_160)
    require ext_code.size(managerAddress)
    call managerAddress.0xd2b73cea with:
         gas gas_remaining - 710 wei
        args 1
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(managerAddress)
    call managerAddress.0xd2b73cea with:
         gas gas_remaining - 710 wei
        args 1
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x70a08231 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    if not ext_call.return_data[0]:
        require 0 / ext_call.return_data[0] > 50
    else:
        require 100 * ext_call.return_data[0] / ext_call.return_data[0] == 100
        require ext_call.return_data[0]
        require 100 * ext_call.return_data[0] / ext_call.return_data[0] > 50
    require not uint8(stor13.field_8)
    require arg1 > 0
    require arg2 > 0
    require arg3
    require arg4
    require ext_code.size(managerAddress)
    call managerAddress.0xd2b73cea with:
         gas gas_remaining - 710 wei
        args 1
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x70a08231 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0] >= arg2
    stor5 = msg.sender
    stor9 = arg1
    stor12 = arg2
    stor6 = arg3
    stor7 = arg4
    stor8 = msg.sender
    stor10 = 0
    stor11 = 0
    uint8(stor13.field_0) = 0
    Mask(248, 0, stor13.field_8) = 1
    require ext_code.size(managerAddress)
    call managerAddress.0xd2b73cea with:
         gas gas_remaining - 710 wei
        args 1
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), arg2
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(managerAddress)
    call managerAddress.0xd2b73cea with:
         gas gas_remaining - 710 wei
        args 1
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(managerAddress)
    call managerAddress.0xd2b73cea with:
         gas gas_remaining - 710 wei
        args 1
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x70a08231 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    if not ext_call.return_data[0]:
        require 0 / ext_call.return_data[0] > 50
    else:
        require 100 * ext_call.return_data[0] / ext_call.return_data[0] == 100
        require ext_call.return_data[0]
        require 100 * ext_call.return_data[0] / ext_call.return_data[0] > 50
}

function _fallback() payable {
    require uint8(stor0.field_160)
    require uint8(stor13.field_8)
    require msg.sender == stor7
    require msg.value > 0
    if not msg.value:
        require stor11 >= stor11
        if stor11 <= stor12:
            require stor9
            require 0 / stor9 <= msg.value
            require msg.value - (0 / stor9) <= msg.value
            require stor11 >= stor11
            require stor10 + (0 / stor9) >= stor10
            stor10 += 0 / stor9
            if stor11 == stor12:
                uint8(stor13.field_0) = 1
                emit SaleEnded(block.timestamp);
            require ext_code.size(managerAddress)
            call managerAddress.0xd2b73cea with:
                 gas gas_remaining - 710 wei
                args 1
            require ext_call.success
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args stor7, 0
            require ext_call.success
            require ext_call.return_data[0]
            if msg.value - (0 / stor9) > 0:
                call stor7 with:
                   value msg.value - (0 / stor9) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            emit ProcessedInvestment(0 / stor9, 0, stor7);
        else:
            require stor11 >= stor11
            require stor12 <= stor11
            if not stor11 - stor12:
                require stor9
                require 0 / stor9 <= msg.value
                require stor11 <= stor12
                require stor12 >= stor11
                stor11 = stor12
                require stor10 + msg.value - (0 / stor9) >= stor10
                stor10 = stor10 + msg.value - (0 / stor9)
                if stor11 == stor12:
                    uint8(stor13.field_0) = 1
                    emit SaleEnded(block.timestamp);
                require ext_code.size(managerAddress)
                call managerAddress.0xd2b73cea with:
                     gas gas_remaining - 710 wei
                    args 1
                require ext_call.success
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args stor7, stor12 - stor11
                require ext_call.success
                require ext_call.return_data[0]
                if 0 / stor9 > 0:
                    call stor7 with:
                       value 0 / stor9 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                emit ProcessedInvestment(msg.value - (0 / stor9), stor12 - stor11, stor7);
            else:
                require stor11 - stor12
                require (10^18 * stor11) - (10^18 * stor12) / stor11 - stor12 == 10^18
                require stor9
                require (10^18 * stor11) - (10^18 * stor12) / stor9 <= msg.value
                require stor11 <= stor12
                require stor12 >= stor11
                stor11 = stor12
                require stor10 + msg.value - ((10^18 * stor11) - (10^18 * stor12) / stor9) >= stor10
                stor10 = stor10 + msg.value - ((10^18 * stor11) - (10^18 * stor12) / stor9)
                if stor11 == stor12:
                    uint8(stor13.field_0) = 1
                    emit SaleEnded(block.timestamp);
                require ext_code.size(managerAddress)
                call managerAddress.0xd2b73cea with:
                     gas gas_remaining - 710 wei
                    args 1
                require ext_call.success
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args stor7, stor12 - stor11
                require ext_call.success
                require ext_call.return_data[0]
                if (10^18 * stor11) - (10^18 * stor12) / stor9 > 0:
                    call stor7 with:
                       value (10^18 * stor11) - (10^18 * stor12) / stor9 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                emit ProcessedInvestment(msg.value - ((10^18 * stor11) - (10^18 * stor12) / stor9), stor12 - stor11, stor7);
    else:
        require msg.value
        require msg.value * stor9 / msg.value == stor9
        require stor11 + (msg.value * stor9 / 10^18) >= stor11
        if stor11 + (msg.value * stor9 / 10^18) <= stor12:
            if not msg.value * stor9 / 10^18:
                require stor9
                require 0 / stor9 <= msg.value
                require msg.value - (0 / stor9) <= msg.value
                require stor11 + (msg.value * stor9 / 10^18) >= stor11
                stor11 += msg.value * stor9 / 10^18
                require stor10 + (0 / stor9) >= stor10
                stor10 += 0 / stor9
                if stor11 == stor12:
                    uint8(stor13.field_0) = 1
                    emit SaleEnded(block.timestamp);
                require ext_code.size(managerAddress)
                call managerAddress.0xd2b73cea with:
                     gas gas_remaining - 710 wei
                    args 1
                require ext_call.success
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args stor7, msg.value * stor9 / 10^18
                require ext_call.success
                require ext_call.return_data[0]
                if msg.value - (0 / stor9) > 0:
                    call stor7 with:
                       value msg.value - (0 / stor9) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                emit ProcessedInvestment(0 / stor9, msg.value * stor9 / 10^18, stor7);
            else:
                require msg.value * stor9 / 10^18
                require 10^18 * msg.value * stor9 / 10^18 / msg.value * stor9 / 10^18 == 10^18
                require stor9
                require 10^18 * msg.value * stor9 / 10^18 / stor9 <= msg.value
                require msg.value - (10^18 * msg.value * stor9 / 10^18 / stor9) <= msg.value
                require stor11 + (msg.value * stor9 / 10^18) >= stor11
                stor11 += msg.value * stor9 / 10^18
                require stor10 + (10^18 * msg.value * stor9 / 10^18 / stor9) >= stor10
                stor10 += 10^18 * msg.value * stor9 / 10^18 / stor9
                if stor11 == stor12:
                    uint8(stor13.field_0) = 1
                    emit SaleEnded(block.timestamp);
                require ext_code.size(managerAddress)
                call managerAddress.0xd2b73cea with:
                     gas gas_remaining - 710 wei
                    args 1
                require ext_call.success
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args stor7, msg.value * stor9 / 10^18
                require ext_call.success
                require ext_call.return_data[0]
                if msg.value - (10^18 * msg.value * stor9 / 10^18 / stor9) > 0:
                    call stor7 with:
                       value msg.value - (10^18 * msg.value * stor9 / 10^18 / stor9) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                emit ProcessedInvestment(10^18 * msg.value * stor9 / 10^18 / stor9, msg.value * stor9 / 10^18, stor7);
        else:
            require stor11 + (msg.value * stor9 / 10^18) >= stor11
            require stor12 <= stor11 + (msg.value * stor9 / 10^18)
            if not stor11 + (msg.value * stor9 / 10^18) - stor12:
                require stor9
                require 0 / stor9 <= msg.value
                require stor11 <= stor12
                require stor12 >= stor11
                stor11 = stor12
                require stor10 + msg.value - (0 / stor9) >= stor10
                stor10 = stor10 + msg.value - (0 / stor9)
                if stor11 == stor12:
                    uint8(stor13.field_0) = 1
                    emit SaleEnded(block.timestamp);
                require ext_code.size(managerAddress)
                call managerAddress.0xd2b73cea with:
                     gas gas_remaining - 710 wei
                    args 1
                require ext_call.success
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args stor7, stor12 - stor11
                require ext_call.success
                require ext_call.return_data[0]
                if 0 / stor9 > 0:
                    call stor7 with:
                       value 0 / stor9 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                emit ProcessedInvestment(msg.value - (0 / stor9), stor12 - stor11, stor7);
            else:
                require stor11 + (msg.value * stor9 / 10^18) - stor12
                require (10^18 * stor11) + (10^18 * msg.value * stor9 / 10^18) - (10^18 * stor12) / stor11 + (msg.value * stor9 / 10^18) - stor12 == 10^18
                require stor9
                require (10^18 * stor11) + (10^18 * msg.value * stor9 / 10^18) - (10^18 * stor12) / stor9 <= msg.value
                require stor11 <= stor12
                require stor12 >= stor11
                stor11 = stor12
                require stor10 + msg.value - ((10^18 * stor11) + (10^18 * msg.value * stor9 / 10^18) - (10^18 * stor12) / stor9) >= stor10
                stor10 = stor10 + msg.value - ((10^18 * stor11) + (10^18 * msg.value * stor9 / 10^18) - (10^18 * stor12) / stor9)
                if stor11 == stor12:
                    uint8(stor13.field_0) = 1
                    emit SaleEnded(block.timestamp);
                require ext_code.size(managerAddress)
                call managerAddress.0xd2b73cea with:
                     gas gas_remaining - 710 wei
                    args 1
                require ext_call.success
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args stor7, stor12 - stor11
                require ext_call.success
                require ext_call.return_data[0]
                if (10^18 * stor11) + (10^18 * msg.value * stor9 / 10^18) - (10^18 * stor12) / stor9 > 0:
                    call stor7 with:
                       value (10^18 * stor11) + (10^18 * msg.value * stor9 / 10^18) - (10^18 * stor12) / stor9 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                emit ProcessedInvestment(msg.value - ((10^18 * stor11) + (10^18 * msg.value * stor9 / 10^18) - (10^18 * stor12) / stor9), stor12 - stor11, stor7);
}



}
