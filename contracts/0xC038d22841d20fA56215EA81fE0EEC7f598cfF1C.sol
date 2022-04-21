contract main {


// =======================  Init code  ======================


uint8 stor0;
address stor0; offset 8
uint256 stor1;
uint256 stor2;
uint256 stor4;
uint256 stor6;
uint256 stor7;
address stor8;
address stor9;
array of uint256 stor10;
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
uint256 stor27;
uint256 stor28;
uint256 stor29;
uint256 stor30;
uint256 stor31;
uint256 stor32;
uint256 stor33;

function _fallback() payable {
    uint8(stor0.field_0) = 0
    stor6 = 2 * 10^14
    stor7 = 2000000000 * 10^18
    stor11 = 0
    stor12 = 2400
    stor13 = 150
    stor14 = 300
    stor15 = 600
    stor16 = 1200
    stor17 = 2400
    stor18 = 10^18
    stor19 = 10 * 10^18
    stor20 = 100 * 10^18
    stor21 = 1000 * 10^18
    stor22 = 10000 * 10^18
    stor23 = 720
    stor24 = 360
    stor25 = 180
    stor26 = 90
    stor27 = 48
    require not msg.value
    mem[96 len -4431] = code.data[5407 len -4431]
    mem[64] = -4335
    if mem[96] >= block.timestamp:
        if mem[128]:
            require mem[128] >= mem[96]
            require mem[204 len 20]
            require mem[268 len 20]
            stor8 = msg.sender
            stor9 = mem[204 len 20]
            stor10[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
            if stor7:
                stor7 = mem[224]
            stor4 = 0
            address(stor0.field_8) = mem[268 len 20]
            stor1 = mem[96]
            stor2 = mem[128]
        else:
            require mem[96] + (17520 * 24 * 3600) >= mem[96]
            require mem[204 len 20]
            require mem[268 len 20]
            stor8 = msg.sender
            stor9 = mem[204 len 20]
            stor10[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
            if stor7:
                stor7 = mem[224]
            stor4 = 0
            address(stor0.field_8) = mem[268 len 20]
            stor1 = mem[96]
            stor2 = mem[96] + (17520 * 24 * 3600)
        stor28 = mem[96]
        stor29 = mem[96] + (720 * 24 * 3600)
        stor30 = mem[96] + (1440 * 24 * 3600)
        stor31 = mem[96] + (2160 * 24 * 3600)
        stor32 = mem[96] + (2880 * 24 * 3600)
        stor33 = mem[96] + (3600 * 24 * 3600)
    else:
        if mem[128]:
            require mem[128] >= block.timestamp
            require mem[204 len 20]
            require mem[268 len 20]
            stor8 = msg.sender
            stor9 = mem[204 len 20]
            stor10[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
            if stor7:
                stor7 = mem[224]
            stor4 = 0
            address(stor0.field_8) = mem[268 len 20]
            stor1 = block.timestamp
            stor2 = mem[128]
        else:
            require block.timestamp + (17520 * 24 * 3600) >= block.timestamp
            require mem[204 len 20]
            require mem[268 len 20]
            stor8 = msg.sender
            stor9 = mem[204 len 20]
            stor10[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
            if stor7:
                stor7 = mem[224]
            stor4 = 0
            address(stor0.field_8) = mem[268 len 20]
            stor1 = block.timestamp
            stor2 = block.timestamp + (17520 * 24 * 3600)
        stor28 = block.timestamp
        stor29 = block.timestamp + (720 * 24 * 3600)
        stor30 = block.timestamp + (1440 * 24 * 3600)
        stor31 = block.timestamp + (2160 * 24 * 3600)
        stor32 = block.timestamp + (2880 * 24 * 3600)
        stor33 = block.timestamp + (3600 * 24 * 3600)
    if mem[288]:
        stor6 = mem[288]
    return code.data[976 len 4431]
}



// =====================  Runtime code  =====================


uint8 state;
address tokenRewardAddress; offset 8
uint256 startTime;
uint256 endTime;
uint256 sub_df0244b1;
uint256 weiRaised;
uint256 completedAt;
uint256 priceInWei;
uint256 sub_1aebc3f5;
address creatorAddress;
address beneficiaryAddress;
uint256 sub_856707d8;
uint256 baseRate;
uint256 sub_970f3284;
uint256 tierTwoRate;
uint256 tierThreeRate;
uint256 sub_974336c9;
uint256 sub_3e267793;
uint256 tierOnePurchase;
uint256 tierTwoPurchase;
uint256 tierThreePurchase;
uint256 sub_87aed3b3;
uint256 sub_bbd7a283;
uint256 sub_bd6955ad;
uint256 sub_3e2ff27d;
uint256 sub_bac44031;
uint256 sub_af1ed211;
uint256 sub_f1a09438;
uint256 sub_5a509a86;
uint256 sub_643ead29;
uint256 sub_ac922458;
uint256 sub_1729be08;
uint256 sub_d510226d;
uint256 sub_d1fb92a4;

function tierThreeRate() {
    return tierThreeRate
}

function creator() {
    return creatorAddress
}

function sub_1729be08(?) {
    return sub_1729be08
}

function sub_1aebc3f5(?) {
    return sub_1aebc3f5
}

function baseRate() {
    return baseRate
}

function tierThreePurchase() {
    return tierThreePurchase
}

function endTime() {
    return endTime
}

function completedAt() {
    return completedAt
}

function beneficiary() {
    return beneficiaryAddress
}

function priceInWei() {
    return priceInWei
}

function sub_3e267793(?) {
    return sub_3e267793
}

function sub_3e2ff27d(?) {
    return sub_3e2ff27d
}

function weiRaised() {
    return weiRaised
}

function sub_5a509a86(?) {
    return sub_5a509a86
}

function tierTwoPurchase() {
    return tierTwoPurchase
}

function sub_643ead29(?) {
    return sub_643ead29
}

function tokenReward() {
    return tokenRewardAddress
}

function startTime() {
    return startTime
}

function sub_856707d8(?) {
    return sub_856707d8
}

function sub_87aed3b3(?) {
    return sub_87aed3b3
}

function sub_970f3284(?) {
    return sub_970f3284
}

function sub_974336c9(?) {
    return sub_974336c9
}

function sub_ac922458(?) {
    return sub_ac922458
}

function sub_af1ed211(?) {
    return sub_af1ed211
}

function sub_bac44031(?) {
    return sub_bac44031
}

function sub_bbd7a283(?) {
    return sub_bbd7a283
}

function sub_bd6955ad(?) {
    return sub_bd6955ad
}

function state() {
    require state <= 3
    return state
}

function sub_d1fb92a4(?) {
    return sub_d1fb92a4
}

function sub_d510226d(?) {
    return sub_d510226d
}

function sub_df0244b1(?) {
    return sub_df0244b1
}

function tierTwoRate() {
    return tierTwoRate
}

function tierOnePurchase() {
    return tierOnePurchase
}

function sub_f1a09438(?) {
    return sub_f1a09438
}

function removeContract() {
    require msg.sender == creatorAddress
    require state <= 3
    require state == 2
    require completedAt + 3600 < block.timestamp
    selfdestruct(msg.sender)
}

function pauseContract() {
    require msg.sender == creatorAddress
    require state <= 3
    require not state
    state = 1
    emit PauseContract()
}

function resumeContract() {
    require msg.sender == creatorAddress
    require state <= 3
    require not state
    state = 1
    emit ResumeContract()
}

function sub_4dfe9f23(?) {
    require msg.sender == creatorAddress
    require state <= 3
    require not state
    require arg1 >= sub_df0244b1
    sub_1aebc3f5 = arg1
}

function checkIfFundingCompleteOrExpired() {
    if not sub_1aebc3f5:
        if block.timestamp > endTime:
            state = 2
            completedAt = block.timestamp
    else:
        if sub_df0244b1 >= sub_1aebc3f5:
            state = 2
            completedAt = block.timestamp
        else:
            if block.timestamp > endTime:
                state = 2
                completedAt = block.timestamp
}

function _fallback() payable {
    require state <= 3
    require not state
    require state <= 3
    require not state
    require msg.value >= 2 * priceInWei
    if msg.value < tierOnePurchase:
        if block.timestamp >= sub_d1fb92a4:
            if sub_856707d8 >= 100:
                if baseRate:
                    require baseRate
                    require baseRate * msg.value / baseRate == msg.value
                sub_df0244b1 += baseRate * msg.value
                weiRaised += msg.value
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0x79c65068 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, baseRate * msg.value
                require ext_call.success
                emit LogTokenPurchase(msg.sender, msg.value, baseRate * msg.value);
            else:
                if -sub_856707d8 + 100:
                    require -sub_856707d8 + 100
                    require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
                if baseRate + (-24 * sub_856707d8) + 2400:
                    require baseRate + (-24 * sub_856707d8) + 2400
                    require (2400 * msg.value) + (baseRate * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + (-24 * sub_856707d8) + 2400 == msg.value
                sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) - (24 * sub_856707d8 * msg.value)
                weiRaised += msg.value
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0x79c65068 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (2400 * msg.value) + (baseRate * msg.value) - (24 * sub_856707d8 * msg.value)
                require ext_call.success
                emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) - (24 * sub_856707d8 * msg.value));
        else:
            if sub_3e2ff27d <= block.timestamp:
                if sub_856707d8 >= 100:
                    if baseRate + sub_bd6955ad:
                        require baseRate + sub_bd6955ad
                        require (baseRate * msg.value) + (sub_bd6955ad * msg.value) / baseRate + sub_bd6955ad == msg.value
                    sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (sub_bd6955ad * msg.value)
                    weiRaised += msg.value
                    require ext_code.size(tokenRewardAddress)
                    call tokenRewardAddress.0x79c65068 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (baseRate * msg.value) + (sub_bd6955ad * msg.value)
                    require ext_call.success
                    emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (sub_bd6955ad * msg.value));
                else:
                    if -sub_856707d8 + 100:
                        require -sub_856707d8 + 100
                        require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
                    if baseRate + sub_bd6955ad + (-24 * sub_856707d8) + 2400:
                        require baseRate + sub_bd6955ad + (-24 * sub_856707d8) + 2400
                        require (2400 * msg.value) + (baseRate * msg.value) + (sub_bd6955ad * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + sub_bd6955ad + (-24 * sub_856707d8) + 2400 == msg.value
                    sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (sub_bd6955ad * msg.value) - (24 * sub_856707d8 * msg.value)
                    weiRaised += msg.value
                    require ext_code.size(tokenRewardAddress)
                    call tokenRewardAddress.0x79c65068 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (sub_bd6955ad * msg.value) - (24 * sub_856707d8 * msg.value)
                    require ext_call.success
                    emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (sub_bd6955ad * msg.value) - (24 * sub_856707d8 * msg.value));
            else:
                if sub_bac44031 <= block.timestamp:
                    if sub_856707d8 >= 100:
                        if baseRate + sub_3e2ff27d:
                            require baseRate + sub_3e2ff27d
                            require (baseRate * msg.value) + (sub_3e2ff27d * msg.value) / baseRate + sub_3e2ff27d == msg.value
                        sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (sub_3e2ff27d * msg.value)
                        weiRaised += msg.value
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0x79c65068 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (baseRate * msg.value) + (sub_3e2ff27d * msg.value)
                        require ext_call.success
                        emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (sub_3e2ff27d * msg.value));
                    else:
                        if -sub_856707d8 + 100:
                            require -sub_856707d8 + 100
                            require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
                        if baseRate + sub_3e2ff27d + (-24 * sub_856707d8) + 2400:
                            require baseRate + sub_3e2ff27d + (-24 * sub_856707d8) + 2400
                            require (2400 * msg.value) + (baseRate * msg.value) + (sub_3e2ff27d * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + sub_3e2ff27d + (-24 * sub_856707d8) + 2400 == msg.value
                        sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (sub_3e2ff27d * msg.value) - (24 * sub_856707d8 * msg.value)
                        weiRaised += msg.value
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0x79c65068 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (sub_3e2ff27d * msg.value) - (24 * sub_856707d8 * msg.value)
                        require ext_call.success
                        emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (sub_3e2ff27d * msg.value) - (24 * sub_856707d8 * msg.value));
                else:
                    if sub_af1ed211 <= block.timestamp:
                        if sub_856707d8 >= 100:
                            if baseRate + sub_bac44031:
                                require baseRate + sub_bac44031
                                require (baseRate * msg.value) + (sub_bac44031 * msg.value) / baseRate + sub_bac44031 == msg.value
                            sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (sub_bac44031 * msg.value)
                            weiRaised += msg.value
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x79c65068 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, (baseRate * msg.value) + (sub_bac44031 * msg.value)
                            require ext_call.success
                            emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (sub_bac44031 * msg.value));
                        else:
                            if -sub_856707d8 + 100:
                                require -sub_856707d8 + 100
                                require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
                            if baseRate + sub_bac44031 + (-24 * sub_856707d8) + 2400:
                                require baseRate + sub_bac44031 + (-24 * sub_856707d8) + 2400
                                require (2400 * msg.value) + (baseRate * msg.value) + (sub_bac44031 * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + sub_bac44031 + (-24 * sub_856707d8) + 2400 == msg.value
                            sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (sub_bac44031 * msg.value) - (24 * sub_856707d8 * msg.value)
                            weiRaised += msg.value
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x79c65068 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (sub_bac44031 * msg.value) - (24 * sub_856707d8 * msg.value)
                            require ext_call.success
                            emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (sub_bac44031 * msg.value) - (24 * sub_856707d8 * msg.value));
                    else:
                        if sub_f1a09438 > block.timestamp:
                            if sub_856707d8 >= 100:
                                if baseRate + sub_f1a09438:
                                    require baseRate + sub_f1a09438
                                    require (baseRate * msg.value) + (sub_f1a09438 * msg.value) / baseRate + sub_f1a09438 == msg.value
                                sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (sub_f1a09438 * msg.value)
                                weiRaised += msg.value
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x79c65068 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (baseRate * msg.value) + (sub_f1a09438 * msg.value)
                                require ext_call.success
                                emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (sub_f1a09438 * msg.value));
                            else:
                                if -sub_856707d8 + 100:
                                    require -sub_856707d8 + 100
                                    require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
                                if baseRate + sub_f1a09438 + (-24 * sub_856707d8) + 2400:
                                    require baseRate + sub_f1a09438 + (-24 * sub_856707d8) + 2400
                                    require (2400 * msg.value) + (baseRate * msg.value) + (sub_f1a09438 * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + sub_f1a09438 + (-24 * sub_856707d8) + 2400 == msg.value
                                sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (sub_f1a09438 * msg.value) - (24 * sub_856707d8 * msg.value)
                                weiRaised += msg.value
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x79c65068 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (sub_f1a09438 * msg.value) - (24 * sub_856707d8 * msg.value)
                                require ext_call.success
                                emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (sub_f1a09438 * msg.value) - (24 * sub_856707d8 * msg.value));
                        else:
                            if sub_856707d8 >= 100:
                                if baseRate + sub_af1ed211:
                                    require baseRate + sub_af1ed211
                                    require (baseRate * msg.value) + (sub_af1ed211 * msg.value) / baseRate + sub_af1ed211 == msg.value
                                sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (sub_af1ed211 * msg.value)
                                weiRaised += msg.value
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x79c65068 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (baseRate * msg.value) + (sub_af1ed211 * msg.value)
                                require ext_call.success
                                emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (sub_af1ed211 * msg.value));
                            else:
                                if -sub_856707d8 + 100:
                                    require -sub_856707d8 + 100
                                    require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
                                if baseRate + sub_af1ed211 + (-24 * sub_856707d8) + 2400:
                                    require baseRate + sub_af1ed211 + (-24 * sub_856707d8) + 2400
                                    require (2400 * msg.value) + (baseRate * msg.value) + (sub_af1ed211 * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + sub_af1ed211 + (-24 * sub_856707d8) + 2400 == msg.value
                                sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (sub_af1ed211 * msg.value) - (24 * sub_856707d8 * msg.value)
                                weiRaised += msg.value
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x79c65068 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (sub_af1ed211 * msg.value) - (24 * sub_856707d8 * msg.value)
                                require ext_call.success
                                emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (sub_af1ed211 * msg.value) - (24 * sub_856707d8 * msg.value));
    else:
        if msg.value >= sub_bbd7a283:
            if block.timestamp >= sub_d1fb92a4:
                if sub_856707d8 >= 100:
                    if baseRate + sub_3e267793:
                        require baseRate + sub_3e267793
                        require (baseRate * msg.value) + (sub_3e267793 * msg.value) / baseRate + sub_3e267793 == msg.value
                    sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (sub_3e267793 * msg.value)
                    weiRaised += msg.value
                    require ext_code.size(tokenRewardAddress)
                    call tokenRewardAddress.0x79c65068 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (baseRate * msg.value) + (sub_3e267793 * msg.value)
                    require ext_call.success
                    emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (sub_3e267793 * msg.value));
                else:
                    if -sub_856707d8 + 100:
                        require -sub_856707d8 + 100
                        require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
                    if baseRate + sub_3e267793 + (-24 * sub_856707d8) + 2400:
                        require baseRate + sub_3e267793 + (-24 * sub_856707d8) + 2400
                        require (2400 * msg.value) + (baseRate * msg.value) + (sub_3e267793 * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + sub_3e267793 + (-24 * sub_856707d8) + 2400 == msg.value
                    sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (sub_3e267793 * msg.value) - (24 * sub_856707d8 * msg.value)
                    weiRaised += msg.value
                    require ext_code.size(tokenRewardAddress)
                    call tokenRewardAddress.0x79c65068 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (sub_3e267793 * msg.value) - (24 * sub_856707d8 * msg.value)
                    require ext_call.success
                    emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (sub_3e267793 * msg.value) - (24 * sub_856707d8 * msg.value));
            else:
                if sub_3e2ff27d <= block.timestamp:
                    if sub_856707d8 >= 100:
                        if baseRate + sub_3e267793 + sub_bd6955ad:
                            require baseRate + sub_3e267793 + sub_bd6955ad
                            require (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_bd6955ad * msg.value) / baseRate + sub_3e267793 + sub_bd6955ad == msg.value
                        sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_bd6955ad * msg.value)
                        weiRaised += msg.value
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0x79c65068 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_bd6955ad * msg.value)
                        require ext_call.success
                        emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_bd6955ad * msg.value));
                    else:
                        if -sub_856707d8 + 100:
                            require -sub_856707d8 + 100
                            require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
                        if baseRate + sub_3e267793 + sub_bd6955ad + (-24 * sub_856707d8) + 2400:
                            require baseRate + sub_3e267793 + sub_bd6955ad + (-24 * sub_856707d8) + 2400
                            require (2400 * msg.value) + (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_bd6955ad * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + sub_3e267793 + sub_bd6955ad + (-24 * sub_856707d8) + 2400 == msg.value
                        sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_bd6955ad * msg.value) - (24 * sub_856707d8 * msg.value)
                        weiRaised += msg.value
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0x79c65068 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_bd6955ad * msg.value) - (24 * sub_856707d8 * msg.value)
                        require ext_call.success
                        emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_bd6955ad * msg.value) - (24 * sub_856707d8 * msg.value));
                else:
                    if sub_bac44031 <= block.timestamp:
                        if sub_856707d8 >= 100:
                            if baseRate + sub_3e267793 + sub_3e2ff27d:
                                require baseRate + sub_3e267793 + sub_3e2ff27d
                                require (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_3e2ff27d * msg.value) / baseRate + sub_3e267793 + sub_3e2ff27d == msg.value
                            sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_3e2ff27d * msg.value)
                            weiRaised += msg.value
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x79c65068 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_3e2ff27d * msg.value)
                            require ext_call.success
                            emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_3e2ff27d * msg.value));
                        else:
                            if -sub_856707d8 + 100:
                                require -sub_856707d8 + 100
                                require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
                            if baseRate + sub_3e267793 + sub_3e2ff27d + (-24 * sub_856707d8) + 2400:
                                require baseRate + sub_3e267793 + sub_3e2ff27d + (-24 * sub_856707d8) + 2400
                                require (2400 * msg.value) + (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_3e2ff27d * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + sub_3e267793 + sub_3e2ff27d + (-24 * sub_856707d8) + 2400 == msg.value
                            sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_3e2ff27d * msg.value) - (24 * sub_856707d8 * msg.value)
                            weiRaised += msg.value
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x79c65068 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_3e2ff27d * msg.value) - (24 * sub_856707d8 * msg.value)
                            require ext_call.success
                            emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_3e2ff27d * msg.value) - (24 * sub_856707d8 * msg.value));
                    else:
                        if sub_af1ed211 <= block.timestamp:
                            if sub_856707d8 >= 100:
                                if baseRate + sub_3e267793 + sub_bac44031:
                                    require baseRate + sub_3e267793 + sub_bac44031
                                    require (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_bac44031 * msg.value) / baseRate + sub_3e267793 + sub_bac44031 == msg.value
                                sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_bac44031 * msg.value)
                                weiRaised += msg.value
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x79c65068 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_bac44031 * msg.value)
                                require ext_call.success
                                emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_bac44031 * msg.value));
                            else:
                                if -sub_856707d8 + 100:
                                    require -sub_856707d8 + 100
                                    require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
                                if baseRate + sub_3e267793 + sub_bac44031 + (-24 * sub_856707d8) + 2400:
                                    require baseRate + sub_3e267793 + sub_bac44031 + (-24 * sub_856707d8) + 2400
                                    require (2400 * msg.value) + (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_bac44031 * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + sub_3e267793 + sub_bac44031 + (-24 * sub_856707d8) + 2400 == msg.value
                                sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_bac44031 * msg.value) - (24 * sub_856707d8 * msg.value)
                                weiRaised += msg.value
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x79c65068 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_bac44031 * msg.value) - (24 * sub_856707d8 * msg.value)
                                require ext_call.success
                                emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_bac44031 * msg.value) - (24 * sub_856707d8 * msg.value));
                        else:
                            if sub_f1a09438 > block.timestamp:
                                if sub_856707d8 >= 100:
                                    if baseRate + sub_3e267793 + sub_f1a09438:
                                        require baseRate + sub_3e267793 + sub_f1a09438
                                        require (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_f1a09438 * msg.value) / baseRate + sub_3e267793 + sub_f1a09438 == msg.value
                                    sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_f1a09438 * msg.value)
                                    weiRaised += msg.value
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x79c65068 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_f1a09438 * msg.value)
                                    require ext_call.success
                                    emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_f1a09438 * msg.value));
                                else:
                                    if -sub_856707d8 + 100:
                                        require -sub_856707d8 + 100
                                        require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
                                    if baseRate + sub_3e267793 + sub_f1a09438 + (-24 * sub_856707d8) + 2400:
                                        require baseRate + sub_3e267793 + sub_f1a09438 + (-24 * sub_856707d8) + 2400
                                        require (2400 * msg.value) + (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_f1a09438 * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + sub_3e267793 + sub_f1a09438 + (-24 * sub_856707d8) + 2400 == msg.value
                                    sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_f1a09438 * msg.value) - (24 * sub_856707d8 * msg.value)
                                    weiRaised += msg.value
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x79c65068 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_f1a09438 * msg.value) - (24 * sub_856707d8 * msg.value)
                                    require ext_call.success
                                    emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_f1a09438 * msg.value) - (24 * sub_856707d8 * msg.value));
                            else:
                                if sub_856707d8 >= 100:
                                    if baseRate + sub_3e267793 + sub_af1ed211:
                                        require baseRate + sub_3e267793 + sub_af1ed211
                                        require (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_af1ed211 * msg.value) / baseRate + sub_3e267793 + sub_af1ed211 == msg.value
                                    sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_af1ed211 * msg.value)
                                    weiRaised += msg.value
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x79c65068 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_af1ed211 * msg.value)
                                    require ext_call.success
                                    emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_af1ed211 * msg.value));
                                else:
                                    if -sub_856707d8 + 100:
                                        require -sub_856707d8 + 100
                                        require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
                                    if baseRate + sub_3e267793 + sub_af1ed211 + (-24 * sub_856707d8) + 2400:
                                        require baseRate + sub_3e267793 + sub_af1ed211 + (-24 * sub_856707d8) + 2400
                                        require (2400 * msg.value) + (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_af1ed211 * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + sub_3e267793 + sub_af1ed211 + (-24 * sub_856707d8) + 2400 == msg.value
                                    sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_af1ed211 * msg.value) - (24 * sub_856707d8 * msg.value)
                                    weiRaised += msg.value
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x79c65068 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_af1ed211 * msg.value) - (24 * sub_856707d8 * msg.value)
                                    require ext_call.success
                                    emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_af1ed211 * msg.value) - (24 * sub_856707d8 * msg.value));
        else:
            if msg.value >= sub_87aed3b3:
                if block.timestamp >= sub_d1fb92a4:
                    if sub_856707d8 >= 100:
                        if baseRate + sub_974336c9:
                            require baseRate + sub_974336c9
                            require (baseRate * msg.value) + (sub_974336c9 * msg.value) / baseRate + sub_974336c9 == msg.value
                        sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (sub_974336c9 * msg.value)
                        weiRaised += msg.value
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0x79c65068 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (baseRate * msg.value) + (sub_974336c9 * msg.value)
                        require ext_call.success
                        emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (sub_974336c9 * msg.value));
                    else:
                        if -sub_856707d8 + 100:
                            require -sub_856707d8 + 100
                            require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
                        if baseRate + sub_974336c9 + (-24 * sub_856707d8) + 2400:
                            require baseRate + sub_974336c9 + (-24 * sub_856707d8) + 2400
                            require (2400 * msg.value) + (baseRate * msg.value) + (sub_974336c9 * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + sub_974336c9 + (-24 * sub_856707d8) + 2400 == msg.value
                        sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (sub_974336c9 * msg.value) - (24 * sub_856707d8 * msg.value)
                        weiRaised += msg.value
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0x79c65068 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (sub_974336c9 * msg.value) - (24 * sub_856707d8 * msg.value)
                        require ext_call.success
                        emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (sub_974336c9 * msg.value) - (24 * sub_856707d8 * msg.value));
                else:
                    if sub_3e2ff27d <= block.timestamp:
                        if sub_856707d8 >= 100:
                            if baseRate + sub_974336c9 + sub_bd6955ad:
                                require baseRate + sub_974336c9 + sub_bd6955ad
                                require (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_bd6955ad * msg.value) / baseRate + sub_974336c9 + sub_bd6955ad == msg.value
                            sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_bd6955ad * msg.value)
                            weiRaised += msg.value
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x79c65068 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_bd6955ad * msg.value)
                            require ext_call.success
                            emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_bd6955ad * msg.value));
                        else:
                            if -sub_856707d8 + 100:
                                require -sub_856707d8 + 100
                                require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
                            if baseRate + sub_974336c9 + sub_bd6955ad + (-24 * sub_856707d8) + 2400:
                                require baseRate + sub_974336c9 + sub_bd6955ad + (-24 * sub_856707d8) + 2400
                                require (2400 * msg.value) + (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_bd6955ad * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + sub_974336c9 + sub_bd6955ad + (-24 * sub_856707d8) + 2400 == msg.value
                            sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_bd6955ad * msg.value) - (24 * sub_856707d8 * msg.value)
                            weiRaised += msg.value
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x79c65068 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_bd6955ad * msg.value) - (24 * sub_856707d8 * msg.value)
                            require ext_call.success
                            emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_bd6955ad * msg.value) - (24 * sub_856707d8 * msg.value));
                    else:
                        if sub_bac44031 <= block.timestamp:
                            if sub_856707d8 >= 100:
                                if baseRate + sub_974336c9 + sub_3e2ff27d:
                                    require baseRate + sub_974336c9 + sub_3e2ff27d
                                    require (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_3e2ff27d * msg.value) / baseRate + sub_974336c9 + sub_3e2ff27d == msg.value
                                sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_3e2ff27d * msg.value)
                                weiRaised += msg.value
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x79c65068 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_3e2ff27d * msg.value)
                                require ext_call.success
                                emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_3e2ff27d * msg.value));
                            else:
                                if -sub_856707d8 + 100:
                                    require -sub_856707d8 + 100
                                    require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
                                if baseRate + sub_974336c9 + sub_3e2ff27d + (-24 * sub_856707d8) + 2400:
                                    require baseRate + sub_974336c9 + sub_3e2ff27d + (-24 * sub_856707d8) + 2400
                                    require (2400 * msg.value) + (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_3e2ff27d * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + sub_974336c9 + sub_3e2ff27d + (-24 * sub_856707d8) + 2400 == msg.value
                                sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_3e2ff27d * msg.value) - (24 * sub_856707d8 * msg.value)
                                weiRaised += msg.value
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x79c65068 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_3e2ff27d * msg.value) - (24 * sub_856707d8 * msg.value)
                                require ext_call.success
                                emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_3e2ff27d * msg.value) - (24 * sub_856707d8 * msg.value));
                        else:
                            if sub_af1ed211 <= block.timestamp:
                                if sub_856707d8 >= 100:
                                    if baseRate + sub_974336c9 + sub_bac44031:
                                        require baseRate + sub_974336c9 + sub_bac44031
                                        require (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_bac44031 * msg.value) / baseRate + sub_974336c9 + sub_bac44031 == msg.value
                                    sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_bac44031 * msg.value)
                                    weiRaised += msg.value
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x79c65068 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_bac44031 * msg.value)
                                    require ext_call.success
                                    emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_bac44031 * msg.value));
                                else:
                                    if -sub_856707d8 + 100:
                                        require -sub_856707d8 + 100
                                        require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
                                    if baseRate + sub_974336c9 + sub_bac44031 + (-24 * sub_856707d8) + 2400:
                                        require baseRate + sub_974336c9 + sub_bac44031 + (-24 * sub_856707d8) + 2400
                                        require (2400 * msg.value) + (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_bac44031 * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + sub_974336c9 + sub_bac44031 + (-24 * sub_856707d8) + 2400 == msg.value
                                    sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_bac44031 * msg.value) - (24 * sub_856707d8 * msg.value)
                                    weiRaised += msg.value
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x79c65068 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_bac44031 * msg.value) - (24 * sub_856707d8 * msg.value)
                                    require ext_call.success
                                    emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_bac44031 * msg.value) - (24 * sub_856707d8 * msg.value));
                            else:
                                if sub_f1a09438 > block.timestamp:
                                    if sub_856707d8 >= 100:
                                        if baseRate + sub_974336c9 + sub_f1a09438:
                                            require baseRate + sub_974336c9 + sub_f1a09438
                                            require (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_f1a09438 * msg.value) / baseRate + sub_974336c9 + sub_f1a09438 == msg.value
                                        sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_f1a09438 * msg.value)
                                        weiRaised += msg.value
                                        require ext_code.size(tokenRewardAddress)
                                        call tokenRewardAddress.0x79c65068 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_f1a09438 * msg.value)
                                        require ext_call.success
                                        emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_f1a09438 * msg.value));
                                    else:
                                        if -sub_856707d8 + 100:
                                            require -sub_856707d8 + 100
                                            require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
                                        if baseRate + sub_974336c9 + sub_f1a09438 + (-24 * sub_856707d8) + 2400:
                                            require baseRate + sub_974336c9 + sub_f1a09438 + (-24 * sub_856707d8) + 2400
                                            require (2400 * msg.value) + (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_f1a09438 * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + sub_974336c9 + sub_f1a09438 + (-24 * sub_856707d8) + 2400 == msg.value
                                        sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_f1a09438 * msg.value) - (24 * sub_856707d8 * msg.value)
                                        weiRaised += msg.value
                                        require ext_code.size(tokenRewardAddress)
                                        call tokenRewardAddress.0x79c65068 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_f1a09438 * msg.value) - (24 * sub_856707d8 * msg.value)
                                        require ext_call.success
                                        emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_f1a09438 * msg.value) - (24 * sub_856707d8 * msg.value));
                                else:
                                    if sub_856707d8 >= 100:
                                        if baseRate + sub_974336c9 + sub_af1ed211:
                                            require baseRate + sub_974336c9 + sub_af1ed211
                                            require (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_af1ed211 * msg.value) / baseRate + sub_974336c9 + sub_af1ed211 == msg.value
                                        sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_af1ed211 * msg.value)
                                        weiRaised += msg.value
                                        require ext_code.size(tokenRewardAddress)
                                        call tokenRewardAddress.0x79c65068 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_af1ed211 * msg.value)
                                        require ext_call.success
                                        emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_af1ed211 * msg.value));
                                    else:
                                        if -sub_856707d8 + 100:
                                            require -sub_856707d8 + 100
                                            require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
                                        if baseRate + sub_974336c9 + sub_af1ed211 + (-24 * sub_856707d8) + 2400:
                                            require baseRate + sub_974336c9 + sub_af1ed211 + (-24 * sub_856707d8) + 2400
                                            require (2400 * msg.value) + (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_af1ed211 * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + sub_974336c9 + sub_af1ed211 + (-24 * sub_856707d8) + 2400 == msg.value
                                        sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_af1ed211 * msg.value) - (24 * sub_856707d8 * msg.value)
                                        weiRaised += msg.value
                                        require ext_code.size(tokenRewardAddress)
                                        call tokenRewardAddress.0x79c65068 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_af1ed211 * msg.value) - (24 * sub_856707d8 * msg.value)
                                        require ext_call.success
                                        emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_af1ed211 * msg.value) - (24 * sub_856707d8 * msg.value));
            else:
                if msg.value >= tierThreePurchase:
                    if block.timestamp >= sub_d1fb92a4:
                        if sub_856707d8 >= 100:
                            if baseRate + tierThreeRate:
                                require baseRate + tierThreeRate
                                require (baseRate * msg.value) + (tierThreeRate * msg.value) / baseRate + tierThreeRate == msg.value
                            sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (tierThreeRate * msg.value)
                            weiRaised += msg.value
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x79c65068 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, (baseRate * msg.value) + (tierThreeRate * msg.value)
                            require ext_call.success
                            emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (tierThreeRate * msg.value));
                        else:
                            if -sub_856707d8 + 100:
                                require -sub_856707d8 + 100
                                require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
                            if baseRate + tierThreeRate + (-24 * sub_856707d8) + 2400:
                                require baseRate + tierThreeRate + (-24 * sub_856707d8) + 2400
                                require (2400 * msg.value) + (baseRate * msg.value) + (tierThreeRate * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + tierThreeRate + (-24 * sub_856707d8) + 2400 == msg.value
                            sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (tierThreeRate * msg.value) - (24 * sub_856707d8 * msg.value)
                            weiRaised += msg.value
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0x79c65068 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (tierThreeRate * msg.value) - (24 * sub_856707d8 * msg.value)
                            require ext_call.success
                            emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (tierThreeRate * msg.value) - (24 * sub_856707d8 * msg.value));
                    else:
                        if sub_3e2ff27d <= block.timestamp:
                            if sub_856707d8 >= 100:
                                if baseRate + tierThreeRate + sub_bd6955ad:
                                    require baseRate + tierThreeRate + sub_bd6955ad
                                    require (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_bd6955ad * msg.value) / baseRate + tierThreeRate + sub_bd6955ad == msg.value
                                sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_bd6955ad * msg.value)
                                weiRaised += msg.value
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x79c65068 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_bd6955ad * msg.value)
                                require ext_call.success
                                emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_bd6955ad * msg.value));
                            else:
                                if -sub_856707d8 + 100:
                                    require -sub_856707d8 + 100
                                    require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
                                if baseRate + tierThreeRate + sub_bd6955ad + (-24 * sub_856707d8) + 2400:
                                    require baseRate + tierThreeRate + sub_bd6955ad + (-24 * sub_856707d8) + 2400
                                    require (2400 * msg.value) + (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_bd6955ad * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + tierThreeRate + sub_bd6955ad + (-24 * sub_856707d8) + 2400 == msg.value
                                sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_bd6955ad * msg.value) - (24 * sub_856707d8 * msg.value)
                                weiRaised += msg.value
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x79c65068 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_bd6955ad * msg.value) - (24 * sub_856707d8 * msg.value)
                                require ext_call.success
                                emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_bd6955ad * msg.value) - (24 * sub_856707d8 * msg.value));
                        else:
                            if sub_bac44031 <= block.timestamp:
                                if sub_856707d8 >= 100:
                                    if baseRate + tierThreeRate + sub_3e2ff27d:
                                        require baseRate + tierThreeRate + sub_3e2ff27d
                                        require (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_3e2ff27d * msg.value) / baseRate + tierThreeRate + sub_3e2ff27d == msg.value
                                    sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_3e2ff27d * msg.value)
                                    weiRaised += msg.value
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x79c65068 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_3e2ff27d * msg.value)
                                    require ext_call.success
                                    emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_3e2ff27d * msg.value));
                                else:
                                    if -sub_856707d8 + 100:
                                        require -sub_856707d8 + 100
                                        require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
                                    if baseRate + tierThreeRate + sub_3e2ff27d + (-24 * sub_856707d8) + 2400:
                                        require baseRate + tierThreeRate + sub_3e2ff27d + (-24 * sub_856707d8) + 2400
                                        require (2400 * msg.value) + (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_3e2ff27d * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + tierThreeRate + sub_3e2ff27d + (-24 * sub_856707d8) + 2400 == msg.value
                                    sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_3e2ff27d * msg.value) - (24 * sub_856707d8 * msg.value)
                                    weiRaised += msg.value
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x79c65068 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_3e2ff27d * msg.value) - (24 * sub_856707d8 * msg.value)
                                    require ext_call.success
                                    emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_3e2ff27d * msg.value) - (24 * sub_856707d8 * msg.value));
                            else:
                                if sub_af1ed211 <= block.timestamp:
                                    if sub_856707d8 >= 100:
                                        if baseRate + tierThreeRate + sub_bac44031:
                                            require baseRate + tierThreeRate + sub_bac44031
                                            require (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_bac44031 * msg.value) / baseRate + tierThreeRate + sub_bac44031 == msg.value
                                        sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_bac44031 * msg.value)
                                        weiRaised += msg.value
                                        require ext_code.size(tokenRewardAddress)
                                        call tokenRewardAddress.0x79c65068 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_bac44031 * msg.value)
                                        require ext_call.success
                                        emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_bac44031 * msg.value));
                                    else:
                                        if -sub_856707d8 + 100:
                                            require -sub_856707d8 + 100
                                            require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
                                        if baseRate + tierThreeRate + sub_bac44031 + (-24 * sub_856707d8) + 2400:
                                            require baseRate + tierThreeRate + sub_bac44031 + (-24 * sub_856707d8) + 2400
                                            require (2400 * msg.value) + (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_bac44031 * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + tierThreeRate + sub_bac44031 + (-24 * sub_856707d8) + 2400 == msg.value
                                        sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_bac44031 * msg.value) - (24 * sub_856707d8 * msg.value)
                                        weiRaised += msg.value
                                        require ext_code.size(tokenRewardAddress)
                                        call tokenRewardAddress.0x79c65068 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_bac44031 * msg.value) - (24 * sub_856707d8 * msg.value)
                                        require ext_call.success
                                        emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_bac44031 * msg.value) - (24 * sub_856707d8 * msg.value));
                                else:
                                    if sub_f1a09438 > block.timestamp:
                                        if sub_856707d8 >= 100:
                                            if baseRate + tierThreeRate + sub_f1a09438:
                                                require baseRate + tierThreeRate + sub_f1a09438
                                                require (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_f1a09438 * msg.value) / baseRate + tierThreeRate + sub_f1a09438 == msg.value
                                            sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_f1a09438 * msg.value)
                                            weiRaised += msg.value
                                            require ext_code.size(tokenRewardAddress)
                                            call tokenRewardAddress.0x79c65068 with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_f1a09438 * msg.value)
                                            require ext_call.success
                                            emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_f1a09438 * msg.value));
                                        else:
                                            if -sub_856707d8 + 100:
                                                require -sub_856707d8 + 100
                                                require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
                                            if baseRate + tierThreeRate + sub_f1a09438 + (-24 * sub_856707d8) + 2400:
                                                require baseRate + tierThreeRate + sub_f1a09438 + (-24 * sub_856707d8) + 2400
                                                require (2400 * msg.value) + (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_f1a09438 * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + tierThreeRate + sub_f1a09438 + (-24 * sub_856707d8) + 2400 == msg.value
                                            sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_f1a09438 * msg.value) - (24 * sub_856707d8 * msg.value)
                                            weiRaised += msg.value
                                            require ext_code.size(tokenRewardAddress)
                                            call tokenRewardAddress.0x79c65068 with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_f1a09438 * msg.value) - (24 * sub_856707d8 * msg.value)
                                            require ext_call.success
                                            emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_f1a09438 * msg.value) - (24 * sub_856707d8 * msg.value));
                                    else:
                                        if sub_856707d8 >= 100:
                                            if baseRate + tierThreeRate + sub_af1ed211:
                                                require baseRate + tierThreeRate + sub_af1ed211
                                                require (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_af1ed211 * msg.value) / baseRate + tierThreeRate + sub_af1ed211 == msg.value
                                            sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_af1ed211 * msg.value)
                                            weiRaised += msg.value
                                            require ext_code.size(tokenRewardAddress)
                                            call tokenRewardAddress.0x79c65068 with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_af1ed211 * msg.value)
                                            require ext_call.success
                                            emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_af1ed211 * msg.value));
                                        else:
                                            if -sub_856707d8 + 100:
                                                require -sub_856707d8 + 100
                                                require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
                                            if baseRate + tierThreeRate + sub_af1ed211 + (-24 * sub_856707d8) + 2400:
                                                require baseRate + tierThreeRate + sub_af1ed211 + (-24 * sub_856707d8) + 2400
                                                require (2400 * msg.value) + (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_af1ed211 * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + tierThreeRate + sub_af1ed211 + (-24 * sub_856707d8) + 2400 == msg.value
                                            sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_af1ed211 * msg.value) - (24 * sub_856707d8 * msg.value)
                                            weiRaised += msg.value
                                            require ext_code.size(tokenRewardAddress)
                                            call tokenRewardAddress.0x79c65068 with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_af1ed211 * msg.value) - (24 * sub_856707d8 * msg.value)
                                            require ext_call.success
                                            emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_af1ed211 * msg.value) - (24 * sub_856707d8 * msg.value));
                else:
                    if msg.value < tierTwoPurchase:
                        if block.timestamp >= sub_d1fb92a4:
                            if sub_856707d8 >= 100:
                                if baseRate + sub_970f3284:
                                    require baseRate + sub_970f3284
                                    require (baseRate * msg.value) + (sub_970f3284 * msg.value) / baseRate + sub_970f3284 == msg.value
                                sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (sub_970f3284 * msg.value)
                                weiRaised += msg.value
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x79c65068 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (baseRate * msg.value) + (sub_970f3284 * msg.value)
                                require ext_call.success
                                emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (sub_970f3284 * msg.value));
                            else:
                                if -sub_856707d8 + 100:
                                    require -sub_856707d8 + 100
                                    require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
                                if baseRate + sub_970f3284 + (-24 * sub_856707d8) + 2400:
                                    require baseRate + sub_970f3284 + (-24 * sub_856707d8) + 2400
                                    require (2400 * msg.value) + (baseRate * msg.value) + (sub_970f3284 * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + sub_970f3284 + (-24 * sub_856707d8) + 2400 == msg.value
                                sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (sub_970f3284 * msg.value) - (24 * sub_856707d8 * msg.value)
                                weiRaised += msg.value
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x79c65068 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (sub_970f3284 * msg.value) - (24 * sub_856707d8 * msg.value)
                                require ext_call.success
                                emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (sub_970f3284 * msg.value) - (24 * sub_856707d8 * msg.value));
                        else:
                            if sub_3e2ff27d <= block.timestamp:
                                if sub_856707d8 >= 100:
                                    if baseRate + sub_970f3284 + sub_bd6955ad:
                                        require baseRate + sub_970f3284 + sub_bd6955ad
                                        require (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_bd6955ad * msg.value) / baseRate + sub_970f3284 + sub_bd6955ad == msg.value
                                    sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_bd6955ad * msg.value)
                                    weiRaised += msg.value
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x79c65068 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_bd6955ad * msg.value)
                                    require ext_call.success
                                    emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_bd6955ad * msg.value));
                                else:
                                    if -sub_856707d8 + 100:
                                        require -sub_856707d8 + 100
                                        require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
                                    if baseRate + sub_970f3284 + sub_bd6955ad + (-24 * sub_856707d8) + 2400:
                                        require baseRate + sub_970f3284 + sub_bd6955ad + (-24 * sub_856707d8) + 2400
                                        require (2400 * msg.value) + (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_bd6955ad * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + sub_970f3284 + sub_bd6955ad + (-24 * sub_856707d8) + 2400 == msg.value
                                    sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_bd6955ad * msg.value) - (24 * sub_856707d8 * msg.value)
                                    weiRaised += msg.value
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x79c65068 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_bd6955ad * msg.value) - (24 * sub_856707d8 * msg.value)
                                    require ext_call.success
                                    emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_bd6955ad * msg.value) - (24 * sub_856707d8 * msg.value));
                            else:
                                if sub_bac44031 <= block.timestamp:
                                    if sub_856707d8 >= 100:
                                        if baseRate + sub_970f3284 + sub_3e2ff27d:
                                            require baseRate + sub_970f3284 + sub_3e2ff27d
                                            require (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_3e2ff27d * msg.value) / baseRate + sub_970f3284 + sub_3e2ff27d == msg.value
                                        sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_3e2ff27d * msg.value)
                                        weiRaised += msg.value
                                        require ext_code.size(tokenRewardAddress)
                                        call tokenRewardAddress.0x79c65068 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_3e2ff27d * msg.value)
                                        require ext_call.success
                                        emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_3e2ff27d * msg.value));
                                    else:
                                        if -sub_856707d8 + 100:
                                            require -sub_856707d8 + 100
                                            require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
                                        if baseRate + sub_970f3284 + sub_3e2ff27d + (-24 * sub_856707d8) + 2400:
                                            require baseRate + sub_970f3284 + sub_3e2ff27d + (-24 * sub_856707d8) + 2400
                                            require (2400 * msg.value) + (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_3e2ff27d * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + sub_970f3284 + sub_3e2ff27d + (-24 * sub_856707d8) + 2400 == msg.value
                                        sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_3e2ff27d * msg.value) - (24 * sub_856707d8 * msg.value)
                                        weiRaised += msg.value
                                        require ext_code.size(tokenRewardAddress)
                                        call tokenRewardAddress.0x79c65068 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_3e2ff27d * msg.value) - (24 * sub_856707d8 * msg.value)
                                        require ext_call.success
                                        emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_3e2ff27d * msg.value) - (24 * sub_856707d8 * msg.value));
                                else:
                                    if sub_af1ed211 <= block.timestamp:
                                        if sub_856707d8 >= 100:
                                            if baseRate + sub_970f3284 + sub_bac44031:
                                                require baseRate + sub_970f3284 + sub_bac44031
                                                require (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_bac44031 * msg.value) / baseRate + sub_970f3284 + sub_bac44031 == msg.value
                                            sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_bac44031 * msg.value)
                                            weiRaised += msg.value
                                            require ext_code.size(tokenRewardAddress)
                                            call tokenRewardAddress.0x79c65068 with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_bac44031 * msg.value)
                                            require ext_call.success
                                            emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_bac44031 * msg.value));
                                        else:
                                            if -sub_856707d8 + 100:
                                                require -sub_856707d8 + 100
                                                require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
                                            if baseRate + sub_970f3284 + sub_bac44031 + (-24 * sub_856707d8) + 2400:
                                                require baseRate + sub_970f3284 + sub_bac44031 + (-24 * sub_856707d8) + 2400
                                                require (2400 * msg.value) + (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_bac44031 * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + sub_970f3284 + sub_bac44031 + (-24 * sub_856707d8) + 2400 == msg.value
                                            sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_bac44031 * msg.value) - (24 * sub_856707d8 * msg.value)
                                            weiRaised += msg.value
                                            require ext_code.size(tokenRewardAddress)
                                            call tokenRewardAddress.0x79c65068 with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_bac44031 * msg.value) - (24 * sub_856707d8 * msg.value)
                                            require ext_call.success
                                            emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_bac44031 * msg.value) - (24 * sub_856707d8 * msg.value));
                                    else:
                                        if sub_f1a09438 > block.timestamp:
                                            if sub_856707d8 >= 100:
                                                if baseRate + sub_970f3284 + sub_f1a09438:
                                                    require baseRate + sub_970f3284 + sub_f1a09438
                                                    require (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_f1a09438 * msg.value) / baseRate + sub_970f3284 + sub_f1a09438 == msg.value
                                                sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_f1a09438 * msg.value)
                                                weiRaised += msg.value
                                                require ext_code.size(tokenRewardAddress)
                                                call tokenRewardAddress.0x79c65068 with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_f1a09438 * msg.value)
                                                require ext_call.success
                                                emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_f1a09438 * msg.value));
                                            else:
                                                if -sub_856707d8 + 100:
                                                    require -sub_856707d8 + 100
                                                    require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
                                                if baseRate + sub_970f3284 + sub_f1a09438 + (-24 * sub_856707d8) + 2400:
                                                    require baseRate + sub_970f3284 + sub_f1a09438 + (-24 * sub_856707d8) + 2400
                                                    require (2400 * msg.value) + (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_f1a09438 * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + sub_970f3284 + sub_f1a09438 + (-24 * sub_856707d8) + 2400 == msg.value
                                                sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_f1a09438 * msg.value) - (24 * sub_856707d8 * msg.value)
                                                weiRaised += msg.value
                                                require ext_code.size(tokenRewardAddress)
                                                call tokenRewardAddress.0x79c65068 with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_f1a09438 * msg.value) - (24 * sub_856707d8 * msg.value)
                                                require ext_call.success
                                                emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_f1a09438 * msg.value) - (24 * sub_856707d8 * msg.value));
                                        else:
                                            if sub_856707d8 >= 100:
                                                if baseRate + sub_970f3284 + sub_af1ed211:
                                                    require baseRate + sub_970f3284 + sub_af1ed211
                                                    require (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_af1ed211 * msg.value) / baseRate + sub_970f3284 + sub_af1ed211 == msg.value
                                                sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_af1ed211 * msg.value)
                                                weiRaised += msg.value
                                                require ext_code.size(tokenRewardAddress)
                                                call tokenRewardAddress.0x79c65068 with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_af1ed211 * msg.value)
                                                require ext_call.success
                                                emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_af1ed211 * msg.value));
                                            else:
                                                if -sub_856707d8 + 100:
                                                    require -sub_856707d8 + 100
                                                    require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
                                                if baseRate + sub_970f3284 + sub_af1ed211 + (-24 * sub_856707d8) + 2400:
                                                    require baseRate + sub_970f3284 + sub_af1ed211 + (-24 * sub_856707d8) + 2400
                                                    require (2400 * msg.value) + (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_af1ed211 * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + sub_970f3284 + sub_af1ed211 + (-24 * sub_856707d8) + 2400 == msg.value
                                                sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_af1ed211 * msg.value) - (24 * sub_856707d8 * msg.value)
                                                weiRaised += msg.value
                                                require ext_code.size(tokenRewardAddress)
                                                call tokenRewardAddress.0x79c65068 with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_af1ed211 * msg.value) - (24 * sub_856707d8 * msg.value)
                                                require ext_call.success
                                                emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_af1ed211 * msg.value) - (24 * sub_856707d8 * msg.value));
                    else:
                        if block.timestamp >= sub_d1fb92a4:
                            if sub_856707d8 >= 100:
                                if baseRate + tierTwoRate:
                                    require baseRate + tierTwoRate
                                    require (baseRate * msg.value) + (tierTwoRate * msg.value) / baseRate + tierTwoRate == msg.value
                                sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (tierTwoRate * msg.value)
                                weiRaised += msg.value
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x79c65068 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (baseRate * msg.value) + (tierTwoRate * msg.value)
                                require ext_call.success
                                emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (tierTwoRate * msg.value));
                            else:
                                if -sub_856707d8 + 100:
                                    require -sub_856707d8 + 100
                                    require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
                                if baseRate + tierTwoRate + (-24 * sub_856707d8) + 2400:
                                    require baseRate + tierTwoRate + (-24 * sub_856707d8) + 2400
                                    require (2400 * msg.value) + (baseRate * msg.value) + (tierTwoRate * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + tierTwoRate + (-24 * sub_856707d8) + 2400 == msg.value
                                sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (tierTwoRate * msg.value) - (24 * sub_856707d8 * msg.value)
                                weiRaised += msg.value
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0x79c65068 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (tierTwoRate * msg.value) - (24 * sub_856707d8 * msg.value)
                                require ext_call.success
                                emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (tierTwoRate * msg.value) - (24 * sub_856707d8 * msg.value));
                        else:
                            if sub_3e2ff27d <= block.timestamp:
                                if sub_856707d8 >= 100:
                                    if baseRate + tierTwoRate + sub_bd6955ad:
                                        require baseRate + tierTwoRate + sub_bd6955ad
                                        require (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_bd6955ad * msg.value) / baseRate + tierTwoRate + sub_bd6955ad == msg.value
                                    sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_bd6955ad * msg.value)
                                    weiRaised += msg.value
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x79c65068 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_bd6955ad * msg.value)
                                    require ext_call.success
                                    emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_bd6955ad * msg.value));
                                else:
                                    if -sub_856707d8 + 100:
                                        require -sub_856707d8 + 100
                                        require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
                                    if baseRate + tierTwoRate + sub_bd6955ad + (-24 * sub_856707d8) + 2400:
                                        require baseRate + tierTwoRate + sub_bd6955ad + (-24 * sub_856707d8) + 2400
                                        require (2400 * msg.value) + (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_bd6955ad * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + tierTwoRate + sub_bd6955ad + (-24 * sub_856707d8) + 2400 == msg.value
                                    sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_bd6955ad * msg.value) - (24 * sub_856707d8 * msg.value)
                                    weiRaised += msg.value
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0x79c65068 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_bd6955ad * msg.value) - (24 * sub_856707d8 * msg.value)
                                    require ext_call.success
                                    emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_bd6955ad * msg.value) - (24 * sub_856707d8 * msg.value));
                            else:
                                if sub_bac44031 <= block.timestamp:
                                    if sub_856707d8 >= 100:
                                        if baseRate + tierTwoRate + sub_3e2ff27d:
                                            require baseRate + tierTwoRate + sub_3e2ff27d
                                            require (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_3e2ff27d * msg.value) / baseRate + tierTwoRate + sub_3e2ff27d == msg.value
                                        sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_3e2ff27d * msg.value)
                                        weiRaised += msg.value
                                        require ext_code.size(tokenRewardAddress)
                                        call tokenRewardAddress.0x79c65068 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_3e2ff27d * msg.value)
                                        require ext_call.success
                                        emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_3e2ff27d * msg.value));
                                    else:
                                        if -sub_856707d8 + 100:
                                            require -sub_856707d8 + 100
                                            require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
                                        if baseRate + tierTwoRate + sub_3e2ff27d + (-24 * sub_856707d8) + 2400:
                                            require baseRate + tierTwoRate + sub_3e2ff27d + (-24 * sub_856707d8) + 2400
                                            require (2400 * msg.value) + (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_3e2ff27d * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + tierTwoRate + sub_3e2ff27d + (-24 * sub_856707d8) + 2400 == msg.value
                                        sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_3e2ff27d * msg.value) - (24 * sub_856707d8 * msg.value)
                                        weiRaised += msg.value
                                        require ext_code.size(tokenRewardAddress)
                                        call tokenRewardAddress.0x79c65068 with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_3e2ff27d * msg.value) - (24 * sub_856707d8 * msg.value)
                                        require ext_call.success
                                        emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_3e2ff27d * msg.value) - (24 * sub_856707d8 * msg.value));
                                else:
                                    if sub_af1ed211 <= block.timestamp:
                                        if sub_856707d8 >= 100:
                                            if baseRate + tierTwoRate + sub_bac44031:
                                                require baseRate + tierTwoRate + sub_bac44031
                                                require (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_bac44031 * msg.value) / baseRate + tierTwoRate + sub_bac44031 == msg.value
                                            sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_bac44031 * msg.value)
                                            weiRaised += msg.value
                                            require ext_code.size(tokenRewardAddress)
                                            call tokenRewardAddress.0x79c65068 with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_bac44031 * msg.value)
                                            require ext_call.success
                                            emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_bac44031 * msg.value));
                                        else:
                                            if -sub_856707d8 + 100:
                                                require -sub_856707d8 + 100
                                                require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
                                            if baseRate + tierTwoRate + sub_bac44031 + (-24 * sub_856707d8) + 2400:
                                                require baseRate + tierTwoRate + sub_bac44031 + (-24 * sub_856707d8) + 2400
                                                require (2400 * msg.value) + (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_bac44031 * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + tierTwoRate + sub_bac44031 + (-24 * sub_856707d8) + 2400 == msg.value
                                            sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_bac44031 * msg.value) - (24 * sub_856707d8 * msg.value)
                                            weiRaised += msg.value
                                            require ext_code.size(tokenRewardAddress)
                                            call tokenRewardAddress.0x79c65068 with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_bac44031 * msg.value) - (24 * sub_856707d8 * msg.value)
                                            require ext_call.success
                                            emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_bac44031 * msg.value) - (24 * sub_856707d8 * msg.value));
                                    else:
                                        if sub_f1a09438 > block.timestamp:
                                            if sub_856707d8 >= 100:
                                                if baseRate + tierTwoRate + sub_f1a09438:
                                                    require baseRate + tierTwoRate + sub_f1a09438
                                                    require (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_f1a09438 * msg.value) / baseRate + tierTwoRate + sub_f1a09438 == msg.value
                                                sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_f1a09438 * msg.value)
                                                weiRaised += msg.value
                                                require ext_code.size(tokenRewardAddress)
                                                call tokenRewardAddress.0x79c65068 with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_f1a09438 * msg.value)
                                                require ext_call.success
                                                emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_f1a09438 * msg.value));
                                            else:
                                                if -sub_856707d8 + 100:
                                                    require -sub_856707d8 + 100
                                                    require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
                                                if baseRate + tierTwoRate + sub_f1a09438 + (-24 * sub_856707d8) + 2400:
                                                    require baseRate + tierTwoRate + sub_f1a09438 + (-24 * sub_856707d8) + 2400
                                                    require (2400 * msg.value) + (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_f1a09438 * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + tierTwoRate + sub_f1a09438 + (-24 * sub_856707d8) + 2400 == msg.value
                                                sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_f1a09438 * msg.value) - (24 * sub_856707d8 * msg.value)
                                                weiRaised += msg.value
                                                require ext_code.size(tokenRewardAddress)
                                                call tokenRewardAddress.0x79c65068 with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_f1a09438 * msg.value) - (24 * sub_856707d8 * msg.value)
                                                require ext_call.success
                                                emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_f1a09438 * msg.value) - (24 * sub_856707d8 * msg.value));
                                        else:
                                            if sub_856707d8 >= 100:
                                                if baseRate + tierTwoRate + sub_af1ed211:
                                                    require baseRate + tierTwoRate + sub_af1ed211
                                                    require (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_af1ed211 * msg.value) / baseRate + tierTwoRate + sub_af1ed211 == msg.value
                                                sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_af1ed211 * msg.value)
                                                weiRaised += msg.value
                                                require ext_code.size(tokenRewardAddress)
                                                call tokenRewardAddress.0x79c65068 with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_af1ed211 * msg.value)
                                                require ext_call.success
                                                emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_af1ed211 * msg.value));
                                            else:
                                                if -sub_856707d8 + 100:
                                                    require -sub_856707d8 + 100
                                                    require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
                                                if baseRate + tierTwoRate + sub_af1ed211 + (-24 * sub_856707d8) + 2400:
                                                    require baseRate + tierTwoRate + sub_af1ed211 + (-24 * sub_856707d8) + 2400
                                                    require (2400 * msg.value) + (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_af1ed211 * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + tierTwoRate + sub_af1ed211 + (-24 * sub_856707d8) + 2400 == msg.value
                                                sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_af1ed211 * msg.value) - (24 * sub_856707d8 * msg.value)
                                                weiRaised += msg.value
                                                require ext_code.size(tokenRewardAddress)
                                                call tokenRewardAddress.0x79c65068 with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_af1ed211 * msg.value) - (24 * sub_856707d8 * msg.value)
                                                require ext_call.success
                                                emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_af1ed211 * msg.value) - (24 * sub_856707d8 * msg.value));
    call beneficiaryAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    sub_856707d8++
    if not sub_1aebc3f5:
        if block.timestamp > endTime:
            state = 2
            completedAt = block.timestamp
    else:
        if sub_df0244b1 >= sub_1aebc3f5:
            state = 2
            completedAt = block.timestamp
        else:
            if block.timestamp > endTime:
                state = 2
                completedAt = block.timestamp
}

