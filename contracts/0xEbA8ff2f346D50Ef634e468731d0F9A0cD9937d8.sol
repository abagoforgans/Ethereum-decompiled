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
uint256 stor8;
uint256 stor9;
uint256 stor10;
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
uint256 stor27;
uint256 stor28;
uint256 stor29;
uint256 stor30;
uint256 stor31;
uint256 stor32;
uint8 stor33;

function _fallback() payable {
    stor8 = 0
    stor9 = 0
    stor10 = 0
    stor15 = 50 * 10^18
    stor16 = 100 * 10^18
    stor17 = 250 * 10^18
    stor18 = 500 * 10^18
    stor19 = 1000 * 10^18
    stor20 = 100000 * 10^18
    stor21 = 1000000 * 10^18
    stor22 = 1000000 * 10^18
    stor23 = 1000000 * 10^18
    stor24 = 20
    stor25 = 25
    stor26 = 30
    stor27 = 35
    stor28 = 40
    stor29 = 40
    stor30 = 40
    stor31 = 40
    stor32 = 40
    stor33 = 1
    require not msg.value
    stor0 = msg.sender
    stor1 = code.data[4245 len 20]
    stor7 = code.data[4265 len 32]
    stor6 = code.data[4297 len 32]
    stor3 = code.data[4329 len 32]
    stor4 = code.data[4361 len 32]
    stor5 = code.data[4393 len 32]
    stor2 = code.data[4437 len 20]
    return code.data[356 len 3877]
}



// =====================  Runtime code  =====================


#
#  - createTokens()
#
address owner;
address multisigAddress;
address tokenAddress;
uint256 startTime;
uint256 endTime;
uint256 hardcap;
uint256 rate;
uint256 bonusPercent;
uint256 tokensSold;
uint256 weiRaised;
uint256 investorCount;
mapping of uint256 investedAmountOf;
mapping of uint256 tokenAmountOf;
mapping of struct stor13;
uint256 level_1_amount;
uint256 level_2_amount;
uint256 level_3_amount;
uint256 level_4_amount;
uint256 level_5_amount;
uint256 level_6_amount;
uint256 level_7_amount;
uint256 level_8_amount;
uint256 level_9_amount;
uint256 level_1_percent;
uint256 level_2_percent;
uint256 level_3_percent;
uint256 level_4_percent;
uint256 level_5_percent;
uint256 level_6_percent;
uint256 level_7_percent;
uint256 level_8_percent;
uint256 level_9_percent;
uint8 canExchange;

function level_3_amount() {
    return level_3_amount
}

function canExchange() {
    return bool(canExchange)
}

function investedAmountOf(address arg1) {
    return investedAmountOf[arg1]
}

function rate() {
    return rate
}

function endTime() {
    return endTime
}

function weiRaised() {
    return weiRaised
}

function level_5_percent() {
    return level_5_percent
}

function multisig() {
    return multisigAddress
}

function level_4_percent() {
    return level_4_percent
}

function tokensSold() {
    return tokensSold
}

function level_2_amount() {
    return level_2_amount
}

function level_2_percent() {
    return level_2_percent
}

function level_8_amount() {
    return level_8_amount
}

function level_4_amount() {
    return level_4_amount
}

function level_7_percent() {
    return level_7_percent
}

function level_6_amount() {
    return level_6_amount
}

function level_5_amount() {
    return level_5_amount
}

function startTime() {
    return startTime
}

function level_7_amount() {
    return level_7_amount
}

function owner() {
    return owner
}

function tokenAmountOf(address arg1) {
    return tokenAmountOf[arg1]
}

function level_9_amount() {
    return level_9_amount
}

function level_3_percent() {
    return level_3_percent
}

function level_1_percent() {
    return level_1_percent
}

function level_9_percent() {
    return level_9_percent
}

function hardcap() {
    return hardcap
}

function level_8_percent() {
    return level_8_percent
}

function bonusPercent() {
    return bonusPercent
}

function investorCount() {
    return investorCount
}

function level_1_amount() {
    return level_1_amount
}

function level_6_percent() {
    return level_6_percent
}

function token() {
    return tokenAddress
}

function setHardcap(uint256 arg1) {
    require owner == msg.sender
    hardcap = arg1
}

function setEndTime(uint256 arg1) {
    require owner == msg.sender
    require arg1 >= block.timestamp
    require arg1 >= startTime
    endTime = arg1
}

function setPromo(address arg1, uint256 arg2, uint256 arg3) {
    require owner == msg.sender
    stor13[address(arg1)].field_0 = arg2
    stor13[address(arg1)].field_256 = arg3
}

function resetAmountBonuses() {
    require owner == msg.sender
    level_1_amount = 0
    level_2_amount = 0
    level_3_amount = 0
    level_4_amount = 0
    level_5_amount = 0
    level_6_amount = 0
    level_7_amount = 0
    level_8_amount = 0
    level_9_amount = 0
    level_1_percent = 0
    level_2_percent = 0
    level_3_percent = 0
    level_4_percent = 0
    level_5_percent = 0
    level_6_percent = 0
    level_7_percent = 0
    level_8_percent = 0
    level_9_percent = 0
}

function exchange() {
    require canExchange
    require ext_code.size(0x12a35383ca24ceb44cdcbbecbeb7baccb5f3754a)
    call 0x12a35383ca24ceb44cdcbbecbeb7baccb5f3754a.0x70a08231 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_code.size(0x12a35383ca24ceb44cdcbbecbeb7baccb5f3754a)
    call 0x12a35383ca24ceb44cdcbbecbeb7baccb5f3754a.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, 0xa6d9df476577c0d4a24eb50220fad007e444db8, ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(0x292317a267adfb97d1b4e3ffd04f9da399cf973b)
    call 0x292317a267adfb97d1b4e3ffd04f9da399cf973b.0x23b872dd with:
         gas gas_remaining - 710 wei
        args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, 105 * ext_call.return_data[0] / 40
    require ext_call.success
}

function setAmountBonuses(uint256 arg1, uint256 arg2, uint256 arg3) {
    require owner == msg.sender
    if 1 == arg1:
        if arg2:
            require arg2
            require 10^18 * arg2 / arg2 == 10^18
        level_1_amount = 10^18 * arg2
        level_1_percent = arg3
    else:
        if 2 == arg1:
            if arg2:
                require arg2
                require 10^18 * arg2 / arg2 == 10^18
            level_2_amount = 10^18 * arg2
            level_2_percent = arg3
        else:
            if 3 == arg1:
                if arg2:
                    require arg2
                    require 10^18 * arg2 / arg2 == 10^18
                level_3_amount = 10^18 * arg2
                level_3_percent = arg3
            else:
                if 4 == arg1:
                    if arg2:
                        require arg2
                        require 10^18 * arg2 / arg2 == 10^18
                    level_4_amount = 10^18 * arg2
                    level_4_percent = arg3
                else:
                    if 5 == arg1:
                        if arg2:
                            require arg2
                            require 10^18 * arg2 / arg2 == 10^18
                        level_5_amount = 10^18 * arg2
                        level_5_percent = arg3
                    else:
                        if 6 == arg1:
                            if arg2:
                                require arg2
                                require 10^18 * arg2 / arg2 == 10^18
                            level_6_amount = 10^18 * arg2
                            level_6_percent = arg3
                        else:
                            if 7 == arg1:
                                if arg2:
                                    require arg2
                                    require 10^18 * arg2 / arg2 == 10^18
                                level_7_amount = 10^18 * arg2
                                level_7_percent = arg3
                            else:
                                if 8 == arg1:
                                    if arg2:
                                        require arg2
                                        require 10^18 * arg2 / arg2 == 10^18
                                    level_8_amount = 10^18 * arg2
                                    level_8_percent = arg3
                                else:
                                    if 9 == arg1:
                                        if arg2:
                                            require arg2
                                            require 10^18 * arg2 / arg2 == 10^18
                                        level_9_amount = 10^18 * arg2
                                        level_9_percent = arg3
}

