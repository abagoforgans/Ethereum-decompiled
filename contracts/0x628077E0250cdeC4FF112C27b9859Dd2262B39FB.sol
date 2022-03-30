contract main {


// =======================  Init code  ======================


uint256 stor0;
uint16 stor1;
address stor1; offset 32
uint128 stor2;
uint256 stor3;
uint16 stor4; offset 160
address stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
address stor8;
mapping of struct stor9;
array of address stor10;
uint16 stor11;

function _fallback() payable {
    uint16(stor4.field_160) = 0
    stor5 = 0
    stor6 = 0
    stor7 = 0
    stor8 = 0
    stor11 = 0
    require not msg.value
    mem[96 len -5911] = code.data[6671 len -5911]
    _6 = mem[224]
    require mem[128]
    stor0 = mem[128]
    stor2 = mem[176 len 16]
    require mem[192] >= block.timestamp - 900
    stor3 = mem[192]
    require mem[286 len 2] <= 20
    address(stor4.field_0) = mem[108 len 20]
    uint16(stor1.field_0) = mem[286 len 2]
    address(stor1.field_32) = msg.sender
    require not uint8(stor9[address(msg.sender)].field_272)
    mem[64] = -5687
    mem[-5815] = 0
    mem[-5783] = 0
    mem[-5751] = 0
    mem[-5719] = 1
    mem[32] = 9
    stor9[address(msg.sender)].field_0 = 0
    uint8(stor9[address(msg.sender)].field_256) = 0
    uint8(stor9[address(msg.sender)].field_264) = 0
    Mask(240, 0, stor9[address(msg.sender)].field_272) = 1
    Mask(232, 0, stor9[address(msg.sender)].field_280) = 0
    Mask(232, 0, stor9[address(msg.sender)].field_280) = 0
    stor10.length++
    if not stor10.length > stor10.length + 1:
        mem[0] = 10
        address(stor10[stor10.length]) = msg.sender
        _44 = mem[mem[224] + 96]
        idx = 0
        while uint16(idx) < _44:
            require uint16(idx) < mem[_6 + 96]
            _46 = mem[(32 * uint16(idx)) + _6 + 128]
            mem[0] = mem[(32 * uint16(idx)) + _6 + 140 len 20]
            mem[32] = 9
            require not uint8(stor9[mem[(32 * uint16(idx)) + _6 + 140 len 20]].field_272)
            _48 = mem[64]
            mem[64] = mem[64] + 128
            mem[_48] = 0
            mem[_48 + 32] = 0
            mem[_48 + 64] = 0
            mem[_48 + 96] = 1
            mem[32] = 9
            stor9[address(_46)].field_0 = 0
            uint8(stor9[address(_46)].field_256) = 0
            uint8(stor9[address(_46)].field_264) = 0
            Mask(240, 0, stor9[address(_46)].field_272) = 1
            Mask(232, 0, stor9[address(_46)].field_280) = 0
            Mask(232, 0, stor9[address(_46)].field_280) = 0
            stor10.length++
            if not stor10.length <= stor10.length + 1:
                s = stor10.length + sha3(10) + 1
                while sha3(10) + stor10.length > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            mem[0] = 10
            address(stor10[stor10.length]) = address(_46)
            idx = idx + 1
            continue 
    else:
        idx = stor10.length + 1
        while stor10.length > idx:
            uint256(stor10[idx]) = 0
            idx = idx + 1
            continue 
        mem[0] = 10
        address(stor10[stor10.length]) = msg.sender
        _71 = mem[mem[224] + 96]
        idx = 0
        while uint16(idx) < _71:
            require uint16(idx) < mem[_6 + 96]
            _73 = mem[(32 * uint16(idx)) + _6 + 128]
            mem[0] = mem[(32 * uint16(idx)) + _6 + 140 len 20]
            mem[32] = 9
            require not uint8(stor9[mem[(32 * uint16(idx)) + _6 + 140 len 20]].field_272)
            _75 = mem[64]
            mem[64] = mem[64] + 128
            mem[_75] = 0
            mem[_75 + 32] = 0
            mem[_75 + 64] = 0
            mem[_75 + 96] = 1
            mem[32] = 9
            stor9[address(_73)].field_0 = 0
            uint8(stor9[address(_73)].field_256) = 0
            uint8(stor9[address(_73)].field_264) = 0
            Mask(240, 0, stor9[address(_73)].field_272) = 1
            Mask(232, 0, stor9[address(_73)].field_280) = 0
            Mask(232, 0, stor9[address(_73)].field_280) = 0
            stor10.length++
            mem[0] = 10
            if not stor10.length <= stor10.length + 1:
                s = stor10.length + sha3(10) + 1
                while sha3(10) + stor10.length > s:
                    stor[s] = 0
                    _71 = mem[_6 + 96]
                    s = s + 1
                    continue 
            address(stor10[stor10.length]) = address(_73)
            _71 = mem[_6 + 96]
            idx = idx + 1
            continue 
    return code.data[760 len 5911]
}



// =====================  Runtime code  =====================


const CONTRACT_VERSION = 2


uint256 stor0;
uint16 stor1;
uint16 stor1; offset 16
address stor1;
address stor1; offset 32
uint128 stor2;
uint256 stor3;
uint8 stor4; offset 160
uint8 stor4; offset 168
address tokenContractAddress;
uint256 stor5;
uint256 stor6;
uint256 stor7;
address stor8;
mapping of struct stor9;
array of address stor10;
uint8 stor11;
uint8 stor11; offset 8

function tokenContract() {
    return tokenContractAddress
}

function emergencyWithdrawal() {
    require address(stor1.field_32) == msg.sender
    require uint8(stor11.field_8)
    if not tokenContractAddress:
        emit LogEmergencyWithdrawalPerformed(eth.balance(this.address));
        selfdestruct(address(stor1.field_32))
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    emit LogEmergencyWithdrawalPerformed(ext_call.return_data[0]);
    if not tokenContractAddress:
        selfdestruct(address(stor1.field_32))
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xa9059cbb with:
         gas gas_remaining - 50 wei
        args address(stor1.field_0), ext_call.return_data[0]
    require ext_call.success
    selfdestruct(address(stor1.field_32))
}

function _fallback() payable {
    revert
}

function enableEscapeHatch() {
    require 0x1df62f291b2e969fb0849d99d9ce41e2f137006e == msg.sender
    uint8(stor11.field_0) = 1
    emit LogEscapeHatchEnabled()
}

function activateEscapeHatch() {
    require address(stor1.field_32) == msg.sender
    require uint8(stor11.field_0)
    uint8(stor11.field_8) = 1
    emit LogEscapeHatchActivated()
}

function getContractNetBalance() {
    if not tokenContractAddress:
        return (eth.balance(this.address) - stor6)
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    return (ext_call.return_data[0] - stor6)
}

function getParticipantBalance(address arg1) {
    require stor9[address(msg.sender)].field_272
    if not stor9[address(arg1)].field_256:
        return (stor5 + stor9[address(arg1)].field_0 - uint128(stor2 * uint16(stor1.field_16)))
    if uint8(stor4.field_160):
        return (stor5 + stor9[address(arg1)].field_0 - uint128(stor2 * uint16(stor1.field_16)))
    return (stor5 + stor9[address(arg1)].field_0 - (stor2 * stor10.length * uint16(-uint16(stor1.field_0) + 1000) / 1000) - uint128(stor2 * uint16(stor1.field_16)))
}

function endOfROSCARetrieveFees() {
    require address(stor1.field_32) == msg.sender
    require uint8(stor4.field_160)
    stor6 = 0
    if not tokenContractAddress:
        call msg.sender with:
           value stor6 wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            emit LogFeesWithdrawal(stor6);
    else:
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0xa9059cbb with:
             gas gas_remaining - 50 wei
            args msg.sender, stor6
        require ext_call.success
        if ext_call.return_data[0]:
            emit LogFeesWithdrawal(stor6);
}

function bid(uint256 arg1) {
    require stor9[address(msg.sender)].field_272
    require not uint8(stor4.field_160)
    require not uint8(stor11.field_8)
    require not stor9[address(msg.sender)].field_264
    require uint16(stor1.field_16)
    require stor5 + stor9[address(msg.sender)].field_0 >= uint128(stor2 * uint16(stor1.field_16))
    require arg1 >= 65 * stor2 * stor10.length / 100
    if not stor8:
        if arg1 > stor2 * stor10.length:
            emit LogUnsuccessfulBid(msg.sender, arg1, stor7);
        else:
            stor7 = arg1
            stor8 = msg.sender
            emit LogNewLowestBid(arg1, msg.sender);
    else:
        if arg1 > 98 * stor7 / 100:
            emit LogUnsuccessfulBid(msg.sender, arg1, stor7);
        else:
            stor7 = arg1
            stor8 = msg.sender
            emit LogNewLowestBid(arg1, msg.sender);
}

function endOfROSCARetrieveSurplus() {
    require address(stor1.field_32) == msg.sender
    require uint8(stor4.field_160)
    require block.timestamp >= stor3 + stor0 + (stor10.length * stor0)
    require not uint8(stor4.field_168)
    uint8(stor4.field_168) = 1
    if not tokenContractAddress:
        call msg.sender with:
           value eth.balance(this.address) - stor6 wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            emit LogForepersonSurplusWithdrawal((eth.balance(this.address) - stor6));
        else:
            uint8(stor4.field_168) = 0
    else:
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0x70a08231 with:
             gas gas_remaining - 50 wei
            args this.address
        require ext_call.success
        if not tokenContractAddress:
            call msg.sender with:
               value ext_call.return_data[0] - stor6 wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                emit LogForepersonSurplusWithdrawal((ext_call.return_data[0] - stor6));
            else:
                uint8(stor4.field_168) = 0
        else:
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.0xa9059cbb with:
                 gas gas_remaining - 50 wei
                args msg.sender, ext_call.return_data[0] - stor6
            require ext_call.success
            if ext_call.return_data[0]:
                emit LogForepersonSurplusWithdrawal((ext_call.return_data[0] - stor6));
            else:
                uint8(stor4.field_168) = 0
}

function recalculateTotalFees() {
    s = 0
    s = 0
    s = 0
    idx = 0
    s = uint128(stor2 * uint16(stor1.field_16)) * stor10.length
    while uint16(idx) < stor10.length:
        mem[0] = stor10[uint16(idx)]
        mem[32] = 9
        if not stor9[stor10[uint16(idx)]].field_256:
            if stor9[stor10[uint16(idx)]].field_0 + stor5 >= uint128(stor2 * uint16(stor1.field_16)):
                s = uint128(stor2 * uint16(stor1.field_16))
                s = stor9[stor10[uint16(idx)]].field_0
                s = sha3(stor10[uint16(idx)], 9)
                idx = idx + 1
                s = s
                continue 
            s = uint128(stor2 * uint16(stor1.field_16))
            s = stor9[stor10[uint16(idx)]].field_0
            s = sha3(stor10[uint16(idx)], 9)
            idx = idx + 1
            s = s - uint128(stor2 * uint16(stor1.field_16)) + stor9[stor10[uint16(idx)]].field_0 + stor5
            continue 
        if stor9[stor10[uint16(idx)]].field_0 + stor5 >= (stor2 * stor10.length * uint16(-uint16(stor1.field_0) + 1000) / 1000) + uint128(stor2 * uint16(stor1.field_16)):
            s = (stor2 * stor10.length * uint16(-uint16(stor1.field_0) + 1000) / 1000) + uint128(stor2 * uint16(stor1.field_16))
            s = stor9[stor10[uint16(idx)]].field_0
            s = sha3(stor10[uint16(idx)], 9)
            idx = idx + 1
            s = s
            continue 
        s = (stor2 * stor10.length * uint16(-uint16(stor1.field_0) + 1000) / 1000) + uint128(stor2 * uint16(stor1.field_16))
        s = stor9[stor10[uint16(idx)]].field_0
        s = sha3(stor10[uint16(idx)], 9)
        idx = idx + 1
        s = s - (stor2 * stor10.length * uint16(-uint16(stor1.field_0) + 1000) / 1000) - uint128(stor2 * uint16(stor1.field_16)) + stor9[stor10[uint16(idx)]].field_0 + stor5
        continue 
    stor6 = s * uint16(stor1.field_0) / 1000
}

function contribute() payable {
    require stor9[address(msg.sender)].field_272
    require not uint8(stor4.field_160)
    require not uint8(stor11.field_8)
    if not tokenContractAddress:
        require msg.value
        if tokenContractAddress:
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.0x23b872dd with:
                 gas gas_remaining - 50 wei
                args msg.sender, address(this.address), msg.value
            require ext_call.success
            require ext_call.return_data[0]
        stor9[address(msg.sender)].field_0 += msg.value
        if stor9[address(msg.sender)].field_256:
            if stor9[address(msg.sender)].field_0 + stor5 - (stor10.length * stor2 * uint16(-uint16(stor1.field_0) + 1000) / 1000) >= uint128(stor2 * uint16(stor1.field_16)):
                stor9[address(msg.sender)].field_256 = 0
        emit LogContributionMade(msg.sender, msg.value);
    else:
        require msg.value <= 0
        if not tokenContractAddress:
            require msg.value
            if tokenContractAddress:
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0x23b872dd with:
                     gas gas_remaining - 50 wei
                    args msg.sender, address(this.address), msg.value
                require ext_call.success
                require ext_call.return_data[0]
            stor9[address(msg.sender)].field_0 += msg.value
            if stor9[address(msg.sender)].field_256:
                if stor9[address(msg.sender)].field_0 + stor5 - (stor10.length * stor2 * uint16(-uint16(stor1.field_0) + 1000) / 1000) >= uint128(stor2 * uint16(stor1.field_16)):
                    stor9[address(msg.sender)].field_256 = 0
            emit LogContributionMade(msg.sender, msg.value);
        else:
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.0xdd62ed3e with:
                 gas gas_remaining - 50 wei
                args msg.sender, this.address
            require ext_call.success
            require ext_call.return_data[0]
            if tokenContractAddress:
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0x23b872dd with:
                     gas gas_remaining - 50 wei
                    args msg.sender, address(this.address), ext_call.return_data[0]
                require ext_call.success
                require ext_call.return_data[0]
            stor9[address(msg.sender)].field_0 += ext_call.return_data[0]
            if stor9[address(msg.sender)].field_256:
                if stor9[address(msg.sender)].field_0 + stor5 - (stor10.length * stor2 * uint16(-uint16(stor1.field_0) + 1000) / 1000) >= uint128(stor2 * uint16(stor1.field_16)):
                    stor9[address(msg.sender)].field_256 = 0
            emit LogContributionMade(msg.sender, ext_call.return_data[0]);
}

function withdraw() {
    require stor9[address(msg.sender)].field_272
    require not uint8(stor11.field_8)
    if stor9[address(msg.sender)].field_256:
        require uint8(stor4.field_160)
    if stor9[address(msg.sender)].field_256:
        require stor2 * stor10.length * uint16(-uint16(stor1.field_0) + 1000) / 1000 < stor5 + stor9[address(msg.sender)].field_0
        if not tokenContractAddress:
            if eth.balance(this.address) - stor6 >= stor5 + stor9[address(msg.sender)].field_0 - (stor2 * stor10.length * uint16(-uint16(stor1.field_0) + 1000) / 1000):
                stor9[address(msg.sender)].field_0 = -stor5 + (stor2 * stor10.length * uint16(-uint16(stor1.field_0) + 1000) / 1000)
                if not tokenContractAddress:
                    call msg.sender with:
                       value stor5 + stor9[address(msg.sender)].field_0 - (stor2 * stor10.length * uint16(-uint16(stor1.field_0) + 1000) / 1000) wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
                        emit LogFundsWithdrawal(msg.sender, stor5 + stor9[address(msg.sender)].field_0 - (stor2 * stor10.length * uint16(-uint16(stor1.field_0) + 1000) / 1000));
                        return 1
                else:
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0xa9059cbb with:
                         gas gas_remaining - 50 wei
                        args msg.sender, stor5 + stor9[address(msg.sender)].field_0 - (stor2 * stor10.length * uint16(-uint16(stor1.field_0) + 1000) / 1000)
                    require ext_call.success
                    if ext_call.return_data[0]:
                        emit LogFundsWithdrawal(msg.sender, stor5 + stor9[address(msg.sender)].field_0 - (stor2 * stor10.length * uint16(-uint16(stor1.field_0) + 1000) / 1000));
                        return 1
                stor9[address(msg.sender)].field_0 = stor5 + (2 * stor9[address(msg.sender)].field_0) - (stor2 * stor10.length * uint16(-uint16(stor1.field_0) + 1000) / 1000)
            else:
                emit LogCannotWithdrawFully((stor5 + stor9[address(msg.sender)].field_0 - (stor2 * stor10.length * uint16(-uint16(stor1.field_0) + 1000) / 1000)));
                stor9[address(msg.sender)].field_0 = stor9[address(msg.sender)].field_0 - eth.balance(this.address) + stor6
                if not tokenContractAddress:
                    call msg.sender with:
                       value eth.balance(this.address) - stor6 wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
                        emit LogFundsWithdrawal(msg.sender, eth.balance(this.address) - stor6);
                        return 1
                else:
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0xa9059cbb with:
                         gas gas_remaining - 50 wei
                        args msg.sender, eth.balance(this.address) - stor6
                    require ext_call.success
                    if ext_call.return_data[0]:
                        emit LogFundsWithdrawal(msg.sender, eth.balance(this.address) - stor6);
                        return 1
                stor9[address(msg.sender)].field_0 = eth.balance(this.address) - stor6 + stor9[address(msg.sender)].field_0
        else:
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.0x70a08231 with:
                 gas gas_remaining - 50 wei
                args this.address
            require ext_call.success
            if ext_call.return_data[0] - stor6 >= stor5 + stor9[address(msg.sender)].field_0 - (stor2 * stor10.length * uint16(-uint16(stor1.field_0) + 1000) / 1000):
                stor9[address(msg.sender)].field_0 = -stor5 + (stor2 * stor10.length * uint16(-uint16(stor1.field_0) + 1000) / 1000)
                if not tokenContractAddress:
                    call msg.sender with:
                       value stor5 + stor9[address(msg.sender)].field_0 - (stor2 * stor10.length * uint16(-uint16(stor1.field_0) + 1000) / 1000) wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
                        emit LogFundsWithdrawal(msg.sender, stor5 + stor9[address(msg.sender)].field_0 - (stor2 * stor10.length * uint16(-uint16(stor1.field_0) + 1000) / 1000));
                        return 1
                else:
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0xa9059cbb with:
                         gas gas_remaining - 50 wei
                        args msg.sender, stor5 + stor9[address(msg.sender)].field_0 - (stor2 * stor10.length * uint16(-uint16(stor1.field_0) + 1000) / 1000)
                    require ext_call.success
                    if ext_call.return_data[0]:
                        emit LogFundsWithdrawal(msg.sender, stor5 + stor9[address(msg.sender)].field_0 - (stor2 * stor10.length * uint16(-uint16(stor1.field_0) + 1000) / 1000));
                        return 1
                stor9[address(msg.sender)].field_0 = stor5 + (2 * stor9[address(msg.sender)].field_0) - (stor2 * stor10.length * uint16(-uint16(stor1.field_0) + 1000) / 1000)
            else:
                emit LogCannotWithdrawFully((stor5 + stor9[address(msg.sender)].field_0 - (stor2 * stor10.length * uint16(-uint16(stor1.field_0) + 1000) / 1000)));
                stor9[address(msg.sender)].field_0 = stor9[address(msg.sender)].field_0 - ext_call.return_data[0] + stor6
                if not tokenContractAddress:
                    call msg.sender with:
                       value ext_call.return_data[0] - stor6 wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
                        emit LogFundsWithdrawal(msg.sender, ext_call.return_data[0] - stor6);
                        return 1
                else:
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0xa9059cbb with:
                         gas gas_remaining - 50 wei
                        args msg.sender, ext_call.return_data[0] - stor6
                    require ext_call.success
                    if ext_call.return_data[0]:
                        emit LogFundsWithdrawal(msg.sender, ext_call.return_data[0] - stor6);
                        return 1
                stor9[address(msg.sender)].field_0 = ext_call.return_data[0] - stor6 + stor9[address(msg.sender)].field_0
    else:
        require uint128(stor2 * uint16(stor1.field_16)) < stor5 + stor9[address(msg.sender)].field_0
        if not tokenContractAddress:
            if eth.balance(this.address) - stor6 >= stor5 + stor9[address(msg.sender)].field_0 - uint128(stor2 * uint16(stor1.field_16)):
                stor9[address(msg.sender)].field_0 = -stor5 + uint128(stor2 * uint16(stor1.field_16))
                if not tokenContractAddress:
                    call msg.sender with:
                       value stor5 + stor9[address(msg.sender)].field_0 - uint128(stor2 * uint16(stor1.field_16)) wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
                        emit LogFundsWithdrawal(msg.sender, stor5 + stor9[address(msg.sender)].field_0 - uint128(stor2 * uint16(stor1.field_16)));
                        return 1
                else:
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0xa9059cbb with:
                         gas gas_remaining - 50 wei
                        args msg.sender, stor5 + stor9[address(msg.sender)].field_0 - uint128(stor2 * uint16(stor1.field_16))
                    require ext_call.success
                    if ext_call.return_data[0]:
                        emit LogFundsWithdrawal(msg.sender, stor5 + stor9[address(msg.sender)].field_0 - uint128(stor2 * uint16(stor1.field_16)));
                        return 1
                stor9[address(msg.sender)].field_0 = stor5 + (2 * stor9[address(msg.sender)].field_0) - uint128(stor2 * uint16(stor1.field_16))
            else:
                emit LogCannotWithdrawFully((stor5 + stor9[address(msg.sender)].field_0 - uint128(stor2 * uint16(stor1.field_16))));
                stor9[address(msg.sender)].field_0 = stor9[address(msg.sender)].field_0 - eth.balance(this.address) + stor6
                if not tokenContractAddress:
                    call msg.sender with:
                       value eth.balance(this.address) - stor6 wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
                        emit LogFundsWithdrawal(msg.sender, eth.balance(this.address) - stor6);
                        return 1
                else:
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0xa9059cbb with:
                         gas gas_remaining - 50 wei
                        args msg.sender, eth.balance(this.address) - stor6
                    require ext_call.success
                    if ext_call.return_data[0]:
                        emit LogFundsWithdrawal(msg.sender, eth.balance(this.address) - stor6);
                        return 1
                stor9[address(msg.sender)].field_0 = eth.balance(this.address) - stor6 + stor9[address(msg.sender)].field_0
        else:
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.0x70a08231 with:
                 gas gas_remaining - 50 wei
                args this.address
            require ext_call.success
            if ext_call.return_data[0] - stor6 >= stor5 + stor9[address(msg.sender)].field_0 - uint128(stor2 * uint16(stor1.field_16)):
                stor9[address(msg.sender)].field_0 = -stor5 + uint128(stor2 * uint16(stor1.field_16))
                if not tokenContractAddress:
                    call msg.sender with:
                       value stor5 + stor9[address(msg.sender)].field_0 - uint128(stor2 * uint16(stor1.field_16)) wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
                        emit LogFundsWithdrawal(msg.sender, stor5 + stor9[address(msg.sender)].field_0 - uint128(stor2 * uint16(stor1.field_16)));
                        return 1
                else:
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0xa9059cbb with:
                         gas gas_remaining - 50 wei
                        args msg.sender, stor5 + stor9[address(msg.sender)].field_0 - uint128(stor2 * uint16(stor1.field_16))
                    require ext_call.success
                    if ext_call.return_data[0]:
                        emit LogFundsWithdrawal(msg.sender, stor5 + stor9[address(msg.sender)].field_0 - uint128(stor2 * uint16(stor1.field_16)));
                        return 1
                stor9[address(msg.sender)].field_0 = stor5 + (2 * stor9[address(msg.sender)].field_0) - uint128(stor2 * uint16(stor1.field_16))
            else:
                emit LogCannotWithdrawFully((stor5 + stor9[address(msg.sender)].field_0 - uint128(stor2 * uint16(stor1.field_16))));
                stor9[address(msg.sender)].field_0 = stor9[address(msg.sender)].field_0 - ext_call.return_data[0] + stor6
                if not tokenContractAddress:
                    call msg.sender with:
                       value ext_call.return_data[0] - stor6 wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
                        emit LogFundsWithdrawal(msg.sender, ext_call.return_data[0] - stor6);
                        return 1
                else:
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0xa9059cbb with:
                         gas gas_remaining - 50 wei
                        args msg.sender, ext_call.return_data[0] - stor6
                    require ext_call.success
                    if ext_call.return_data[0]:
                        emit LogFundsWithdrawal(msg.sender, ext_call.return_data[0] - stor6);
                        return 1
                stor9[address(msg.sender)].field_0 = ext_call.return_data[0] - stor6 + stor9[address(msg.sender)].field_0
    return 0
}

function startRound() {
    require not uint8(stor4.field_160)
    require block.timestamp >= stor3 + (uint16(stor1.field_16) * stor0)
    if uint16(stor1.field_16):
        if stor8:
            idx = 0
            while uint16(idx) <= uint16(stor10.length - uint16(stor1.field_16)):
                require uint16(idx) < stor10.length
                mem[0] = 10
                if stor10[uint16(idx)] != stor8:
                    idx = idx + 1
                    continue 
                require uint16(stor10.length - uint16(stor1.field_16)) < stor10.length
                require uint16(idx) < stor10.length
                stor10[uint16(idx)] = stor10[uint16(stor10.length - uint16(stor1.field_16))]
                require uint16(stor10.length - uint16(stor1.field_16)) < stor10.length
                stor10[uint16(stor10.length - uint16(stor1.field_16))] = stor8
                require stor10.length
                stor5 += (stor10.length * stor2 * uint16(-uint16(stor1.field_0) + 1000)) - (stor7 * uint16(-uint16(stor1.field_0) + 1000)) / 1000 / stor10.length
                stor9[stor8].field_0 += stor7 * uint16(-uint16(stor1.field_0) + 1000) / 1000
                stor9[stor8].field_264 = 1
                emit LogRoundFundsReleased(stor8, stor7);
                s = 0
                s = 0
                s = 0
                idx = 0
                s = uint128(stor2 * uint16(stor1.field_16)) * stor10.length
                while uint16(idx) < stor10.length:
                    mem[0] = stor10[uint16(idx)]
                    mem[32] = 9
                    if not stor9[stor10[uint16(idx)]].field_256:
                        if stor9[stor10[uint16(idx)]].field_0 + stor5 >= uint128(stor2 * uint16(stor1.field_16)):
                            s = uint128(stor2 * uint16(stor1.field_16))
                            s = stor9[stor10[uint16(idx)]].field_0
                            s = sha3(stor10[uint16(idx)], 9)
                            idx = idx + 1
                            s = s
                            continue 
                        s = uint128(stor2 * uint16(stor1.field_16))
                        s = stor9[stor10[uint16(idx)]].field_0
                        s = sha3(stor10[uint16(idx)], 9)
                        idx = idx + 1
                        s = s - uint128(stor2 * uint16(stor1.field_16)) + stor9[stor10[uint16(idx)]].field_0 + stor5
                        continue 
                    if stor9[stor10[uint16(idx)]].field_0 + stor5 >= (stor2 * stor10.length * uint16(-uint16(stor1.field_0) + 1000) / 1000) + uint128(stor2 * uint16(stor1.field_16)):
                        s = (stor2 * stor10.length * uint16(-uint16(stor1.field_0) + 1000) / 1000) + uint128(stor2 * uint16(stor1.field_16))
                        s = stor9[stor10[uint16(idx)]].field_0
                        s = sha3(stor10[uint16(idx)], 9)
                        idx = idx + 1
                        s = s
                        continue 
                    s = (stor2 * stor10.length * uint16(-uint16(stor1.field_0) + 1000) / 1000) + uint128(stor2 * uint16(stor1.field_16))
                    s = stor9[stor10[uint16(idx)]].field_0
                    s = sha3(stor10[uint16(idx)], 9)
                    idx = idx + 1
                    s = s - (stor2 * stor10.length * uint16(-uint16(stor1.field_0) + 1000) / 1000) - uint128(stor2 * uint16(stor1.field_16)) + stor9[stor10[uint16(idx)]].field_0 + stor5
                    continue 
                stor6 = s * uint16(stor1.field_0) / 1000
                if uint16(stor1.field_16) >= stor10.length:
                    uint8(stor4.field_160) = 1
                    emit LogEndOfROSCA()
                else:
                    stor7 = 0
                    stor8 = 0
                    uint16(stor1.field_16) = uint16(uint16(stor1.field_16) + 1)
                    emit LogStartOfRound((0 or uint16(uint16(stor1.field_16) + 1)));
            require uint16(stor10.length - uint16(stor1.field_16)) < stor10.length
            require 0 < stor10.length
            stor10 = stor10[uint16(stor10.length - uint16(stor1.field_16))]
        else:
            require uint16(stor10.length + -uint16(stor1.field_16) + 1)
            s = 0
            s = 0
            idx = 0
            s = 0
            t = 0
            while uint16(idx) < uint16(stor10.length + -uint16(stor1.field_16) + 1):
                require uint16(stor10.length + -uint16(stor1.field_16) + 1)
                require (block.timestamp % uint16(stor10.length + -uint16(stor1.field_16) + 1)) + uint16(idx) % uint16(stor10.length + -uint16(stor1.field_16) + 1) < stor10.length
                mem[0] = stor10[(block.timestamp % uint16(stor10.length + -uint16(stor1.field_16) + 1)) + uint16(idx) % uint16(stor10.length + -uint16(stor1.field_16) + 1)]
                mem[32] = 9
                if stor9[stor10[(block.timestamp % uint16(stor10.length + -uint16(stor1.field_16) + 1)) + uint16(idx) % uint16(stor10.length + -uint16(stor1.field_16) + 1)]].field_264:
                    s = stor10[(block.timestamp % uint16(stor10.length + -uint16(stor1.field_16) + 1)) + uint16(idx) % uint16(stor10.length + -uint16(stor1.field_16) + 1)]
                    s = (block.timestamp % uint16(stor10.length + -uint16(stor1.field_16) + 1)) + uint16(idx) % uint16(stor10.length + -uint16(stor1.field_16) + 1)
                    idx = idx + 1
                    s = s
                    t = t
                    continue 
                mem[0] = stor10[(block.timestamp % uint16(stor10.length + -uint16(stor1.field_16) + 1)) + uint16(idx) % uint16(stor10.length + -uint16(stor1.field_16) + 1)]
                mem[32] = 9
                if stor5 + stor9[stor10[(block.timestamp % uint16(stor10.length + -uint16(stor1.field_16) + 1)) + uint16(idx) % uint16(stor10.length + -uint16(stor1.field_16) + 1)]].field_0 < uint128(stor2 * uint16(stor1.field_16)):
                    s = stor10[(block.timestamp % uint16(stor10.length + -uint16(stor1.field_16) + 1)) + uint16(idx) % uint16(stor10.length + -uint16(stor1.field_16) + 1)]
                    s = (block.timestamp % uint16(stor10.length + -uint16(stor1.field_16) + 1)) + uint16(idx) % uint16(stor10.length + -uint16(stor1.field_16) + 1)
                    idx = idx + 1
                    s = (block.timestamp % uint16(stor10.length + -uint16(stor1.field_16) + 1)) + uint16(idx) % uint16(stor10.length + -uint16(stor1.field_16) + 1)
                    t = stor10[(block.timestamp % uint16(stor10.length + -uint16(stor1.field_16) + 1)) + uint16(idx) % uint16(stor10.length + -uint16(stor1.field_16) + 1)]
                    continue 
                stor8 = stor10[(block.timestamp % uint16(stor10.length + -uint16(stor1.field_16) + 1)) + uint16(idx) % uint16(stor10.length + -uint16(stor1.field_16) + 1)]
                if stor8:
                    stor7 = stor2 * stor10.length
                    s = 0
                    while uint16(s) <= uint16(stor10.length - uint16(stor1.field_16)):
                        require uint16(s) < stor10.length
                        mem[0] = 10
                        if stor10[uint16(s)] != stor8:
                            s = s + 1
                            continue 
                        require uint16(stor10.length - uint16(stor1.field_16)) < stor10.length
                        require uint16(s) < stor10.length
                        stor10[uint16(s)] = stor10[uint16(stor10.length - uint16(stor1.field_16))]
                        require uint16(stor10.length - uint16(stor1.field_16)) < stor10.length
                        stor10[uint16(stor10.length - uint16(stor1.field_16))] = stor8
                        require stor10.length
                        stor5 += (stor10.length * stor2 * uint16(-uint16(stor1.field_0) + 1000)) - (stor7 * uint16(-uint16(stor1.field_0) + 1000)) / 1000 / stor10.length
                        stor9[stor8].field_0 += stor7 * uint16(-uint16(stor1.field_0) + 1000) / 1000
                        stor9[stor8].field_264 = 1
                        emit LogRoundFundsReleased(stor8, stor7);
                        s = 0
                        s = 0
                        s = 0
                        idx = 0
                        s = uint128(stor2 * uint16(stor1.field_16)) * stor10.length
                        while uint16(idx) < stor10.length:
                            mem[0] = stor10[uint16(idx)]
                            mem[32] = 9
                            if not stor9[stor10[uint16(idx)]].field_256:
                                if stor9[stor10[uint16(idx)]].field_0 + stor5 >= uint128(stor2 * uint16(stor1.field_16)):
                                    s = uint128(stor2 * uint16(stor1.field_16))
                                    s = stor9[stor10[uint16(idx)]].field_0
                                    s = sha3(stor10[uint16(idx)], 9)
                                    idx = idx + 1
                                    s = s
                                    continue 
                                s = uint128(stor2 * uint16(stor1.field_16))
                                s = stor9[stor10[uint16(idx)]].field_0
                                s = sha3(stor10[uint16(idx)], 9)
                                idx = idx + 1
                                s = s - uint128(stor2 * uint16(stor1.field_16)) + stor9[stor10[uint16(idx)]].field_0 + stor5
                                continue 
                            if stor9[stor10[uint16(idx)]].field_0 + stor5 >= (stor2 * stor10.length * uint16(-uint16(stor1.field_0) + 1000) / 1000) + uint128(stor2 * uint16(stor1.field_16)):
                                s = (stor2 * stor10.length * uint16(-uint16(stor1.field_0) + 1000) / 1000) + uint128(stor2 * uint16(stor1.field_16))
                                s = stor9[stor10[uint16(idx)]].field_0
                                s = sha3(stor10[uint16(idx)], 9)
                                idx = idx + 1
                                s = s
                                continue 
                            s = (stor2 * stor10.length * uint16(-uint16(stor1.field_0) + 1000) / 1000) + uint128(stor2 * uint16(stor1.field_16))
                            s = stor9[stor10[uint16(idx)]].field_0
                            s = sha3(stor10[uint16(idx)], 9)
                            idx = idx + 1
                            s = s - (stor2 * stor10.length * uint16(-uint16(stor1.field_0) + 1000) / 1000) - uint128(stor2 * uint16(stor1.field_16)) + stor9[stor10[uint16(idx)]].field_0 + stor5
                            continue 
                        stor6 = s * uint16(stor1.field_0) / 1000
                        if uint16(stor1.field_16) >= stor10.length:
                            uint8(stor4.field_160) = 1
                            emit LogEndOfROSCA()
                        else:
                            stor7 = 0
                            stor8 = 0
                            uint16(stor1.field_16) = uint16(uint16(stor1.field_16) + 1)
                            emit LogStartOfRound((0 or uint16(uint16(stor1.field_16) + 1)));
                else:
                    require address(t)
                    require not stor9[address(t)].field_264
                    stor8 = address(t)
                    stor9[address(t)].field_256 = 1
                    stor7 = stor2 * stor10.length
                    if stor8:
                        s = 0
                        while uint16(s) <= uint16(stor10.length - uint16(stor1.field_16)):
                            require uint16(s) < stor10.length
                            mem[0] = 10
                            if stor10[uint16(s)] != stor8:
                                s = s + 1
                                continue 
                            require uint16(stor10.length - uint16(stor1.field_16)) < stor10.length
                            require uint16(s) < stor10.length
                            stor10[uint16(s)] = stor10[uint16(stor10.length - uint16(stor1.field_16))]
                            require uint16(stor10.length - uint16(stor1.field_16)) < stor10.length
                            stor10[uint16(stor10.length - uint16(stor1.field_16))] = stor8
                            require stor10.length
                            stor5 += (stor10.length * stor2 * uint16(-uint16(stor1.field_0) + 1000)) - (stor7 * uint16(-uint16(stor1.field_0) + 1000)) / 1000 / stor10.length
                            stor9[stor8].field_0 += stor7 * uint16(-uint16(stor1.field_0) + 1000) / 1000
                            stor9[stor8].field_264 = 1
                            emit LogRoundFundsReleased(stor8, stor7);
                            s = 0
                            s = 0
                            s = 0
                            idx = 0
                            s = uint128(stor2 * uint16(stor1.field_16)) * stor10.length
                            while uint16(idx) < stor10.length:
                                mem[0] = stor10[uint16(idx)]
                                mem[32] = 9
                                if not stor9[stor10[uint16(idx)]].field_256:
                                    if stor9[stor10[uint16(idx)]].field_0 + stor5 >= uint128(stor2 * uint16(stor1.field_16)):
                                        s = uint128(stor2 * uint16(stor1.field_16))
                                        s = stor9[stor10[uint16(idx)]].field_0
                                        s = sha3(stor10[uint16(idx)], 9)
                                        idx = idx + 1
                                        s = s
                                        continue 
                                    s = uint128(stor2 * uint16(stor1.field_16))
                                    s = stor9[stor10[uint16(idx)]].field_0
                                    s = sha3(stor10[uint16(idx)], 9)
                                    idx = idx + 1
                                    s = s - uint128(stor2 * uint16(stor1.field_16)) + stor9[stor10[uint16(idx)]].field_0 + stor5
                                    continue 
                                if stor9[stor10[uint16(idx)]].field_0 + stor5 >= (stor2 * stor10.length * uint16(-uint16(stor1.field_0) + 1000) / 1000) + uint128(stor2 * uint16(stor1.field_16)):
                                    s = (stor2 * stor10.length * uint16(-uint16(stor1.field_0) + 1000) / 1000) + uint128(stor2 * uint16(stor1.field_16))
                                    s = stor9[stor10[uint16(idx)]].field_0
                                    s = sha3(stor10[uint16(idx)], 9)
                                    idx = idx + 1
                                    s = s
                                    continue 
                                s = (stor2 * stor10.length * uint16(-uint16(stor1.field_0) + 1000) / 1000) + uint128(stor2 * uint16(stor1.field_16))
                                s = stor9[stor10[uint16(idx)]].field_0
                                s = sha3(stor10[uint16(idx)], 9)
                                idx = idx + 1
                                s = s - (stor2 * stor10.length * uint16(-uint16(stor1.field_0) + 1000) / 1000) - uint128(stor2 * uint16(stor1.field_16)) + stor9[stor10[uint16(idx)]].field_0 + stor5
                                continue 
                            stor6 = s * uint16(stor1.field_0) / 1000
                            if uint16(stor1.field_16) >= stor10.length:
                                uint8(stor4.field_160) = 1
                                emit LogEndOfROSCA()
                            else:
                                stor7 = 0
                                stor8 = 0
                                uint16(stor1.field_16) = uint16(uint16(stor1.field_16) + 1)
                                emit LogStartOfRound((0 or uint16(uint16(stor1.field_16) + 1)));
                require uint16(stor10.length - uint16(stor1.field_16)) < stor10.length
                require (block.timestamp % uint16(stor10.length + -uint16(stor1.field_16) + 1)) + uint16(idx) % uint16(stor10.length + -uint16(stor1.field_16) + 1) < stor10.length
                stor10[(block.timestamp % uint16(stor10.length + -uint16(stor1.field_16) + 1)) + uint16(idx) % uint16(stor10.length + -uint16(stor1.field_16) + 1)] = stor10[uint16(stor10.length - uint16(stor1.field_16))]
                require uint16(stor10.length - uint16(stor1.field_16)) < stor10.length
                stor10[uint16(stor10.length - uint16(stor1.field_16))] = stor8
                require stor10.length
                stor5 += (stor10.length * stor2 * uint16(-uint16(stor1.field_0) + 1000)) - (stor7 * uint16(-uint16(stor1.field_0) + 1000)) / 1000 / stor10.length
                stor9[stor8].field_0 += stor7 * uint16(-uint16(stor1.field_0) + 1000) / 1000
                stor9[stor8].field_264 = 1
                emit LogRoundFundsReleased(stor8, stor7);
                s = 0
                s = 0
                s = 0
                idx = 0
                s = uint128(stor2 * uint16(stor1.field_16)) * stor10.length
                while uint16(idx) < stor10.length:
                    mem[0] = stor10[uint16(idx)]
                    mem[32] = 9
                    if not stor9[stor10[uint16(idx)]].field_256:
                        if stor9[stor10[uint16(idx)]].field_0 + stor5 >= uint128(stor2 * uint16(stor1.field_16)):
                            s = uint128(stor2 * uint16(stor1.field_16))
                            s = stor9[stor10[uint16(idx)]].field_0
                            s = sha3(stor10[uint16(idx)], 9)
                            idx = idx + 1
                            s = s
                            continue 
                        s = uint128(stor2 * uint16(stor1.field_16))
                        s = stor9[stor10[uint16(idx)]].field_0
                        s = sha3(stor10[uint16(idx)], 9)
                        idx = idx + 1
                        s = s - uint128(stor2 * uint16(stor1.field_16)) + stor9[stor10[uint16(idx)]].field_0 + stor5
                        continue 
                    if stor9[stor10[uint16(idx)]].field_0 + stor5 >= (stor2 * stor10.length * uint16(-uint16(stor1.field_0) + 1000) / 1000) + uint128(stor2 * uint16(stor1.field_16)):
                        s = (stor2 * stor10.length * uint16(-uint16(stor1.field_0) + 1000) / 1000) + uint128(stor2 * uint16(stor1.field_16))
                        s = stor9[stor10[uint16(idx)]].field_0
                        s = sha3(stor10[uint16(idx)], 9)
                        idx = idx + 1
                        s = s
                        continue 
                    s = (stor2 * stor10.length * uint16(-uint16(stor1.field_0) + 1000) / 1000) + uint128(stor2 * uint16(stor1.field_16))
                    s = stor9[stor10[uint16(idx)]].field_0
                    s = sha3(stor10[uint16(idx)], 9)
                    idx = idx + 1
                    s = s - (stor2 * stor10.length * uint16(-uint16(stor1.field_0) + 1000) / 1000) - uint128(stor2 * uint16(stor1.field_16)) + stor9[stor10[uint16(idx)]].field_0 + stor5
                    continue 
                stor6 = s * uint16(stor1.field_0) / 1000
                if uint16(stor1.field_16) >= stor10.length:
                    uint8(stor4.field_160) = 1
                    emit LogEndOfROSCA()
                else:
                    stor7 = 0
                    stor8 = 0
                    uint16(stor1.field_16) = uint16(uint16(stor1.field_16) + 1)
                    emit LogStartOfRound((0 or uint16(uint16(stor1.field_16) + 1)));
            if stor8:
                stor7 = stor2 * stor10.length
                idx = 0
                while uint16(idx) <= uint16(stor10.length - uint16(stor1.field_16)):
                    require uint16(idx) < stor10.length
                    mem[0] = 10
                    if stor10[uint16(idx)] != stor8:
                        idx = idx + 1
                        continue 
                    require uint16(stor10.length - uint16(stor1.field_16)) < stor10.length
                    require uint16(idx) < stor10.length
                    stor10[uint16(idx)] = stor10[uint16(stor10.length - uint16(stor1.field_16))]
                    require uint16(stor10.length - uint16(stor1.field_16)) < stor10.length
                    stor10[uint16(stor10.length - uint16(stor1.field_16))] = stor8
                    require stor10.length
                    stor5 += (stor10.length * stor2 * uint16(-uint16(stor1.field_0) + 1000)) - (stor7 * uint16(-uint16(stor1.field_0) + 1000)) / 1000 / stor10.length
                    stor9[stor8].field_0 += stor7 * uint16(-uint16(stor1.field_0) + 1000) / 1000
                    stor9[stor8].field_264 = 1
                    emit LogRoundFundsReleased(stor8, stor7);
                    s = 0
                    s = 0
                    s = 0
                    idx = 0
                    s = uint128(stor2 * uint16(stor1.field_16)) * stor10.length
                    while uint16(idx) < stor10.length:
                        mem[0] = stor10[uint16(idx)]
                        mem[32] = 9
                        if not stor9[stor10[uint16(idx)]].field_256:
                            if stor9[stor10[uint16(idx)]].field_0 + stor5 >= uint128(stor2 * uint16(stor1.field_16)):
                                s = uint128(stor2 * uint16(stor1.field_16))
                                s = stor9[stor10[uint16(idx)]].field_0
                                s = sha3(stor10[uint16(idx)], 9)
                                idx = idx + 1
                                s = s
                                continue 
                            s = uint128(stor2 * uint16(stor1.field_16))
                            s = stor9[stor10[uint16(idx)]].field_0
                            s = sha3(stor10[uint16(idx)], 9)
                            idx = idx + 1
                            s = s - uint128(stor2 * uint16(stor1.field_16)) + stor9[stor10[uint16(idx)]].field_0 + stor5
                            continue 
                        if stor9[stor10[uint16(idx)]].field_0 + stor5 >= (stor2 * stor10.length * uint16(-uint16(stor1.field_0) + 1000) / 1000) + uint128(stor2 * uint16(stor1.field_16)):
                            s = (stor2 * stor10.length * uint16(-uint16(stor1.field_0) + 1000) / 1000) + uint128(stor2 * uint16(stor1.field_16))
                            s = stor9[stor10[uint16(idx)]].field_0
                            s = sha3(stor10[uint16(idx)], 9)
                            idx = idx + 1
                            s = s
                            continue 
                        s = (stor2 * stor10.length * uint16(-uint16(stor1.field_0) + 1000) / 1000) + uint128(stor2 * uint16(stor1.field_16))
                        s = stor9[stor10[uint16(idx)]].field_0
                        s = sha3(stor10[uint16(idx)], 9)
                        idx = idx + 1
                        s = s - (stor2 * stor10.length * uint16(-uint16(stor1.field_0) + 1000) / 1000) - uint128(stor2 * uint16(stor1.field_16)) + stor9[stor10[uint16(idx)]].field_0 + stor5
                        continue 
                    stor6 = s * uint16(stor1.field_0) / 1000
                    if uint16(stor1.field_16) >= stor10.length:
                        uint8(stor4.field_160) = 1
                        emit LogEndOfROSCA()
                    else:
                        stor7 = 0
                        stor8 = 0
                        uint16(stor1.field_16) = uint16(uint16(stor1.field_16) + 1)
                        emit LogStartOfRound((0 or uint16(uint16(stor1.field_16) + 1)));
            else:
                require address(t)
                require not stor9[address(t)].field_264
                stor8 = address(t)
                stor9[address(t)].field_256 = 1
                stor7 = stor2 * stor10.length
                if stor8:
                    idx = 0
                    while uint16(idx) <= uint16(stor10.length - uint16(stor1.field_16)):
                        require uint16(idx) < stor10.length
                        mem[0] = 10
                        if stor10[uint16(idx)] != stor8:
                            idx = idx + 1
                            continue 
                        require uint16(stor10.length - uint16(stor1.field_16)) < stor10.length
                        require uint16(idx) < stor10.length
                        stor10[uint16(idx)] = stor10[uint16(stor10.length - uint16(stor1.field_16))]
                        require uint16(stor10.length - uint16(stor1.field_16)) < stor10.length
                        stor10[uint16(stor10.length - uint16(stor1.field_16))] = stor8
                        require stor10.length
                        stor5 += (stor10.length * stor2 * uint16(-uint16(stor1.field_0) + 1000)) - (stor7 * uint16(-uint16(stor1.field_0) + 1000)) / 1000 / stor10.length
                        stor9[stor8].field_0 += stor7 * uint16(-uint16(stor1.field_0) + 1000) / 1000
                        stor9[stor8].field_264 = 1
                        emit LogRoundFundsReleased(stor8, stor7);
                        s = 0
                        s = 0
                        s = 0
                        idx = 0
                        s = uint128(stor2 * uint16(stor1.field_16)) * stor10.length
                        while uint16(idx) < stor10.length:
                            mem[0] = stor10[uint16(idx)]
                            mem[32] = 9
                            if not stor9[stor10[uint16(idx)]].field_256:
                                if stor9[stor10[uint16(idx)]].field_0 + stor5 >= uint128(stor2 * uint16(stor1.field_16)):
                                    s = uint128(stor2 * uint16(stor1.field_16))
                                    s = stor9[stor10[uint16(idx)]].field_0
                                    s = sha3(stor10[uint16(idx)], 9)
                                    idx = idx + 1
                                    s = s
                                    continue 
                                s = uint128(stor2 * uint16(stor1.field_16))
                                s = stor9[stor10[uint16(idx)]].field_0
                                s = sha3(stor10[uint16(idx)], 9)
                                idx = idx + 1
                                s = s - uint128(stor2 * uint16(stor1.field_16)) + stor9[stor10[uint16(idx)]].field_0 + stor5
                                continue 
                            if stor9[stor10[uint16(idx)]].field_0 + stor5 >= (stor2 * stor10.length * uint16(-uint16(stor1.field_0) + 1000) / 1000) + uint128(stor2 * uint16(stor1.field_16)):
                                s = (stor2 * stor10.length * uint16(-uint16(stor1.field_0) + 1000) / 1000) + uint128(stor2 * uint16(stor1.field_16))
                                s = stor9[stor10[uint16(idx)]].field_0
                                s = sha3(stor10[uint16(idx)], 9)
                                idx = idx + 1
                                s = s
                                continue 
                            s = (stor2 * stor10.length * uint16(-uint16(stor1.field_0) + 1000) / 1000) + uint128(stor2 * uint16(stor1.field_16))
                            s = stor9[stor10[uint16(idx)]].field_0
                            s = sha3(stor10[uint16(idx)], 9)
                            idx = idx + 1
                            s = s - (stor2 * stor10.length * uint16(-uint16(stor1.field_0) + 1000) / 1000) - uint128(stor2 * uint16(stor1.field_16)) + stor9[stor10[uint16(idx)]].field_0 + stor5
                            continue 
                        stor6 = s * uint16(stor1.field_0) / 1000
                        if uint16(stor1.field_16) >= stor10.length:
                            uint8(stor4.field_160) = 1
                            emit LogEndOfROSCA()
                        else:
                            stor7 = 0
                            stor8 = 0
                            uint16(stor1.field_16) = uint16(uint16(stor1.field_16) + 1)
                            emit LogStartOfRound((0 or uint16(uint16(stor1.field_16) + 1)));
            require uint16(stor10.length - uint16(stor1.field_16)) < stor10.length
            require s < stor10.length
            stor10[s] = stor10[uint16(stor10.length - uint16(stor1.field_16))]
        require uint16(stor10.length - uint16(stor1.field_16)) < stor10.length
        stor10[uint16(stor10.length - uint16(stor1.field_16))] = stor8
        require stor10.length
        stor5 += (stor10.length * stor2 * uint16(-uint16(stor1.field_0) + 1000)) - (stor7 * uint16(-uint16(stor1.field_0) + 1000)) / 1000 / stor10.length
        stor9[stor8].field_0 += stor7 * uint16(-uint16(stor1.field_0) + 1000) / 1000
        stor9[stor8].field_264 = 1
        emit LogRoundFundsReleased(stor8, stor7);
        s = 0
        s = 0
        s = 0
        idx = 0
        s = uint128(stor2 * uint16(stor1.field_16)) * stor10.length
        while uint16(idx) < stor10.length:
            mem[0] = stor10[uint16(idx)]
            mem[32] = 9
            if not stor9[stor10[uint16(idx)]].field_256:
                if stor9[stor10[uint16(idx)]].field_0 + stor5 >= uint128(stor2 * uint16(stor1.field_16)):
                    s = uint128(stor2 * uint16(stor1.field_16))
                    s = stor9[stor10[uint16(idx)]].field_0
                    s = sha3(stor10[uint16(idx)], 9)
                    idx = idx + 1
                    s = s
                    continue 
                s = uint128(stor2 * uint16(stor1.field_16))
                s = stor9[stor10[uint16(idx)]].field_0
                s = sha3(stor10[uint16(idx)], 9)
                idx = idx + 1
                s = s - uint128(stor2 * uint16(stor1.field_16)) + stor9[stor10[uint16(idx)]].field_0 + stor5
                continue 
            if stor9[stor10[uint16(idx)]].field_0 + stor5 >= (stor2 * stor10.length * uint16(-uint16(stor1.field_0) + 1000) / 1000) + uint128(stor2 * uint16(stor1.field_16)):
                s = (stor2 * stor10.length * uint16(-uint16(stor1.field_0) + 1000) / 1000) + uint128(stor2 * uint16(stor1.field_16))
                s = stor9[stor10[uint16(idx)]].field_0
                s = sha3(stor10[uint16(idx)], 9)
                idx = idx + 1
                s = s
                continue 
            s = (stor2 * stor10.length * uint16(-uint16(stor1.field_0) + 1000) / 1000) + uint128(stor2 * uint16(stor1.field_16))
            s = stor9[stor10[uint16(idx)]].field_0
            s = sha3(stor10[uint16(idx)], 9)
            idx = idx + 1
            s = s - (stor2 * stor10.length * uint16(-uint16(stor1.field_0) + 1000) / 1000) - uint128(stor2 * uint16(stor1.field_16)) + stor9[stor10[uint16(idx)]].field_0 + stor5
            continue 
        stor6 = s * uint16(stor1.field_0) / 1000
    if uint16(stor1.field_16) >= stor10.length:
        uint8(stor4.field_160) = 1
        emit LogEndOfROSCA()
    else:
        stor7 = 0
        stor8 = 0
        uint16(stor1.field_16) = uint16(uint16(stor1.field_16) + 1)
        emit LogStartOfRound(uint256 rg1):
                             0,
                             uint16(uint16(stor1.field_16) + 1),
}



}
