contract main {




// =====================  Runtime code  =====================


mapping of address stor0;
uint256 numberEnd;
uint256 dailyAmount;
uint256 weeklyAmount;
uint256 monthlyAmount;
uint256 seasonalAmount;
uint8 stor6;
uint8 stor6; offset 8
uint8 stor6; offset 16
uint8 stor6; offset 24
uint256 stor6; offset 24
uint256 stor6; offset 16
uint256 stor6; offset 8
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint256 stor21;
uint256 stor22;
uint256 stor23;
uint256 stor24;
uint256 stor25;
uint256 stor26;
address lotoAddress;
address stor28;

function numberEnd() {
    return numberEnd
}

function dailyAmount() {
    return dailyAmount
}

function monthlyAmount() {
    return monthlyAmount
}

function lotoAddress() {
    return lotoAddress
}

function weeklyAmount() {
    return weeklyAmount
}

function seasonalAmount() {
    return seasonalAmount
}

function _fallback() payable {
  stop
}

function setLoto(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == stor28
    lotoAddress = arg1
}

function migrate(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == stor28
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function payIn() payable {
    dailyAmount += eth.balance(this.address) - seasonalAmount - monthlyAmount - weeklyAmount - dailyAmount / 4
    weeklyAmount += eth.balance(this.address) - seasonalAmount - monthlyAmount - weeklyAmount - dailyAmount / 4
    monthlyAmount += eth.balance(this.address) - seasonalAmount - monthlyAmount - weeklyAmount - dailyAmount / 4
    seasonalAmount += eth.balance(this.address) - seasonalAmount - monthlyAmount - weeklyAmount - dailyAmount / 4
}

function sub_c4d2e0aa(?) {
    require calldata.size - 4 >= 64
    if lotoAddress != msg.sender:
        revert with 0, 'Loto only'
    if block.number >= stor15:
        uint256(stor6.field_0) = numberEnd == stor23 or Mask(248, 8, uint256(stor6.field_0))
        stor11 = stor15
        stor15 += 5000
        stor7 = stor19
        stor23 = numberEnd
        stor19 = numberEnd + 1
    if block.number >= stor16:
        Mask(248, 0, stor6.field_8) = Mask(248, 0, numberEnd == stor24)
        stor12 = stor16
        stor16 += 35000
        stor8 = stor20
        stor24 = numberEnd
        stor20 = numberEnd + 1
    if block.number >= stor17:
        Mask(240, 0, stor6.field_16) = Mask(240, 0, numberEnd == stor25)
        stor13 = stor17
        stor17 += 140000
        stor9 = stor21
        stor25 = numberEnd
        stor21 = numberEnd + 1
    if block.number >= stor18:
        Mask(232, 0, stor6.field_24) = Mask(232, 0, numberEnd == stor26)
        stor14 = stor18
        stor18 += 420000
        stor10 = stor22
        stor26 = numberEnd
        stor22 = numberEnd + 1
    numberEnd++
    stor0[stor1 + 1] = arg2
    emit Ticket((numberEnd + 1), Mask(128, 128, arg1));
}

function settleJackpot() {
    if block.number >= stor15:
        uint256(stor6.field_0) = numberEnd == stor23 or Mask(248, 8, uint256(stor6.field_0))
        stor11 = stor15
        stor15 += 5000
        stor7 = stor19
        stor23 = numberEnd
    if block.number >= stor16:
        Mask(248, 0, stor6.field_8) = Mask(248, 0, numberEnd == stor24)
        stor12 = stor16
        stor16 += 35000
        stor8 = stor20
        stor24 = numberEnd
    if block.number >= stor17:
        Mask(240, 0, stor6.field_16) = Mask(240, 0, numberEnd == stor25)
        stor13 = stor17
        stor17 += 140000
        stor9 = stor21
        stor25 = numberEnd
    if block.number >= stor18:
        Mask(232, 0, stor6.field_24) = Mask(232, 0, numberEnd == stor26)
        stor14 = stor18
        stor18 += 420000
        stor10 = stor22
        stor26 = numberEnd
    if stor11 != block.number:
        if uint8(stor6.field_0):
            if uint8(stor6.field_8):
                if uint8(stor6.field_16):
                    if not uint8(stor6.field_24):
                        seasonalAmount = 0
                        uint8(stor6.field_24) = 1
                        require stor26 + -stor10 + 1
                        emit 0xfe6f5236: stor10 + (Mask(48, 179, block.hash(stor11)) >> 179 % stor26 + -stor10 + 1), stor26 + -stor10 + 1, seasonalAmount, 0x800000000000000000000000000000000000000000000000000000000000000
                        if seasonalAmount > 0:
                            call stor0[stor10 + (Mask(48, 179, block.hash(stor11)) >> 179 % stor26 + -stor10 + 1)] with:
                               value seasonalAmount wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    monthlyAmount -= 10^18 * monthlyAmount / 3 / 10^18
                    uint8(stor6.field_16) = 1
                    require stor25 + -stor9 + 1
                    emit 0xfe6f5236: stor9 + (Mask(48, 179, block.hash(stor11)) >> 179 % stor25 + -stor9 + 1), stor25 + -stor9 + 1, 10^18 * monthlyAmount / 3 / 10^18, 0x400000000000000000000000000000000000000000000000000000000000000
                    if uint8(stor6.field_24):
                        if 10^18 * monthlyAmount / 3 / 10^18 > 0:
                            call stor0[stor9 + (Mask(48, 179, block.hash(stor11)) >> 179 % stor25 + -stor9 + 1)] with:
                               value 10^18 * monthlyAmount / 3 / 10^18 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        seasonalAmount = 0
                        uint8(stor6.field_24) = 1
                        require stor26 + -stor10 + 1
                        emit 0xfe6f5236: stor10 + (Mask(48, 179, block.hash(stor11)) >> 179 % stor26 + -stor10 + 1), stor26 + -stor10 + 1, seasonalAmount, 0x800000000000000000000000000000000000000000000000000000000000000
                        if 10^18 * monthlyAmount / 3 / 10^18 > 0:
                            call stor0[stor9 + (Mask(48, 179, block.hash(stor11)) >> 179 % stor25 + -stor9 + 1)] with:
                               value 10^18 * monthlyAmount / 3 / 10^18 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if seasonalAmount > 0:
                            call stor0[stor10 + (Mask(48, 179, block.hash(stor11)) >> 179 % stor26 + -stor10 + 1)] with:
                               value seasonalAmount wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
            else:
                weeklyAmount -= 10^18 * weeklyAmount / 12 / 10^18
                uint8(stor6.field_8) = 1
                require stor24 + -stor8 + 1
                emit 0xfe6f5236: stor8 + (Mask(48, 179, block.hash(stor11)) >> 179 % stor24 + -stor8 + 1), stor24 + -stor8 + 1, 10^18 * weeklyAmount / 12 / 10^18, 0x200000000000000000000000000000000000000000000000000000000000000
                if uint8(stor6.field_16):
                    if uint8(stor6.field_24):
                        if 10^18 * weeklyAmount / 12 / 10^18 > 0:
                            call stor0[stor8 + (Mask(48, 179, block.hash(stor11)) >> 179 % stor24 + -stor8 + 1)] with:
                               value 10^18 * weeklyAmount / 12 / 10^18 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        seasonalAmount = 0
                        uint8(stor6.field_24) = 1
                        require stor26 + -stor10 + 1
                        emit 0xfe6f5236: stor10 + (Mask(48, 179, block.hash(stor11)) >> 179 % stor26 + -stor10 + 1), stor26 + -stor10 + 1, seasonalAmount, 0x800000000000000000000000000000000000000000000000000000000000000
                        if 10^18 * weeklyAmount / 12 / 10^18 > 0:
                            call stor0[stor8 + (Mask(48, 179, block.hash(stor11)) >> 179 % stor24 + -stor8 + 1)] with:
                               value 10^18 * weeklyAmount / 12 / 10^18 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if seasonalAmount > 0:
                            call stor0[stor10 + (Mask(48, 179, block.hash(stor11)) >> 179 % stor26 + -stor10 + 1)] with:
                               value seasonalAmount wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    monthlyAmount -= 10^18 * monthlyAmount / 3 / 10^18
                    uint8(stor6.field_16) = 1
                    require stor25 + -stor9 + 1
                    emit 0xfe6f5236: stor9 + (Mask(48, 179, block.hash(stor11)) >> 179 % stor25 + -stor9 + 1), stor25 + -stor9 + 1, 10^18 * monthlyAmount / 3 / 10^18, 0x400000000000000000000000000000000000000000000000000000000000000
                    if uint8(stor6.field_24):
                        if 10^18 * weeklyAmount / 12 / 10^18 > 0:
                            call stor0[stor8 + (Mask(48, 179, block.hash(stor11)) >> 179 % stor24 + -stor8 + 1)] with:
                               value 10^18 * weeklyAmount / 12 / 10^18 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if 10^18 * monthlyAmount / 3 / 10^18 > 0:
                            call stor0[stor9 + (Mask(48, 179, block.hash(stor11)) >> 179 % stor25 + -stor9 + 1)] with:
                               value 10^18 * monthlyAmount / 3 / 10^18 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        seasonalAmount = 0
                        uint8(stor6.field_24) = 1
                        require stor26 + -stor10 + 1
                        emit 0xfe6f5236: stor10 + (Mask(48, 179, block.hash(stor11)) >> 179 % stor26 + -stor10 + 1), stor26 + -stor10 + 1, seasonalAmount, 0x800000000000000000000000000000000000000000000000000000000000000
                        if 10^18 * weeklyAmount / 12 / 10^18 > 0:
                            call stor0[stor8 + (Mask(48, 179, block.hash(stor11)) >> 179 % stor24 + -stor8 + 1)] with:
                               value 10^18 * weeklyAmount / 12 / 10^18 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if 10^18 * monthlyAmount / 3 / 10^18 > 0:
                            call stor0[stor9 + (Mask(48, 179, block.hash(stor11)) >> 179 % stor25 + -stor9 + 1)] with:
                               value 10^18 * monthlyAmount / 3 / 10^18 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if seasonalAmount > 0:
                            call stor0[stor10 + (Mask(48, 179, block.hash(stor11)) >> 179 % stor26 + -stor10 + 1)] with:
                               value seasonalAmount wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
        else:
            dailyAmount -= 10^18 * dailyAmount / 84 / 10^18
            uint8(stor6.field_0) = 1
            require stor23 + -stor7 + 1
            emit 0xfe6f5236: stor7 + (Mask(48, 179, block.hash(stor11)) >> 179 % stor23 + -stor7 + 1), stor23 + -stor7 + 1, 10^18 * dailyAmount / 84 / 10^18, 0x100000000000000000000000000000000000000000000000000000000000000
            if uint8(stor6.field_8):
                if uint8(stor6.field_16):
                    if uint8(stor6.field_24):
                        if 10^18 * dailyAmount / 84 / 10^18 > 0:
                            call stor0[stor7 + (Mask(48, 179, block.hash(stor11)) >> 179 % stor23 + -stor7 + 1)] with:
                               value 10^18 * dailyAmount / 84 / 10^18 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        seasonalAmount = 0
                        uint8(stor6.field_24) = 1
                        require stor26 + -stor10 + 1
                        emit 0xfe6f5236: stor10 + (Mask(48, 179, block.hash(stor11)) >> 179 % stor26 + -stor10 + 1), stor26 + -stor10 + 1, seasonalAmount, 0x800000000000000000000000000000000000000000000000000000000000000
                        if 10^18 * dailyAmount / 84 / 10^18 > 0:
                            call stor0[stor7 + (Mask(48, 179, block.hash(stor11)) >> 179 % stor23 + -stor7 + 1)] with:
                               value 10^18 * dailyAmount / 84 / 10^18 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if seasonalAmount > 0:
                            call stor0[stor10 + (Mask(48, 179, block.hash(stor11)) >> 179 % stor26 + -stor10 + 1)] with:
                               value seasonalAmount wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    monthlyAmount -= 10^18 * monthlyAmount / 3 / 10^18
                    uint8(stor6.field_16) = 1
                    require stor25 + -stor9 + 1
                    emit 0xfe6f5236: stor9 + (Mask(48, 179, block.hash(stor11)) >> 179 % stor25 + -stor9 + 1), stor25 + -stor9 + 1, 10^18 * monthlyAmount / 3 / 10^18, 0x400000000000000000000000000000000000000000000000000000000000000
                    if uint8(stor6.field_24):
                        if 10^18 * dailyAmount / 84 / 10^18 > 0:
                            call stor0[stor7 + (Mask(48, 179, block.hash(stor11)) >> 179 % stor23 + -stor7 + 1)] with:
                               value 10^18 * dailyAmount / 84 / 10^18 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if 10^18 * monthlyAmount / 3 / 10^18 > 0:
                            call stor0[stor9 + (Mask(48, 179, block.hash(stor11)) >> 179 % stor25 + -stor9 + 1)] with:
                               value 10^18 * monthlyAmount / 3 / 10^18 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        seasonalAmount = 0
                        uint8(stor6.field_24) = 1
                        require stor26 + -stor10 + 1
                        emit 0xfe6f5236: stor10 + (Mask(48, 179, block.hash(stor11)) >> 179 % stor26 + -stor10 + 1), stor26 + -stor10 + 1, seasonalAmount, 0x800000000000000000000000000000000000000000000000000000000000000
                        if 10^18 * dailyAmount / 84 / 10^18 > 0:
                            call stor0[stor7 + (Mask(48, 179, block.hash(stor11)) >> 179 % stor23 + -stor7 + 1)] with:
                               value 10^18 * dailyAmount / 84 / 10^18 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if 10^18 * monthlyAmount / 3 / 10^18 > 0:
                            call stor0[stor9 + (Mask(48, 179, block.hash(stor11)) >> 179 % stor25 + -stor9 + 1)] with:
                               value 10^18 * monthlyAmount / 3 / 10^18 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if seasonalAmount > 0:
                            call stor0[stor10 + (Mask(48, 179, block.hash(stor11)) >> 179 % stor26 + -stor10 + 1)] with:
                               value seasonalAmount wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
            else:
                weeklyAmount -= 10^18 * weeklyAmount / 12 / 10^18
                uint8(stor6.field_8) = 1
                require stor24 + -stor8 + 1
                emit 0xfe6f5236: stor8 + (Mask(48, 179, block.hash(stor11)) >> 179 % stor24 + -stor8 + 1), stor24 + -stor8 + 1, 10^18 * weeklyAmount / 12 / 10^18, 0x200000000000000000000000000000000000000000000000000000000000000
                if uint8(stor6.field_16):
                    if uint8(stor6.field_24):
                        if 10^18 * dailyAmount / 84 / 10^18 > 0:
                            call stor0[stor7 + (Mask(48, 179, block.hash(stor11)) >> 179 % stor23 + -stor7 + 1)] with:
                               value 10^18 * dailyAmount / 84 / 10^18 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if 10^18 * weeklyAmount / 12 / 10^18 > 0:
                            call stor0[stor8 + (Mask(48, 179, block.hash(stor11)) >> 179 % stor24 + -stor8 + 1)] with:
                               value 10^18 * weeklyAmount / 12 / 10^18 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        seasonalAmount = 0
                        uint8(stor6.field_24) = 1
                        require stor26 + -stor10 + 1
                        emit 0xfe6f5236: stor10 + (Mask(48, 179, block.hash(stor11)) >> 179 % stor26 + -stor10 + 1), stor26 + -stor10 + 1, seasonalAmount, 0x800000000000000000000000000000000000000000000000000000000000000
                        if 10^18 * dailyAmount / 84 / 10^18 > 0:
                            call stor0[stor7 + (Mask(48, 179, block.hash(stor11)) >> 179 % stor23 + -stor7 + 1)] with:
                               value 10^18 * dailyAmount / 84 / 10^18 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if 10^18 * weeklyAmount / 12 / 10^18 > 0:
                            call stor0[stor8 + (Mask(48, 179, block.hash(stor11)) >> 179 % stor24 + -stor8 + 1)] with:
                               value 10^18 * weeklyAmount / 12 / 10^18 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if seasonalAmount > 0:
                            call stor0[stor10 + (Mask(48, 179, block.hash(stor11)) >> 179 % stor26 + -stor10 + 1)] with:
                               value seasonalAmount wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    monthlyAmount -= 10^18 * monthlyAmount / 3 / 10^18
                    uint8(stor6.field_16) = 1
                    require stor25 + -stor9 + 1
                    emit 0xfe6f5236: stor9 + (Mask(48, 179, block.hash(stor11)) >> 179 % stor25 + -stor9 + 1), stor25 + -stor9 + 1, 10^18 * monthlyAmount / 3 / 10^18, 0x400000000000000000000000000000000000000000000000000000000000000
                    if uint8(stor6.field_24):
                        if 10^18 * dailyAmount / 84 / 10^18 > 0:
                            call stor0[stor7 + (Mask(48, 179, block.hash(stor11)) >> 179 % stor23 + -stor7 + 1)] with:
                               value 10^18 * dailyAmount / 84 / 10^18 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if 10^18 * weeklyAmount / 12 / 10^18 > 0:
                            call stor0[stor8 + (Mask(48, 179, block.hash(stor11)) >> 179 % stor24 + -stor8 + 1)] with:
                               value 10^18 * weeklyAmount / 12 / 10^18 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if 10^18 * monthlyAmount / 3 / 10^18 > 0:
                            call stor0[stor9 + (Mask(48, 179, block.hash(stor11)) >> 179 % stor25 + -stor9 + 1)] with:
                               value 10^18 * monthlyAmount / 3 / 10^18 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        seasonalAmount = 0
                        uint8(stor6.field_24) = 1
                        require stor26 + -stor10 + 1
                        emit 0xfe6f5236: stor10 + (Mask(48, 179, block.hash(stor11)) >> 179 % stor26 + -stor10 + 1), stor26 + -stor10 + 1, seasonalAmount, 0x800000000000000000000000000000000000000000000000000000000000000
                        if 10^18 * dailyAmount / 84 / 10^18 > 0:
                            call stor0[stor7 + (Mask(48, 179, block.hash(stor11)) >> 179 % stor23 + -stor7 + 1)] with:
                               value 10^18 * dailyAmount / 84 / 10^18 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if 10^18 * weeklyAmount / 12 / 10^18 > 0:
                            call stor0[stor8 + (Mask(48, 179, block.hash(stor11)) >> 179 % stor24 + -stor8 + 1)] with:
                               value 10^18 * weeklyAmount / 12 / 10^18 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if 10^18 * monthlyAmount / 3 / 10^18 > 0:
                            call stor0[stor9 + (Mask(48, 179, block.hash(stor11)) >> 179 % stor25 + -stor9 + 1)] with:
                               value 10^18 * monthlyAmount / 3 / 10^18 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        if seasonalAmount > 0:
                            call stor0[stor10 + (Mask(48, 179, block.hash(stor11)) >> 179 % stor26 + -stor10 + 1)] with:
                               value seasonalAmount wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
}



}
