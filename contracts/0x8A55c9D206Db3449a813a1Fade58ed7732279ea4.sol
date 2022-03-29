contract main {


// =======================  Init code  ======================


uint16 stor0;
uint16 stor0; offset 16
uint64 stor0; offset 208
address stor0; offset 48
uint128 stor1;
uint256 stor2;
uint16 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
address stor7;
mapping of struct stor8;
array of address stor9;
uint16 stor10;

function _fallback() payable {
    stor3 = 0
    stor4 = 0
    stor5 = 0
    stor6 = 0
    stor7 = 0
    stor10 = 0
    require not msg.value
    mem[96 len -4810] = code.data[5637 len -4810]
    _5 = mem[192]
    require mem[126 len 2] >= 1
    require mem[126 len 2] <= 30
    uint16(stor0.field_0) = mem[126 len 2]
    require mem[144 len 16] >= 10^15
    require mem[144 len 16] <= 10 * 10^18
    stor1 = mem[144 len 16]
    require mem[160] >= block.timestamp
    stor2 = mem[160]
    require mem[254 len 2] <= 20
    uint16(stor0.field_16) = mem[254 len 2]
    address(stor0.field_48) = msg.sender
    stor0.field_208 % 281474976710656 = 0
    require not uint8(stor8[address(msg.sender)].field_272)
    mem[64] = -4586
    mem[-4714] = 0
    mem[-4682] = 0
    mem[-4650] = 0
    mem[-4618] = 1
    mem[32] = 8
    stor8[address(msg.sender)].field_0 = 0
    uint8(stor8[address(msg.sender)].field_256) = 0
    uint8(stor8[address(msg.sender)].field_264) = 0
    Mask(240, 0, stor8[address(msg.sender)].field_272) = 1
    Mask(232, 0, stor8[address(msg.sender)].field_280) = 0
    Mask(232, 0, stor8[address(msg.sender)].field_280) = 0
    stor9.length++
    if not stor9.length > stor9.length + 1:
        mem[0] = 9
        address(stor9[stor9.length]) = msg.sender
        _43 = mem[mem[192] + 96]
        idx = 0
        while uint16(idx) < _43:
            require uint16(idx) < mem[_5 + 96]
            _45 = mem[(32 * uint16(idx)) + _5 + 128]
            mem[0] = mem[(32 * uint16(idx)) + _5 + 140 len 20]
            mem[32] = 8
            require not uint8(stor8[mem[(32 * uint16(idx)) + _5 + 140 len 20]].field_272)
            _47 = mem[64]
            mem[64] = mem[64] + 128
            mem[_47] = 0
            mem[_47 + 32] = 0
            mem[_47 + 64] = 0
            mem[_47 + 96] = 1
            mem[32] = 8
            stor8[address(_45)].field_0 = 0
            uint8(stor8[address(_45)].field_256) = 0
            uint8(stor8[address(_45)].field_264) = 0
            Mask(240, 0, stor8[address(_45)].field_272) = 1
            Mask(232, 0, stor8[address(_45)].field_280) = 0
            Mask(232, 0, stor8[address(_45)].field_280) = 0
            stor9.length++
            if not stor9.length <= stor9.length + 1:
                s = stor9.length + sha3(9) + 1
                while sha3(9) + stor9.length > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            mem[0] = 9
            address(stor9[stor9.length]) = address(_45)
            idx = idx + 1
            continue 
    else:
        idx = stor9.length + 1
        while stor9.length > idx:
            uint256(stor9[idx]) = 0
            idx = idx + 1
            continue 
        mem[0] = 9
        address(stor9[stor9.length]) = msg.sender
        _70 = mem[mem[192] + 96]
        idx = 0
        while uint16(idx) < _70:
            require uint16(idx) < mem[_5 + 96]
            _72 = mem[(32 * uint16(idx)) + _5 + 128]
            mem[0] = mem[(32 * uint16(idx)) + _5 + 140 len 20]
            mem[32] = 8
            require not uint8(stor8[mem[(32 * uint16(idx)) + _5 + 140 len 20]].field_272)
            _74 = mem[64]
            mem[64] = mem[64] + 128
            mem[_74] = 0
            mem[_74 + 32] = 0
            mem[_74 + 64] = 0
            mem[_74 + 96] = 1
            mem[32] = 8
            stor8[address(_72)].field_0 = 0
            uint8(stor8[address(_72)].field_256) = 0
            uint8(stor8[address(_72)].field_264) = 0
            Mask(240, 0, stor8[address(_72)].field_272) = 1
            Mask(232, 0, stor8[address(_72)].field_280) = 0
            Mask(232, 0, stor8[address(_72)].field_280) = 0
            stor9.length++
            mem[0] = 9
            if not stor9.length <= stor9.length + 1:
                s = stor9.length + sha3(9) + 1
                while sha3(9) + stor9.length > s:
                    stor[s] = 0
                    _70 = mem[_5 + 96]
                    s = s + 1
                    continue 
            address(stor9[stor9.length]) = address(_72)
            _70 = mem[_5 + 96]
            idx = idx + 1
            continue 
    return code.data[827 len 4810]
}



// =====================  Runtime code  =====================


uint16 stor0;
uint16 stor0; offset 16
uint16 stor0; offset 32
address stor0; offset 48
uint128 stor1;
uint256 stor2;
uint8 stor3;
uint8 stor3; offset 8
uint256 stor4;
uint256 stor5;
uint256 stor6;
address stor7;
mapping of struct stor8;
array of address stor9;
uint8 stor10;
uint8 stor10; offset 8

function emergencyWithdrawal() {
    require address(stor0.field_48) == msg.sender
    require uint8(stor10.field_8)
    emit LogEmergencyWithdrawalPerformed(eth.balance(this.address));
    selfdestruct(address(stor0.field_48))
}

function _fallback() payable {
    revert
}

function getContractNetBalance() {
    return (eth.balance(this.address) - stor5)
}

function enableEscapeHatch() {
    require 0x398189271d4c4cdc3bb44f9be8f7fcb7e44eea5 == msg.sender
    uint8(stor10.field_0) = 1
    emit LogEscapeHatchEnabled()
}

function activateEscapeHatch() {
    require address(stor0.field_48) == msg.sender
    require uint8(stor10.field_0)
    uint8(stor10.field_8) = 1
    emit LogEscapeHatchActivated()
}

function endOfROSCARetrieveFees() {
    require address(stor0.field_48) == msg.sender
    require uint8(stor3.field_0)
    require stor5
    stor5 = 0
    call address(stor0.field_48) with:
       value stor5 wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        emit LogFeesWithdrawal(stor5);
}

function getParticipantBalance(address arg1) {
    require stor8[address(msg.sender)].field_272
    if not stor8[address(arg1)].field_256:
        return (stor4 + stor8[address(arg1)].field_0 - uint128(stor1 * uint16(stor0.field_32)))
    if uint8(stor3.field_0):
        return (stor4 + stor8[address(arg1)].field_0 - uint128(stor1 * uint16(stor0.field_32)))
    return (stor4 + stor8[address(arg1)].field_0 - (stor1 * stor9.length * uint16(-uint16(stor0.field_16) + 1000) / 1000) - uint128(stor1 * uint16(stor0.field_32)))
}

function contribute() payable {
    require stor8[address(msg.sender)].field_272
    require not uint8(stor3.field_0)
    require not uint8(stor10.field_8)
    stor8[address(msg.sender)].field_0 += msg.value
    if stor8[address(msg.sender)].field_256:
        if stor8[address(msg.sender)].field_0 + stor4 - (stor9.length * stor1 * uint16(-uint16(stor0.field_16) + 1000) / 1000) >= uint128(stor1 * uint16(stor0.field_32)):
            stor8[address(msg.sender)].field_256 = 0
    emit LogContributionMade(msg.sender, msg.value);
}

function endOfROSCARetrieveSurplus() {
    require address(stor0.field_48) == msg.sender
    require uint8(stor3.field_0)
    require block.timestamp >= (24 * 3600 * uint16(stor0.field_0)) + (24 * 3600 * stor9.length * uint16(stor0.field_0)) + stor2
    require not uint8(stor3.field_8)
    uint8(stor3.field_8) = 1
    call address(stor0.field_48) with:
       value eth.balance(this.address) - stor5 wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        emit LogForepersonSurplusWithdrawal((eth.balance(this.address) - stor5));
    else:
        uint8(stor3.field_8) = 0
}

function bid(uint256 arg1) {
    require stor8[address(msg.sender)].field_272
    require not uint8(stor3.field_0)
    require not uint8(stor10.field_8)
    require not stor8[address(msg.sender)].field_264
    require uint16(stor0.field_32)
    require stor8[address(msg.sender)].field_0 + stor4 >= uint128(stor1 * uint16(stor0.field_32))
    require arg1 >= 65 * stor1 * stor9.length / 100
    if not stor7:
        if arg1 > stor1 * stor9.length:
            emit LogUnsuccessfulBid(msg.sender, arg1, stor6);
        else:
            stor6 = arg1
            stor7 = msg.sender
            emit LogNewLowestBid(arg1, msg.sender);
    else:
        if arg1 > 98 * stor6 / 100:
            emit LogUnsuccessfulBid(msg.sender, arg1, stor6);
        else:
            stor6 = arg1
            stor7 = msg.sender
            emit LogNewLowestBid(arg1, msg.sender);
}

function recalculateTotalFees() {
    s = 0
    s = 0
    s = 0
    idx = 0
    s = uint128(stor1 * uint16(stor0.field_32)) * stor9.length
    while uint16(idx) < stor9.length:
        mem[0] = stor9[uint16(idx)]
        mem[32] = 8
        if not stor8[stor9[uint16(idx)]].field_256:
            if stor8[stor9[uint16(idx)]].field_0 + stor4 >= uint128(stor1 * uint16(stor0.field_32)):
                s = uint128(stor1 * uint16(stor0.field_32))
                s = stor8[stor9[uint16(idx)]].field_0
                s = sha3(stor9[uint16(idx)], 8)
                idx = idx + 1
                s = s
                continue 
            s = uint128(stor1 * uint16(stor0.field_32))
            s = stor8[stor9[uint16(idx)]].field_0
            s = sha3(stor9[uint16(idx)], 8)
            idx = idx + 1
            s = s - uint128(stor1 * uint16(stor0.field_32)) + stor8[stor9[uint16(idx)]].field_0 + stor4
            continue 
        if stor8[stor9[uint16(idx)]].field_0 + stor4 >= (stor1 * stor9.length * uint16(-uint16(stor0.field_16) + 1000) / 1000) + uint128(stor1 * uint16(stor0.field_32)):
            s = (stor1 * stor9.length * uint16(-uint16(stor0.field_16) + 1000) / 1000) + uint128(stor1 * uint16(stor0.field_32))
            s = stor8[stor9[uint16(idx)]].field_0
            s = sha3(stor9[uint16(idx)], 8)
            idx = idx + 1
            s = s
            continue 
        s = (stor1 * stor9.length * uint16(-uint16(stor0.field_16) + 1000) / 1000) + uint128(stor1 * uint16(stor0.field_32))
        s = stor8[stor9[uint16(idx)]].field_0
        s = sha3(stor9[uint16(idx)], 8)
        idx = idx + 1
        s = s - (stor1 * stor9.length * uint16(-uint16(stor0.field_16) + 1000) / 1000) - uint128(stor1 * uint16(stor0.field_32)) + stor8[stor9[uint16(idx)]].field_0 + stor4
        continue 
    stor5 = s * uint16(stor0.field_16) / 1000
}

function withdraw() {
    require stor8[address(msg.sender)].field_272
    require not uint8(stor10.field_8)
    if stor8[address(msg.sender)].field_256:
        require uint8(stor3.field_0)
    if stor8[address(msg.sender)].field_256:
        require stor1 * stor9.length * uint16(-uint16(stor0.field_16) + 1000) / 1000 < stor4 + stor8[address(msg.sender)].field_0
        if eth.balance(this.address) - stor5 >= stor4 + stor8[address(msg.sender)].field_0 - (stor1 * stor9.length * uint16(-uint16(stor0.field_16) + 1000) / 1000):
            stor8[address(msg.sender)].field_0 = -stor4 + (stor1 * stor9.length * uint16(-uint16(stor0.field_16) + 1000) / 1000)
            call msg.sender with:
               value stor4 + stor8[address(msg.sender)].field_0 - (stor1 * stor9.length * uint16(-uint16(stor0.field_16) + 1000) / 1000) wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                emit LogFundsWithdrawal(msg.sender, stor4 + stor8[address(msg.sender)].field_0 - (stor1 * stor9.length * uint16(-uint16(stor0.field_16) + 1000) / 1000));
                return 1
            stor8[address(msg.sender)].field_0 = stor4 + (2 * stor8[address(msg.sender)].field_0) - (stor1 * stor9.length * uint16(-uint16(stor0.field_16) + 1000) / 1000)
        else:
            emit LogCannotWithdrawFully((stor4 + stor8[address(msg.sender)].field_0 - (stor1 * stor9.length * uint16(-uint16(stor0.field_16) + 1000) / 1000)));
            stor8[address(msg.sender)].field_0 = stor8[address(msg.sender)].field_0 - eth.balance(this.address) + stor5
            call msg.sender with:
               value eth.balance(this.address) - stor5 wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                emit LogFundsWithdrawal(msg.sender, eth.balance(this.address) - stor5);
                return 1
            stor8[address(msg.sender)].field_0 = eth.balance(this.address) - stor5 + stor8[address(msg.sender)].field_0
    else:
        require uint128(stor1 * uint16(stor0.field_32)) < stor4 + stor8[address(msg.sender)].field_0
        if eth.balance(this.address) - stor5 >= stor4 + stor8[address(msg.sender)].field_0 - uint128(stor1 * uint16(stor0.field_32)):
            stor8[address(msg.sender)].field_0 = -stor4 + uint128(stor1 * uint16(stor0.field_32))
            call msg.sender with:
               value stor4 + stor8[address(msg.sender)].field_0 - uint128(stor1 * uint16(stor0.field_32)) wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                emit LogFundsWithdrawal(msg.sender, stor4 + stor8[address(msg.sender)].field_0 - uint128(stor1 * uint16(stor0.field_32)));
                return 1
            stor8[address(msg.sender)].field_0 = stor4 + (2 * stor8[address(msg.sender)].field_0) - uint128(stor1 * uint16(stor0.field_32))
        else:
            emit LogCannotWithdrawFully((stor4 + stor8[address(msg.sender)].field_0 - uint128(stor1 * uint16(stor0.field_32))));
            stor8[address(msg.sender)].field_0 = stor8[address(msg.sender)].field_0 - eth.balance(this.address) + stor5
            call msg.sender with:
               value eth.balance(this.address) - stor5 wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                emit LogFundsWithdrawal(msg.sender, eth.balance(this.address) - stor5);
                return 1
            stor8[address(msg.sender)].field_0 = eth.balance(this.address) - stor5 + stor8[address(msg.sender)].field_0
    return 0
}

function startRound() {
    require not uint8(stor3.field_0)
    require block.timestamp >= (24 * 3600 * uint16(stor0.field_32) * uint16(stor0.field_0)) + stor2
    if uint16(stor0.field_32):
        if stor7:
            idx = 0
            while uint16(idx) <= uint16(stor9.length - uint16(stor0.field_32)):
                require uint16(idx) < stor9.length
                mem[0] = 9
                if stor9[uint16(idx)] != stor7:
                    idx = idx + 1
                    continue 
                require uint16(stor9.length - uint16(stor0.field_32)) < stor9.length
                require uint16(idx) < stor9.length
                stor9[uint16(idx)] = stor9[uint16(stor9.length - uint16(stor0.field_32))]
                require uint16(stor9.length - uint16(stor0.field_32)) < stor9.length
                stor9[uint16(stor9.length - uint16(stor0.field_32))] = stor7
                require stor9.length
                stor4 += (stor9.length * stor1 * uint16(-uint16(stor0.field_16) + 1000)) - (stor6 * uint16(-uint16(stor0.field_16) + 1000)) / 1000 / stor9.length
                stor8[stor7].field_0 += stor6 * uint16(-uint16(stor0.field_16) + 1000) / 1000
                stor8[stor7].field_264 = 1
                emit LogRoundFundsReleased(stor7, stor6);
                s = 0
                s = 0
                s = 0
                idx = 0
                s = uint128(stor1 * uint16(stor0.field_32)) * stor9.length
                while uint16(idx) < stor9.length:
                    mem[0] = stor9[uint16(idx)]
                    mem[32] = 8
                    if not stor8[stor9[uint16(idx)]].field_256:
                        if stor8[stor9[uint16(idx)]].field_0 + stor4 >= uint128(stor1 * uint16(stor0.field_32)):
                            s = uint128(stor1 * uint16(stor0.field_32))
                            s = stor8[stor9[uint16(idx)]].field_0
                            s = sha3(stor9[uint16(idx)], 8)
                            idx = idx + 1
                            s = s
                            continue 
                        s = uint128(stor1 * uint16(stor0.field_32))
                        s = stor8[stor9[uint16(idx)]].field_0
                        s = sha3(stor9[uint16(idx)], 8)
                        idx = idx + 1
                        s = s - uint128(stor1 * uint16(stor0.field_32)) + stor8[stor9[uint16(idx)]].field_0 + stor4
                        continue 
                    if stor8[stor9[uint16(idx)]].field_0 + stor4 >= (stor1 * stor9.length * uint16(-uint16(stor0.field_16) + 1000) / 1000) + uint128(stor1 * uint16(stor0.field_32)):
                        s = (stor1 * stor9.length * uint16(-uint16(stor0.field_16) + 1000) / 1000) + uint128(stor1 * uint16(stor0.field_32))
                        s = stor8[stor9[uint16(idx)]].field_0
                        s = sha3(stor9[uint16(idx)], 8)
                        idx = idx + 1
                        s = s
                        continue 
                    s = (stor1 * stor9.length * uint16(-uint16(stor0.field_16) + 1000) / 1000) + uint128(stor1 * uint16(stor0.field_32))
                    s = stor8[stor9[uint16(idx)]].field_0
                    s = sha3(stor9[uint16(idx)], 8)
                    idx = idx + 1
                    s = s - (stor1 * stor9.length * uint16(-uint16(stor0.field_16) + 1000) / 1000) - uint128(stor1 * uint16(stor0.field_32)) + stor8[stor9[uint16(idx)]].field_0 + stor4
                    continue 
                stor5 = s * uint16(stor0.field_16) / 1000
                if uint16(stor0.field_32) >= stor9.length:
                    uint8(stor3.field_0) = 1
                    emit LogEndOfROSCA()
                else:
                    stor6 = 0
                    stor7 = 0
                    uint16(stor0.field_32) = uint16(uint16(stor0.field_32) + 1)
                    emit LogStartOfRound((0 or uint16(uint16(stor0.field_32) + 1)));
            require uint16(stor9.length - uint16(stor0.field_32)) < stor9.length
            require 0 < stor9.length
            stor9 = stor9[uint16(stor9.length - uint16(stor0.field_32))]
        else:
            require uint16(stor9.length + -uint16(stor0.field_32) + 1)
            s = 0
            s = 0
            idx = 0
            s = 0
            t = 0
            while uint16(idx) < uint16(stor9.length + -uint16(stor0.field_32) + 1):
                require uint16(stor9.length + -uint16(stor0.field_32) + 1)
                require (block.timestamp % uint16(stor9.length + -uint16(stor0.field_32) + 1)) + uint16(idx) % uint16(stor9.length + -uint16(stor0.field_32) + 1) < stor9.length
                mem[0] = stor9[(block.timestamp % uint16(stor9.length + -uint16(stor0.field_32) + 1)) + uint16(idx) % uint16(stor9.length + -uint16(stor0.field_32) + 1)]
                mem[32] = 8
                if stor8[stor9[(block.timestamp % uint16(stor9.length + -uint16(stor0.field_32) + 1)) + uint16(idx) % uint16(stor9.length + -uint16(stor0.field_32) + 1)]].field_264:
                    s = stor9[(block.timestamp % uint16(stor9.length + -uint16(stor0.field_32) + 1)) + uint16(idx) % uint16(stor9.length + -uint16(stor0.field_32) + 1)]
                    s = (block.timestamp % uint16(stor9.length + -uint16(stor0.field_32) + 1)) + uint16(idx) % uint16(stor9.length + -uint16(stor0.field_32) + 1)
                    idx = idx + 1
                    s = s
                    t = t
                    continue 
                mem[0] = stor9[(block.timestamp % uint16(stor9.length + -uint16(stor0.field_32) + 1)) + uint16(idx) % uint16(stor9.length + -uint16(stor0.field_32) + 1)]
                mem[32] = 8
                if stor8[stor9[(block.timestamp % uint16(stor9.length + -uint16(stor0.field_32) + 1)) + uint16(idx) % uint16(stor9.length + -uint16(stor0.field_32) + 1)]].field_0 + stor4 < uint128(stor1 * uint16(stor0.field_32)):
                    s = stor9[(block.timestamp % uint16(stor9.length + -uint16(stor0.field_32) + 1)) + uint16(idx) % uint16(stor9.length + -uint16(stor0.field_32) + 1)]
                    s = (block.timestamp % uint16(stor9.length + -uint16(stor0.field_32) + 1)) + uint16(idx) % uint16(stor9.length + -uint16(stor0.field_32) + 1)
                    idx = idx + 1
                    s = (block.timestamp % uint16(stor9.length + -uint16(stor0.field_32) + 1)) + uint16(idx) % uint16(stor9.length + -uint16(stor0.field_32) + 1)
                    t = stor9[(block.timestamp % uint16(stor9.length + -uint16(stor0.field_32) + 1)) + uint16(idx) % uint16(stor9.length + -uint16(stor0.field_32) + 1)]
                    continue 
                stor7 = stor9[(block.timestamp % uint16(stor9.length + -uint16(stor0.field_32) + 1)) + uint16(idx) % uint16(stor9.length + -uint16(stor0.field_32) + 1)]
                if stor7:
                    stor6 = stor1 * stor9.length
                    s = 0
                    while uint16(s) <= uint16(stor9.length - uint16(stor0.field_32)):
                        require uint16(s) < stor9.length
                        mem[0] = 9
                        if stor9[uint16(s)] != stor7:
                            s = s + 1
                            continue 
                        require uint16(stor9.length - uint16(stor0.field_32)) < stor9.length
                        require uint16(s) < stor9.length
                        stor9[uint16(s)] = stor9[uint16(stor9.length - uint16(stor0.field_32))]
                        require uint16(stor9.length - uint16(stor0.field_32)) < stor9.length
                        stor9[uint16(stor9.length - uint16(stor0.field_32))] = stor7
                        require stor9.length
                        stor4 += (stor9.length * stor1 * uint16(-uint16(stor0.field_16) + 1000)) - (stor6 * uint16(-uint16(stor0.field_16) + 1000)) / 1000 / stor9.length
                        stor8[stor7].field_0 += stor6 * uint16(-uint16(stor0.field_16) + 1000) / 1000
                        stor8[stor7].field_264 = 1
                        emit LogRoundFundsReleased(stor7, stor6);
                        s = 0
                        s = 0
                        s = 0
                        idx = 0
                        s = uint128(stor1 * uint16(stor0.field_32)) * stor9.length
                        while uint16(idx) < stor9.length:
                            mem[0] = stor9[uint16(idx)]
                            mem[32] = 8
                            if not stor8[stor9[uint16(idx)]].field_256:
                                if stor8[stor9[uint16(idx)]].field_0 + stor4 >= uint128(stor1 * uint16(stor0.field_32)):
                                    s = uint128(stor1 * uint16(stor0.field_32))
                                    s = stor8[stor9[uint16(idx)]].field_0
                                    s = sha3(stor9[uint16(idx)], 8)
                                    idx = idx + 1
                                    s = s
                                    continue 
                                s = uint128(stor1 * uint16(stor0.field_32))
                                s = stor8[stor9[uint16(idx)]].field_0
                                s = sha3(stor9[uint16(idx)], 8)
                                idx = idx + 1
                                s = s - uint128(stor1 * uint16(stor0.field_32)) + stor8[stor9[uint16(idx)]].field_0 + stor4
                                continue 
                            if stor8[stor9[uint16(idx)]].field_0 + stor4 >= (stor1 * stor9.length * uint16(-uint16(stor0.field_16) + 1000) / 1000) + uint128(stor1 * uint16(stor0.field_32)):
                                s = (stor1 * stor9.length * uint16(-uint16(stor0.field_16) + 1000) / 1000) + uint128(stor1 * uint16(stor0.field_32))
                                s = stor8[stor9[uint16(idx)]].field_0
                                s = sha3(stor9[uint16(idx)], 8)
                                idx = idx + 1
                                s = s
                                continue 
                            s = (stor1 * stor9.length * uint16(-uint16(stor0.field_16) + 1000) / 1000) + uint128(stor1 * uint16(stor0.field_32))
                            s = stor8[stor9[uint16(idx)]].field_0
                            s = sha3(stor9[uint16(idx)], 8)
                            idx = idx + 1
                            s = s - (stor1 * stor9.length * uint16(-uint16(stor0.field_16) + 1000) / 1000) - uint128(stor1 * uint16(stor0.field_32)) + stor8[stor9[uint16(idx)]].field_0 + stor4
                            continue 
                        stor5 = s * uint16(stor0.field_16) / 1000
                        if uint16(stor0.field_32) >= stor9.length:
                            uint8(stor3.field_0) = 1
                            emit LogEndOfROSCA()
                        else:
                            stor6 = 0
                            stor7 = 0
                            uint16(stor0.field_32) = uint16(uint16(stor0.field_32) + 1)
                            emit LogStartOfRound((0 or uint16(uint16(stor0.field_32) + 1)));
                else:
                    require address(t)
                    require not stor8[address(t)].field_264
                    stor7 = address(t)
                    stor8[address(t)].field_256 = 1
                    stor6 = stor1 * stor9.length
                    if stor7:
                        s = 0
                        while uint16(s) <= uint16(stor9.length - uint16(stor0.field_32)):
                            require uint16(s) < stor9.length
                            mem[0] = 9
                            if stor9[uint16(s)] != stor7:
                                s = s + 1
                                continue 
                            require uint16(stor9.length - uint16(stor0.field_32)) < stor9.length
                            require uint16(s) < stor9.length
                            stor9[uint16(s)] = stor9[uint16(stor9.length - uint16(stor0.field_32))]
                            require uint16(stor9.length - uint16(stor0.field_32)) < stor9.length
                            stor9[uint16(stor9.length - uint16(stor0.field_32))] = stor7
                            require stor9.length
                            stor4 += (stor9.length * stor1 * uint16(-uint16(stor0.field_16) + 1000)) - (stor6 * uint16(-uint16(stor0.field_16) + 1000)) / 1000 / stor9.length
                            stor8[stor7].field_0 += stor6 * uint16(-uint16(stor0.field_16) + 1000) / 1000
                            stor8[stor7].field_264 = 1
                            emit LogRoundFundsReleased(stor7, stor6);
                            s = 0
                            s = 0
                            s = 0
                            idx = 0
                            s = uint128(stor1 * uint16(stor0.field_32)) * stor9.length
                            while uint16(idx) < stor9.length:
                                mem[0] = stor9[uint16(idx)]
                                mem[32] = 8
                                if not stor8[stor9[uint16(idx)]].field_256:
                                    if stor8[stor9[uint16(idx)]].field_0 + stor4 >= uint128(stor1 * uint16(stor0.field_32)):
                                        s = uint128(stor1 * uint16(stor0.field_32))
                                        s = stor8[stor9[uint16(idx)]].field_0
                                        s = sha3(stor9[uint16(idx)], 8)
                                        idx = idx + 1
                                        s = s
                                        continue 
                                    s = uint128(stor1 * uint16(stor0.field_32))
                                    s = stor8[stor9[uint16(idx)]].field_0
                                    s = sha3(stor9[uint16(idx)], 8)
                                    idx = idx + 1
                                    s = s - uint128(stor1 * uint16(stor0.field_32)) + stor8[stor9[uint16(idx)]].field_0 + stor4
                                    continue 
                                if stor8[stor9[uint16(idx)]].field_0 + stor4 >= (stor1 * stor9.length * uint16(-uint16(stor0.field_16) + 1000) / 1000) + uint128(stor1 * uint16(stor0.field_32)):
                                    s = (stor1 * stor9.length * uint16(-uint16(stor0.field_16) + 1000) / 1000) + uint128(stor1 * uint16(stor0.field_32))
                                    s = stor8[stor9[uint16(idx)]].field_0
                                    s = sha3(stor9[uint16(idx)], 8)
                                    idx = idx + 1
                                    s = s
                                    continue 
                                s = (stor1 * stor9.length * uint16(-uint16(stor0.field_16) + 1000) / 1000) + uint128(stor1 * uint16(stor0.field_32))
                                s = stor8[stor9[uint16(idx)]].field_0
                                s = sha3(stor9[uint16(idx)], 8)
                                idx = idx + 1
                                s = s - (stor1 * stor9.length * uint16(-uint16(stor0.field_16) + 1000) / 1000) - uint128(stor1 * uint16(stor0.field_32)) + stor8[stor9[uint16(idx)]].field_0 + stor4
                                continue 
                            stor5 = s * uint16(stor0.field_16) / 1000
                            if uint16(stor0.field_32) >= stor9.length:
                                uint8(stor3.field_0) = 1
                                emit LogEndOfROSCA()
                            else:
                                stor6 = 0
                                stor7 = 0
                                uint16(stor0.field_32) = uint16(uint16(stor0.field_32) + 1)
                                emit LogStartOfRound((0 or uint16(uint16(stor0.field_32) + 1)));
                require uint16(stor9.length - uint16(stor0.field_32)) < stor9.length
                require (block.timestamp % uint16(stor9.length + -uint16(stor0.field_32) + 1)) + uint16(idx) % uint16(stor9.length + -uint16(stor0.field_32) + 1) < stor9.length
                stor9[(block.timestamp % uint16(stor9.length + -uint16(stor0.field_32) + 1)) + uint16(idx) % uint16(stor9.length + -uint16(stor0.field_32) + 1)] = stor9[uint16(stor9.length - uint16(stor0.field_32))]
                require uint16(stor9.length - uint16(stor0.field_32)) < stor9.length
                stor9[uint16(stor9.length - uint16(stor0.field_32))] = stor7
                require stor9.length
                stor4 += (stor9.length * stor1 * uint16(-uint16(stor0.field_16) + 1000)) - (stor6 * uint16(-uint16(stor0.field_16) + 1000)) / 1000 / stor9.length
                stor8[stor7].field_0 += stor6 * uint16(-uint16(stor0.field_16) + 1000) / 1000
                stor8[stor7].field_264 = 1
                emit LogRoundFundsReleased(stor7, stor6);
                s = 0
                s = 0
                s = 0
                idx = 0
                s = uint128(stor1 * uint16(stor0.field_32)) * stor9.length
                while uint16(idx) < stor9.length:
                    mem[0] = stor9[uint16(idx)]
                    mem[32] = 8
                    if not stor8[stor9[uint16(idx)]].field_256:
                        if stor8[stor9[uint16(idx)]].field_0 + stor4 >= uint128(stor1 * uint16(stor0.field_32)):
                            s = uint128(stor1 * uint16(stor0.field_32))
                            s = stor8[stor9[uint16(idx)]].field_0
                            s = sha3(stor9[uint16(idx)], 8)
                            idx = idx + 1
                            s = s
                            continue 
                        s = uint128(stor1 * uint16(stor0.field_32))
                        s = stor8[stor9[uint16(idx)]].field_0
                        s = sha3(stor9[uint16(idx)], 8)
                        idx = idx + 1
                        s = s - uint128(stor1 * uint16(stor0.field_32)) + stor8[stor9[uint16(idx)]].field_0 + stor4
                        continue 
                    if stor8[stor9[uint16(idx)]].field_0 + stor4 >= (stor1 * stor9.length * uint16(-uint16(stor0.field_16) + 1000) / 1000) + uint128(stor1 * uint16(stor0.field_32)):
                        s = (stor1 * stor9.length * uint16(-uint16(stor0.field_16) + 1000) / 1000) + uint128(stor1 * uint16(stor0.field_32))
                        s = stor8[stor9[uint16(idx)]].field_0
                        s = sha3(stor9[uint16(idx)], 8)
                        idx = idx + 1
                        s = s
                        continue 
                    s = (stor1 * stor9.length * uint16(-uint16(stor0.field_16) + 1000) / 1000) + uint128(stor1 * uint16(stor0.field_32))
                    s = stor8[stor9[uint16(idx)]].field_0
                    s = sha3(stor9[uint16(idx)], 8)
                    idx = idx + 1
                    s = s - (stor1 * stor9.length * uint16(-uint16(stor0.field_16) + 1000) / 1000) - uint128(stor1 * uint16(stor0.field_32)) + stor8[stor9[uint16(idx)]].field_0 + stor4
                    continue 
                stor5 = s * uint16(stor0.field_16) / 1000
                if uint16(stor0.field_32) >= stor9.length:
                    uint8(stor3.field_0) = 1
                    emit LogEndOfROSCA()
                else:
                    stor6 = 0
                    stor7 = 0
                    uint16(stor0.field_32) = uint16(uint16(stor0.field_32) + 1)
                    emit LogStartOfRound((0 or uint16(uint16(stor0.field_32) + 1)));
            if stor7:
                stor6 = stor1 * stor9.length
                idx = 0
                while uint16(idx) <= uint16(stor9.length - uint16(stor0.field_32)):
                    require uint16(idx) < stor9.length
                    mem[0] = 9
                    if stor9[uint16(idx)] != stor7:
                        idx = idx + 1
                        continue 
                    require uint16(stor9.length - uint16(stor0.field_32)) < stor9.length
                    require uint16(idx) < stor9.length
                    stor9[uint16(idx)] = stor9[uint16(stor9.length - uint16(stor0.field_32))]
                    require uint16(stor9.length - uint16(stor0.field_32)) < stor9.length
                    stor9[uint16(stor9.length - uint16(stor0.field_32))] = stor7
                    require stor9.length
                    stor4 += (stor9.length * stor1 * uint16(-uint16(stor0.field_16) + 1000)) - (stor6 * uint16(-uint16(stor0.field_16) + 1000)) / 1000 / stor9.length
                    stor8[stor7].field_0 += stor6 * uint16(-uint16(stor0.field_16) + 1000) / 1000
                    stor8[stor7].field_264 = 1
                    emit LogRoundFundsReleased(stor7, stor6);
                    s = 0
                    s = 0
                    s = 0
                    idx = 0
                    s = uint128(stor1 * uint16(stor0.field_32)) * stor9.length
                    while uint16(idx) < stor9.length:
                        mem[0] = stor9[uint16(idx)]
                        mem[32] = 8
                        if not stor8[stor9[uint16(idx)]].field_256:
                            if stor8[stor9[uint16(idx)]].field_0 + stor4 >= uint128(stor1 * uint16(stor0.field_32)):
                                s = uint128(stor1 * uint16(stor0.field_32))
                                s = stor8[stor9[uint16(idx)]].field_0
                                s = sha3(stor9[uint16(idx)], 8)
                                idx = idx + 1
                                s = s
                                continue 
                            s = uint128(stor1 * uint16(stor0.field_32))
                            s = stor8[stor9[uint16(idx)]].field_0
                            s = sha3(stor9[uint16(idx)], 8)
                            idx = idx + 1
                            s = s - uint128(stor1 * uint16(stor0.field_32)) + stor8[stor9[uint16(idx)]].field_0 + stor4
                            continue 
                        if stor8[stor9[uint16(idx)]].field_0 + stor4 >= (stor1 * stor9.length * uint16(-uint16(stor0.field_16) + 1000) / 1000) + uint128(stor1 * uint16(stor0.field_32)):
                            s = (stor1 * stor9.length * uint16(-uint16(stor0.field_16) + 1000) / 1000) + uint128(stor1 * uint16(stor0.field_32))
                            s = stor8[stor9[uint16(idx)]].field_0
                            s = sha3(stor9[uint16(idx)], 8)
                            idx = idx + 1
                            s = s
                            continue 
                        s = (stor1 * stor9.length * uint16(-uint16(stor0.field_16) + 1000) / 1000) + uint128(stor1 * uint16(stor0.field_32))
                        s = stor8[stor9[uint16(idx)]].field_0
                        s = sha3(stor9[uint16(idx)], 8)
                        idx = idx + 1
                        s = s - (stor1 * stor9.length * uint16(-uint16(stor0.field_16) + 1000) / 1000) - uint128(stor1 * uint16(stor0.field_32)) + stor8[stor9[uint16(idx)]].field_0 + stor4
                        continue 
                    stor5 = s * uint16(stor0.field_16) / 1000
                    if uint16(stor0.field_32) >= stor9.length:
                        uint8(stor3.field_0) = 1
                        emit LogEndOfROSCA()
                    else:
                        stor6 = 0
                        stor7 = 0
                        uint16(stor0.field_32) = uint16(uint16(stor0.field_32) + 1)
                        emit LogStartOfRound((0 or uint16(uint16(stor0.field_32) + 1)));
            else:
                require address(t)
                require not stor8[address(t)].field_264
                stor7 = address(t)
                stor8[address(t)].field_256 = 1
                stor6 = stor1 * stor9.length
                if stor7:
                    idx = 0
                    while uint16(idx) <= uint16(stor9.length - uint16(stor0.field_32)):
                        require uint16(idx) < stor9.length
                        mem[0] = 9
                        if stor9[uint16(idx)] != stor7:
                            idx = idx + 1
                            continue 
                        require uint16(stor9.length - uint16(stor0.field_32)) < stor9.length
                        require uint16(idx) < stor9.length
                        stor9[uint16(idx)] = stor9[uint16(stor9.length - uint16(stor0.field_32))]
                        require uint16(stor9.length - uint16(stor0.field_32)) < stor9.length
                        stor9[uint16(stor9.length - uint16(stor0.field_32))] = stor7
                        require stor9.length
                        stor4 += (stor9.length * stor1 * uint16(-uint16(stor0.field_16) + 1000)) - (stor6 * uint16(-uint16(stor0.field_16) + 1000)) / 1000 / stor9.length
                        stor8[stor7].field_0 += stor6 * uint16(-uint16(stor0.field_16) + 1000) / 1000
                        stor8[stor7].field_264 = 1
                        emit LogRoundFundsReleased(stor7, stor6);
                        s = 0
                        s = 0
                        s = 0
                        idx = 0
                        s = uint128(stor1 * uint16(stor0.field_32)) * stor9.length
                        while uint16(idx) < stor9.length:
                            mem[0] = stor9[uint16(idx)]
                            mem[32] = 8
                            if not stor8[stor9[uint16(idx)]].field_256:
                                if stor8[stor9[uint16(idx)]].field_0 + stor4 >= uint128(stor1 * uint16(stor0.field_32)):
                                    s = uint128(stor1 * uint16(stor0.field_32))
                                    s = stor8[stor9[uint16(idx)]].field_0
                                    s = sha3(stor9[uint16(idx)], 8)
                                    idx = idx + 1
                                    s = s
                                    continue 
                                s = uint128(stor1 * uint16(stor0.field_32))
                                s = stor8[stor9[uint16(idx)]].field_0
                                s = sha3(stor9[uint16(idx)], 8)
                                idx = idx + 1
                                s = s - uint128(stor1 * uint16(stor0.field_32)) + stor8[stor9[uint16(idx)]].field_0 + stor4
                                continue 
                            if stor8[stor9[uint16(idx)]].field_0 + stor4 >= (stor1 * stor9.length * uint16(-uint16(stor0.field_16) + 1000) / 1000) + uint128(stor1 * uint16(stor0.field_32)):
                                s = (stor1 * stor9.length * uint16(-uint16(stor0.field_16) + 1000) / 1000) + uint128(stor1 * uint16(stor0.field_32))
                                s = stor8[stor9[uint16(idx)]].field_0
                                s = sha3(stor9[uint16(idx)], 8)
                                idx = idx + 1
                                s = s
                                continue 
                            s = (stor1 * stor9.length * uint16(-uint16(stor0.field_16) + 1000) / 1000) + uint128(stor1 * uint16(stor0.field_32))
                            s = stor8[stor9[uint16(idx)]].field_0
                            s = sha3(stor9[uint16(idx)], 8)
                            idx = idx + 1
                            s = s - (stor1 * stor9.length * uint16(-uint16(stor0.field_16) + 1000) / 1000) - uint128(stor1 * uint16(stor0.field_32)) + stor8[stor9[uint16(idx)]].field_0 + stor4
                            continue 
                        stor5 = s * uint16(stor0.field_16) / 1000
                        if uint16(stor0.field_32) >= stor9.length:
                            uint8(stor3.field_0) = 1
                            emit LogEndOfROSCA()
                        else:
                            stor6 = 0
                            stor7 = 0
                            uint16(stor0.field_32) = uint16(uint16(stor0.field_32) + 1)
                            emit LogStartOfRound((0 or uint16(uint16(stor0.field_32) + 1)));
            require uint16(stor9.length - uint16(stor0.field_32)) < stor9.length
            require s < stor9.length
            stor9[s] = stor9[uint16(stor9.length - uint16(stor0.field_32))]
        require uint16(stor9.length - uint16(stor0.field_32)) < stor9.length
        stor9[uint16(stor9.length - uint16(stor0.field_32))] = stor7
        require stor9.length
        stor4 += (stor9.length * stor1 * uint16(-uint16(stor0.field_16) + 1000)) - (stor6 * uint16(-uint16(stor0.field_16) + 1000)) / 1000 / stor9.length
        stor8[stor7].field_0 += stor6 * uint16(-uint16(stor0.field_16) + 1000) / 1000
        stor8[stor7].field_264 = 1
        emit LogRoundFundsReleased(stor7, stor6);
        s = 0
        s = 0
        s = 0
        idx = 0
        s = uint128(stor1 * uint16(stor0.field_32)) * stor9.length
        while uint16(idx) < stor9.length:
            mem[0] = stor9[uint16(idx)]
            mem[32] = 8
            if not stor8[stor9[uint16(idx)]].field_256:
                if stor8[stor9[uint16(idx)]].field_0 + stor4 >= uint128(stor1 * uint16(stor0.field_32)):
                    s = uint128(stor1 * uint16(stor0.field_32))
                    s = stor8[stor9[uint16(idx)]].field_0
                    s = sha3(stor9[uint16(idx)], 8)
                    idx = idx + 1
                    s = s
                    continue 
                s = uint128(stor1 * uint16(stor0.field_32))
                s = stor8[stor9[uint16(idx)]].field_0
                s = sha3(stor9[uint16(idx)], 8)
                idx = idx + 1
                s = s - uint128(stor1 * uint16(stor0.field_32)) + stor8[stor9[uint16(idx)]].field_0 + stor4
                continue 
            if stor8[stor9[uint16(idx)]].field_0 + stor4 >= (stor1 * stor9.length * uint16(-uint16(stor0.field_16) + 1000) / 1000) + uint128(stor1 * uint16(stor0.field_32)):
                s = (stor1 * stor9.length * uint16(-uint16(stor0.field_16) + 1000) / 1000) + uint128(stor1 * uint16(stor0.field_32))
                s = stor8[stor9[uint16(idx)]].field_0
                s = sha3(stor9[uint16(idx)], 8)
                idx = idx + 1
                s = s
                continue 
            s = (stor1 * stor9.length * uint16(-uint16(stor0.field_16) + 1000) / 1000) + uint128(stor1 * uint16(stor0.field_32))
            s = stor8[stor9[uint16(idx)]].field_0
            s = sha3(stor9[uint16(idx)], 8)
            idx = idx + 1
            s = s - (stor1 * stor9.length * uint16(-uint16(stor0.field_16) + 1000) / 1000) - uint128(stor1 * uint16(stor0.field_32)) + stor8[stor9[uint16(idx)]].field_0 + stor4
            continue 
        stor5 = s * uint16(stor0.field_16) / 1000
    if uint16(stor0.field_32) >= stor9.length:
        uint8(stor3.field_0) = 1
        emit LogEndOfROSCA()
    else:
        stor6 = 0
        stor7 = 0
        uint16(stor0.field_32) = uint16(uint16(stor0.field_32) + 1)
        emit LogStartOfRound(uint256 rg1):
                             0,
                             uint16(uint16(stor0.field_32) + 1),
}



}