function calcToken() {
    if stor13[address(msg.sender)].field_256 < block.timestamp:
        if msg.value < level_1_amount:
            if msg.value < level_2_amount:
                if msg.value < level_3_amount:
                    if msg.value < level_4_amount:
                        if msg.value < level_5_amount:
                            if msg.value < level_6_amount:
                                if msg.value < level_7_amount:
                                    if msg.value < level_8_amount:
                                        if msg.value < level_9_amount:
                                            if 10^6 * msg.value / 10^6 == msg.value:
                                                if not 10^6 * msg.value / 10^18:
                                                    if not rate * 10^6 * msg.value / 10^18 / 100:
                                                        return (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100)
                                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                                        if bonusPercent * rate * 10^6 * msg.value / 10^18 / 100 / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent:
                                                            return (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100)
                                                else:
                                                    if 10^6 * msg.value / 10^18:
                                                        if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                            if not rate * 10^6 * msg.value / 10^18 / 100:
                                                                return (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100)
                                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                                if bonusPercent * rate * 10^6 * msg.value / 10^18 / 100 / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent:
                                                                    return (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100)
                                        else:
                                            if 10^6 * msg.value / 10^6 == msg.value:
                                                if not 10^6 * msg.value / 10^18:
                                                    if not rate * 10^6 * msg.value / 10^18 / 100:
                                                        return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                                        if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_9_percent:
                                                            return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                else:
                                                    if 10^6 * msg.value / 10^18:
                                                        if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                            if not rate * 10^6 * msg.value / 10^18 / 100:
                                                                return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                                if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_9_percent:
                                                                    return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                    else:
                                        if msg.value >= level_9_amount:
                                            if 10^6 * msg.value / 10^6 == msg.value:
                                                if not 10^6 * msg.value / 10^18:
                                                    if not rate * 10^6 * msg.value / 10^18 / 100:
                                                        return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                                        if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_9_percent:
                                                            return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                else:
                                                    if 10^6 * msg.value / 10^18:
                                                        if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                            if not rate * 10^6 * msg.value / 10^18 / 100:
                                                                return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                                if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_9_percent:
                                                                    return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                        else:
                                            if 10^6 * msg.value / 10^6 == msg.value:
                                                if not 10^6 * msg.value / 10^18:
                                                    if not rate * 10^6 * msg.value / 10^18 / 100:
                                                        return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                                        if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_8_percent:
                                                            return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                else:
                                                    if 10^6 * msg.value / 10^18:
                                                        if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                            if not rate * 10^6 * msg.value / 10^18 / 100:
                                                                return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                                if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_8_percent:
                                                                    return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                else:
                                    if msg.value < level_8_amount:
                                        if 10^6 * msg.value / 10^6 == msg.value:
                                            if not 10^6 * msg.value / 10^18:
                                                if not rate * 10^6 * msg.value / 10^18 / 100:
                                                    return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                if rate * 10^6 * msg.value / 10^18 / 100:
                                                    if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_7_percent:
                                                        return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                            else:
                                                if 10^6 * msg.value / 10^18:
                                                    if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                        if not rate * 10^6 * msg.value / 10^18 / 100:
                                                            return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                        if rate * 10^6 * msg.value / 10^18 / 100:
                                                            if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_7_percent:
                                                                return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                    else:
                                        if msg.value >= level_9_amount:
                                            if 10^6 * msg.value / 10^6 == msg.value:
                                                if not 10^6 * msg.value / 10^18:
                                                    if not rate * 10^6 * msg.value / 10^18 / 100:
                                                        return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                                        if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_9_percent:
                                                            return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                else:
                                                    if 10^6 * msg.value / 10^18:
                                                        if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                            if not rate * 10^6 * msg.value / 10^18 / 100:
                                                                return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                                if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_9_percent:
                                                                    return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                        else:
                                            if 10^6 * msg.value / 10^6 == msg.value:
                                                if not 10^6 * msg.value / 10^18:
                                                    if not rate * 10^6 * msg.value / 10^18 / 100:
                                                        return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                                        if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_8_percent:
                                                            return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                else:
                                                    if 10^6 * msg.value / 10^18:
                                                        if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                            if not rate * 10^6 * msg.value / 10^18 / 100:
                                                                return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                                if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_8_percent:
                                                                    return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
                            else:
                                if msg.value < level_7_amount:
                                    if 10^6 * msg.value / 10^6 == msg.value:
                                        if not 10^6 * msg.value / 10^18:
                                            if not rate * 10^6 * msg.value / 10^18 / 100:
                                                return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_6_percent:
                                                    return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                        else:
                                            if 10^6 * msg.value / 10^18:
                                                if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                    if not rate * 10^6 * msg.value / 10^18 / 100:
                                                        return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                                        if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_6_percent:
                                                            return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                else:
                                    if msg.value < level_8_amount:
                                        if 10^6 * msg.value / 10^6 == msg.value:
                                            if not 10^6 * msg.value / 10^18:
                                                if not rate * 10^6 * msg.value / 10^18 / 100:
                                                    return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                if rate * 10^6 * msg.value / 10^18 / 100:
                                                    if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_7_percent:
                                                        return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                            else:
                                                if 10^6 * msg.value / 10^18:
                                                    if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                        if not rate * 10^6 * msg.value / 10^18 / 100:
                                                            return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                        if rate * 10^6 * msg.value / 10^18 / 100:
                                                            if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_7_percent:
                                                                return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                    else:
                                        if msg.value >= level_9_amount:
                                            if 10^6 * msg.value / 10^6 == msg.value:
                                                if not 10^6 * msg.value / 10^18:
                                                    if not rate * 10^6 * msg.value / 10^18 / 100:
                                                        return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                                        if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_9_percent:
                                                            return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                else:
                                                    if 10^6 * msg.value / 10^18:
                                                        if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                            if not rate * 10^6 * msg.value / 10^18 / 100:
                                                                return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                                if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_9_percent:
                                                                    return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                        else:
                                            if 10^6 * msg.value / 10^6 == msg.value:
                                                if not 10^6 * msg.value / 10^18:
                                                    if not rate * 10^6 * msg.value / 10^18 / 100:
                                                        return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                                        if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_8_percent:
                                                            return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                else:
                                                    if 10^6 * msg.value / 10^18:
                                                        if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                            if not rate * 10^6 * msg.value / 10^18 / 100:
                                                                return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                                if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_8_percent:
                                                                    return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
                        else:
                            if msg.value < level_6_amount:
                                if 10^6 * msg.value / 10^6 == msg.value:
                                    if not 10^6 * msg.value / 10^18:
                                        if not rate * 10^6 * msg.value / 10^18 / 100:
                                            return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                        if rate * 10^6 * msg.value / 10^18 / 100:
                                            if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_5_percent:
                                                return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                    else:
                                        if 10^6 * msg.value / 10^18:
                                            if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                if not rate * 10^6 * msg.value / 10^18 / 100:
                                                    return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                if rate * 10^6 * msg.value / 10^18 / 100:
                                                    if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_5_percent:
                                                        return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100))
                            else:
                                if msg.value < level_7_amount:
                                    if 10^6 * msg.value / 10^6 == msg.value:
                                        if not 10^6 * msg.value / 10^18:
                                            if not rate * 10^6 * msg.value / 10^18 / 100:
                                                return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_6_percent:
                                                    return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                        else:
                                            if 10^6 * msg.value / 10^18:
                                                if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                    if not rate * 10^6 * msg.value / 10^18 / 100:
                                                        return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                                        if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_6_percent:
                                                            return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                else:
                                    if msg.value < level_8_amount:
                                        if 10^6 * msg.value / 10^6 == msg.value:
                                            if not 10^6 * msg.value / 10^18:
                                                if not rate * 10^6 * msg.value / 10^18 / 100:
                                                    return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                if rate * 10^6 * msg.value / 10^18 / 100:
                                                    if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_7_percent:
                                                        return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                            else:
                                                if 10^6 * msg.value / 10^18:
                                                    if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                        if not rate * 10^6 * msg.value / 10^18 / 100:
                                                            return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                        if rate * 10^6 * msg.value / 10^18 / 100:
                                                            if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_7_percent:
                                                                return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                    else:
                                        if msg.value >= level_9_amount:
                                            if 10^6 * msg.value / 10^6 == msg.value:
                                                if not 10^6 * msg.value / 10^18:
                                                    if not rate * 10^6 * msg.value / 10^18 / 100:
                                                        return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                                        if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_9_percent:
                                                            return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                else:
                                                    if 10^6 * msg.value / 10^18:
                                                        if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                            if not rate * 10^6 * msg.value / 10^18 / 100:
                                                                return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                                if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_9_percent:
                                                                    return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                        else:
                                            if 10^6 * msg.value / 10^6 == msg.value:
                                                if not 10^6 * msg.value / 10^18:
                                                    if not rate * 10^6 * msg.value / 10^18 / 100:
                                                        return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                                        if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_8_percent:
                                                            return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                else:
                                                    if 10^6 * msg.value / 10^18:
                                                        if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                            if not rate * 10^6 * msg.value / 10^18 / 100:
                                                                return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                                if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_8_percent:
                                                                    return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
                    else:
                        if msg.value < level_5_amount:
                            if 10^6 * msg.value / 10^6 == msg.value:
                                if not 10^6 * msg.value / 10^18:
                                    if not rate * 10^6 * msg.value / 10^18 / 100:
                                        return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                        if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_4_percent:
                                            return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                else:
                                    if 10^6 * msg.value / 10^18:
                                        if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                            if not rate * 10^6 * msg.value / 10^18 / 100:
                                                return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_4_percent:
                                                    return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100))
                        else:
                            if msg.value < level_6_amount:
                                if 10^6 * msg.value / 10^6 == msg.value:
                                    if not 10^6 * msg.value / 10^18:
                                        if not rate * 10^6 * msg.value / 10^18 / 100:
                                            return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                        if rate * 10^6 * msg.value / 10^18 / 100:
                                            if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_5_percent:
                                                return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                    else:
                                        if 10^6 * msg.value / 10^18:
                                            if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                if not rate * 10^6 * msg.value / 10^18 / 100:
                                                    return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                if rate * 10^6 * msg.value / 10^18 / 100:
                                                    if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_5_percent:
                                                        return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100))
                            else:
                                if msg.value < level_7_amount:
                                    if 10^6 * msg.value / 10^6 == msg.value:
                                        if not 10^6 * msg.value / 10^18:
                                            if not rate * 10^6 * msg.value / 10^18 / 100:
                                                return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_6_percent:
                                                    return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                        else:
                                            if 10^6 * msg.value / 10^18:
                                                if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                    if not rate * 10^6 * msg.value / 10^18 / 100:
                                                        return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                                        if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_6_percent:
                                                            return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                else:
                                    if msg.value < level_8_amount:
                                        if 10^6 * msg.value / 10^6 == msg.value:
                                            if not 10^6 * msg.value / 10^18:
                                                if not rate * 10^6 * msg.value / 10^18 / 100:
                                                    return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                if rate * 10^6 * msg.value / 10^18 / 100:
                                                    if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_7_percent:
                                                        return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                            else:
                                                if 10^6 * msg.value / 10^18:
                                                    if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                        if not rate * 10^6 * msg.value / 10^18 / 100:
                                                            return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                        if rate * 10^6 * msg.value / 10^18 / 100:
                                                            if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_7_percent:
                                                                return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                    else:
                                        if msg.value >= level_9_amount:
                                            if 10^6 * msg.value / 10^6 == msg.value:
                                                if not 10^6 * msg.value / 10^18:
                                                    if not rate * 10^6 * msg.value / 10^18 / 100:
                                                        return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                                        if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_9_percent:
                                                            return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                else:
                                                    if 10^6 * msg.value / 10^18:
                                                        if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                            if not rate * 10^6 * msg.value / 10^18 / 100:
                                                                return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                                if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_9_percent:
                                                                    return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                        else:
                                            if 10^6 * msg.value / 10^6 == msg.value:
                                                if not 10^6 * msg.value / 10^18:
                                                    if not rate * 10^6 * msg.value / 10^18 / 100:
                                                        return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                                        if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_8_percent:
                                                            return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                else:
                                                    if 10^6 * msg.value / 10^18:
                                                        if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                            if not rate * 10^6 * msg.value / 10^18 / 100:
                                                                return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                                if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_8_percent:
                                                                    return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
                else:
                    if msg.value < level_4_amount:
                        if 10^6 * msg.value / 10^6 == msg.value:
                            if not 10^6 * msg.value / 10^18:
                                if not rate * 10^6 * msg.value / 10^18 / 100:
                                    return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                if rate * 10^6 * msg.value / 10^18 / 100:
                                    if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_3_percent:
                                        return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100))
                            else:
                                if 10^6 * msg.value / 10^18:
                                    if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                        if not rate * 10^6 * msg.value / 10^18 / 100:
                                            return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                        if rate * 10^6 * msg.value / 10^18 / 100:
                                            if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_3_percent:
                                                return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100))
                    else:
                        if msg.value < level_5_amount:
                            if 10^6 * msg.value / 10^6 == msg.value:
                                if not 10^6 * msg.value / 10^18:
                                    if not rate * 10^6 * msg.value / 10^18 / 100:
                                        return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                        if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_4_percent:
                                            return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                else:
                                    if 10^6 * msg.value / 10^18:
                                        if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                            if not rate * 10^6 * msg.value / 10^18 / 100:
                                                return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_4_percent:
                                                    return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100))
                        else:
                            if msg.value < level_6_amount:
                                if 10^6 * msg.value / 10^6 == msg.value:
                                    if not 10^6 * msg.value / 10^18:
                                        if not rate * 10^6 * msg.value / 10^18 / 100:
                                            return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                        if rate * 10^6 * msg.value / 10^18 / 100:
                                            if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_5_percent:
                                                return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                    else:
                                        if 10^6 * msg.value / 10^18:
                                            if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                if not rate * 10^6 * msg.value / 10^18 / 100:
                                                    return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                if rate * 10^6 * msg.value / 10^18 / 100:
                                                    if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_5_percent:
                                                        return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100))
                            else:
                                if msg.value < level_7_amount:
                                    if 10^6 * msg.value / 10^6 == msg.value:
                                        if not 10^6 * msg.value / 10^18:
                                            if not rate * 10^6 * msg.value / 10^18 / 100:
                                                return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_6_percent:
                                                    return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                        else:
                                            if 10^6 * msg.value / 10^18:
                                                if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                    if not rate * 10^6 * msg.value / 10^18 / 100:
                                                        return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                                        if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_6_percent:
                                                            return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                else:
                                    if msg.value < level_8_amount:
                                        if 10^6 * msg.value / 10^6 == msg.value:
                                            if not 10^6 * msg.value / 10^18:
                                                if not rate * 10^6 * msg.value / 10^18 / 100:
                                                    return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                if rate * 10^6 * msg.value / 10^18 / 100:
                                                    if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_7_percent:
                                                        return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                            else:
                                                if 10^6 * msg.value / 10^18:
                                                    if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                        if not rate * 10^6 * msg.value / 10^18 / 100:
                                                            return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                        if rate * 10^6 * msg.value / 10^18 / 100:
                                                            if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_7_percent:
                                                                return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                    else:
                                        if msg.value >= level_9_amount:
                                            if 10^6 * msg.value / 10^6 == msg.value:
                                                if not 10^6 * msg.value / 10^18:
                                                    if not rate * 10^6 * msg.value / 10^18 / 100:
                                                        return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                                        if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_9_percent:
                                                            return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                else:
                                                    if 10^6 * msg.value / 10^18:
                                                        if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                            if not rate * 10^6 * msg.value / 10^18 / 100:
                                                                return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                                if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_9_percent:
                                                                    return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                        else:
                                            if 10^6 * msg.value / 10^6 == msg.value:
                                                if not 10^6 * msg.value / 10^18:
                                                    if not rate * 10^6 * msg.value / 10^18 / 100:
                                                        return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                                        if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_8_percent:
                                                            return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                else:
                                                    if 10^6 * msg.value / 10^18:
                                                        if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                            if not rate * 10^6 * msg.value / 10^18 / 100:
                                                                return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                                if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_8_percent:
                                                                    return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
            else:
                if msg.value < level_3_amount:
                    if 10^6 * msg.value / 10^6 == msg.value:
                        if not 10^6 * msg.value / 10^18:
                            if not rate * 10^6 * msg.value / 10^18 / 100:
                                return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_2_percent * rate * 10^6 * msg.value / 10^18 / 100))
                            if rate * 10^6 * msg.value / 10^18 / 100:
                                if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_2_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_2_percent:
                                    return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_2_percent * rate * 10^6 * msg.value / 10^18 / 100))
                        else:
                            if 10^6 * msg.value / 10^18:
                                if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                    if not rate * 10^6 * msg.value / 10^18 / 100:
                                        return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_2_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                        if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_2_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_2_percent:
                                            return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_2_percent * rate * 10^6 * msg.value / 10^18 / 100))
                else:
                    if msg.value < level_4_amount:
                        if 10^6 * msg.value / 10^6 == msg.value:
                            if not 10^6 * msg.value / 10^18:
                                if not rate * 10^6 * msg.value / 10^18 / 100:
                                    return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                if rate * 10^6 * msg.value / 10^18 / 100:
                                    if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_3_percent:
                                        return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100))
                            else:
                                if 10^6 * msg.value / 10^18:
                                    if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                        if not rate * 10^6 * msg.value / 10^18 / 100:
                                            return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                        if rate * 10^6 * msg.value / 10^18 / 100:
                                            if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_3_percent:
                                                return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100))
                    else:
                        if msg.value < level_5_amount:
                            if 10^6 * msg.value / 10^6 == msg.value:
                                if not 10^6 * msg.value / 10^18:
                                    if not rate * 10^6 * msg.value / 10^18 / 100:
                                        return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                        if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_4_percent:
                                            return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                else:
                                    if 10^6 * msg.value / 10^18:
                                        if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                            if not rate * 10^6 * msg.value / 10^18 / 100:
                                                return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_4_percent:
                                                    return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100))
                        else:
                            if msg.value < level_6_amount:
                                if 10^6 * msg.value / 10^6 == msg.value:
                                    if not 10^6 * msg.value / 10^18:
                                        if not rate * 10^6 * msg.value / 10^18 / 100:
                                            return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                        if rate * 10^6 * msg.value / 10^18 / 100:
                                            if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_5_percent:
                                                return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                    else:
                                        if 10^6 * msg.value / 10^18:
                                            if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                if not rate * 10^6 * msg.value / 10^18 / 100:
                                                    return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                if rate * 10^6 * msg.value / 10^18 / 100:
                                                    if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_5_percent:
                                                        return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100))
                            else:
                                if msg.value < level_7_amount:
                                    if 10^6 * msg.value / 10^6 == msg.value:
                                        if not 10^6 * msg.value / 10^18:
                                            if not rate * 10^6 * msg.value / 10^18 / 100:
                                                return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_6_percent:
                                                    return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                        else:
                                            if 10^6 * msg.value / 10^18:
                                                if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                    if not rate * 10^6 * msg.value / 10^18 / 100:
                                                        return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                                        if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_6_percent:
                                                            return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                else:
                                    if msg.value < level_8_amount:
                                        if 10^6 * msg.value / 10^6 == msg.value:
                                            if not 10^6 * msg.value / 10^18:
                                                if not rate * 10^6 * msg.value / 10^18 / 100:
                                                    return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                if rate * 10^6 * msg.value / 10^18 / 100:
                                                    if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_7_percent:
                                                        return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                            else:
                                                if 10^6 * msg.value / 10^18:
                                                    if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                        if not rate * 10^6 * msg.value / 10^18 / 100:
                                                            return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                        if rate * 10^6 * msg.value / 10^18 / 100:
                                                            if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_7_percent:
                                                                return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                    else:
                                        if msg.value >= level_9_amount:
                                            if 10^6 * msg.value / 10^6 == msg.value:
                                                if not 10^6 * msg.value / 10^18:
                                                    if not rate * 10^6 * msg.value / 10^18 / 100:
                                                        return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                                        if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_9_percent:
                                                            return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                else:
                                                    if 10^6 * msg.value / 10^18:
                                                        if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                            if not rate * 10^6 * msg.value / 10^18 / 100:
                                                                return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                                if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_9_percent:
                                                                    return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                        else:
                                            if 10^6 * msg.value / 10^6 == msg.value:
                                                if not 10^6 * msg.value / 10^18:
                                                    if not rate * 10^6 * msg.value / 10^18 / 100:
                                                        return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                                        if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_8_percent:
                                                            return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                else:
                                                    if 10^6 * msg.value / 10^18:
                                                        if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                            if not rate * 10^6 * msg.value / 10^18 / 100:
                                                                return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                                if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_8_percent:
                                                                    return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
        else:
            if msg.value < level_2_amount:
                if 10^6 * msg.value / 10^6 == msg.value:
                    if not 10^6 * msg.value / 10^18:
                        if not rate * 10^6 * msg.value / 10^18 / 100:
                            return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_1_percent * rate * 10^6 * msg.value / 10^18 / 100))
                        if rate * 10^6 * msg.value / 10^18 / 100:
                            if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_1_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_1_percent:
                                return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_1_percent * rate * 10^6 * msg.value / 10^18 / 100))
                    else:
                        if 10^6 * msg.value / 10^18:
                            if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                if not rate * 10^6 * msg.value / 10^18 / 100:
                                    return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_1_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                if rate * 10^6 * msg.value / 10^18 / 100:
                                    if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_1_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_1_percent:
                                        return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_1_percent * rate * 10^6 * msg.value / 10^18 / 100))
            else:
                if msg.value < level_3_amount:
                    if 10^6 * msg.value / 10^6 == msg.value:
                        if not 10^6 * msg.value / 10^18:
                            if not rate * 10^6 * msg.value / 10^18 / 100:
                                return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_2_percent * rate * 10^6 * msg.value / 10^18 / 100))
                            if rate * 10^6 * msg.value / 10^18 / 100:
                                if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_2_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_2_percent:
                                    return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_2_percent * rate * 10^6 * msg.value / 10^18 / 100))
                        else:
                            if 10^6 * msg.value / 10^18:
                                if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                    if not rate * 10^6 * msg.value / 10^18 / 100:
                                        return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_2_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                        if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_2_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_2_percent:
                                            return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_2_percent * rate * 10^6 * msg.value / 10^18 / 100))
                else:
                    if msg.value < level_4_amount:
                        if 10^6 * msg.value / 10^6 == msg.value:
                            if not 10^6 * msg.value / 10^18:
                                if not rate * 10^6 * msg.value / 10^18 / 100:
                                    return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                if rate * 10^6 * msg.value / 10^18 / 100:
                                    if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_3_percent:
                                        return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100))
                            else:
                                if 10^6 * msg.value / 10^18:
                                    if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                        if not rate * 10^6 * msg.value / 10^18 / 100:
                                            return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                        if rate * 10^6 * msg.value / 10^18 / 100:
                                            if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_3_percent:
                                                return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100))
                    else:
                        if msg.value < level_5_amount:
                            if 10^6 * msg.value / 10^6 == msg.value:
                                if not 10^6 * msg.value / 10^18:
                                    if not rate * 10^6 * msg.value / 10^18 / 100:
                                        return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                        if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_4_percent:
                                            return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                else:
                                    if 10^6 * msg.value / 10^18:
                                        if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                            if not rate * 10^6 * msg.value / 10^18 / 100:
                                                return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_4_percent:
                                                    return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100))
                        else:
                            if msg.value < level_6_amount:
                                if 10^6 * msg.value / 10^6 == msg.value:
                                    if not 10^6 * msg.value / 10^18:
                                        if not rate * 10^6 * msg.value / 10^18 / 100:
                                            return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                        if rate * 10^6 * msg.value / 10^18 / 100:
                                            if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_5_percent:
                                                return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                    else:
                                        if 10^6 * msg.value / 10^18:
                                            if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                if not rate * 10^6 * msg.value / 10^18 / 100:
                                                    return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                if rate * 10^6 * msg.value / 10^18 / 100:
                                                    if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_5_percent:
                                                        return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100))
                            else:
                                if msg.value < level_7_amount:
                                    if 10^6 * msg.value / 10^6 == msg.value:
                                        if not 10^6 * msg.value / 10^18:
                                            if not rate * 10^6 * msg.value / 10^18 / 100:
                                                return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_6_percent:
                                                    return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                        else:
                                            if 10^6 * msg.value / 10^18:
                                                if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                    if not rate * 10^6 * msg.value / 10^18 / 100:
                                                        return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                                        if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_6_percent:
                                                            return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                else:
                                    if msg.value < level_8_amount:
                                        if 10^6 * msg.value / 10^6 == msg.value:
                                            if not 10^6 * msg.value / 10^18:
                                                if not rate * 10^6 * msg.value / 10^18 / 100:
                                                    return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                if rate * 10^6 * msg.value / 10^18 / 100:
                                                    if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_7_percent:
                                                        return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                            else:
                                                if 10^6 * msg.value / 10^18:
                                                    if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                        if not rate * 10^6 * msg.value / 10^18 / 100:
                                                            return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                        if rate * 10^6 * msg.value / 10^18 / 100:
                                                            if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_7_percent:
                                                                return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                    else:
                                        if msg.value >= level_9_amount:
                                            if 10^6 * msg.value / 10^6 == msg.value:
                                                if not 10^6 * msg.value / 10^18:
                                                    if not rate * 10^6 * msg.value / 10^18 / 100:
                                                        return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                                        if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_9_percent:
                                                            return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                else:
                                                    if 10^6 * msg.value / 10^18:
                                                        if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                            if not rate * 10^6 * msg.value / 10^18 / 100:
                                                                return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                                if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_9_percent:
                                                                    return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                        else:
                                            if 10^6 * msg.value / 10^6 == msg.value:
                                                if not 10^6 * msg.value / 10^18:
                                                    if not rate * 10^6 * msg.value / 10^18 / 100:
                                                        return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                                        if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_8_percent:
                                                            return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                else:
                                                    if 10^6 * msg.value / 10^18:
                                                        if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                            if not rate * 10^6 * msg.value / 10^18 / 100:
                                                                return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                                if (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_8_percent:
                                                                    return ((bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
    else:
        if msg.value < level_1_amount:
            if msg.value < level_2_amount:
                if msg.value < level_3_amount:
                    if msg.value < level_4_amount:
                        if msg.value < level_5_amount:
                            if msg.value < level_6_amount:
                                if msg.value < level_7_amount:
                                    if msg.value < level_8_amount:
                                        if msg.value < level_9_amount:
                                            if 10^6 * msg.value / 10^6 == msg.value:
                                                if not 10^6 * msg.value / 10^18:
                                                    if not rate * 10^6 * msg.value / 10^18 / 100:
                                                        return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100))
                                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                                        if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent:
                                                            return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100))
                                                else:
                                                    if 10^6 * msg.value / 10^18:
                                                        if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                            if not rate * 10^6 * msg.value / 10^18 / 100:
                                                                return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100))
                                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                                if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent:
                                                                    return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100))
                                        else:
                                            if 10^6 * msg.value / 10^6 == msg.value:
                                                if not 10^6 * msg.value / 10^18:
                                                    if not rate * 10^6 * msg.value / 10^18 / 100:
                                                        return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                                        if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_9_percent:
                                                            return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                else:
                                                    if 10^6 * msg.value / 10^18:
                                                        if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                            if not rate * 10^6 * msg.value / 10^18 / 100:
                                                                return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                                if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_9_percent:
                                                                    return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                    else:
                                        if msg.value >= level_9_amount:
                                            if 10^6 * msg.value / 10^6 == msg.value:
                                                if not 10^6 * msg.value / 10^18:
                                                    if not rate * 10^6 * msg.value / 10^18 / 100:
                                                        return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                                        if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_9_percent:
                                                            return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                else:
                                                    if 10^6 * msg.value / 10^18:
                                                        if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                            if not rate * 10^6 * msg.value / 10^18 / 100:
                                                                return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                                if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_9_percent:
                                                                    return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                        else:
                                            if 10^6 * msg.value / 10^6 == msg.value:
                                                if not 10^6 * msg.value / 10^18:
                                                    if not rate * 10^6 * msg.value / 10^18 / 100:
                                                        return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                                        if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_8_percent:
                                                            return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                else:
                                                    if 10^6 * msg.value / 10^18:
                                                        if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                            if not rate * 10^6 * msg.value / 10^18 / 100:
                                                                return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                                if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_8_percent:
                                                                    return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                else:
                                    if msg.value < level_8_amount:
                                        if 10^6 * msg.value / 10^6 == msg.value:
                                            if not 10^6 * msg.value / 10^18:
                                                if not rate * 10^6 * msg.value / 10^18 / 100:
                                                    return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                if rate * 10^6 * msg.value / 10^18 / 100:
                                                    if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_7_percent:
                                                        return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                            else:
                                                if 10^6 * msg.value / 10^18:
                                                    if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                        if not rate * 10^6 * msg.value / 10^18 / 100:
                                                            return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                        if rate * 10^6 * msg.value / 10^18 / 100:
                                                            if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_7_percent:
                                                                return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                    else:
                                        if msg.value >= level_9_amount:
                                            if 10^6 * msg.value / 10^6 == msg.value:
                                                if not 10^6 * msg.value / 10^18:
                                                    if not rate * 10^6 * msg.value / 10^18 / 100:
                                                        return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                                        if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_9_percent:
                                                            return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                else:
                                                    if 10^6 * msg.value / 10^18:
                                                        if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                            if not rate * 10^6 * msg.value / 10^18 / 100:
                                                                return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                                if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_9_percent:
                                                                    return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                        else:
                                            if 10^6 * msg.value / 10^6 == msg.value:
                                                if not 10^6 * msg.value / 10^18:
                                                    if not rate * 10^6 * msg.value / 10^18 / 100:
                                                        return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                                        if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_8_percent:
                                                            return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                else:
                                                    if 10^6 * msg.value / 10^18:
                                                        if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                            if not rate * 10^6 * msg.value / 10^18 / 100:
                                                                return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                                if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_8_percent:
                                                                    return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
                            else:
                                if msg.value < level_7_amount:
                                    if 10^6 * msg.value / 10^6 == msg.value:
                                        if not 10^6 * msg.value / 10^18:
                                            if not rate * 10^6 * msg.value / 10^18 / 100:
                                                return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_6_percent:
                                                    return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                        else:
                                            if 10^6 * msg.value / 10^18:
                                                if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                    if not rate * 10^6 * msg.value / 10^18 / 100:
                                                        return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                                        if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_6_percent:
                                                            return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                else:
                                    if msg.value < level_8_amount:
                                        if 10^6 * msg.value / 10^6 == msg.value:
                                            if not 10^6 * msg.value / 10^18:
                                                if not rate * 10^6 * msg.value / 10^18 / 100:
                                                    return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                if rate * 10^6 * msg.value / 10^18 / 100:
                                                    if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_7_percent:
                                                        return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                            else:
                                                if 10^6 * msg.value / 10^18:
                                                    if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                        if not rate * 10^6 * msg.value / 10^18 / 100:
                                                            return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                        if rate * 10^6 * msg.value / 10^18 / 100:
                                                            if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_7_percent:
                                                                return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                    else:
                                        if msg.value >= level_9_amount:
                                            if 10^6 * msg.value / 10^6 == msg.value:
                                                if not 10^6 * msg.value / 10^18:
                                                    if not rate * 10^6 * msg.value / 10^18 / 100:
                                                        return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                                        if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_9_percent:
                                                            return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                else:
                                                    if 10^6 * msg.value / 10^18:
                                                        if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                            if not rate * 10^6 * msg.value / 10^18 / 100:
                                                                return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                                if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_9_percent:
                                                                    return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                        else:
                                            if 10^6 * msg.value / 10^6 == msg.value:
                                                if not 10^6 * msg.value / 10^18:
                                                    if not rate * 10^6 * msg.value / 10^18 / 100:
                                                        return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                                        if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_8_percent:
                                                            return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                else:
                                                    if 10^6 * msg.value / 10^18:
                                                        if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                            if not rate * 10^6 * msg.value / 10^18 / 100:
                                                                return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                                if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_8_percent:
                                                                    return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
                        else:
                            if msg.value < level_6_amount:
                                if 10^6 * msg.value / 10^6 == msg.value:
                                    if not 10^6 * msg.value / 10^18:
                                        if not rate * 10^6 * msg.value / 10^18 / 100:
                                            return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                        if rate * 10^6 * msg.value / 10^18 / 100:
                                            if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_5_percent:
                                                return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                    else:
                                        if 10^6 * msg.value / 10^18:
                                            if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                if not rate * 10^6 * msg.value / 10^18 / 100:
                                                    return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                if rate * 10^6 * msg.value / 10^18 / 100:
                                                    if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_5_percent:
                                                        return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100))
                            else:
                                if msg.value < level_7_amount:
                                    if 10^6 * msg.value / 10^6 == msg.value:
                                        if not 10^6 * msg.value / 10^18:
                                            if not rate * 10^6 * msg.value / 10^18 / 100:
                                                return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_6_percent:
                                                    return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                        else:
                                            if 10^6 * msg.value / 10^18:
                                                if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                    if not rate * 10^6 * msg.value / 10^18 / 100:
                                                        return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                                        if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_6_percent:
                                                            return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                else:
                                    if msg.value < level_8_amount:
                                        if 10^6 * msg.value / 10^6 == msg.value:
                                            if not 10^6 * msg.value / 10^18:
                                                if not rate * 10^6 * msg.value / 10^18 / 100:
                                                    return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                if rate * 10^6 * msg.value / 10^18 / 100:
                                                    if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_7_percent:
                                                        return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                            else:
                                                if 10^6 * msg.value / 10^18:
                                                    if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                        if not rate * 10^6 * msg.value / 10^18 / 100:
                                                            return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                        if rate * 10^6 * msg.value / 10^18 / 100:
                                                            if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_7_percent:
                                                                return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                    else:
                                        if msg.value >= level_9_amount:
                                            if 10^6 * msg.value / 10^6 == msg.value:
                                                if not 10^6 * msg.value / 10^18:
                                                    if not rate * 10^6 * msg.value / 10^18 / 100:
                                                        return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                                        if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_9_percent:
                                                            return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                else:
                                                    if 10^6 * msg.value / 10^18:
                                                        if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                            if not rate * 10^6 * msg.value / 10^18 / 100:
                                                                return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                                if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_9_percent:
                                                                    return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                        else:
                                            if 10^6 * msg.value / 10^6 == msg.value:
                                                if not 10^6 * msg.value / 10^18:
                                                    if not rate * 10^6 * msg.value / 10^18 / 100:
                                                        return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                                        if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_8_percent:
                                                            return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                else:
                                                    if 10^6 * msg.value / 10^18:
                                                        if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                            if not rate * 10^6 * msg.value / 10^18 / 100:
                                                                return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                                if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_8_percent:
                                                                    return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
                    else:
                        if msg.value < level_5_amount:
                            if 10^6 * msg.value / 10^6 == msg.value:
                                if not 10^6 * msg.value / 10^18:
                                    if not rate * 10^6 * msg.value / 10^18 / 100:
                                        return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                        if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_4_percent:
                                            return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                else:
                                    if 10^6 * msg.value / 10^18:
                                        if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                            if not rate * 10^6 * msg.value / 10^18 / 100:
                                                return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_4_percent:
                                                    return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100))
                        else:
                            if msg.value < level_6_amount:
                                if 10^6 * msg.value / 10^6 == msg.value:
                                    if not 10^6 * msg.value / 10^18:
                                        if not rate * 10^6 * msg.value / 10^18 / 100:
                                            return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                        if rate * 10^6 * msg.value / 10^18 / 100:
                                            if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_5_percent:
                                                return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                    else:
                                        if 10^6 * msg.value / 10^18:
                                            if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                if not rate * 10^6 * msg.value / 10^18 / 100:
                                                    return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                if rate * 10^6 * msg.value / 10^18 / 100:
                                                    if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_5_percent:
                                                        return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100))
                            else:
                                if msg.value < level_7_amount:
                                    if 10^6 * msg.value / 10^6 == msg.value:
                                        if not 10^6 * msg.value / 10^18:
                                            if not rate * 10^6 * msg.value / 10^18 / 100:
                                                return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_6_percent:
                                                    return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                        else:
                                            if 10^6 * msg.value / 10^18:
                                                if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                    if not rate * 10^6 * msg.value / 10^18 / 100:
                                                        return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                                        if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_6_percent:
                                                            return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                else:
                                    if msg.value < level_8_amount:
                                        if 10^6 * msg.value / 10^6 == msg.value:
                                            if not 10^6 * msg.value / 10^18:
                                                if not rate * 10^6 * msg.value / 10^18 / 100:
                                                    return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                if rate * 10^6 * msg.value / 10^18 / 100:
                                                    if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_7_percent:
                                                        return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                            else:
                                                if 10^6 * msg.value / 10^18:
                                                    if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                        if not rate * 10^6 * msg.value / 10^18 / 100:
                                                            return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                        if rate * 10^6 * msg.value / 10^18 / 100:
                                                            if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_7_percent:
                                                                return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                    else:
                                        if msg.value >= level_9_amount:
                                            if 10^6 * msg.value / 10^6 == msg.value:
                                                if not 10^6 * msg.value / 10^18:
                                                    if not rate * 10^6 * msg.value / 10^18 / 100:
                                                        return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                                        if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_9_percent:
                                                            return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                else:
                                                    if 10^6 * msg.value / 10^18:
                                                        if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                            if not rate * 10^6 * msg.value / 10^18 / 100:
                                                                return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                                if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_9_percent:
                                                                    return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                        else:
                                            if 10^6 * msg.value / 10^6 == msg.value:
                                                if not 10^6 * msg.value / 10^18:
                                                    if not rate * 10^6 * msg.value / 10^18 / 100:
                                                        return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                                        if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_8_percent:
                                                            return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                else:
                                                    if 10^6 * msg.value / 10^18:
                                                        if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                            if not rate * 10^6 * msg.value / 10^18 / 100:
                                                                return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                                if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_8_percent:
                                                                    return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
                else:
                    if msg.value < level_4_amount:
                        if 10^6 * msg.value / 10^6 == msg.value:
                            if not 10^6 * msg.value / 10^18:
                                if not rate * 10^6 * msg.value / 10^18 / 100:
                                    return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                if rate * 10^6 * msg.value / 10^18 / 100:
                                    if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_3_percent:
                                        return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100))
                            else:
                                if 10^6 * msg.value / 10^18:
                                    if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                        if not rate * 10^6 * msg.value / 10^18 / 100:
                                            return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                        if rate * 10^6 * msg.value / 10^18 / 100:
                                            if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_3_percent:
                                                return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100))
                    else:
                        if msg.value < level_5_amount:
                            if 10^6 * msg.value / 10^6 == msg.value:
                                if not 10^6 * msg.value / 10^18:
                                    if not rate * 10^6 * msg.value / 10^18 / 100:
                                        return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                        if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_4_percent:
                                            return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                else:
                                    if 10^6 * msg.value / 10^18:
                                        if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                            if not rate * 10^6 * msg.value / 10^18 / 100:
                                                return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_4_percent:
                                                    return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100))
                        else:
                            if msg.value < level_6_amount:
                                if 10^6 * msg.value / 10^6 == msg.value:
                                    if not 10^6 * msg.value / 10^18:
                                        if not rate * 10^6 * msg.value / 10^18 / 100:
                                            return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                        if rate * 10^6 * msg.value / 10^18 / 100:
                                            if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_5_percent:
                                                return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                    else:
                                        if 10^6 * msg.value / 10^18:
                                            if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                if not rate * 10^6 * msg.value / 10^18 / 100:
                                                    return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                if rate * 10^6 * msg.value / 10^18 / 100:
                                                    if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_5_percent:
                                                        return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100))
                            else:
                                if msg.value < level_7_amount:
                                    if 10^6 * msg.value / 10^6 == msg.value:
                                        if not 10^6 * msg.value / 10^18:
                                            if not rate * 10^6 * msg.value / 10^18 / 100:
                                                return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_6_percent:
                                                    return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                        else:
                                            if 10^6 * msg.value / 10^18:
                                                if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                    if not rate * 10^6 * msg.value / 10^18 / 100:
                                                        return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                                        if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_6_percent:
                                                            return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                else:
                                    if msg.value < level_8_amount:
                                        if 10^6 * msg.value / 10^6 == msg.value:
                                            if not 10^6 * msg.value / 10^18:
                                                if not rate * 10^6 * msg.value / 10^18 / 100:
                                                    return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                if rate * 10^6 * msg.value / 10^18 / 100:
                                                    if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_7_percent:
                                                        return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                            else:
                                                if 10^6 * msg.value / 10^18:
                                                    if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                        if not rate * 10^6 * msg.value / 10^18 / 100:
                                                            return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                        if rate * 10^6 * msg.value / 10^18 / 100:
                                                            if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_7_percent:
                                                                return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                    else:
                                        if msg.value >= level_9_amount:
                                            if 10^6 * msg.value / 10^6 == msg.value:
                                                if not 10^6 * msg.value / 10^18:
                                                    if not rate * 10^6 * msg.value / 10^18 / 100:
                                                        return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                                        if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_9_percent:
                                                            return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                else:
                                                    if 10^6 * msg.value / 10^18:
                                                        if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                            if not rate * 10^6 * msg.value / 10^18 / 100:
                                                                return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                                if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_9_percent:
                                                                    return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                        else:
                                            if 10^6 * msg.value / 10^6 == msg.value:
                                                if not 10^6 * msg.value / 10^18:
                                                    if not rate * 10^6 * msg.value / 10^18 / 100:
                                                        return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                                        if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_8_percent:
                                                            return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                else:
                                                    if 10^6 * msg.value / 10^18:
                                                        if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                            if not rate * 10^6 * msg.value / 10^18 / 100:
                                                                return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                                if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_8_percent:
                                                                    return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
            else:
                if msg.value < level_3_amount:
                    if 10^6 * msg.value / 10^6 == msg.value:
                        if not 10^6 * msg.value / 10^18:
                            if not rate * 10^6 * msg.value / 10^18 / 100:
                                return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_2_percent * rate * 10^6 * msg.value / 10^18 / 100))
                            if rate * 10^6 * msg.value / 10^18 / 100:
                                if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_2_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_2_percent:
                                    return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_2_percent * rate * 10^6 * msg.value / 10^18 / 100))
                        else:
                            if 10^6 * msg.value / 10^18:
                                if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                    if not rate * 10^6 * msg.value / 10^18 / 100:
                                        return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_2_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                        if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_2_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_2_percent:
                                            return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_2_percent * rate * 10^6 * msg.value / 10^18 / 100))
                else:
                    if msg.value < level_4_amount:
                        if 10^6 * msg.value / 10^6 == msg.value:
                            if not 10^6 * msg.value / 10^18:
                                if not rate * 10^6 * msg.value / 10^18 / 100:
                                    return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                if rate * 10^6 * msg.value / 10^18 / 100:
                                    if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_3_percent:
                                        return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100))
                            else:
                                if 10^6 * msg.value / 10^18:
                                    if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                        if not rate * 10^6 * msg.value / 10^18 / 100:
                                            return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                        if rate * 10^6 * msg.value / 10^18 / 100:
                                            if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_3_percent:
                                                return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100))
                    else:
                        if msg.value < level_5_amount:
                            if 10^6 * msg.value / 10^6 == msg.value:
                                if not 10^6 * msg.value / 10^18:
                                    if not rate * 10^6 * msg.value / 10^18 / 100:
                                        return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                        if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_4_percent:
                                            return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                else:
                                    if 10^6 * msg.value / 10^18:
                                        if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                            if not rate * 10^6 * msg.value / 10^18 / 100:
                                                return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_4_percent:
                                                    return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100))
                        else:
                            if msg.value < level_6_amount:
                                if 10^6 * msg.value / 10^6 == msg.value:
                                    if not 10^6 * msg.value / 10^18:
                                        if not rate * 10^6 * msg.value / 10^18 / 100:
                                            return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                        if rate * 10^6 * msg.value / 10^18 / 100:
                                            if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_5_percent:
                                                return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                    else:
                                        if 10^6 * msg.value / 10^18:
                                            if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                if not rate * 10^6 * msg.value / 10^18 / 100:
                                                    return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                if rate * 10^6 * msg.value / 10^18 / 100:
                                                    if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_5_percent:
                                                        return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100))
                            else:
                                if msg.value < level_7_amount:
                                    if 10^6 * msg.value / 10^6 == msg.value:
                                        if not 10^6 * msg.value / 10^18:
                                            if not rate * 10^6 * msg.value / 10^18 / 100:
                                                return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_6_percent:
                                                    return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                        else:
                                            if 10^6 * msg.value / 10^18:
                                                if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                    if not rate * 10^6 * msg.value / 10^18 / 100:
                                                        return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                                        if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_6_percent:
                                                            return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                else:
                                    if msg.value < level_8_amount:
                                        if 10^6 * msg.value / 10^6 == msg.value:
                                            if not 10^6 * msg.value / 10^18:
                                                if not rate * 10^6 * msg.value / 10^18 / 100:
                                                    return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                if rate * 10^6 * msg.value / 10^18 / 100:
                                                    if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_7_percent:
                                                        return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                            else:
                                                if 10^6 * msg.value / 10^18:
                                                    if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                        if not rate * 10^6 * msg.value / 10^18 / 100:
                                                            return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                        if rate * 10^6 * msg.value / 10^18 / 100:
                                                            if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_7_percent:
                                                                return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                    else:
                                        if msg.value >= level_9_amount:
                                            if 10^6 * msg.value / 10^6 == msg.value:
                                                if not 10^6 * msg.value / 10^18:
                                                    if not rate * 10^6 * msg.value / 10^18 / 100:
                                                        return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                                        if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_9_percent:
                                                            return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                else:
                                                    if 10^6 * msg.value / 10^18:
                                                        if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                            if not rate * 10^6 * msg.value / 10^18 / 100:
                                                                return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                                if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_9_percent:
                                                                    return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                        else:
                                            if 10^6 * msg.value / 10^6 == msg.value:
                                                if not 10^6 * msg.value / 10^18:
                                                    if not rate * 10^6 * msg.value / 10^18 / 100:
                                                        return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                                        if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_8_percent:
                                                            return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                else:
                                                    if 10^6 * msg.value / 10^18:
                                                        if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                            if not rate * 10^6 * msg.value / 10^18 / 100:
                                                                return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                                if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_8_percent:
                                                                    return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
        else:
            if msg.value < level_2_amount:
                if 10^6 * msg.value / 10^6 == msg.value:
                    if not 10^6 * msg.value / 10^18:
                        if not rate * 10^6 * msg.value / 10^18 / 100:
                            return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_1_percent * rate * 10^6 * msg.value / 10^18 / 100))
                        if rate * 10^6 * msg.value / 10^18 / 100:
                            if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_1_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_1_percent:
                                return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_1_percent * rate * 10^6 * msg.value / 10^18 / 100))
                    else:
                        if 10^6 * msg.value / 10^18:
                            if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                if not rate * 10^6 * msg.value / 10^18 / 100:
                                    return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_1_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                if rate * 10^6 * msg.value / 10^18 / 100:
                                    if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_1_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_1_percent:
                                        return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_1_percent * rate * 10^6 * msg.value / 10^18 / 100))
            else:
                if msg.value < level_3_amount:
                    if 10^6 * msg.value / 10^6 == msg.value:
                        if not 10^6 * msg.value / 10^18:
                            if not rate * 10^6 * msg.value / 10^18 / 100:
                                return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_2_percent * rate * 10^6 * msg.value / 10^18 / 100))
                            if rate * 10^6 * msg.value / 10^18 / 100:
                                if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_2_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_2_percent:
                                    return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_2_percent * rate * 10^6 * msg.value / 10^18 / 100))
                        else:
                            if 10^6 * msg.value / 10^18:
                                if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                    if not rate * 10^6 * msg.value / 10^18 / 100:
                                        return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_2_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                        if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_2_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_2_percent:
                                            return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_2_percent * rate * 10^6 * msg.value / 10^18 / 100))
                else:
                    if msg.value < level_4_amount:
                        if 10^6 * msg.value / 10^6 == msg.value:
                            if not 10^6 * msg.value / 10^18:
                                if not rate * 10^6 * msg.value / 10^18 / 100:
                                    return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                if rate * 10^6 * msg.value / 10^18 / 100:
                                    if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_3_percent:
                                        return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100))
                            else:
                                if 10^6 * msg.value / 10^18:
                                    if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                        if not rate * 10^6 * msg.value / 10^18 / 100:
                                            return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                        if rate * 10^6 * msg.value / 10^18 / 100:
                                            if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_3_percent:
                                                return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100))
                    else:
                        if msg.value < level_5_amount:
                            if 10^6 * msg.value / 10^6 == msg.value:
                                if not 10^6 * msg.value / 10^18:
                                    if not rate * 10^6 * msg.value / 10^18 / 100:
                                        return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                        if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_4_percent:
                                            return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                else:
                                    if 10^6 * msg.value / 10^18:
                                        if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                            if not rate * 10^6 * msg.value / 10^18 / 100:
                                                return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_4_percent:
                                                    return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100))
                        else:
                            if msg.value < level_6_amount:
                                if 10^6 * msg.value / 10^6 == msg.value:
                                    if not 10^6 * msg.value / 10^18:
                                        if not rate * 10^6 * msg.value / 10^18 / 100:
                                            return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                        if rate * 10^6 * msg.value / 10^18 / 100:
                                            if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_5_percent:
                                                return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                    else:
                                        if 10^6 * msg.value / 10^18:
                                            if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                if not rate * 10^6 * msg.value / 10^18 / 100:
                                                    return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                if rate * 10^6 * msg.value / 10^18 / 100:
                                                    if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_5_percent:
                                                        return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100))
                            else:
                                if msg.value < level_7_amount:
                                    if 10^6 * msg.value / 10^6 == msg.value:
                                        if not 10^6 * msg.value / 10^18:
                                            if not rate * 10^6 * msg.value / 10^18 / 100:
                                                return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_6_percent:
                                                    return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                        else:
                                            if 10^6 * msg.value / 10^18:
                                                if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                    if not rate * 10^6 * msg.value / 10^18 / 100:
                                                        return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                                        if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_6_percent:
                                                            return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                else:
                                    if msg.value < level_8_amount:
                                        if 10^6 * msg.value / 10^6 == msg.value:
                                            if not 10^6 * msg.value / 10^18:
                                                if not rate * 10^6 * msg.value / 10^18 / 100:
                                                    return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                if rate * 10^6 * msg.value / 10^18 / 100:
                                                    if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_7_percent:
                                                        return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                            else:
                                                if 10^6 * msg.value / 10^18:
                                                    if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                        if not rate * 10^6 * msg.value / 10^18 / 100:
                                                            return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                        if rate * 10^6 * msg.value / 10^18 / 100:
                                                            if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_7_percent:
                                                                return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                    else:
                                        if msg.value >= level_9_amount:
                                            if 10^6 * msg.value / 10^6 == msg.value:
                                                if not 10^6 * msg.value / 10^18:
                                                    if not rate * 10^6 * msg.value / 10^18 / 100:
                                                        return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                                        if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_9_percent:
                                                            return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                else:
                                                    if 10^6 * msg.value / 10^18:
                                                        if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                            if not rate * 10^6 * msg.value / 10^18 / 100:
                                                                return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                                if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_9_percent:
                                                                    return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                        else:
                                            if 10^6 * msg.value / 10^6 == msg.value:
                                                if not 10^6 * msg.value / 10^18:
                                                    if not rate * 10^6 * msg.value / 10^18 / 100:
                                                        return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                                        if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_8_percent:
                                                            return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                else:
                                                    if 10^6 * msg.value / 10^18:
                                                        if rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate:
                                                            if not rate * 10^6 * msg.value / 10^18 / 100:
                                                                return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
                                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                                if (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_8_percent:
                                                                    return ((stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100))
    revert
}