function contribute() payable {
    require state <= 3
    require not state
    require msg.value >= 2 * priceInWei
    if msg.value < tierOnePurchase:
        if block.timestamp >= sub_d1fb92a4:
            if sub_856707d8 >= 100:
                if baseRate:
                    require baseRate
                    require baseRate * msg.value / baseRate == msg.value
                sub_df0244b1 += baseRate * msg.value
                weiRaised += msg.value
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0x79c65068 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, baseRate * msg.value
                require ext_call.success
                emit LogTokenPurchase(msg.sender, msg.value, baseRate * msg.value);
                call beneficiaryAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                sub_856707d8++
                if not sub_1aebc3f5:
                    if block.timestamp > endTime:
                        state = 2
                        completedAt = block.timestamp
                else:
                    if sub_df0244b1 >= sub_1aebc3f5:
                        state = 2
                        completedAt = block.timestamp
                    else:
                        if block.timestamp > endTime:
                            state = 2
                            completedAt = block.timestamp
                return (baseRate * msg.value)
            if -sub_856707d8 + 100:
                require -sub_856707d8 + 100
                require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
            if baseRate + (-24 * sub_856707d8) + 2400:
                require baseRate + (-24 * sub_856707d8) + 2400
                require (2400 * msg.value) + (baseRate * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + (-24 * sub_856707d8) + 2400 == msg.value
            sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) - (24 * sub_856707d8 * msg.value)
            weiRaised += msg.value
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0x79c65068 with:
                 gas gas_remaining - 710 wei
                args msg.sender, (2400 * msg.value) + (baseRate * msg.value) - (24 * sub_856707d8 * msg.value)
            require ext_call.success
            emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) - (24 * sub_856707d8 * msg.value));
            call beneficiaryAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            sub_856707d8++
            if not sub_1aebc3f5:
                if block.timestamp > endTime:
                    state = 2
                    completedAt = block.timestamp
            else:
                if sub_df0244b1 >= sub_1aebc3f5:
                    state = 2
                    completedAt = block.timestamp
                else:
                    if block.timestamp > endTime:
                        state = 2
                        completedAt = block.timestamp
            return ((2400 * msg.value) + (baseRate * msg.value) - (24 * sub_856707d8 * msg.value))
        if sub_3e2ff27d <= block.timestamp:
            if sub_856707d8 >= 100:
                if baseRate + sub_bd6955ad:
                    require baseRate + sub_bd6955ad
                    require (baseRate * msg.value) + (sub_bd6955ad * msg.value) / baseRate + sub_bd6955ad == msg.value
                sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (sub_bd6955ad * msg.value)
                weiRaised += msg.value
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0x79c65068 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (baseRate * msg.value) + (sub_bd6955ad * msg.value)
                require ext_call.success
                emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (sub_bd6955ad * msg.value));
                call beneficiaryAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                sub_856707d8++
                if not sub_1aebc3f5:
                    if block.timestamp > endTime:
                        state = 2
                        completedAt = block.timestamp
                else:
                    if sub_df0244b1 >= sub_1aebc3f5:
                        state = 2
                        completedAt = block.timestamp
                    else:
                        if block.timestamp > endTime:
                            state = 2
                            completedAt = block.timestamp
                return ((baseRate * msg.value) + (sub_bd6955ad * msg.value))
            if -sub_856707d8 + 100:
                require -sub_856707d8 + 100
                require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
            if baseRate + sub_bd6955ad + (-24 * sub_856707d8) + 2400:
                require baseRate + sub_bd6955ad + (-24 * sub_856707d8) + 2400
                require (2400 * msg.value) + (baseRate * msg.value) + (sub_bd6955ad * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + sub_bd6955ad + (-24 * sub_856707d8) + 2400 == msg.value
            sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (sub_bd6955ad * msg.value) - (24 * sub_856707d8 * msg.value)
            weiRaised += msg.value
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0x79c65068 with:
                 gas gas_remaining - 710 wei
                args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (sub_bd6955ad * msg.value) - (24 * sub_856707d8 * msg.value)
            require ext_call.success
            emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (sub_bd6955ad * msg.value) - (24 * sub_856707d8 * msg.value));
            call beneficiaryAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            sub_856707d8++
            if not sub_1aebc3f5:
                if block.timestamp > endTime:
                    state = 2
                    completedAt = block.timestamp
            else:
                if sub_df0244b1 >= sub_1aebc3f5:
                    state = 2
                    completedAt = block.timestamp
                else:
                    if block.timestamp > endTime:
                        state = 2
                        completedAt = block.timestamp
            return ((2400 * msg.value) + (baseRate * msg.value) + (sub_bd6955ad * msg.value) - (24 * sub_856707d8 * msg.value))
        if sub_bac44031 <= block.timestamp:
            if sub_856707d8 >= 100:
                if baseRate + sub_3e2ff27d:
                    require baseRate + sub_3e2ff27d
                    require (baseRate * msg.value) + (sub_3e2ff27d * msg.value) / baseRate + sub_3e2ff27d == msg.value
                sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (sub_3e2ff27d * msg.value)
                weiRaised += msg.value
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0x79c65068 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (baseRate * msg.value) + (sub_3e2ff27d * msg.value)
                require ext_call.success
                emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (sub_3e2ff27d * msg.value));
                call beneficiaryAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                sub_856707d8++
                if not sub_1aebc3f5:
                    if block.timestamp > endTime:
                        state = 2
                        completedAt = block.timestamp
                else:
                    if sub_df0244b1 >= sub_1aebc3f5:
                        state = 2
                        completedAt = block.timestamp
                    else:
                        if block.timestamp > endTime:
                            state = 2
                            completedAt = block.timestamp
                return ((baseRate * msg.value) + (sub_3e2ff27d * msg.value))
            if -sub_856707d8 + 100:
                require -sub_856707d8 + 100
                require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
            if baseRate + sub_3e2ff27d + (-24 * sub_856707d8) + 2400:
                require baseRate + sub_3e2ff27d + (-24 * sub_856707d8) + 2400
                require (2400 * msg.value) + (baseRate * msg.value) + (sub_3e2ff27d * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + sub_3e2ff27d + (-24 * sub_856707d8) + 2400 == msg.value
            sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (sub_3e2ff27d * msg.value) - (24 * sub_856707d8 * msg.value)
            weiRaised += msg.value
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0x79c65068 with:
                 gas gas_remaining - 710 wei
                args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (sub_3e2ff27d * msg.value) - (24 * sub_856707d8 * msg.value)
            require ext_call.success
            emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (sub_3e2ff27d * msg.value) - (24 * sub_856707d8 * msg.value));
            call beneficiaryAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            sub_856707d8++
            if not sub_1aebc3f5:
                if block.timestamp > endTime:
                    state = 2
                    completedAt = block.timestamp
            else:
                if sub_df0244b1 >= sub_1aebc3f5:
                    state = 2
                    completedAt = block.timestamp
                else:
                    if block.timestamp > endTime:
                        state = 2
                        completedAt = block.timestamp
            return ((2400 * msg.value) + (baseRate * msg.value) + (sub_3e2ff27d * msg.value) - (24 * sub_856707d8 * msg.value))
        if sub_af1ed211 <= block.timestamp:
            if sub_856707d8 >= 100:
                if baseRate + sub_bac44031:
                    require baseRate + sub_bac44031
                    require (baseRate * msg.value) + (sub_bac44031 * msg.value) / baseRate + sub_bac44031 == msg.value
                sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (sub_bac44031 * msg.value)
                weiRaised += msg.value
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0x79c65068 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (baseRate * msg.value) + (sub_bac44031 * msg.value)
                require ext_call.success
                emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (sub_bac44031 * msg.value));
                call beneficiaryAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                sub_856707d8++
                if not sub_1aebc3f5:
                    if block.timestamp > endTime:
                        state = 2
                        completedAt = block.timestamp
                else:
                    if sub_df0244b1 >= sub_1aebc3f5:
                        state = 2
                        completedAt = block.timestamp
                    else:
                        if block.timestamp > endTime:
                            state = 2
                            completedAt = block.timestamp
                return ((baseRate * msg.value) + (sub_bac44031 * msg.value))
            if -sub_856707d8 + 100:
                require -sub_856707d8 + 100
                require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
            if baseRate + sub_bac44031 + (-24 * sub_856707d8) + 2400:
                require baseRate + sub_bac44031 + (-24 * sub_856707d8) + 2400
                require (2400 * msg.value) + (baseRate * msg.value) + (sub_bac44031 * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + sub_bac44031 + (-24 * sub_856707d8) + 2400 == msg.value
            sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (sub_bac44031 * msg.value) - (24 * sub_856707d8 * msg.value)
            weiRaised += msg.value
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0x79c65068 with:
                 gas gas_remaining - 710 wei
                args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (sub_bac44031 * msg.value) - (24 * sub_856707d8 * msg.value)
            require ext_call.success
            emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (sub_bac44031 * msg.value) - (24 * sub_856707d8 * msg.value));
            call beneficiaryAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            sub_856707d8++
            if not sub_1aebc3f5:
                if block.timestamp > endTime:
                    state = 2
                    completedAt = block.timestamp
            else:
                if sub_df0244b1 >= sub_1aebc3f5:
                    state = 2
                    completedAt = block.timestamp
                else:
                    if block.timestamp > endTime:
                        state = 2
                        completedAt = block.timestamp
            return ((2400 * msg.value) + (baseRate * msg.value) + (sub_bac44031 * msg.value) - (24 * sub_856707d8 * msg.value))
        if sub_f1a09438 > block.timestamp:
            if sub_856707d8 >= 100:
                if baseRate + sub_f1a09438:
                    require baseRate + sub_f1a09438
                    require (baseRate * msg.value) + (sub_f1a09438 * msg.value) / baseRate + sub_f1a09438 == msg.value
                sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (sub_f1a09438 * msg.value)
                weiRaised += msg.value
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0x79c65068 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (baseRate * msg.value) + (sub_f1a09438 * msg.value)
                require ext_call.success
                emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (sub_f1a09438 * msg.value));
                call beneficiaryAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                sub_856707d8++
                if not sub_1aebc3f5:
                    if block.timestamp > endTime:
                        state = 2
                        completedAt = block.timestamp
                else:
                    if sub_df0244b1 >= sub_1aebc3f5:
                        state = 2
                        completedAt = block.timestamp
                    else:
                        if block.timestamp > endTime:
                            state = 2
                            completedAt = block.timestamp
                return ((baseRate * msg.value) + (sub_f1a09438 * msg.value))
            if -sub_856707d8 + 100:
                require -sub_856707d8 + 100
                require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
            if baseRate + sub_f1a09438 + (-24 * sub_856707d8) + 2400:
                require baseRate + sub_f1a09438 + (-24 * sub_856707d8) + 2400
                require (2400 * msg.value) + (baseRate * msg.value) + (sub_f1a09438 * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + sub_f1a09438 + (-24 * sub_856707d8) + 2400 == msg.value
            sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (sub_f1a09438 * msg.value) - (24 * sub_856707d8 * msg.value)
            weiRaised += msg.value
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0x79c65068 with:
                 gas gas_remaining - 710 wei
                args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (sub_f1a09438 * msg.value) - (24 * sub_856707d8 * msg.value)
            require ext_call.success
            emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (sub_f1a09438 * msg.value) - (24 * sub_856707d8 * msg.value));
            call beneficiaryAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            sub_856707d8++
            if not sub_1aebc3f5:
                if block.timestamp > endTime:
                    state = 2
                    completedAt = block.timestamp
            else:
                if sub_df0244b1 >= sub_1aebc3f5:
                    state = 2
                    completedAt = block.timestamp
                else:
                    if block.timestamp > endTime:
                        state = 2
                        completedAt = block.timestamp
            return ((2400 * msg.value) + (baseRate * msg.value) + (sub_f1a09438 * msg.value) - (24 * sub_856707d8 * msg.value))
        if sub_856707d8 >= 100:
            if baseRate + sub_af1ed211:
                require baseRate + sub_af1ed211
                require (baseRate * msg.value) + (sub_af1ed211 * msg.value) / baseRate + sub_af1ed211 == msg.value
            sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (sub_af1ed211 * msg.value)
            weiRaised += msg.value
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0x79c65068 with:
                 gas gas_remaining - 710 wei
                args msg.sender, (baseRate * msg.value) + (sub_af1ed211 * msg.value)
            require ext_call.success
            emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (sub_af1ed211 * msg.value));
            call beneficiaryAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            sub_856707d8++
            if not sub_1aebc3f5:
                if block.timestamp > endTime:
                    state = 2
                    completedAt = block.timestamp
            else:
                if sub_df0244b1 >= sub_1aebc3f5:
                    state = 2
                    completedAt = block.timestamp
                else:
                    if block.timestamp > endTime:
                        state = 2
                        completedAt = block.timestamp
            return ((baseRate * msg.value) + (sub_af1ed211 * msg.value))
        if -sub_856707d8 + 100:
            require -sub_856707d8 + 100
            require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
        if baseRate + sub_af1ed211 + (-24 * sub_856707d8) + 2400:
            require baseRate + sub_af1ed211 + (-24 * sub_856707d8) + 2400
            require (2400 * msg.value) + (baseRate * msg.value) + (sub_af1ed211 * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + sub_af1ed211 + (-24 * sub_856707d8) + 2400 == msg.value
        sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (sub_af1ed211 * msg.value) - (24 * sub_856707d8 * msg.value)
        weiRaised += msg.value
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0x79c65068 with:
             gas gas_remaining - 710 wei
            args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (sub_af1ed211 * msg.value) - (24 * sub_856707d8 * msg.value)
        require ext_call.success
        emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (sub_af1ed211 * msg.value) - (24 * sub_856707d8 * msg.value));
        call beneficiaryAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        sub_856707d8++
        if not sub_1aebc3f5:
            if block.timestamp > endTime:
                state = 2
                completedAt = block.timestamp
        else:
            if sub_df0244b1 >= sub_1aebc3f5:
                state = 2
                completedAt = block.timestamp
            else:
                if block.timestamp > endTime:
                    state = 2
                    completedAt = block.timestamp
        return ((2400 * msg.value) + (baseRate * msg.value) + (sub_af1ed211 * msg.value) - (24 * sub_856707d8 * msg.value))
    if msg.value >= sub_bbd7a283:
        if block.timestamp >= sub_d1fb92a4:
            if sub_856707d8 >= 100:
                if baseRate + sub_3e267793:
                    require baseRate + sub_3e267793
                    require (baseRate * msg.value) + (sub_3e267793 * msg.value) / baseRate + sub_3e267793 == msg.value
                sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (sub_3e267793 * msg.value)
                weiRaised += msg.value
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0x79c65068 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (baseRate * msg.value) + (sub_3e267793 * msg.value)
                require ext_call.success
                emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (sub_3e267793 * msg.value));
                call beneficiaryAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                sub_856707d8++
                if not sub_1aebc3f5:
                    if block.timestamp > endTime:
                        state = 2
                        completedAt = block.timestamp
                else:
                    if sub_df0244b1 >= sub_1aebc3f5:
                        state = 2
                        completedAt = block.timestamp
                    else:
                        if block.timestamp > endTime:
                            state = 2
                            completedAt = block.timestamp
                return ((baseRate * msg.value) + (sub_3e267793 * msg.value))
            if -sub_856707d8 + 100:
                require -sub_856707d8 + 100
                require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
            if baseRate + sub_3e267793 + (-24 * sub_856707d8) + 2400:
                require baseRate + sub_3e267793 + (-24 * sub_856707d8) + 2400
                require (2400 * msg.value) + (baseRate * msg.value) + (sub_3e267793 * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + sub_3e267793 + (-24 * sub_856707d8) + 2400 == msg.value
            sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (sub_3e267793 * msg.value) - (24 * sub_856707d8 * msg.value)
            weiRaised += msg.value
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0x79c65068 with:
                 gas gas_remaining - 710 wei
                args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (sub_3e267793 * msg.value) - (24 * sub_856707d8 * msg.value)
            require ext_call.success
            emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (sub_3e267793 * msg.value) - (24 * sub_856707d8 * msg.value));
            call beneficiaryAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            sub_856707d8++
            if not sub_1aebc3f5:
                if block.timestamp > endTime:
                    state = 2
                    completedAt = block.timestamp
            else:
                if sub_df0244b1 >= sub_1aebc3f5:
                    state = 2
                    completedAt = block.timestamp
                else:
                    if block.timestamp > endTime:
                        state = 2
                        completedAt = block.timestamp
            return ((2400 * msg.value) + (baseRate * msg.value) + (sub_3e267793 * msg.value) - (24 * sub_856707d8 * msg.value))
        if sub_3e2ff27d <= block.timestamp:
            if sub_856707d8 >= 100:
                if baseRate + sub_3e267793 + sub_bd6955ad:
                    require baseRate + sub_3e267793 + sub_bd6955ad
                    require (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_bd6955ad * msg.value) / baseRate + sub_3e267793 + sub_bd6955ad == msg.value
                sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_bd6955ad * msg.value)
                weiRaised += msg.value
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0x79c65068 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_bd6955ad * msg.value)
                require ext_call.success
                emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_bd6955ad * msg.value));
                call beneficiaryAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                sub_856707d8++
                if not sub_1aebc3f5:
                    if block.timestamp > endTime:
                        state = 2
                        completedAt = block.timestamp
                else:
                    if sub_df0244b1 >= sub_1aebc3f5:
                        state = 2
                        completedAt = block.timestamp
                    else:
                        if block.timestamp > endTime:
                            state = 2
                            completedAt = block.timestamp
                return ((baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_bd6955ad * msg.value))
            if -sub_856707d8 + 100:
                require -sub_856707d8 + 100
                require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
            if baseRate + sub_3e267793 + sub_bd6955ad + (-24 * sub_856707d8) + 2400:
                require baseRate + sub_3e267793 + sub_bd6955ad + (-24 * sub_856707d8) + 2400
                require (2400 * msg.value) + (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_bd6955ad * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + sub_3e267793 + sub_bd6955ad + (-24 * sub_856707d8) + 2400 == msg.value
            sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_bd6955ad * msg.value) - (24 * sub_856707d8 * msg.value)
            weiRaised += msg.value
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0x79c65068 with:
                 gas gas_remaining - 710 wei
                args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_bd6955ad * msg.value) - (24 * sub_856707d8 * msg.value)
            require ext_call.success
            emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_bd6955ad * msg.value) - (24 * sub_856707d8 * msg.value));
            call beneficiaryAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            sub_856707d8++
            if not sub_1aebc3f5:
                if block.timestamp > endTime:
                    state = 2
                    completedAt = block.timestamp
            else:
                if sub_df0244b1 >= sub_1aebc3f5:
                    state = 2
                    completedAt = block.timestamp
                else:
                    if block.timestamp > endTime:
                        state = 2
                        completedAt = block.timestamp
            return ((2400 * msg.value) + (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_bd6955ad * msg.value) - (24 * sub_856707d8 * msg.value))
        if sub_bac44031 <= block.timestamp:
            if sub_856707d8 >= 100:
                if baseRate + sub_3e267793 + sub_3e2ff27d:
                    require baseRate + sub_3e267793 + sub_3e2ff27d
                    require (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_3e2ff27d * msg.value) / baseRate + sub_3e267793 + sub_3e2ff27d == msg.value
                sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_3e2ff27d * msg.value)
                weiRaised += msg.value
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0x79c65068 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_3e2ff27d * msg.value)
                require ext_call.success
                emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_3e2ff27d * msg.value));
                call beneficiaryAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                sub_856707d8++
                if not sub_1aebc3f5:
                    if block.timestamp > endTime:
                        state = 2
                        completedAt = block.timestamp
                else:
                    if sub_df0244b1 >= sub_1aebc3f5:
                        state = 2
                        completedAt = block.timestamp
                    else:
                        if block.timestamp > endTime:
                            state = 2
                            completedAt = block.timestamp
                return ((baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_3e2ff27d * msg.value))
            if -sub_856707d8 + 100:
                require -sub_856707d8 + 100
                require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
            if baseRate + sub_3e267793 + sub_3e2ff27d + (-24 * sub_856707d8) + 2400:
                require baseRate + sub_3e267793 + sub_3e2ff27d + (-24 * sub_856707d8) + 2400
                require (2400 * msg.value) + (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_3e2ff27d * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + sub_3e267793 + sub_3e2ff27d + (-24 * sub_856707d8) + 2400 == msg.value
            sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_3e2ff27d * msg.value) - (24 * sub_856707d8 * msg.value)
            weiRaised += msg.value
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0x79c65068 with:
                 gas gas_remaining - 710 wei
                args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_3e2ff27d * msg.value) - (24 * sub_856707d8 * msg.value)
            require ext_call.success
            emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_3e2ff27d * msg.value) - (24 * sub_856707d8 * msg.value));
            call beneficiaryAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            sub_856707d8++
            if not sub_1aebc3f5:
                if block.timestamp > endTime:
                    state = 2
                    completedAt = block.timestamp
            else:
                if sub_df0244b1 >= sub_1aebc3f5:
                    state = 2
                    completedAt = block.timestamp
                else:
                    if block.timestamp > endTime:
                        state = 2
                        completedAt = block.timestamp
            return ((2400 * msg.value) + (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_3e2ff27d * msg.value) - (24 * sub_856707d8 * msg.value))
        if sub_af1ed211 <= block.timestamp:
            if sub_856707d8 >= 100:
                if baseRate + sub_3e267793 + sub_bac44031:
                    require baseRate + sub_3e267793 + sub_bac44031
                    require (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_bac44031 * msg.value) / baseRate + sub_3e267793 + sub_bac44031 == msg.value
                sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_bac44031 * msg.value)
                weiRaised += msg.value
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0x79c65068 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_bac44031 * msg.value)
                require ext_call.success
                emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_bac44031 * msg.value));
                call beneficiaryAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                sub_856707d8++
                if not sub_1aebc3f5:
                    if block.timestamp > endTime:
                        state = 2
                        completedAt = block.timestamp
                else:
                    if sub_df0244b1 >= sub_1aebc3f5:
                        state = 2
                        completedAt = block.timestamp
                    else:
                        if block.timestamp > endTime:
                            state = 2
                            completedAt = block.timestamp
                return ((baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_bac44031 * msg.value))
            if -sub_856707d8 + 100:
                require -sub_856707d8 + 100
                require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
            if baseRate + sub_3e267793 + sub_bac44031 + (-24 * sub_856707d8) + 2400:
                require baseRate + sub_3e267793 + sub_bac44031 + (-24 * sub_856707d8) + 2400
                require (2400 * msg.value) + (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_bac44031 * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + sub_3e267793 + sub_bac44031 + (-24 * sub_856707d8) + 2400 == msg.value
            sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_bac44031 * msg.value) - (24 * sub_856707d8 * msg.value)
            weiRaised += msg.value
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0x79c65068 with:
                 gas gas_remaining - 710 wei
                args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_bac44031 * msg.value) - (24 * sub_856707d8 * msg.value)
            require ext_call.success
            emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_bac44031 * msg.value) - (24 * sub_856707d8 * msg.value));
            call beneficiaryAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            sub_856707d8++
            if not sub_1aebc3f5:
                if block.timestamp > endTime:
                    state = 2
                    completedAt = block.timestamp
            else:
                if sub_df0244b1 >= sub_1aebc3f5:
                    state = 2
                    completedAt = block.timestamp
                else:
                    if block.timestamp > endTime:
                        state = 2
                        completedAt = block.timestamp
            return ((2400 * msg.value) + (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_bac44031 * msg.value) - (24 * sub_856707d8 * msg.value))
        if sub_f1a09438 > block.timestamp:
            if sub_856707d8 >= 100:
                if baseRate + sub_3e267793 + sub_f1a09438:
                    require baseRate + sub_3e267793 + sub_f1a09438
                    require (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_f1a09438 * msg.value) / baseRate + sub_3e267793 + sub_f1a09438 == msg.value
                sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_f1a09438 * msg.value)
                weiRaised += msg.value
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0x79c65068 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_f1a09438 * msg.value)
                require ext_call.success
                emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_f1a09438 * msg.value));
                call beneficiaryAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                sub_856707d8++
                if not sub_1aebc3f5:
                    if block.timestamp > endTime:
                        state = 2
                        completedAt = block.timestamp
                else:
                    if sub_df0244b1 >= sub_1aebc3f5:
                        state = 2
                        completedAt = block.timestamp
                    else:
                        if block.timestamp > endTime:
                            state = 2
                            completedAt = block.timestamp
                return ((baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_f1a09438 * msg.value))
            if -sub_856707d8 + 100:
                require -sub_856707d8 + 100
                require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
            if baseRate + sub_3e267793 + sub_f1a09438 + (-24 * sub_856707d8) + 2400:
                require baseRate + sub_3e267793 + sub_f1a09438 + (-24 * sub_856707d8) + 2400
                require (2400 * msg.value) + (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_f1a09438 * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + sub_3e267793 + sub_f1a09438 + (-24 * sub_856707d8) + 2400 == msg.value
            sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_f1a09438 * msg.value) - (24 * sub_856707d8 * msg.value)
            weiRaised += msg.value
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0x79c65068 with:
                 gas gas_remaining - 710 wei
                args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_f1a09438 * msg.value) - (24 * sub_856707d8 * msg.value)
            require ext_call.success
            emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_f1a09438 * msg.value) - (24 * sub_856707d8 * msg.value));
            call beneficiaryAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            sub_856707d8++
            if not sub_1aebc3f5:
                if block.timestamp > endTime:
                    state = 2
                    completedAt = block.timestamp
            else:
                if sub_df0244b1 >= sub_1aebc3f5:
                    state = 2
                    completedAt = block.timestamp
                else:
                    if block.timestamp > endTime:
                        state = 2
                        completedAt = block.timestamp
            return ((2400 * msg.value) + (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_f1a09438 * msg.value) - (24 * sub_856707d8 * msg.value))
        if sub_856707d8 >= 100:
            if baseRate + sub_3e267793 + sub_af1ed211:
                require baseRate + sub_3e267793 + sub_af1ed211
                require (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_af1ed211 * msg.value) / baseRate + sub_3e267793 + sub_af1ed211 == msg.value
            sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_af1ed211 * msg.value)
            weiRaised += msg.value
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0x79c65068 with:
                 gas gas_remaining - 710 wei
                args msg.sender, (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_af1ed211 * msg.value)
            require ext_call.success
            emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_af1ed211 * msg.value));
            call beneficiaryAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            sub_856707d8++
            if not sub_1aebc3f5:
                if block.timestamp > endTime:
                    state = 2
                    completedAt = block.timestamp
            else:
                if sub_df0244b1 >= sub_1aebc3f5:
                    state = 2
                    completedAt = block.timestamp
                else:
                    if block.timestamp > endTime:
                        state = 2
                        completedAt = block.timestamp
            return ((baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_af1ed211 * msg.value))
        if -sub_856707d8 + 100:
            require -sub_856707d8 + 100
            require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
        if baseRate + sub_3e267793 + sub_af1ed211 + (-24 * sub_856707d8) + 2400:
            require baseRate + sub_3e267793 + sub_af1ed211 + (-24 * sub_856707d8) + 2400
            require (2400 * msg.value) + (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_af1ed211 * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + sub_3e267793 + sub_af1ed211 + (-24 * sub_856707d8) + 2400 == msg.value
        sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_af1ed211 * msg.value) - (24 * sub_856707d8 * msg.value)
        weiRaised += msg.value
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0x79c65068 with:
             gas gas_remaining - 710 wei
            args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_af1ed211 * msg.value) - (24 * sub_856707d8 * msg.value)
        require ext_call.success
        emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_af1ed211 * msg.value) - (24 * sub_856707d8 * msg.value));
        call beneficiaryAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        sub_856707d8++
        if not sub_1aebc3f5:
            if block.timestamp > endTime:
                state = 2
                completedAt = block.timestamp
        else:
            if sub_df0244b1 >= sub_1aebc3f5:
                state = 2
                completedAt = block.timestamp
            else:
                if block.timestamp > endTime:
                    state = 2
                    completedAt = block.timestamp
        return ((2400 * msg.value) + (baseRate * msg.value) + (sub_3e267793 * msg.value) + (sub_af1ed211 * msg.value) - (24 * sub_856707d8 * msg.value))
    if msg.value >= sub_87aed3b3:
        if block.timestamp >= sub_d1fb92a4:
            if sub_856707d8 >= 100:
                if baseRate + sub_974336c9:
                    require baseRate + sub_974336c9
                    require (baseRate * msg.value) + (sub_974336c9 * msg.value) / baseRate + sub_974336c9 == msg.value
                sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (sub_974336c9 * msg.value)
                weiRaised += msg.value
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0x79c65068 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (baseRate * msg.value) + (sub_974336c9 * msg.value)
                require ext_call.success
                emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (sub_974336c9 * msg.value));
                call beneficiaryAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                sub_856707d8++
                if not sub_1aebc3f5:
                    if block.timestamp > endTime:
                        state = 2
                        completedAt = block.timestamp
                else:
                    if sub_df0244b1 >= sub_1aebc3f5:
                        state = 2
                        completedAt = block.timestamp
                    else:
                        if block.timestamp > endTime:
                            state = 2
                            completedAt = block.timestamp
                return ((baseRate * msg.value) + (sub_974336c9 * msg.value))
            if -sub_856707d8 + 100:
                require -sub_856707d8 + 100
                require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
            if baseRate + sub_974336c9 + (-24 * sub_856707d8) + 2400:
                require baseRate + sub_974336c9 + (-24 * sub_856707d8) + 2400
                require (2400 * msg.value) + (baseRate * msg.value) + (sub_974336c9 * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + sub_974336c9 + (-24 * sub_856707d8) + 2400 == msg.value
            sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (sub_974336c9 * msg.value) - (24 * sub_856707d8 * msg.value)
            weiRaised += msg.value
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0x79c65068 with:
                 gas gas_remaining - 710 wei
                args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (sub_974336c9 * msg.value) - (24 * sub_856707d8 * msg.value)
            require ext_call.success
            emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (sub_974336c9 * msg.value) - (24 * sub_856707d8 * msg.value));
            call beneficiaryAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            sub_856707d8++
            if not sub_1aebc3f5:
                if block.timestamp > endTime:
                    state = 2
                    completedAt = block.timestamp
            else:
                if sub_df0244b1 >= sub_1aebc3f5:
                    state = 2
                    completedAt = block.timestamp
                else:
                    if block.timestamp > endTime:
                        state = 2
                        completedAt = block.timestamp
            return ((2400 * msg.value) + (baseRate * msg.value) + (sub_974336c9 * msg.value) - (24 * sub_856707d8 * msg.value))
        if sub_3e2ff27d <= block.timestamp:
            if sub_856707d8 >= 100:
                if baseRate + sub_974336c9 + sub_bd6955ad:
                    require baseRate + sub_974336c9 + sub_bd6955ad
                    require (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_bd6955ad * msg.value) / baseRate + sub_974336c9 + sub_bd6955ad == msg.value
                sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_bd6955ad * msg.value)
                weiRaised += msg.value
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0x79c65068 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_bd6955ad * msg.value)
                require ext_call.success
                emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_bd6955ad * msg.value));
                call beneficiaryAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                sub_856707d8++
                if not sub_1aebc3f5:
                    if block.timestamp > endTime:
                        state = 2
                        completedAt = block.timestamp
                else:
                    if sub_df0244b1 >= sub_1aebc3f5:
                        state = 2
                        completedAt = block.timestamp
                    else:
                        if block.timestamp > endTime:
                            state = 2
                            completedAt = block.timestamp
                return ((baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_bd6955ad * msg.value))
            if -sub_856707d8 + 100:
                require -sub_856707d8 + 100
                require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
            if baseRate + sub_974336c9 + sub_bd6955ad + (-24 * sub_856707d8) + 2400:
                require baseRate + sub_974336c9 + sub_bd6955ad + (-24 * sub_856707d8) + 2400
                require (2400 * msg.value) + (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_bd6955ad * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + sub_974336c9 + sub_bd6955ad + (-24 * sub_856707d8) + 2400 == msg.value
            sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_bd6955ad * msg.value) - (24 * sub_856707d8 * msg.value)
            weiRaised += msg.value
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0x79c65068 with:
                 gas gas_remaining - 710 wei
                args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_bd6955ad * msg.value) - (24 * sub_856707d8 * msg.value)
            require ext_call.success
            emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_bd6955ad * msg.value) - (24 * sub_856707d8 * msg.value));
            call beneficiaryAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            sub_856707d8++
            if not sub_1aebc3f5:
                if block.timestamp > endTime:
                    state = 2
                    completedAt = block.timestamp
            else:
                if sub_df0244b1 >= sub_1aebc3f5:
                    state = 2
                    completedAt = block.timestamp
                else:
                    if block.timestamp > endTime:
                        state = 2
                        completedAt = block.timestamp
            return ((2400 * msg.value) + (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_bd6955ad * msg.value) - (24 * sub_856707d8 * msg.value))
        if sub_bac44031 <= block.timestamp:
            if sub_856707d8 >= 100:
                if baseRate + sub_974336c9 + sub_3e2ff27d:
                    require baseRate + sub_974336c9 + sub_3e2ff27d
                    require (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_3e2ff27d * msg.value) / baseRate + sub_974336c9 + sub_3e2ff27d == msg.value
                sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_3e2ff27d * msg.value)
                weiRaised += msg.value
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0x79c65068 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_3e2ff27d * msg.value)
                require ext_call.success
                emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_3e2ff27d * msg.value));
                call beneficiaryAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                sub_856707d8++
                if not sub_1aebc3f5:
                    if block.timestamp > endTime:
                        state = 2
                        completedAt = block.timestamp
                else:
                    if sub_df0244b1 >= sub_1aebc3f5:
                        state = 2
                        completedAt = block.timestamp
                    else:
                        if block.timestamp > endTime:
                            state = 2
                            completedAt = block.timestamp
                return ((baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_3e2ff27d * msg.value))
            if -sub_856707d8 + 100:
                require -sub_856707d8 + 100
                require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
            if baseRate + sub_974336c9 + sub_3e2ff27d + (-24 * sub_856707d8) + 2400:
                require baseRate + sub_974336c9 + sub_3e2ff27d + (-24 * sub_856707d8) + 2400
                require (2400 * msg.value) + (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_3e2ff27d * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + sub_974336c9 + sub_3e2ff27d + (-24 * sub_856707d8) + 2400 == msg.value
            sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_3e2ff27d * msg.value) - (24 * sub_856707d8 * msg.value)
            weiRaised += msg.value
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0x79c65068 with:
                 gas gas_remaining - 710 wei
                args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_3e2ff27d * msg.value) - (24 * sub_856707d8 * msg.value)
            require ext_call.success
            emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_3e2ff27d * msg.value) - (24 * sub_856707d8 * msg.value));
            call beneficiaryAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            sub_856707d8++
            if not sub_1aebc3f5:
                if block.timestamp > endTime:
                    state = 2
                    completedAt = block.timestamp
            else:
                if sub_df0244b1 >= sub_1aebc3f5:
                    state = 2
                    completedAt = block.timestamp
                else:
                    if block.timestamp > endTime:
                        state = 2
                        completedAt = block.timestamp
            return ((2400 * msg.value) + (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_3e2ff27d * msg.value) - (24 * sub_856707d8 * msg.value))
        if sub_af1ed211 <= block.timestamp:
            if sub_856707d8 >= 100:
                if baseRate + sub_974336c9 + sub_bac44031:
                    require baseRate + sub_974336c9 + sub_bac44031
                    require (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_bac44031 * msg.value) / baseRate + sub_974336c9 + sub_bac44031 == msg.value
                sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_bac44031 * msg.value)
                weiRaised += msg.value
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0x79c65068 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_bac44031 * msg.value)
                require ext_call.success
                emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_bac44031 * msg.value));
                call beneficiaryAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                sub_856707d8++
                if not sub_1aebc3f5:
                    if block.timestamp > endTime:
                        state = 2
                        completedAt = block.timestamp
                else:
                    if sub_df0244b1 >= sub_1aebc3f5:
                        state = 2
                        completedAt = block.timestamp
                    else:
                        if block.timestamp > endTime:
                            state = 2
                            completedAt = block.timestamp
                return ((baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_bac44031 * msg.value))
            if -sub_856707d8 + 100:
                require -sub_856707d8 + 100
                require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
            if baseRate + sub_974336c9 + sub_bac44031 + (-24 * sub_856707d8) + 2400:
                require baseRate + sub_974336c9 + sub_bac44031 + (-24 * sub_856707d8) + 2400
                require (2400 * msg.value) + (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_bac44031 * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + sub_974336c9 + sub_bac44031 + (-24 * sub_856707d8) + 2400 == msg.value
            sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_bac44031 * msg.value) - (24 * sub_856707d8 * msg.value)
            weiRaised += msg.value
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0x79c65068 with:
                 gas gas_remaining - 710 wei
                args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_bac44031 * msg.value) - (24 * sub_856707d8 * msg.value)
            require ext_call.success
            emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_bac44031 * msg.value) - (24 * sub_856707d8 * msg.value));
            call beneficiaryAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            sub_856707d8++
            if not sub_1aebc3f5:
                if block.timestamp > endTime:
                    state = 2
                    completedAt = block.timestamp
            else:
                if sub_df0244b1 >= sub_1aebc3f5:
                    state = 2
                    completedAt = block.timestamp
                else:
                    if block.timestamp > endTime:
                        state = 2
                        completedAt = block.timestamp
            return ((2400 * msg.value) + (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_bac44031 * msg.value) - (24 * sub_856707d8 * msg.value))
        if sub_f1a09438 > block.timestamp:
            if sub_856707d8 >= 100:
                if baseRate + sub_974336c9 + sub_f1a09438:
                    require baseRate + sub_974336c9 + sub_f1a09438
                    require (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_f1a09438 * msg.value) / baseRate + sub_974336c9 + sub_f1a09438 == msg.value
                sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_f1a09438 * msg.value)
                weiRaised += msg.value
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0x79c65068 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_f1a09438 * msg.value)
                require ext_call.success
                emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_f1a09438 * msg.value));
                call beneficiaryAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                sub_856707d8++
                if not sub_1aebc3f5:
                    if block.timestamp > endTime:
                        state = 2
                        completedAt = block.timestamp
                else:
                    if sub_df0244b1 >= sub_1aebc3f5:
                        state = 2
                        completedAt = block.timestamp
                    else:
                        if block.timestamp > endTime:
                            state = 2
                            completedAt = block.timestamp
                return ((baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_f1a09438 * msg.value))
            if -sub_856707d8 + 100:
                require -sub_856707d8 + 100
                require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
            if baseRate + sub_974336c9 + sub_f1a09438 + (-24 * sub_856707d8) + 2400:
                require baseRate + sub_974336c9 + sub_f1a09438 + (-24 * sub_856707d8) + 2400
                require (2400 * msg.value) + (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_f1a09438 * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + sub_974336c9 + sub_f1a09438 + (-24 * sub_856707d8) + 2400 == msg.value
            sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_f1a09438 * msg.value) - (24 * sub_856707d8 * msg.value)
            weiRaised += msg.value
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0x79c65068 with:
                 gas gas_remaining - 710 wei
                args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_f1a09438 * msg.value) - (24 * sub_856707d8 * msg.value)
            require ext_call.success
            emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_f1a09438 * msg.value) - (24 * sub_856707d8 * msg.value));
            call beneficiaryAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            sub_856707d8++
            if not sub_1aebc3f5:
                if block.timestamp > endTime:
                    state = 2
                    completedAt = block.timestamp
            else:
                if sub_df0244b1 >= sub_1aebc3f5:
                    state = 2
                    completedAt = block.timestamp
                else:
                    if block.timestamp > endTime:
                        state = 2
                        completedAt = block.timestamp
            return ((2400 * msg.value) + (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_f1a09438 * msg.value) - (24 * sub_856707d8 * msg.value))
        if sub_856707d8 >= 100:
            if baseRate + sub_974336c9 + sub_af1ed211:
                require baseRate + sub_974336c9 + sub_af1ed211
                require (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_af1ed211 * msg.value) / baseRate + sub_974336c9 + sub_af1ed211 == msg.value
            sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_af1ed211 * msg.value)
            weiRaised += msg.value
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0x79c65068 with:
                 gas gas_remaining - 710 wei
                args msg.sender, (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_af1ed211 * msg.value)
            require ext_call.success
            emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_af1ed211 * msg.value));
            call beneficiaryAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            sub_856707d8++
            if not sub_1aebc3f5:
                if block.timestamp > endTime:
                    state = 2
                    completedAt = block.timestamp
            else:
                if sub_df0244b1 >= sub_1aebc3f5:
                    state = 2
                    completedAt = block.timestamp
                else:
                    if block.timestamp > endTime:
                        state = 2
                        completedAt = block.timestamp
            return ((baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_af1ed211 * msg.value))
        if -sub_856707d8 + 100:
            require -sub_856707d8 + 100
            require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
        if baseRate + sub_974336c9 + sub_af1ed211 + (-24 * sub_856707d8) + 2400:
            require baseRate + sub_974336c9 + sub_af1ed211 + (-24 * sub_856707d8) + 2400
            require (2400 * msg.value) + (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_af1ed211 * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + sub_974336c9 + sub_af1ed211 + (-24 * sub_856707d8) + 2400 == msg.value
        sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_af1ed211 * msg.value) - (24 * sub_856707d8 * msg.value)
        weiRaised += msg.value
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0x79c65068 with:
             gas gas_remaining - 710 wei
            args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_af1ed211 * msg.value) - (24 * sub_856707d8 * msg.value)
        require ext_call.success
        emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_af1ed211 * msg.value) - (24 * sub_856707d8 * msg.value));
        call beneficiaryAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        sub_856707d8++
        if not sub_1aebc3f5:
            if block.timestamp > endTime:
                state = 2
                completedAt = block.timestamp
        else:
            if sub_df0244b1 >= sub_1aebc3f5:
                state = 2
                completedAt = block.timestamp
            else:
                if block.timestamp > endTime:
                    state = 2
                    completedAt = block.timestamp
        return ((2400 * msg.value) + (baseRate * msg.value) + (sub_974336c9 * msg.value) + (sub_af1ed211 * msg.value) - (24 * sub_856707d8 * msg.value))
    if msg.value >= tierThreePurchase:
        if block.timestamp >= sub_d1fb92a4:
            if sub_856707d8 >= 100:
                if baseRate + tierThreeRate:
                    require baseRate + tierThreeRate
                    require (baseRate * msg.value) + (tierThreeRate * msg.value) / baseRate + tierThreeRate == msg.value
                sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (tierThreeRate * msg.value)
                weiRaised += msg.value
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0x79c65068 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (baseRate * msg.value) + (tierThreeRate * msg.value)
                require ext_call.success
                emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (tierThreeRate * msg.value));
                call beneficiaryAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                sub_856707d8++
                if not sub_1aebc3f5:
                    if block.timestamp > endTime:
                        state = 2
                        completedAt = block.timestamp
                else:
                    if sub_df0244b1 >= sub_1aebc3f5:
                        state = 2
                        completedAt = block.timestamp
                    else:
                        if block.timestamp > endTime:
                            state = 2
                            completedAt = block.timestamp
                return ((baseRate * msg.value) + (tierThreeRate * msg.value))
            if -sub_856707d8 + 100:
                require -sub_856707d8 + 100
                require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
            if baseRate + tierThreeRate + (-24 * sub_856707d8) + 2400:
                require baseRate + tierThreeRate + (-24 * sub_856707d8) + 2400
                require (2400 * msg.value) + (baseRate * msg.value) + (tierThreeRate * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + tierThreeRate + (-24 * sub_856707d8) + 2400 == msg.value
            sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (tierThreeRate * msg.value) - (24 * sub_856707d8 * msg.value)
            weiRaised += msg.value
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0x79c65068 with:
                 gas gas_remaining - 710 wei
                args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (tierThreeRate * msg.value) - (24 * sub_856707d8 * msg.value)
            require ext_call.success
            emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (tierThreeRate * msg.value) - (24 * sub_856707d8 * msg.value));
            call beneficiaryAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            sub_856707d8++
            if not sub_1aebc3f5:
                if block.timestamp > endTime:
                    state = 2
                    completedAt = block.timestamp
            else:
                if sub_df0244b1 >= sub_1aebc3f5:
                    state = 2
                    completedAt = block.timestamp
                else:
                    if block.timestamp > endTime:
                        state = 2
                        completedAt = block.timestamp
            return ((2400 * msg.value) + (baseRate * msg.value) + (tierThreeRate * msg.value) - (24 * sub_856707d8 * msg.value))
        if sub_3e2ff27d <= block.timestamp:
            if sub_856707d8 >= 100:
                if baseRate + tierThreeRate + sub_bd6955ad:
                    require baseRate + tierThreeRate + sub_bd6955ad
                    require (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_bd6955ad * msg.value) / baseRate + tierThreeRate + sub_bd6955ad == msg.value
                sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_bd6955ad * msg.value)
                weiRaised += msg.value
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0x79c65068 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_bd6955ad * msg.value)
                require ext_call.success
                emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_bd6955ad * msg.value));
                call beneficiaryAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                sub_856707d8++
                if not sub_1aebc3f5:
                    if block.timestamp > endTime:
                        state = 2
                        completedAt = block.timestamp
                else:
                    if sub_df0244b1 >= sub_1aebc3f5:
                        state = 2
                        completedAt = block.timestamp
                    else:
                        if block.timestamp > endTime:
                            state = 2
                            completedAt = block.timestamp
                return ((baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_bd6955ad * msg.value))
            if -sub_856707d8 + 100:
                require -sub_856707d8 + 100
                require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
            if baseRate + tierThreeRate + sub_bd6955ad + (-24 * sub_856707d8) + 2400:
                require baseRate + tierThreeRate + sub_bd6955ad + (-24 * sub_856707d8) + 2400
                require (2400 * msg.value) + (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_bd6955ad * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + tierThreeRate + sub_bd6955ad + (-24 * sub_856707d8) + 2400 == msg.value
            sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_bd6955ad * msg.value) - (24 * sub_856707d8 * msg.value)
            weiRaised += msg.value
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0x79c65068 with:
                 gas gas_remaining - 710 wei
                args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_bd6955ad * msg.value) - (24 * sub_856707d8 * msg.value)
            require ext_call.success
            emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_bd6955ad * msg.value) - (24 * sub_856707d8 * msg.value));
            call beneficiaryAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            sub_856707d8++
            if not sub_1aebc3f5:
                if block.timestamp > endTime:
                    state = 2
                    completedAt = block.timestamp
            else:
                if sub_df0244b1 >= sub_1aebc3f5:
                    state = 2
                    completedAt = block.timestamp
                else:
                    if block.timestamp > endTime:
                        state = 2
                        completedAt = block.timestamp
            return ((2400 * msg.value) + (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_bd6955ad * msg.value) - (24 * sub_856707d8 * msg.value))
        if sub_bac44031 <= block.timestamp:
            if sub_856707d8 >= 100:
                if baseRate + tierThreeRate + sub_3e2ff27d:
                    require baseRate + tierThreeRate + sub_3e2ff27d
                    require (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_3e2ff27d * msg.value) / baseRate + tierThreeRate + sub_3e2ff27d == msg.value
                sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_3e2ff27d * msg.value)
                weiRaised += msg.value
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0x79c65068 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_3e2ff27d * msg.value)
                require ext_call.success
                emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_3e2ff27d * msg.value));
                call beneficiaryAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                sub_856707d8++
                if not sub_1aebc3f5:
                    if block.timestamp > endTime:
                        state = 2
                        completedAt = block.timestamp
                else:
                    if sub_df0244b1 >= sub_1aebc3f5:
                        state = 2
                        completedAt = block.timestamp
                    else:
                        if block.timestamp > endTime:
                            state = 2
                            completedAt = block.timestamp
                return ((baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_3e2ff27d * msg.value))
            if -sub_856707d8 + 100:
                require -sub_856707d8 + 100
                require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
            if baseRate + tierThreeRate + sub_3e2ff27d + (-24 * sub_856707d8) + 2400:
                require baseRate + tierThreeRate + sub_3e2ff27d + (-24 * sub_856707d8) + 2400
                require (2400 * msg.value) + (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_3e2ff27d * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + tierThreeRate + sub_3e2ff27d + (-24 * sub_856707d8) + 2400 == msg.value
            sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_3e2ff27d * msg.value) - (24 * sub_856707d8 * msg.value)
            weiRaised += msg.value
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0x79c65068 with:
                 gas gas_remaining - 710 wei
                args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_3e2ff27d * msg.value) - (24 * sub_856707d8 * msg.value)
            require ext_call.success
            emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_3e2ff27d * msg.value) - (24 * sub_856707d8 * msg.value));
            call beneficiaryAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            sub_856707d8++
            if not sub_1aebc3f5:
                if block.timestamp > endTime:
                    state = 2
                    completedAt = block.timestamp
            else:
                if sub_df0244b1 >= sub_1aebc3f5:
                    state = 2
                    completedAt = block.timestamp
                else:
                    if block.timestamp > endTime:
                        state = 2
                        completedAt = block.timestamp
            return ((2400 * msg.value) + (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_3e2ff27d * msg.value) - (24 * sub_856707d8 * msg.value))
        if sub_af1ed211 <= block.timestamp:
            if sub_856707d8 >= 100:
                if baseRate + tierThreeRate + sub_bac44031:
                    require baseRate + tierThreeRate + sub_bac44031
                    require (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_bac44031 * msg.value) / baseRate + tierThreeRate + sub_bac44031 == msg.value
                sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_bac44031 * msg.value)
                weiRaised += msg.value
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0x79c65068 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_bac44031 * msg.value)
                require ext_call.success
                emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_bac44031 * msg.value));
                call beneficiaryAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                sub_856707d8++
                if not sub_1aebc3f5:
                    if block.timestamp > endTime:
                        state = 2
                        completedAt = block.timestamp
                else:
                    if sub_df0244b1 >= sub_1aebc3f5:
                        state = 2
                        completedAt = block.timestamp
                    else:
                        if block.timestamp > endTime:
                            state = 2
                            completedAt = block.timestamp
                return ((baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_bac44031 * msg.value))
            if -sub_856707d8 + 100:
                require -sub_856707d8 + 100
                require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
            if baseRate + tierThreeRate + sub_bac44031 + (-24 * sub_856707d8) + 2400:
                require baseRate + tierThreeRate + sub_bac44031 + (-24 * sub_856707d8) + 2400
                require (2400 * msg.value) + (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_bac44031 * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + tierThreeRate + sub_bac44031 + (-24 * sub_856707d8) + 2400 == msg.value
            sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_bac44031 * msg.value) - (24 * sub_856707d8 * msg.value)
            weiRaised += msg.value
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0x79c65068 with:
                 gas gas_remaining - 710 wei
                args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_bac44031 * msg.value) - (24 * sub_856707d8 * msg.value)
            require ext_call.success
            emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_bac44031 * msg.value) - (24 * sub_856707d8 * msg.value));
            call beneficiaryAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            sub_856707d8++
            if not sub_1aebc3f5:
                if block.timestamp > endTime:
                    state = 2
                    completedAt = block.timestamp
            else:
                if sub_df0244b1 >= sub_1aebc3f5:
                    state = 2
                    completedAt = block.timestamp
                else:
                    if block.timestamp > endTime:
                        state = 2
                        completedAt = block.timestamp
            return ((2400 * msg.value) + (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_bac44031 * msg.value) - (24 * sub_856707d8 * msg.value))
        if sub_f1a09438 > block.timestamp:
            if sub_856707d8 >= 100:
                if baseRate + tierThreeRate + sub_f1a09438:
                    require baseRate + tierThreeRate + sub_f1a09438
                    require (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_f1a09438 * msg.value) / baseRate + tierThreeRate + sub_f1a09438 == msg.value
                sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_f1a09438 * msg.value)
                weiRaised += msg.value
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0x79c65068 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_f1a09438 * msg.value)
                require ext_call.success
                emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_f1a09438 * msg.value));
                call beneficiaryAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                sub_856707d8++
                if not sub_1aebc3f5:
                    if block.timestamp > endTime:
                        state = 2
                        completedAt = block.timestamp
                else:
                    if sub_df0244b1 >= sub_1aebc3f5:
                        state = 2
                        completedAt = block.timestamp
                    else:
                        if block.timestamp > endTime:
                            state = 2
                            completedAt = block.timestamp
                return ((baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_f1a09438 * msg.value))
            if -sub_856707d8 + 100:
                require -sub_856707d8 + 100
                require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
            if baseRate + tierThreeRate + sub_f1a09438 + (-24 * sub_856707d8) + 2400:
                require baseRate + tierThreeRate + sub_f1a09438 + (-24 * sub_856707d8) + 2400
                require (2400 * msg.value) + (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_f1a09438 * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + tierThreeRate + sub_f1a09438 + (-24 * sub_856707d8) + 2400 == msg.value
            sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_f1a09438 * msg.value) - (24 * sub_856707d8 * msg.value)
            weiRaised += msg.value
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0x79c65068 with:
                 gas gas_remaining - 710 wei
                args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_f1a09438 * msg.value) - (24 * sub_856707d8 * msg.value)
            require ext_call.success
            emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_f1a09438 * msg.value) - (24 * sub_856707d8 * msg.value));
            call beneficiaryAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            sub_856707d8++
            if not sub_1aebc3f5:
                if block.timestamp > endTime:
                    state = 2
                    completedAt = block.timestamp
            else:
                if sub_df0244b1 >= sub_1aebc3f5:
                    state = 2
                    completedAt = block.timestamp
                else:
                    if block.timestamp > endTime:
                        state = 2
                        completedAt = block.timestamp
            return ((2400 * msg.value) + (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_f1a09438 * msg.value) - (24 * sub_856707d8 * msg.value))
        if sub_856707d8 >= 100:
            if baseRate + tierThreeRate + sub_af1ed211:
                require baseRate + tierThreeRate + sub_af1ed211
                require (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_af1ed211 * msg.value) / baseRate + tierThreeRate + sub_af1ed211 == msg.value
            sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_af1ed211 * msg.value)
            weiRaised += msg.value
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0x79c65068 with:
                 gas gas_remaining - 710 wei
                args msg.sender, (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_af1ed211 * msg.value)
            require ext_call.success
            emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_af1ed211 * msg.value));
            call beneficiaryAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            sub_856707d8++
            if not sub_1aebc3f5:
                if block.timestamp > endTime:
                    state = 2
                    completedAt = block.timestamp
            else:
                if sub_df0244b1 >= sub_1aebc3f5:
                    state = 2
                    completedAt = block.timestamp
                else:
                    if block.timestamp > endTime:
                        state = 2
                        completedAt = block.timestamp
            return ((baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_af1ed211 * msg.value))
        if -sub_856707d8 + 100:
            require -sub_856707d8 + 100
            require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
        if baseRate + tierThreeRate + sub_af1ed211 + (-24 * sub_856707d8) + 2400:
            require baseRate + tierThreeRate + sub_af1ed211 + (-24 * sub_856707d8) + 2400
            require (2400 * msg.value) + (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_af1ed211 * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + tierThreeRate + sub_af1ed211 + (-24 * sub_856707d8) + 2400 == msg.value
        sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_af1ed211 * msg.value) - (24 * sub_856707d8 * msg.value)
        weiRaised += msg.value
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0x79c65068 with:
             gas gas_remaining - 710 wei
            args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_af1ed211 * msg.value) - (24 * sub_856707d8 * msg.value)
        require ext_call.success
        emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_af1ed211 * msg.value) - (24 * sub_856707d8 * msg.value));
        call beneficiaryAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        sub_856707d8++
        if not sub_1aebc3f5:
            if block.timestamp > endTime:
                state = 2
                completedAt = block.timestamp
        else:
            if sub_df0244b1 >= sub_1aebc3f5:
                state = 2
                completedAt = block.timestamp
            else:
                if block.timestamp > endTime:
                    state = 2
                    completedAt = block.timestamp
        return ((2400 * msg.value) + (baseRate * msg.value) + (tierThreeRate * msg.value) + (sub_af1ed211 * msg.value) - (24 * sub_856707d8 * msg.value))
    if msg.value < tierTwoPurchase:
        if block.timestamp >= sub_d1fb92a4:
            if sub_856707d8 >= 100:
                if baseRate + sub_970f3284:
                    require baseRate + sub_970f3284
                    require (baseRate * msg.value) + (sub_970f3284 * msg.value) / baseRate + sub_970f3284 == msg.value
                sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (sub_970f3284 * msg.value)
                weiRaised += msg.value
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0x79c65068 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (baseRate * msg.value) + (sub_970f3284 * msg.value)
                require ext_call.success
                emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (sub_970f3284 * msg.value));
                call beneficiaryAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                sub_856707d8++
                if not sub_1aebc3f5:
                    if block.timestamp > endTime:
                        state = 2
                        completedAt = block.timestamp
                else:
                    if sub_df0244b1 >= sub_1aebc3f5:
                        state = 2
                        completedAt = block.timestamp
                    else:
                        if block.timestamp > endTime:
                            state = 2
                            completedAt = block.timestamp
                return ((baseRate * msg.value) + (sub_970f3284 * msg.value))
            if -sub_856707d8 + 100:
                require -sub_856707d8 + 100
                require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
            if baseRate + sub_970f3284 + (-24 * sub_856707d8) + 2400:
                require baseRate + sub_970f3284 + (-24 * sub_856707d8) + 2400
                require (2400 * msg.value) + (baseRate * msg.value) + (sub_970f3284 * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + sub_970f3284 + (-24 * sub_856707d8) + 2400 == msg.value
            sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (sub_970f3284 * msg.value) - (24 * sub_856707d8 * msg.value)
            weiRaised += msg.value
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0x79c65068 with:
                 gas gas_remaining - 710 wei
                args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (sub_970f3284 * msg.value) - (24 * sub_856707d8 * msg.value)
            require ext_call.success
            emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (sub_970f3284 * msg.value) - (24 * sub_856707d8 * msg.value));
            call beneficiaryAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            sub_856707d8++
            if not sub_1aebc3f5:
                if block.timestamp > endTime:
                    state = 2
                    completedAt = block.timestamp
            else:
                if sub_df0244b1 >= sub_1aebc3f5:
                    state = 2
                    completedAt = block.timestamp
                else:
                    if block.timestamp > endTime:
                        state = 2
                        completedAt = block.timestamp
            return ((2400 * msg.value) + (baseRate * msg.value) + (sub_970f3284 * msg.value) - (24 * sub_856707d8 * msg.value))
        if sub_3e2ff27d <= block.timestamp:
            if sub_856707d8 >= 100:
                if baseRate + sub_970f3284 + sub_bd6955ad:
                    require baseRate + sub_970f3284 + sub_bd6955ad
                    require (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_bd6955ad * msg.value) / baseRate + sub_970f3284 + sub_bd6955ad == msg.value
                sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_bd6955ad * msg.value)
                weiRaised += msg.value
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0x79c65068 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_bd6955ad * msg.value)
                require ext_call.success
                emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_bd6955ad * msg.value));
                call beneficiaryAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                sub_856707d8++
                if not sub_1aebc3f5:
                    if block.timestamp > endTime:
                        state = 2
                        completedAt = block.timestamp
                else:
                    if sub_df0244b1 >= sub_1aebc3f5:
                        state = 2
                        completedAt = block.timestamp
                    else:
                        if block.timestamp > endTime:
                            state = 2
                            completedAt = block.timestamp
                return ((baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_bd6955ad * msg.value))
            if -sub_856707d8 + 100:
                require -sub_856707d8 + 100
                require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
            if baseRate + sub_970f3284 + sub_bd6955ad + (-24 * sub_856707d8) + 2400:
                require baseRate + sub_970f3284 + sub_bd6955ad + (-24 * sub_856707d8) + 2400
                require (2400 * msg.value) + (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_bd6955ad * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + sub_970f3284 + sub_bd6955ad + (-24 * sub_856707d8) + 2400 == msg.value
            sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_bd6955ad * msg.value) - (24 * sub_856707d8 * msg.value)
            weiRaised += msg.value
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0x79c65068 with:
                 gas gas_remaining - 710 wei
                args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_bd6955ad * msg.value) - (24 * sub_856707d8 * msg.value)
            require ext_call.success
            emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_bd6955ad * msg.value) - (24 * sub_856707d8 * msg.value));
            call beneficiaryAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            sub_856707d8++
            if not sub_1aebc3f5:
                if block.timestamp > endTime:
                    state = 2
                    completedAt = block.timestamp
            else:
                if sub_df0244b1 >= sub_1aebc3f5:
                    state = 2
                    completedAt = block.timestamp
                else:
                    if block.timestamp > endTime:
                        state = 2
                        completedAt = block.timestamp
            return ((2400 * msg.value) + (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_bd6955ad * msg.value) - (24 * sub_856707d8 * msg.value))
        if sub_bac44031 <= block.timestamp:
            if sub_856707d8 >= 100:
                if baseRate + sub_970f3284 + sub_3e2ff27d:
                    require baseRate + sub_970f3284 + sub_3e2ff27d
                    require (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_3e2ff27d * msg.value) / baseRate + sub_970f3284 + sub_3e2ff27d == msg.value
                sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_3e2ff27d * msg.value)
                weiRaised += msg.value
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0x79c65068 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_3e2ff27d * msg.value)
                require ext_call.success
                emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_3e2ff27d * msg.value));
                call beneficiaryAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                sub_856707d8++
                if not sub_1aebc3f5:
                    if block.timestamp > endTime:
                        state = 2
                        completedAt = block.timestamp
                else:
                    if sub_df0244b1 >= sub_1aebc3f5:
                        state = 2
                        completedAt = block.timestamp
                    else:
                        if block.timestamp > endTime:
                            state = 2
                            completedAt = block.timestamp
                return ((baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_3e2ff27d * msg.value))
            if -sub_856707d8 + 100:
                require -sub_856707d8 + 100
                require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
            if baseRate + sub_970f3284 + sub_3e2ff27d + (-24 * sub_856707d8) + 2400:
                require baseRate + sub_970f3284 + sub_3e2ff27d + (-24 * sub_856707d8) + 2400
                require (2400 * msg.value) + (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_3e2ff27d * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + sub_970f3284 + sub_3e2ff27d + (-24 * sub_856707d8) + 2400 == msg.value
            sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_3e2ff27d * msg.value) - (24 * sub_856707d8 * msg.value)
            weiRaised += msg.value
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0x79c65068 with:
                 gas gas_remaining - 710 wei
                args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_3e2ff27d * msg.value) - (24 * sub_856707d8 * msg.value)
            require ext_call.success
            emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_3e2ff27d * msg.value) - (24 * sub_856707d8 * msg.value));
            call beneficiaryAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            sub_856707d8++
            if not sub_1aebc3f5:
                if block.timestamp > endTime:
                    state = 2
                    completedAt = block.timestamp
            else:
                if sub_df0244b1 >= sub_1aebc3f5:
                    state = 2
                    completedAt = block.timestamp
                else:
                    if block.timestamp > endTime:
                        state = 2
                        completedAt = block.timestamp
            return ((2400 * msg.value) + (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_3e2ff27d * msg.value) - (24 * sub_856707d8 * msg.value))
        if sub_af1ed211 <= block.timestamp:
            if sub_856707d8 >= 100:
                if baseRate + sub_970f3284 + sub_bac44031:
                    require baseRate + sub_970f3284 + sub_bac44031
                    require (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_bac44031 * msg.value) / baseRate + sub_970f3284 + sub_bac44031 == msg.value
                sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_bac44031 * msg.value)
                weiRaised += msg.value
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0x79c65068 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_bac44031 * msg.value)
                require ext_call.success
                emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_bac44031 * msg.value));
                call beneficiaryAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                sub_856707d8++
                if not sub_1aebc3f5:
                    if block.timestamp > endTime:
                        state = 2
                        completedAt = block.timestamp
                else:
                    if sub_df0244b1 >= sub_1aebc3f5:
                        state = 2
                        completedAt = block.timestamp
                    else:
                        if block.timestamp > endTime:
                            state = 2
                            completedAt = block.timestamp
                return ((baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_bac44031 * msg.value))
            if -sub_856707d8 + 100:
                require -sub_856707d8 + 100
                require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
            if baseRate + sub_970f3284 + sub_bac44031 + (-24 * sub_856707d8) + 2400:
                require baseRate + sub_970f3284 + sub_bac44031 + (-24 * sub_856707d8) + 2400
                require (2400 * msg.value) + (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_bac44031 * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + sub_970f3284 + sub_bac44031 + (-24 * sub_856707d8) + 2400 == msg.value
            sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_bac44031 * msg.value) - (24 * sub_856707d8 * msg.value)
            weiRaised += msg.value
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0x79c65068 with:
                 gas gas_remaining - 710 wei
                args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_bac44031 * msg.value) - (24 * sub_856707d8 * msg.value)
            require ext_call.success
            emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_bac44031 * msg.value) - (24 * sub_856707d8 * msg.value));
            call beneficiaryAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            sub_856707d8++
            if not sub_1aebc3f5:
                if block.timestamp > endTime:
                    state = 2
                    completedAt = block.timestamp
            else:
                if sub_df0244b1 >= sub_1aebc3f5:
                    state = 2
                    completedAt = block.timestamp
                else:
                    if block.timestamp > endTime:
                        state = 2
                        completedAt = block.timestamp
            return ((2400 * msg.value) + (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_bac44031 * msg.value) - (24 * sub_856707d8 * msg.value))
        if sub_f1a09438 > block.timestamp:
            if sub_856707d8 >= 100:
                if baseRate + sub_970f3284 + sub_f1a09438:
                    require baseRate + sub_970f3284 + sub_f1a09438
                    require (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_f1a09438 * msg.value) / baseRate + sub_970f3284 + sub_f1a09438 == msg.value
                sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_f1a09438 * msg.value)
                weiRaised += msg.value
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0x79c65068 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_f1a09438 * msg.value)
                require ext_call.success
                emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_f1a09438 * msg.value));
                call beneficiaryAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                sub_856707d8++
                if not sub_1aebc3f5:
                    if block.timestamp > endTime:
                        state = 2
                        completedAt = block.timestamp
                else:
                    if sub_df0244b1 >= sub_1aebc3f5:
                        state = 2
                        completedAt = block.timestamp
                    else:
                        if block.timestamp > endTime:
                            state = 2
                            completedAt = block.timestamp
                return ((baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_f1a09438 * msg.value))
            if -sub_856707d8 + 100:
                require -sub_856707d8 + 100
                require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
            if baseRate + sub_970f3284 + sub_f1a09438 + (-24 * sub_856707d8) + 2400:
                require baseRate + sub_970f3284 + sub_f1a09438 + (-24 * sub_856707d8) + 2400
                require (2400 * msg.value) + (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_f1a09438 * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + sub_970f3284 + sub_f1a09438 + (-24 * sub_856707d8) + 2400 == msg.value
            sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_f1a09438 * msg.value) - (24 * sub_856707d8 * msg.value)
            weiRaised += msg.value
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0x79c65068 with:
                 gas gas_remaining - 710 wei
                args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_f1a09438 * msg.value) - (24 * sub_856707d8 * msg.value)
            require ext_call.success
            emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_f1a09438 * msg.value) - (24 * sub_856707d8 * msg.value));
            call beneficiaryAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            sub_856707d8++
            if not sub_1aebc3f5:
                if block.timestamp > endTime:
                    state = 2
                    completedAt = block.timestamp
            else:
                if sub_df0244b1 >= sub_1aebc3f5:
                    state = 2
                    completedAt = block.timestamp
                else:
                    if block.timestamp > endTime:
                        state = 2
                        completedAt = block.timestamp
            return ((2400 * msg.value) + (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_f1a09438 * msg.value) - (24 * sub_856707d8 * msg.value))
        if sub_856707d8 >= 100:
            if baseRate + sub_970f3284 + sub_af1ed211:
                require baseRate + sub_970f3284 + sub_af1ed211
                require (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_af1ed211 * msg.value) / baseRate + sub_970f3284 + sub_af1ed211 == msg.value
            sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_af1ed211 * msg.value)
            weiRaised += msg.value
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0x79c65068 with:
                 gas gas_remaining - 710 wei
                args msg.sender, (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_af1ed211 * msg.value)
            require ext_call.success
            emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_af1ed211 * msg.value));
            call beneficiaryAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            sub_856707d8++
            if not sub_1aebc3f5:
                if block.timestamp > endTime:
                    state = 2
                    completedAt = block.timestamp
            else:
                if sub_df0244b1 >= sub_1aebc3f5:
                    state = 2
                    completedAt = block.timestamp
                else:
                    if block.timestamp > endTime:
                        state = 2
                        completedAt = block.timestamp
            return ((baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_af1ed211 * msg.value))
        if -sub_856707d8 + 100:
            require -sub_856707d8 + 100
            require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
        if baseRate + sub_970f3284 + sub_af1ed211 + (-24 * sub_856707d8) + 2400:
            require baseRate + sub_970f3284 + sub_af1ed211 + (-24 * sub_856707d8) + 2400
            require (2400 * msg.value) + (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_af1ed211 * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + sub_970f3284 + sub_af1ed211 + (-24 * sub_856707d8) + 2400 == msg.value
        sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_af1ed211 * msg.value) - (24 * sub_856707d8 * msg.value)
        weiRaised += msg.value
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0x79c65068 with:
             gas gas_remaining - 710 wei
            args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_af1ed211 * msg.value) - (24 * sub_856707d8 * msg.value)
        require ext_call.success
        emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_af1ed211 * msg.value) - (24 * sub_856707d8 * msg.value));
        call beneficiaryAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        sub_856707d8++
        if not sub_1aebc3f5:
            if block.timestamp > endTime:
                state = 2
                completedAt = block.timestamp
        else:
            if sub_df0244b1 >= sub_1aebc3f5:
                state = 2
                completedAt = block.timestamp
            else:
                if block.timestamp > endTime:
                    state = 2
                    completedAt = block.timestamp
        return ((2400 * msg.value) + (baseRate * msg.value) + (sub_970f3284 * msg.value) + (sub_af1ed211 * msg.value) - (24 * sub_856707d8 * msg.value))
    if block.timestamp >= sub_d1fb92a4:
        if sub_856707d8 >= 100:
            if baseRate + tierTwoRate:
                require baseRate + tierTwoRate
                require (baseRate * msg.value) + (tierTwoRate * msg.value) / baseRate + tierTwoRate == msg.value
            sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (tierTwoRate * msg.value)
            weiRaised += msg.value
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0x79c65068 with:
                 gas gas_remaining - 710 wei
                args msg.sender, (baseRate * msg.value) + (tierTwoRate * msg.value)
            require ext_call.success
            emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (tierTwoRate * msg.value));
            call beneficiaryAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            sub_856707d8++
            if not sub_1aebc3f5:
                if block.timestamp > endTime:
                    state = 2
                    completedAt = block.timestamp
            else:
                if sub_df0244b1 >= sub_1aebc3f5:
                    state = 2
                    completedAt = block.timestamp
                else:
                    if block.timestamp > endTime:
                        state = 2
                        completedAt = block.timestamp
            return ((baseRate * msg.value) + (tierTwoRate * msg.value))
        if -sub_856707d8 + 100:
            require -sub_856707d8 + 100
            require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
        if baseRate + tierTwoRate + (-24 * sub_856707d8) + 2400:
            require baseRate + tierTwoRate + (-24 * sub_856707d8) + 2400
            require (2400 * msg.value) + (baseRate * msg.value) + (tierTwoRate * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + tierTwoRate + (-24 * sub_856707d8) + 2400 == msg.value
        sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (tierTwoRate * msg.value) - (24 * sub_856707d8 * msg.value)
        weiRaised += msg.value
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0x79c65068 with:
             gas gas_remaining - 710 wei
            args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (tierTwoRate * msg.value) - (24 * sub_856707d8 * msg.value)
        require ext_call.success
        emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (tierTwoRate * msg.value) - (24 * sub_856707d8 * msg.value));
        call beneficiaryAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        sub_856707d8++
        if not sub_1aebc3f5:
            if block.timestamp > endTime:
                state = 2
                completedAt = block.timestamp
        else:
            if sub_df0244b1 >= sub_1aebc3f5:
                state = 2
                completedAt = block.timestamp
            else:
                if block.timestamp > endTime:
                    state = 2
                    completedAt = block.timestamp
        return ((2400 * msg.value) + (baseRate * msg.value) + (tierTwoRate * msg.value) - (24 * sub_856707d8 * msg.value))
    if sub_3e2ff27d <= block.timestamp:
        if sub_856707d8 >= 100:
            if baseRate + tierTwoRate + sub_bd6955ad:
                require baseRate + tierTwoRate + sub_bd6955ad
                require (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_bd6955ad * msg.value) / baseRate + tierTwoRate + sub_bd6955ad == msg.value
            sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_bd6955ad * msg.value)
            weiRaised += msg.value
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0x79c65068 with:
                 gas gas_remaining - 710 wei
                args msg.sender, (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_bd6955ad * msg.value)
            require ext_call.success
            emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_bd6955ad * msg.value));
            call beneficiaryAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            sub_856707d8++
            if not sub_1aebc3f5:
                if block.timestamp > endTime:
                    state = 2
                    completedAt = block.timestamp
            else:
                if sub_df0244b1 >= sub_1aebc3f5:
                    state = 2
                    completedAt = block.timestamp
                else:
                    if block.timestamp > endTime:
                        state = 2
                        completedAt = block.timestamp
            return ((baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_bd6955ad * msg.value))
        if -sub_856707d8 + 100:
            require -sub_856707d8 + 100
            require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
        if baseRate + tierTwoRate + sub_bd6955ad + (-24 * sub_856707d8) + 2400:
            require baseRate + tierTwoRate + sub_bd6955ad + (-24 * sub_856707d8) + 2400
            require (2400 * msg.value) + (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_bd6955ad * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + tierTwoRate + sub_bd6955ad + (-24 * sub_856707d8) + 2400 == msg.value
        sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_bd6955ad * msg.value) - (24 * sub_856707d8 * msg.value)
        weiRaised += msg.value
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0x79c65068 with:
             gas gas_remaining - 710 wei
            args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_bd6955ad * msg.value) - (24 * sub_856707d8 * msg.value)
        require ext_call.success
        emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_bd6955ad * msg.value) - (24 * sub_856707d8 * msg.value));
        call beneficiaryAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        sub_856707d8++
        if not sub_1aebc3f5:
            if block.timestamp > endTime:
                state = 2
                completedAt = block.timestamp
        else:
            if sub_df0244b1 >= sub_1aebc3f5:
                state = 2
                completedAt = block.timestamp
            else:
                if block.timestamp > endTime:
                    state = 2
                    completedAt = block.timestamp
        return ((2400 * msg.value) + (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_bd6955ad * msg.value) - (24 * sub_856707d8 * msg.value))
    if sub_bac44031 <= block.timestamp:
        if sub_856707d8 >= 100:
            if baseRate + tierTwoRate + sub_3e2ff27d:
                require baseRate + tierTwoRate + sub_3e2ff27d
                require (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_3e2ff27d * msg.value) / baseRate + tierTwoRate + sub_3e2ff27d == msg.value
            sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_3e2ff27d * msg.value)
            weiRaised += msg.value
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0x79c65068 with:
                 gas gas_remaining - 710 wei
                args msg.sender, (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_3e2ff27d * msg.value)
            require ext_call.success
            emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_3e2ff27d * msg.value));
            call beneficiaryAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            sub_856707d8++
            if not sub_1aebc3f5:
                if block.timestamp > endTime:
                    state = 2
                    completedAt = block.timestamp
            else:
                if sub_df0244b1 >= sub_1aebc3f5:
                    state = 2
                    completedAt = block.timestamp
                else:
                    if block.timestamp > endTime:
                        state = 2
                        completedAt = block.timestamp
            return ((baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_3e2ff27d * msg.value))
        if -sub_856707d8 + 100:
            require -sub_856707d8 + 100
            require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
        if baseRate + tierTwoRate + sub_3e2ff27d + (-24 * sub_856707d8) + 2400:
            require baseRate + tierTwoRate + sub_3e2ff27d + (-24 * sub_856707d8) + 2400
            require (2400 * msg.value) + (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_3e2ff27d * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + tierTwoRate + sub_3e2ff27d + (-24 * sub_856707d8) + 2400 == msg.value
        sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_3e2ff27d * msg.value) - (24 * sub_856707d8 * msg.value)
        weiRaised += msg.value
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0x79c65068 with:
             gas gas_remaining - 710 wei
            args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_3e2ff27d * msg.value) - (24 * sub_856707d8 * msg.value)
        require ext_call.success
        emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_3e2ff27d * msg.value) - (24 * sub_856707d8 * msg.value));
        call beneficiaryAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        sub_856707d8++
        if not sub_1aebc3f5:
            if block.timestamp > endTime:
                state = 2
                completedAt = block.timestamp
        else:
            if sub_df0244b1 >= sub_1aebc3f5:
                state = 2
                completedAt = block.timestamp
            else:
                if block.timestamp > endTime:
                    state = 2
                    completedAt = block.timestamp
        return ((2400 * msg.value) + (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_3e2ff27d * msg.value) - (24 * sub_856707d8 * msg.value))
    if sub_af1ed211 <= block.timestamp:
        if sub_856707d8 >= 100:
            if baseRate + tierTwoRate + sub_bac44031:
                require baseRate + tierTwoRate + sub_bac44031
                require (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_bac44031 * msg.value) / baseRate + tierTwoRate + sub_bac44031 == msg.value
            sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_bac44031 * msg.value)
            weiRaised += msg.value
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0x79c65068 with:
                 gas gas_remaining - 710 wei
                args msg.sender, (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_bac44031 * msg.value)
            require ext_call.success
            emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_bac44031 * msg.value));
            call beneficiaryAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            sub_856707d8++
            if not sub_1aebc3f5:
                if block.timestamp > endTime:
                    state = 2
                    completedAt = block.timestamp
            else:
                if sub_df0244b1 >= sub_1aebc3f5:
                    state = 2
                    completedAt = block.timestamp
                else:
                    if block.timestamp > endTime:
                        state = 2
                        completedAt = block.timestamp
            return ((baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_bac44031 * msg.value))
        if -sub_856707d8 + 100:
            require -sub_856707d8 + 100
            require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
        if baseRate + tierTwoRate + sub_bac44031 + (-24 * sub_856707d8) + 2400:
            require baseRate + tierTwoRate + sub_bac44031 + (-24 * sub_856707d8) + 2400
            require (2400 * msg.value) + (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_bac44031 * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + tierTwoRate + sub_bac44031 + (-24 * sub_856707d8) + 2400 == msg.value
        sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_bac44031 * msg.value) - (24 * sub_856707d8 * msg.value)
        weiRaised += msg.value
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0x79c65068 with:
             gas gas_remaining - 710 wei
            args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_bac44031 * msg.value) - (24 * sub_856707d8 * msg.value)
        require ext_call.success
        emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_bac44031 * msg.value) - (24 * sub_856707d8 * msg.value));
        call beneficiaryAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        sub_856707d8++
        if not sub_1aebc3f5:
            if block.timestamp > endTime:
                state = 2
                completedAt = block.timestamp
        else:
            if sub_df0244b1 >= sub_1aebc3f5:
                state = 2
                completedAt = block.timestamp
            else:
                if block.timestamp > endTime:
                    state = 2
                    completedAt = block.timestamp
        return ((2400 * msg.value) + (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_bac44031 * msg.value) - (24 * sub_856707d8 * msg.value))
    if sub_f1a09438 > block.timestamp:
        if sub_856707d8 >= 100:
            if baseRate + tierTwoRate + sub_f1a09438:
                require baseRate + tierTwoRate + sub_f1a09438
                require (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_f1a09438 * msg.value) / baseRate + tierTwoRate + sub_f1a09438 == msg.value
            sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_f1a09438 * msg.value)
            weiRaised += msg.value
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0x79c65068 with:
                 gas gas_remaining - 710 wei
                args msg.sender, (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_f1a09438 * msg.value)
            require ext_call.success
            emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_f1a09438 * msg.value));
            call beneficiaryAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            sub_856707d8++
            if not sub_1aebc3f5:
                if block.timestamp > endTime:
                    state = 2
                    completedAt = block.timestamp
            else:
                if sub_df0244b1 >= sub_1aebc3f5:
                    state = 2
                    completedAt = block.timestamp
                else:
                    if block.timestamp > endTime:
                        state = 2
                        completedAt = block.timestamp
            return ((baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_f1a09438 * msg.value))
        if -sub_856707d8 + 100:
            require -sub_856707d8 + 100
            require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
        if baseRate + tierTwoRate + sub_f1a09438 + (-24 * sub_856707d8) + 2400:
            require baseRate + tierTwoRate + sub_f1a09438 + (-24 * sub_856707d8) + 2400
            require (2400 * msg.value) + (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_f1a09438 * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + tierTwoRate + sub_f1a09438 + (-24 * sub_856707d8) + 2400 == msg.value
        sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_f1a09438 * msg.value) - (24 * sub_856707d8 * msg.value)
        weiRaised += msg.value
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0x79c65068 with:
             gas gas_remaining - 710 wei
            args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_f1a09438 * msg.value) - (24 * sub_856707d8 * msg.value)
        require ext_call.success
        emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_f1a09438 * msg.value) - (24 * sub_856707d8 * msg.value));
        call beneficiaryAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        sub_856707d8++
        if not sub_1aebc3f5:
            if block.timestamp > endTime:
                state = 2
                completedAt = block.timestamp
        else:
            if sub_df0244b1 >= sub_1aebc3f5:
                state = 2
                completedAt = block.timestamp
            else:
                if block.timestamp > endTime:
                    state = 2
                    completedAt = block.timestamp
        return ((2400 * msg.value) + (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_f1a09438 * msg.value) - (24 * sub_856707d8 * msg.value))
    if sub_856707d8 >= 100:
        if baseRate + tierTwoRate + sub_af1ed211:
            require baseRate + tierTwoRate + sub_af1ed211
            require (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_af1ed211 * msg.value) / baseRate + tierTwoRate + sub_af1ed211 == msg.value
        sub_df0244b1 = sub_df0244b1 + (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_af1ed211 * msg.value)
        weiRaised += msg.value
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0x79c65068 with:
             gas gas_remaining - 710 wei
            args msg.sender, (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_af1ed211 * msg.value)
        require ext_call.success
        emit LogTokenPurchase(msg.sender, msg.value, (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_af1ed211 * msg.value));
        call beneficiaryAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        sub_856707d8++
        if not sub_1aebc3f5:
            if block.timestamp > endTime:
                state = 2
                completedAt = block.timestamp
        else:
            if sub_df0244b1 >= sub_1aebc3f5:
                state = 2
                completedAt = block.timestamp
            else:
                if block.timestamp > endTime:
                    state = 2
                    completedAt = block.timestamp
        return ((baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_af1ed211 * msg.value))
    if -sub_856707d8 + 100:
        require -sub_856707d8 + 100
        require (-24 * sub_856707d8) + 2400 / -sub_856707d8 + 100 == 24
    if baseRate + tierTwoRate + sub_af1ed211 + (-24 * sub_856707d8) + 2400:
        require baseRate + tierTwoRate + sub_af1ed211 + (-24 * sub_856707d8) + 2400
        require (2400 * msg.value) + (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_af1ed211 * msg.value) - (24 * sub_856707d8 * msg.value) / baseRate + tierTwoRate + sub_af1ed211 + (-24 * sub_856707d8) + 2400 == msg.value
    sub_df0244b1 = sub_df0244b1 + (2400 * msg.value) + (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_af1ed211 * msg.value) - (24 * sub_856707d8 * msg.value)
    weiRaised += msg.value
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x79c65068 with:
         gas gas_remaining - 710 wei
        args msg.sender, (2400 * msg.value) + (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_af1ed211 * msg.value) - (24 * sub_856707d8 * msg.value)
    require ext_call.success
    emit LogTokenPurchase(msg.sender, msg.value, (2400 * msg.value) + (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_af1ed211 * msg.value) - (24 * sub_856707d8 * msg.value));
    call beneficiaryAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    sub_856707d8++
    if not sub_1aebc3f5:
        if block.timestamp > endTime:
            state = 2
            completedAt = block.timestamp
    else:
        if sub_df0244b1 >= sub_1aebc3f5:
            state = 2
            completedAt = block.timestamp
        else:
            if block.timestamp > endTime:
                state = 2
                completedAt = block.timestamp
    return ((2400 * msg.value) + (baseRate * msg.value) + (tierTwoRate * msg.value) + (sub_af1ed211 * msg.value) - (24 * sub_856707d8 * msg.value))
}



}