function _fallback() payable {
    require block.timestamp > startTime
    require block.timestamp <= endTime
    require tokensSold <= hardcap
    require 10^6 * msg.value / 10^6 == msg.value
    if 10^6 * msg.value / 10^18:
        require 10^6 * msg.value / 10^18
        require rate * 10^6 * msg.value / 10^18 / 10^6 * msg.value / 10^18 == rate
    if stor13[address(msg.sender)].field_256 < block.timestamp:
        if msg.value < level_1_amount:
            if msg.value < level_2_amount:
                if msg.value < level_3_amount:
                    if msg.value < level_4_amount:
                        if msg.value < level_5_amount:
                            if msg.value < level_6_amount:
                                if msg.value < level_7_amount:
                                    if msg.value < level_8_amount:
                                        if msg.value < level_9_amount:
                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                require rate * 10^6 * msg.value / 10^18 / 100
                                                require bonusPercent * rate * 10^6 * msg.value / 10^18 / 100 / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent
                                            require bonusPercent * rate * 10^6 * msg.value / 10^18 / 100 >= 10000
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, bonusPercent * rate * 10^6 * msg.value / 10^18 / 100
                                            require ext_call.success
                                            if not investedAmountOf[address(msg.sender)]:
                                                investorCount++
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] += bonusPercent * rate * 10^6 * msg.value / 10^18 / 100
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                            tokensSold += bonusPercent * rate * 10^6 * msg.value / 10^18 / 100
                                        else:
                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                require rate * 10^6 * msg.value / 10^18 / 100
                                                require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_9_percent
                                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                            require ext_call.success
                                            if not investedAmountOf[address(msg.sender)]:
                                                investorCount++
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                            tokensSold = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                                    else:
                                        if msg.value >= level_9_amount:
                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                require rate * 10^6 * msg.value / 10^18 / 100
                                                require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_9_percent
                                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                            require ext_call.success
                                            if not investedAmountOf[address(msg.sender)]:
                                                investorCount++
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                            tokensSold = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                                        else:
                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                require rate * 10^6 * msg.value / 10^18 / 100
                                                require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_8_percent
                                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                            require ext_call.success
                                            if not investedAmountOf[address(msg.sender)]:
                                                investorCount++
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                            tokensSold = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                                else:
                                    if msg.value < level_8_amount:
                                        if rate * 10^6 * msg.value / 10^18 / 100:
                                            require rate * 10^6 * msg.value / 10^18 / 100
                                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_7_percent
                                        require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x23b872dd with:
                                             gas gas_remaining - 710 wei
                                            args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                        require ext_call.success
                                        if not investedAmountOf[address(msg.sender)]:
                                            investorCount++
                                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                        investedAmountOf[address(msg.sender)] += msg.value
                                        require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                        tokenAmountOf[address(msg.sender)] = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                        tokensSold = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                                    else:
                                        if msg.value >= level_9_amount:
                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                require rate * 10^6 * msg.value / 10^18 / 100
                                                require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_9_percent
                                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                            require ext_call.success
                                            if not investedAmountOf[address(msg.sender)]:
                                                investorCount++
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                            tokensSold = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                                        else:
                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                require rate * 10^6 * msg.value / 10^18 / 100
                                                require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_8_percent
                                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                            require ext_call.success
                                            if not investedAmountOf[address(msg.sender)]:
                                                investorCount++
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                            tokensSold = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                            else:
                                if msg.value < level_7_amount:
                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                        require rate * 10^6 * msg.value / 10^18 / 100
                                        require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_6_percent
                                    require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                    require ext_call.success
                                    if not investedAmountOf[address(msg.sender)]:
                                        investorCount++
                                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                    investedAmountOf[address(msg.sender)] += msg.value
                                    require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                    tokenAmountOf[address(msg.sender)] = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                    tokensSold = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                                else:
                                    if msg.value < level_8_amount:
                                        if rate * 10^6 * msg.value / 10^18 / 100:
                                            require rate * 10^6 * msg.value / 10^18 / 100
                                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_7_percent
                                        require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x23b872dd with:
                                             gas gas_remaining - 710 wei
                                            args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                        require ext_call.success
                                        if not investedAmountOf[address(msg.sender)]:
                                            investorCount++
                                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                        investedAmountOf[address(msg.sender)] += msg.value
                                        require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                        tokenAmountOf[address(msg.sender)] = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                        tokensSold = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                                    else:
                                        if msg.value >= level_9_amount:
                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                require rate * 10^6 * msg.value / 10^18 / 100
                                                require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_9_percent
                                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                            require ext_call.success
                                            if not investedAmountOf[address(msg.sender)]:
                                                investorCount++
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                            tokensSold = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                                        else:
                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                require rate * 10^6 * msg.value / 10^18 / 100
                                                require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_8_percent
                                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                            require ext_call.success
                                            if not investedAmountOf[address(msg.sender)]:
                                                investorCount++
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                            tokensSold = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                        else:
                            if msg.value < level_6_amount:
                                if rate * 10^6 * msg.value / 10^18 / 100:
                                    require rate * 10^6 * msg.value / 10^18 / 100
                                    require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_5_percent
                                require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                require ext_call.success
                                if not investedAmountOf[address(msg.sender)]:
                                    investorCount++
                                require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                investedAmountOf[address(msg.sender)] += msg.value
                                require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                tokenAmountOf[address(msg.sender)] = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                tokensSold = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                            else:
                                if msg.value < level_7_amount:
                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                        require rate * 10^6 * msg.value / 10^18 / 100
                                        require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_6_percent
                                    require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                    require ext_call.success
                                    if not investedAmountOf[address(msg.sender)]:
                                        investorCount++
                                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                    investedAmountOf[address(msg.sender)] += msg.value
                                    require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                    tokenAmountOf[address(msg.sender)] = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                    tokensSold = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                                else:
                                    if msg.value < level_8_amount:
                                        if rate * 10^6 * msg.value / 10^18 / 100:
                                            require rate * 10^6 * msg.value / 10^18 / 100
                                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_7_percent
                                        require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x23b872dd with:
                                             gas gas_remaining - 710 wei
                                            args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                        require ext_call.success
                                        if not investedAmountOf[address(msg.sender)]:
                                            investorCount++
                                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                        investedAmountOf[address(msg.sender)] += msg.value
                                        require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                        tokenAmountOf[address(msg.sender)] = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                        tokensSold = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                                    else:
                                        if msg.value >= level_9_amount:
                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                require rate * 10^6 * msg.value / 10^18 / 100
                                                require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_9_percent
                                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                            require ext_call.success
                                            if not investedAmountOf[address(msg.sender)]:
                                                investorCount++
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                            tokensSold = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                                        else:
                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                require rate * 10^6 * msg.value / 10^18 / 100
                                                require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_8_percent
                                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                            require ext_call.success
                                            if not investedAmountOf[address(msg.sender)]:
                                                investorCount++
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                            tokensSold = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                    else:
                        if msg.value < level_5_amount:
                            if rate * 10^6 * msg.value / 10^18 / 100:
                                require rate * 10^6 * msg.value / 10^18 / 100
                                require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_4_percent
                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100)
                            require ext_call.success
                            if not investedAmountOf[address(msg.sender)]:
                                investorCount++
                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                            investedAmountOf[address(msg.sender)] += msg.value
                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                            tokenAmountOf[address(msg.sender)] = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                            tokensSold = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                        else:
                            if msg.value < level_6_amount:
                                if rate * 10^6 * msg.value / 10^18 / 100:
                                    require rate * 10^6 * msg.value / 10^18 / 100
                                    require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_5_percent
                                require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                require ext_call.success
                                if not investedAmountOf[address(msg.sender)]:
                                    investorCount++
                                require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                investedAmountOf[address(msg.sender)] += msg.value
                                require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                tokenAmountOf[address(msg.sender)] = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                tokensSold = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                            else:
                                if msg.value < level_7_amount:
                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                        require rate * 10^6 * msg.value / 10^18 / 100
                                        require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_6_percent
                                    require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                    require ext_call.success
                                    if not investedAmountOf[address(msg.sender)]:
                                        investorCount++
                                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                    investedAmountOf[address(msg.sender)] += msg.value
                                    require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                    tokenAmountOf[address(msg.sender)] = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                    tokensSold = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                                else:
                                    if msg.value < level_8_amount:
                                        if rate * 10^6 * msg.value / 10^18 / 100:
                                            require rate * 10^6 * msg.value / 10^18 / 100
                                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_7_percent
                                        require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x23b872dd with:
                                             gas gas_remaining - 710 wei
                                            args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                        require ext_call.success
                                        if not investedAmountOf[address(msg.sender)]:
                                            investorCount++
                                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                        investedAmountOf[address(msg.sender)] += msg.value
                                        require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                        tokenAmountOf[address(msg.sender)] = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                        tokensSold = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                                    else:
                                        if msg.value >= level_9_amount:
                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                require rate * 10^6 * msg.value / 10^18 / 100
                                                require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_9_percent
                                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                            require ext_call.success
                                            if not investedAmountOf[address(msg.sender)]:
                                                investorCount++
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                            tokensSold = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                                        else:
                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                require rate * 10^6 * msg.value / 10^18 / 100
                                                require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_8_percent
                                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                            require ext_call.success
                                            if not investedAmountOf[address(msg.sender)]:
                                                investorCount++
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                            tokensSold = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                else:
                    if msg.value < level_4_amount:
                        if rate * 10^6 * msg.value / 10^18 / 100:
                            require rate * 10^6 * msg.value / 10^18 / 100
                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_3_percent
                        require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100)
                        require ext_call.success
                        if not investedAmountOf[address(msg.sender)]:
                            investorCount++
                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                        investedAmountOf[address(msg.sender)] += msg.value
                        require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                        tokenAmountOf[address(msg.sender)] = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                        tokensSold = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                    else:
                        if msg.value < level_5_amount:
                            if rate * 10^6 * msg.value / 10^18 / 100:
                                require rate * 10^6 * msg.value / 10^18 / 100
                                require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_4_percent
                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100)
                            require ext_call.success
                            if not investedAmountOf[address(msg.sender)]:
                                investorCount++
                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                            investedAmountOf[address(msg.sender)] += msg.value
                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                            tokenAmountOf[address(msg.sender)] = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                            tokensSold = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                        else:
                            if msg.value < level_6_amount:
                                if rate * 10^6 * msg.value / 10^18 / 100:
                                    require rate * 10^6 * msg.value / 10^18 / 100
                                    require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_5_percent
                                require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                require ext_call.success
                                if not investedAmountOf[address(msg.sender)]:
                                    investorCount++
                                require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                investedAmountOf[address(msg.sender)] += msg.value
                                require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                tokenAmountOf[address(msg.sender)] = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                tokensSold = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                            else:
                                if msg.value < level_7_amount:
                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                        require rate * 10^6 * msg.value / 10^18 / 100
                                        require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_6_percent
                                    require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                    require ext_call.success
                                    if not investedAmountOf[address(msg.sender)]:
                                        investorCount++
                                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                    investedAmountOf[address(msg.sender)] += msg.value
                                    require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                    tokenAmountOf[address(msg.sender)] = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                    tokensSold = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                                else:
                                    if msg.value < level_8_amount:
                                        if rate * 10^6 * msg.value / 10^18 / 100:
                                            require rate * 10^6 * msg.value / 10^18 / 100
                                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_7_percent
                                        require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x23b872dd with:
                                             gas gas_remaining - 710 wei
                                            args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                        require ext_call.success
                                        if not investedAmountOf[address(msg.sender)]:
                                            investorCount++
                                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                        investedAmountOf[address(msg.sender)] += msg.value
                                        require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                        tokenAmountOf[address(msg.sender)] = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                        tokensSold = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                                    else:
                                        if msg.value >= level_9_amount:
                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                require rate * 10^6 * msg.value / 10^18 / 100
                                                require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_9_percent
                                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                            require ext_call.success
                                            if not investedAmountOf[address(msg.sender)]:
                                                investorCount++
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                            tokensSold = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                                        else:
                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                require rate * 10^6 * msg.value / 10^18 / 100
                                                require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_8_percent
                                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                            require ext_call.success
                                            if not investedAmountOf[address(msg.sender)]:
                                                investorCount++
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                            tokensSold = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
            else:
                if msg.value < level_3_amount:
                    if rate * 10^6 * msg.value / 10^18 / 100:
                        require rate * 10^6 * msg.value / 10^18 / 100
                        require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_2_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_2_percent
                    require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_2_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_2_percent * rate * 10^6 * msg.value / 10^18 / 100)
                    require ext_call.success
                    if not investedAmountOf[address(msg.sender)]:
                        investorCount++
                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                    investedAmountOf[address(msg.sender)] += msg.value
                    require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_2_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                    tokenAmountOf[address(msg.sender)] = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_2_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_2_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                    tokensSold = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_2_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                else:
                    if msg.value < level_4_amount:
                        if rate * 10^6 * msg.value / 10^18 / 100:
                            require rate * 10^6 * msg.value / 10^18 / 100
                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_3_percent
                        require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100)
                        require ext_call.success
                        if not investedAmountOf[address(msg.sender)]:
                            investorCount++
                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                        investedAmountOf[address(msg.sender)] += msg.value
                        require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                        tokenAmountOf[address(msg.sender)] = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                        tokensSold = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                    else:
                        if msg.value < level_5_amount:
                            if rate * 10^6 * msg.value / 10^18 / 100:
                                require rate * 10^6 * msg.value / 10^18 / 100
                                require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_4_percent
                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100)
                            require ext_call.success
                            if not investedAmountOf[address(msg.sender)]:
                                investorCount++
                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                            investedAmountOf[address(msg.sender)] += msg.value
                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                            tokenAmountOf[address(msg.sender)] = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                            tokensSold = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                        else:
                            if msg.value < level_6_amount:
                                if rate * 10^6 * msg.value / 10^18 / 100:
                                    require rate * 10^6 * msg.value / 10^18 / 100
                                    require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_5_percent
                                require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                require ext_call.success
                                if not investedAmountOf[address(msg.sender)]:
                                    investorCount++
                                require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                investedAmountOf[address(msg.sender)] += msg.value
                                require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                tokenAmountOf[address(msg.sender)] = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                tokensSold = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                            else:
                                if msg.value < level_7_amount:
                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                        require rate * 10^6 * msg.value / 10^18 / 100
                                        require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_6_percent
                                    require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                    require ext_call.success
                                    if not investedAmountOf[address(msg.sender)]:
                                        investorCount++
                                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                    investedAmountOf[address(msg.sender)] += msg.value
                                    require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                    tokenAmountOf[address(msg.sender)] = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                    tokensSold = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                                else:
                                    if msg.value < level_8_amount:
                                        if rate * 10^6 * msg.value / 10^18 / 100:
                                            require rate * 10^6 * msg.value / 10^18 / 100
                                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_7_percent
                                        require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x23b872dd with:
                                             gas gas_remaining - 710 wei
                                            args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                        require ext_call.success
                                        if not investedAmountOf[address(msg.sender)]:
                                            investorCount++
                                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                        investedAmountOf[address(msg.sender)] += msg.value
                                        require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                        tokenAmountOf[address(msg.sender)] = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                        tokensSold = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                                    else:
                                        if msg.value >= level_9_amount:
                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                require rate * 10^6 * msg.value / 10^18 / 100
                                                require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_9_percent
                                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                            require ext_call.success
                                            if not investedAmountOf[address(msg.sender)]:
                                                investorCount++
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                            tokensSold = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                                        else:
                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                require rate * 10^6 * msg.value / 10^18 / 100
                                                require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_8_percent
                                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                            require ext_call.success
                                            if not investedAmountOf[address(msg.sender)]:
                                                investorCount++
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                            tokensSold = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
        else:
            if msg.value < level_2_amount:
                if rate * 10^6 * msg.value / 10^18 / 100:
                    require rate * 10^6 * msg.value / 10^18 / 100
                    require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_1_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_1_percent
                require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_1_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining - 710 wei
                    args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_1_percent * rate * 10^6 * msg.value / 10^18 / 100)
                require ext_call.success
                if not investedAmountOf[address(msg.sender)]:
                    investorCount++
                require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                investedAmountOf[address(msg.sender)] += msg.value
                require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_1_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                tokenAmountOf[address(msg.sender)] = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_1_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_1_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                tokensSold = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_1_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
            else:
                if msg.value < level_3_amount:
                    if rate * 10^6 * msg.value / 10^18 / 100:
                        require rate * 10^6 * msg.value / 10^18 / 100
                        require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_2_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_2_percent
                    require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_2_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_2_percent * rate * 10^6 * msg.value / 10^18 / 100)
                    require ext_call.success
                    if not investedAmountOf[address(msg.sender)]:
                        investorCount++
                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                    investedAmountOf[address(msg.sender)] += msg.value
                    require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_2_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                    tokenAmountOf[address(msg.sender)] = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_2_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_2_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                    tokensSold = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_2_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                else:
                    if msg.value < level_4_amount:
                        if rate * 10^6 * msg.value / 10^18 / 100:
                            require rate * 10^6 * msg.value / 10^18 / 100
                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_3_percent
                        require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100)
                        require ext_call.success
                        if not investedAmountOf[address(msg.sender)]:
                            investorCount++
                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                        investedAmountOf[address(msg.sender)] += msg.value
                        require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                        tokenAmountOf[address(msg.sender)] = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                        tokensSold = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                    else:
                        if msg.value < level_5_amount:
                            if rate * 10^6 * msg.value / 10^18 / 100:
                                require rate * 10^6 * msg.value / 10^18 / 100
                                require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_4_percent
                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100)
                            require ext_call.success
                            if not investedAmountOf[address(msg.sender)]:
                                investorCount++
                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                            investedAmountOf[address(msg.sender)] += msg.value
                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                            tokenAmountOf[address(msg.sender)] = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                            tokensSold = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                        else:
                            if msg.value < level_6_amount:
                                if rate * 10^6 * msg.value / 10^18 / 100:
                                    require rate * 10^6 * msg.value / 10^18 / 100
                                    require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_5_percent
                                require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                require ext_call.success
                                if not investedAmountOf[address(msg.sender)]:
                                    investorCount++
                                require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                investedAmountOf[address(msg.sender)] += msg.value
                                require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                tokenAmountOf[address(msg.sender)] = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                tokensSold = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                            else:
                                if msg.value < level_7_amount:
                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                        require rate * 10^6 * msg.value / 10^18 / 100
                                        require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_6_percent
                                    require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                    require ext_call.success
                                    if not investedAmountOf[address(msg.sender)]:
                                        investorCount++
                                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                    investedAmountOf[address(msg.sender)] += msg.value
                                    require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                    tokenAmountOf[address(msg.sender)] = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                    tokensSold = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                                else:
                                    if msg.value < level_8_amount:
                                        if rate * 10^6 * msg.value / 10^18 / 100:
                                            require rate * 10^6 * msg.value / 10^18 / 100
                                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_7_percent
                                        require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x23b872dd with:
                                             gas gas_remaining - 710 wei
                                            args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                        require ext_call.success
                                        if not investedAmountOf[address(msg.sender)]:
                                            investorCount++
                                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                        investedAmountOf[address(msg.sender)] += msg.value
                                        require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                        tokenAmountOf[address(msg.sender)] = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                        tokensSold = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                                    else:
                                        if msg.value >= level_9_amount:
                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                require rate * 10^6 * msg.value / 10^18 / 100
                                                require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_9_percent
                                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                            require ext_call.success
                                            if not investedAmountOf[address(msg.sender)]:
                                                investorCount++
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                            tokensSold = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                                        else:
                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                require rate * 10^6 * msg.value / 10^18 / 100
                                                require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == bonusPercent + level_8_percent
                                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                            require ext_call.success
                                            if not investedAmountOf[address(msg.sender)]:
                                                investorCount++
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                            tokensSold = (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
    else:
        if msg.value < level_1_amount:
            if msg.value < level_2_amount:
                if msg.value < level_3_amount:
                    if msg.value < level_4_amount:
                        if msg.value < level_5_amount:
                            if msg.value < level_6_amount:
                                if msg.value < level_7_amount:
                                    if msg.value < level_8_amount:
                                        if msg.value < level_9_amount:
                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                require rate * 10^6 * msg.value / 10^18 / 100
                                                require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent
                                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100)
                                            require ext_call.success
                                            if not investedAmountOf[address(msg.sender)]:
                                                investorCount++
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                            tokensSold = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                                        else:
                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                require rate * 10^6 * msg.value / 10^18 / 100
                                                require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_9_percent
                                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                            require ext_call.success
                                            if not investedAmountOf[address(msg.sender)]:
                                                investorCount++
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                            tokensSold = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                                    else:
                                        if msg.value >= level_9_amount:
                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                require rate * 10^6 * msg.value / 10^18 / 100
                                                require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_9_percent
                                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                            require ext_call.success
                                            if not investedAmountOf[address(msg.sender)]:
                                                investorCount++
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                            tokensSold = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                                        else:
                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                require rate * 10^6 * msg.value / 10^18 / 100
                                                require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_8_percent
                                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                            require ext_call.success
                                            if not investedAmountOf[address(msg.sender)]:
                                                investorCount++
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                            tokensSold = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                                else:
                                    if msg.value < level_8_amount:
                                        if rate * 10^6 * msg.value / 10^18 / 100:
                                            require rate * 10^6 * msg.value / 10^18 / 100
                                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_7_percent
                                        require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x23b872dd with:
                                             gas gas_remaining - 710 wei
                                            args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                        require ext_call.success
                                        if not investedAmountOf[address(msg.sender)]:
                                            investorCount++
                                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                        investedAmountOf[address(msg.sender)] += msg.value
                                        require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                        tokenAmountOf[address(msg.sender)] = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                        tokensSold = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                                    else:
                                        if msg.value >= level_9_amount:
                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                require rate * 10^6 * msg.value / 10^18 / 100
                                                require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_9_percent
                                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                            require ext_call.success
                                            if not investedAmountOf[address(msg.sender)]:
                                                investorCount++
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                            tokensSold = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                                        else:
                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                require rate * 10^6 * msg.value / 10^18 / 100
                                                require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_8_percent
                                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                            require ext_call.success
                                            if not investedAmountOf[address(msg.sender)]:
                                                investorCount++
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                            tokensSold = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                            else:
                                if msg.value < level_7_amount:
                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                        require rate * 10^6 * msg.value / 10^18 / 100
                                        require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_6_percent
                                    require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                    require ext_call.success
                                    if not investedAmountOf[address(msg.sender)]:
                                        investorCount++
                                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                    investedAmountOf[address(msg.sender)] += msg.value
                                    require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                    tokenAmountOf[address(msg.sender)] = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                    tokensSold = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                                else:
                                    if msg.value < level_8_amount:
                                        if rate * 10^6 * msg.value / 10^18 / 100:
                                            require rate * 10^6 * msg.value / 10^18 / 100
                                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_7_percent
                                        require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x23b872dd with:
                                             gas gas_remaining - 710 wei
                                            args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                        require ext_call.success
                                        if not investedAmountOf[address(msg.sender)]:
                                            investorCount++
                                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                        investedAmountOf[address(msg.sender)] += msg.value
                                        require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                        tokenAmountOf[address(msg.sender)] = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                        tokensSold = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                                    else:
                                        if msg.value >= level_9_amount:
                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                require rate * 10^6 * msg.value / 10^18 / 100
                                                require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_9_percent
                                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                            require ext_call.success
                                            if not investedAmountOf[address(msg.sender)]:
                                                investorCount++
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                            tokensSold = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                                        else:
                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                require rate * 10^6 * msg.value / 10^18 / 100
                                                require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_8_percent
                                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                            require ext_call.success
                                            if not investedAmountOf[address(msg.sender)]:
                                                investorCount++
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                            tokensSold = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                        else:
                            if msg.value < level_6_amount:
                                if rate * 10^6 * msg.value / 10^18 / 100:
                                    require rate * 10^6 * msg.value / 10^18 / 100
                                    require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_5_percent
                                require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                require ext_call.success
                                if not investedAmountOf[address(msg.sender)]:
                                    investorCount++
                                require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                investedAmountOf[address(msg.sender)] += msg.value
                                require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                tokenAmountOf[address(msg.sender)] = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                tokensSold = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                            else:
                                if msg.value < level_7_amount:
                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                        require rate * 10^6 * msg.value / 10^18 / 100
                                        require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_6_percent
                                    require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                    require ext_call.success
                                    if not investedAmountOf[address(msg.sender)]:
                                        investorCount++
                                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                    investedAmountOf[address(msg.sender)] += msg.value
                                    require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                    tokenAmountOf[address(msg.sender)] = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                    tokensSold = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                                else:
                                    if msg.value < level_8_amount:
                                        if rate * 10^6 * msg.value / 10^18 / 100:
                                            require rate * 10^6 * msg.value / 10^18 / 100
                                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_7_percent
                                        require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x23b872dd with:
                                             gas gas_remaining - 710 wei
                                            args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                        require ext_call.success
                                        if not investedAmountOf[address(msg.sender)]:
                                            investorCount++
                                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                        investedAmountOf[address(msg.sender)] += msg.value
                                        require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                        tokenAmountOf[address(msg.sender)] = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                        tokensSold = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                                    else:
                                        if msg.value >= level_9_amount:
                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                require rate * 10^6 * msg.value / 10^18 / 100
                                                require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_9_percent
                                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                            require ext_call.success
                                            if not investedAmountOf[address(msg.sender)]:
                                                investorCount++
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                            tokensSold = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                                        else:
                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                require rate * 10^6 * msg.value / 10^18 / 100
                                                require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_8_percent
                                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                            require ext_call.success
                                            if not investedAmountOf[address(msg.sender)]:
                                                investorCount++
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                            tokensSold = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                    else:
                        if msg.value < level_5_amount:
                            if rate * 10^6 * msg.value / 10^18 / 100:
                                require rate * 10^6 * msg.value / 10^18 / 100
                                require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_4_percent
                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100)
                            require ext_call.success
                            if not investedAmountOf[address(msg.sender)]:
                                investorCount++
                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                            investedAmountOf[address(msg.sender)] += msg.value
                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                            tokenAmountOf[address(msg.sender)] = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                            tokensSold = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                        else:
                            if msg.value < level_6_amount:
                                if rate * 10^6 * msg.value / 10^18 / 100:
                                    require rate * 10^6 * msg.value / 10^18 / 100
                                    require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_5_percent
                                require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                require ext_call.success
                                if not investedAmountOf[address(msg.sender)]:
                                    investorCount++
                                require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                investedAmountOf[address(msg.sender)] += msg.value
                                require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                tokenAmountOf[address(msg.sender)] = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                tokensSold = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                            else:
                                if msg.value < level_7_amount:
                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                        require rate * 10^6 * msg.value / 10^18 / 100
                                        require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_6_percent
                                    require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                    require ext_call.success
                                    if not investedAmountOf[address(msg.sender)]:
                                        investorCount++
                                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                    investedAmountOf[address(msg.sender)] += msg.value
                                    require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                    tokenAmountOf[address(msg.sender)] = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                    tokensSold = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                                else:
                                    if msg.value < level_8_amount:
                                        if rate * 10^6 * msg.value / 10^18 / 100:
                                            require rate * 10^6 * msg.value / 10^18 / 100
                                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_7_percent
                                        require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x23b872dd with:
                                             gas gas_remaining - 710 wei
                                            args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                        require ext_call.success
                                        if not investedAmountOf[address(msg.sender)]:
                                            investorCount++
                                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                        investedAmountOf[address(msg.sender)] += msg.value
                                        require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                        tokenAmountOf[address(msg.sender)] = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                        tokensSold = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                                    else:
                                        if msg.value >= level_9_amount:
                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                require rate * 10^6 * msg.value / 10^18 / 100
                                                require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_9_percent
                                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                            require ext_call.success
                                            if not investedAmountOf[address(msg.sender)]:
                                                investorCount++
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                            tokensSold = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                                        else:
                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                require rate * 10^6 * msg.value / 10^18 / 100
                                                require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_8_percent
                                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                            require ext_call.success
                                            if not investedAmountOf[address(msg.sender)]:
                                                investorCount++
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                            tokensSold = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                else:
                    if msg.value < level_4_amount:
                        if rate * 10^6 * msg.value / 10^18 / 100:
                            require rate * 10^6 * msg.value / 10^18 / 100
                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_3_percent
                        require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100)
                        require ext_call.success
                        if not investedAmountOf[address(msg.sender)]:
                            investorCount++
                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                        investedAmountOf[address(msg.sender)] += msg.value
                        require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                        tokenAmountOf[address(msg.sender)] = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                        tokensSold = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                    else:
                        if msg.value < level_5_amount:
                            if rate * 10^6 * msg.value / 10^18 / 100:
                                require rate * 10^6 * msg.value / 10^18 / 100
                                require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_4_percent
                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100)
                            require ext_call.success
                            if not investedAmountOf[address(msg.sender)]:
                                investorCount++
                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                            investedAmountOf[address(msg.sender)] += msg.value
                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                            tokenAmountOf[address(msg.sender)] = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                            tokensSold = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                        else:
                            if msg.value < level_6_amount:
                                if rate * 10^6 * msg.value / 10^18 / 100:
                                    require rate * 10^6 * msg.value / 10^18 / 100
                                    require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_5_percent
                                require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                require ext_call.success
                                if not investedAmountOf[address(msg.sender)]:
                                    investorCount++
                                require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                investedAmountOf[address(msg.sender)] += msg.value
                                require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                tokenAmountOf[address(msg.sender)] = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                tokensSold = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                            else:
                                if msg.value < level_7_amount:
                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                        require rate * 10^6 * msg.value / 10^18 / 100
                                        require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_6_percent
                                    require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                    require ext_call.success
                                    if not investedAmountOf[address(msg.sender)]:
                                        investorCount++
                                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                    investedAmountOf[address(msg.sender)] += msg.value
                                    require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                    tokenAmountOf[address(msg.sender)] = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                    tokensSold = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                                else:
                                    if msg.value < level_8_amount:
                                        if rate * 10^6 * msg.value / 10^18 / 100:
                                            require rate * 10^6 * msg.value / 10^18 / 100
                                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_7_percent
                                        require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x23b872dd with:
                                             gas gas_remaining - 710 wei
                                            args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                        require ext_call.success
                                        if not investedAmountOf[address(msg.sender)]:
                                            investorCount++
                                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                        investedAmountOf[address(msg.sender)] += msg.value
                                        require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                        tokenAmountOf[address(msg.sender)] = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                        tokensSold = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                                    else:
                                        if msg.value >= level_9_amount:
                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                require rate * 10^6 * msg.value / 10^18 / 100
                                                require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_9_percent
                                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                            require ext_call.success
                                            if not investedAmountOf[address(msg.sender)]:
                                                investorCount++
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                            tokensSold = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                                        else:
                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                require rate * 10^6 * msg.value / 10^18 / 100
                                                require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_8_percent
                                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                            require ext_call.success
                                            if not investedAmountOf[address(msg.sender)]:
                                                investorCount++
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                            tokensSold = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
            else:
                if msg.value < level_3_amount:
                    if rate * 10^6 * msg.value / 10^18 / 100:
                        require rate * 10^6 * msg.value / 10^18 / 100
                        require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_2_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_2_percent
                    require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_2_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_2_percent * rate * 10^6 * msg.value / 10^18 / 100)
                    require ext_call.success
                    if not investedAmountOf[address(msg.sender)]:
                        investorCount++
                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                    investedAmountOf[address(msg.sender)] += msg.value
                    require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_2_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                    tokenAmountOf[address(msg.sender)] = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_2_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_2_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                    tokensSold = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_2_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                else:
                    if msg.value < level_4_amount:
                        if rate * 10^6 * msg.value / 10^18 / 100:
                            require rate * 10^6 * msg.value / 10^18 / 100
                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_3_percent
                        require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100)
                        require ext_call.success
                        if not investedAmountOf[address(msg.sender)]:
                            investorCount++
                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                        investedAmountOf[address(msg.sender)] += msg.value
                        require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                        tokenAmountOf[address(msg.sender)] = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                        tokensSold = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                    else:
                        if msg.value < level_5_amount:
                            if rate * 10^6 * msg.value / 10^18 / 100:
                                require rate * 10^6 * msg.value / 10^18 / 100
                                require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_4_percent
                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100)
                            require ext_call.success
                            if not investedAmountOf[address(msg.sender)]:
                                investorCount++
                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                            investedAmountOf[address(msg.sender)] += msg.value
                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                            tokenAmountOf[address(msg.sender)] = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                            tokensSold = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                        else:
                            if msg.value < level_6_amount:
                                if rate * 10^6 * msg.value / 10^18 / 100:
                                    require rate * 10^6 * msg.value / 10^18 / 100
                                    require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_5_percent
                                require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                require ext_call.success
                                if not investedAmountOf[address(msg.sender)]:
                                    investorCount++
                                require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                investedAmountOf[address(msg.sender)] += msg.value
                                require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                tokenAmountOf[address(msg.sender)] = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                tokensSold = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                            else:
                                if msg.value < level_7_amount:
                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                        require rate * 10^6 * msg.value / 10^18 / 100
                                        require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_6_percent
                                    require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                    require ext_call.success
                                    if not investedAmountOf[address(msg.sender)]:
                                        investorCount++
                                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                    investedAmountOf[address(msg.sender)] += msg.value
                                    require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                    tokenAmountOf[address(msg.sender)] = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                    tokensSold = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                                else:
                                    if msg.value < level_8_amount:
                                        if rate * 10^6 * msg.value / 10^18 / 100:
                                            require rate * 10^6 * msg.value / 10^18 / 100
                                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_7_percent
                                        require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x23b872dd with:
                                             gas gas_remaining - 710 wei
                                            args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                        require ext_call.success
                                        if not investedAmountOf[address(msg.sender)]:
                                            investorCount++
                                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                        investedAmountOf[address(msg.sender)] += msg.value
                                        require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                        tokenAmountOf[address(msg.sender)] = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                        tokensSold = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                                    else:
                                        if msg.value >= level_9_amount:
                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                require rate * 10^6 * msg.value / 10^18 / 100
                                                require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_9_percent
                                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                            require ext_call.success
                                            if not investedAmountOf[address(msg.sender)]:
                                                investorCount++
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                            tokensSold = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                                        else:
                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                require rate * 10^6 * msg.value / 10^18 / 100
                                                require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_8_percent
                                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                            require ext_call.success
                                            if not investedAmountOf[address(msg.sender)]:
                                                investorCount++
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                            tokensSold = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
        else:
            if msg.value < level_2_amount:
                if rate * 10^6 * msg.value / 10^18 / 100:
                    require rate * 10^6 * msg.value / 10^18 / 100
                    require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_1_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_1_percent
                require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_1_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining - 710 wei
                    args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_1_percent * rate * 10^6 * msg.value / 10^18 / 100)
                require ext_call.success
                if not investedAmountOf[address(msg.sender)]:
                    investorCount++
                require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                investedAmountOf[address(msg.sender)] += msg.value
                require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_1_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                tokenAmountOf[address(msg.sender)] = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_1_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_1_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                tokensSold = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_1_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
            else:
                if msg.value < level_3_amount:
                    if rate * 10^6 * msg.value / 10^18 / 100:
                        require rate * 10^6 * msg.value / 10^18 / 100
                        require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_2_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_2_percent
                    require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_2_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_2_percent * rate * 10^6 * msg.value / 10^18 / 100)
                    require ext_call.success
                    if not investedAmountOf[address(msg.sender)]:
                        investorCount++
                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                    investedAmountOf[address(msg.sender)] += msg.value
                    require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_2_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                    tokenAmountOf[address(msg.sender)] = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_2_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_2_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                    tokensSold = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_2_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                else:
                    if msg.value < level_4_amount:
                        if rate * 10^6 * msg.value / 10^18 / 100:
                            require rate * 10^6 * msg.value / 10^18 / 100
                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_3_percent
                        require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100)
                        require ext_call.success
                        if not investedAmountOf[address(msg.sender)]:
                            investorCount++
                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                        investedAmountOf[address(msg.sender)] += msg.value
                        require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                        tokenAmountOf[address(msg.sender)] = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                        tokensSold = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_3_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                    else:
                        if msg.value < level_5_amount:
                            if rate * 10^6 * msg.value / 10^18 / 100:
                                require rate * 10^6 * msg.value / 10^18 / 100
                                require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_4_percent
                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100)
                            require ext_call.success
                            if not investedAmountOf[address(msg.sender)]:
                                investorCount++
                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                            investedAmountOf[address(msg.sender)] += msg.value
                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                            tokenAmountOf[address(msg.sender)] = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                            tokensSold = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_4_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                        else:
                            if msg.value < level_6_amount:
                                if rate * 10^6 * msg.value / 10^18 / 100:
                                    require rate * 10^6 * msg.value / 10^18 / 100
                                    require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_5_percent
                                require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining - 710 wei
                                    args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                require ext_call.success
                                if not investedAmountOf[address(msg.sender)]:
                                    investorCount++
                                require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                investedAmountOf[address(msg.sender)] += msg.value
                                require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                tokenAmountOf[address(msg.sender)] = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                tokensSold = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_5_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                            else:
                                if msg.value < level_7_amount:
                                    if rate * 10^6 * msg.value / 10^18 / 100:
                                        require rate * 10^6 * msg.value / 10^18 / 100
                                        require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_6_percent
                                    require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x23b872dd with:
                                         gas gas_remaining - 710 wei
                                        args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                    require ext_call.success
                                    if not investedAmountOf[address(msg.sender)]:
                                        investorCount++
                                    require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                    investedAmountOf[address(msg.sender)] += msg.value
                                    require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                    tokenAmountOf[address(msg.sender)] = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                    tokensSold = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_6_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                                else:
                                    if msg.value < level_8_amount:
                                        if rate * 10^6 * msg.value / 10^18 / 100:
                                            require rate * 10^6 * msg.value / 10^18 / 100
                                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_7_percent
                                        require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x23b872dd with:
                                             gas gas_remaining - 710 wei
                                            args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                        require ext_call.success
                                        if not investedAmountOf[address(msg.sender)]:
                                            investorCount++
                                        require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                        investedAmountOf[address(msg.sender)] += msg.value
                                        require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                        tokenAmountOf[address(msg.sender)] = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                        tokensSold = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_7_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                                    else:
                                        if msg.value >= level_9_amount:
                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                require rate * 10^6 * msg.value / 10^18 / 100
                                                require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_9_percent
                                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                            require ext_call.success
                                            if not investedAmountOf[address(msg.sender)]:
                                                investorCount++
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                            tokensSold = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_9_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
                                        else:
                                            if rate * 10^6 * msg.value / 10^18 / 100:
                                                require rate * 10^6 * msg.value / 10^18 / 100
                                                require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) / rate * 10^6 * msg.value / 10^18 / 100 == stor13[address(msg.sender)].field_0 + bonusPercent + level_8_percent
                                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) >= 10000
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0x23b872dd with:
                                                 gas gas_remaining - 710 wei
                                                args 0xa6d9df476577c0d4a24eb50220fad007e444db8, msg.sender, (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100)
                                            require ext_call.success
                                            if not investedAmountOf[address(msg.sender)]:
                                                investorCount++
                                            require msg.value + investedAmountOf[address(msg.sender)] >= investedAmountOf[address(msg.sender)]
                                            investedAmountOf[address(msg.sender)] += msg.value
                                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)] >= tokenAmountOf[address(msg.sender)]
                                            tokenAmountOf[address(msg.sender)] = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokenAmountOf[address(msg.sender)]
                                            require msg.value + weiRaised >= weiRaised
                                            weiRaised += msg.value
                                            require (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold >= tokensSold
                                            tokensSold = (stor13[address(msg.sender)].field_0 * rate * 10^6 * msg.value / 10^18 / 100) + (bonusPercent * rate * 10^6 * msg.value / 10^18 / 100) + (level_8_percent * rate * 10^6 * msg.value / 10^18 / 100) + tokensSold
    call multisigAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
