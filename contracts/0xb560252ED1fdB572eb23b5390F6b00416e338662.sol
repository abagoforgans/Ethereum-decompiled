contract main {


// =======================  Init code  ======================


uint8 stor4; offset 24
uint32 stor4;
uint64 stor8; offset 64
address stor9;
address stor10;

function _fallback() payable {
    stor4.field_0 % 16777216 = 169500
    uint8(stor4.field_24) = 0
    stor8 = 0
    require not msg.value
    stor9 = code.data[6485 len 20]
    stor10 = code.data[6517 len 20]
    return code.data[149 len 6324]
}



// =====================  Runtime code  =====================


address tokenAddress;
uint256 crowdfundStartTime;
uint256 crowdfundEndTime;
uint256 totalWeiRaised;
uint32 exchangeRate;
uint32 sub_6b583a9e; offset 32
uint256 sub_9ecca3f1;
uint32 sub_15f012d5;
uint32 sub_7cf63b14; offset 32
uint256 sub_aa36de7f;
uint8 sub_8e33b666;
uint8 sub_f67ccca3; offset 8
uint8 sub_8ee7a060; offset 16
uint8 sub_7747a69b; offset 24
uint8 sub_30be9927; offset 32
uint8 sub_2a78f5cb; offset 40
uint8 sub_bfab8828; offset 48
uint8 sub_28ecbdc8; offset 56
uint8 stor8; offset 64
uint8 stor8; offset 72
uint8 stor8; offset 80
uint8 stor8; offset 88
uint8 stor8; offset 96
uint8 stor8; offset 104
uint8 stor8; offset 112
address stor8; offset 112
address stor8; offset 96
uint256 stor8; offset 88
uint256 stor8; offset 64
address founderMultiSigAddress;
address remainingTokenHolderAddress;

function crowdfundEndTime() {
    return crowdfundEndTime
}

function sub_15f012d5(?) {
    return sub_15f012d5
}

function sub_1c926c3e(?) {
    return bool(uint8(stor8.field_104))
}

function sub_28ecbdc8(?) {
    return sub_28ecbdc8
}

function sub_2a78f5cb(?) {
    return sub_2a78f5cb
}

function founderMultiSigAddress() {
    return founderMultiSigAddress
}

function sub_30be9927(?) {
    return sub_30be9927
}

function isCrowdFundActive() {
    return bool(uint8(stor8.field_88))
}

function exchangeRate() {
    return exchangeRate
}

function sub_3d8f5093(?) {
    return bool(uint8(stor8.field_96))
}

function remainingTokenHolder() {
    return remainingTokenHolderAddress
}

function sub_4835dadc(?) {
    return bool(uint8(stor8.field_112))
}

function totalWeiRaised() {
    return totalWeiRaised
}

function sub_6b583a9e(?) {
    return sub_6b583a9e
}

function sub_7747a69b(?) {
    return sub_7747a69b
}

function sub_7cf63b14(?) {
    return sub_7cf63b14
}

function sub_8e33b666(?) {
    return sub_8e33b666
}

function sub_8ee7a060(?) {
    return sub_8ee7a060
}

function sub_9ecca3f1(?) {
    return sub_9ecca3f1
}

function sub_aa36de7f(?) {
    return sub_aa36de7f
}

function crowdfundStartTime() {
    return crowdfundStartTime
}

function sub_bfab8828(?) {
    return sub_bfab8828
}

function sub_eba61af1(?) {
    return bool(uint8(stor8.field_72))
}

function sub_ef44c81f(?) {
    return bool(uint8(stor8.field_64))
}

function sub_f67ccca3(?) {
    return sub_f67ccca3
}

function token() {
    return tokenAddress
}

function sub_31c95393(?) {
    require founderMultiSigAddress == msg.sender
    sub_28ecbdc8 = arg1
    uint8(stor8.field_104) = 1
    Mask(144, 0, stor8.field_112) = 0
    return 1
}

function setFounderMultiSigAddress(address arg1) {
    require founderMultiSigAddress == msg.sender
    founderMultiSigAddress = arg1
    emit ChangeFoundersWalletAddress(block.timestamp, arg1);
}

function setTokenAddress(address arg1) {
    require founderMultiSigAddress == msg.sender
    require arg1
    require not uint8(stor8.field_80)
    tokenAddress = arg1
    uint8(stor8.field_80) = 1
}

function sub_d9ac0d4a(?) {
    require founderMultiSigAddress == msg.sender
    require 1 == bool(uint8(stor8.field_80))
    if arg1 <= 0:
        return 0
    sub_6b583a9e = arg1
    uint8(stor8.field_112) = 1
    return 1
}

function endCrowdfund() {
    require founderMultiSigAddress == msg.sender
    require block.timestamp > crowdfundEndTime
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    emit CrowdFundClosed(block.timestamp);
    return 1
}

function sub_aa1a3b72(?) {
    require founderMultiSigAddress == msg.sender
    require 1 == bool(uint8(stor8.field_80))
    require block.timestamp > sub_aa36de7f
    require arg1 > 0
    exchangeRate = arg1
    crowdfundStartTime = block.timestamp
    crowdfundEndTime = block.timestamp + (24 * 3600 * arg2 % 16777216)
    Mask(168, 0, stor8.field_88) = Mask(168, 0, not uint8(stor8.field_88))
    return 1
}

function changeCrowdfundState() {
    require 1 == bool(uint8(stor8.field_80))
    require founderMultiSigAddress == msg.sender
    if sub_9ecca3f1 > block.timestamp:
        require not uint8(stor8.field_64)
    if block.timestamp > sub_9ecca3f1:
        if sub_aa36de7f > block.timestamp:
            require not uint8(stor8.field_72)
    require uint8(stor8.field_88)
    Mask(168, 0, stor8.field_88) = Mask(168, 0, not uint8(stor8.field_88))
}

function sub_65ba8a5d(?) {
    require founderMultiSigAddress == msg.sender
    require bool(uint8(stor8.field_72)) != 1
    require 1 == bool(uint8(stor8.field_80))
    require block.timestamp > sub_9ecca3f1
    if arg2 <= 0:
        return 0
    exchangeRate = arg2
    sub_aa36de7f = block.timestamp + (24 * 3600 * arg1)
    sub_7cf63b14 = uint32((100 * arg2) + (arg2 * arg3))
    uint8(stor8.field_64) = 0
    uint8(stor8.field_72) = 1
    return 1
}

function sub_57638437(?) {
    require founderMultiSigAddress == msg.sender
    require bool(uint8(stor8.field_64)) != 1
    require 1 == bool(uint8(stor8.field_80))
    if arg2 <= 0:
        return 0
    if arg1 <= 0:
        return 0
    exchangeRate = arg2
    sub_9ecca3f1 = block.timestamp + (24 * 3600 * arg1)
    sub_15f012d5 = uint32((100 * arg2) + (arg2 * arg3))
    Mask(192, 0, stor8.field_64) = Mask(192, 0, not uint8(stor8.field_64))
    return 1
}

function sub_4bed5618(?) {
    require founderMultiSigAddress == msg.sender
    if sub_9ecca3f1 > block.timestamp:
        require not uint8(stor8.field_64)
    if block.timestamp > sub_9ecca3f1:
        if sub_aa36de7f > block.timestamp:
            require not uint8(stor8.field_72)
    require uint8(stor8.field_88)
    if uint8(stor8.field_96):
        return 0
    sub_8e33b666 = arg1
    sub_f67ccca3 = arg2
    sub_8ee7a060 = arg3
    sub_7747a69b = arg4
    sub_30be9927 = arg5
    sub_2a78f5cb = arg6
    sub_bfab8828 = arg7
    address(stor8.field_96) = address(not bool(uint8(stor8.field_96)))
    return 1
}

function getBonus() {
    if block.timestamp > crowdfundStartTime + (144 * 24 * 3600):
        return sub_bfab8828
    if block.timestamp > crowdfundStartTime + (120 * 24 * 3600):
        return sub_2a78f5cb
    if block.timestamp > crowdfundStartTime + (96 * 24 * 3600):
        return sub_30be9927
    if block.timestamp > crowdfundStartTime + (72 * 24 * 3600):
        return sub_7747a69b
    if block.timestamp > crowdfundStartTime + (48 * 24 * 3600):
        return sub_8ee7a060
    if block.timestamp > crowdfundStartTime + (24 * 3600):
        return sub_f67ccca3
    if block.timestamp <= crowdfundStartTime:
        return 0
    return sub_8e33b666
}

function transferToken(address arg1, uint256 arg2) {
    require 1 == bool(uint8(stor8.field_80))
    require 1 == bool(uint8(stor8.field_104))
    require 1 == bool(uint8(stor8.field_112))
    require founderMultiSigAddress == msg.sender
    if arg2:
        require arg2
        require sub_6b583a9e * arg2 / arg2 == sub_6b583a9e
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), sub_6b583a9e * arg2 * uint8(sub_28ecbdc8 + 100) / 100
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(tokenAddress)
    call tokenAddress.changeTotalSupply(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args (sub_6b583a9e * arg2 * uint8(sub_28ecbdc8 + 100) / 100)
    require ext_call.success
    emit TokenPurchase(arg2, sub_6b583a9e * arg2 * uint8(sub_28ecbdc8 + 100) / 100, arg1);
    return 1
}

function getTotalTokens(uint256 arg1) {
    if sub_9ecca3f1 > block.timestamp:
        require not uint8(stor8.field_64)
    if block.timestamp > sub_9ecca3f1:
        if sub_aa36de7f > block.timestamp:
            require not uint8(stor8.field_72)
    require uint8(stor8.field_88)
    if arg1:
        require arg1
        require exchangeRate * arg1 / arg1 == exchangeRate
    if block.timestamp > crowdfundStartTime + (144 * 24 * 3600):
        return (uint8(sub_bfab8828 + 100) * exchangeRate * arg1 / 100)
    if block.timestamp > crowdfundStartTime + (120 * 24 * 3600):
        return (uint8(sub_2a78f5cb + 100) * exchangeRate * arg1 / 100)
    if block.timestamp > crowdfundStartTime + (96 * 24 * 3600):
        return (uint8(sub_30be9927 + 100) * exchangeRate * arg1 / 100)
    if block.timestamp > crowdfundStartTime + (72 * 24 * 3600):
        return (uint8(sub_7747a69b + 100) * exchangeRate * arg1 / 100)
    if block.timestamp > crowdfundStartTime + (48 * 24 * 3600):
        return (uint8(sub_8ee7a060 + 100) * exchangeRate * arg1 / 100)
    if block.timestamp > crowdfundStartTime + (24 * 3600):
        return (uint8(sub_f67ccca3 + 100) * exchangeRate * arg1 / 100)
    if block.timestamp <= crowdfundStartTime:
        return (100 * exchangeRate * arg1 / 100)
    return (uint8(sub_8e33b666 + 100) * exchangeRate * arg1 / 100)
}

function _fallback() payable {
    require msg.value > 0
    require 1 == bool(uint8(stor8.field_80))
    require founderMultiSigAddress != msg.sender
    require msg.sender
    if sub_9ecca3f1 <= block.timestamp:
        if block.timestamp <= sub_9ecca3f1:
            if uint8(stor8.field_88):
                if sub_9ecca3f1 <= block.timestamp:
                    if block.timestamp <= sub_9ecca3f1:
                        if sub_9ecca3f1 > block.timestamp:
                            require not uint8(stor8.field_64)
                        if block.timestamp > sub_9ecca3f1:
                            if sub_aa36de7f > block.timestamp:
                                require not uint8(stor8.field_72)
                        require uint8(stor8.field_88)
                        require block.timestamp < crowdfundEndTime
                        require 1 == bool(uint8(stor8.field_96))
                    else:
                        if sub_aa36de7f <= block.timestamp:
                            if sub_9ecca3f1 > block.timestamp:
                                require not uint8(stor8.field_64)
                            if block.timestamp > sub_9ecca3f1:
                                if sub_aa36de7f > block.timestamp:
                                    require not uint8(stor8.field_72)
                            require uint8(stor8.field_88)
                            require block.timestamp < crowdfundEndTime
                            require 1 == bool(uint8(stor8.field_96))
                        else:
                            if not uint8(stor8.field_72):
                                if sub_9ecca3f1 > block.timestamp:
                                    require not uint8(stor8.field_64)
                                if block.timestamp > sub_9ecca3f1:
                                    if sub_aa36de7f > block.timestamp:
                                        require not uint8(stor8.field_72)
                                require uint8(stor8.field_88)
                                require block.timestamp < crowdfundEndTime
                                require 1 == bool(uint8(stor8.field_96))
                else:
                    if uint8(stor8.field_64):
                        if sub_9ecca3f1 > block.timestamp:
                            require not uint8(stor8.field_64)
                        if block.timestamp > sub_9ecca3f1:
                            if sub_aa36de7f > block.timestamp:
                                require not uint8(stor8.field_72)
                        require uint8(stor8.field_88)
                        require block.timestamp < crowdfundEndTime
                        require 1 == bool(uint8(stor8.field_96))
                    else:
                        if block.timestamp <= sub_9ecca3f1:
                            if sub_9ecca3f1 > block.timestamp:
                                require not uint8(stor8.field_64)
                            if block.timestamp > sub_9ecca3f1:
                                if sub_aa36de7f > block.timestamp:
                                    require not uint8(stor8.field_72)
                            require uint8(stor8.field_88)
                            require block.timestamp < crowdfundEndTime
                            require 1 == bool(uint8(stor8.field_96))
                        else:
                            if sub_aa36de7f <= block.timestamp:
                                if sub_9ecca3f1 > block.timestamp:
                                    require not uint8(stor8.field_64)
                                if block.timestamp > sub_9ecca3f1:
                                    if sub_aa36de7f > block.timestamp:
                                        require not uint8(stor8.field_72)
                                require uint8(stor8.field_88)
                                require block.timestamp < crowdfundEndTime
                                require 1 == bool(uint8(stor8.field_96))
                            else:
                                if not uint8(stor8.field_72):
                                    if sub_9ecca3f1 > block.timestamp:
                                        require not uint8(stor8.field_64)
                                    if block.timestamp > sub_9ecca3f1:
                                        if sub_aa36de7f > block.timestamp:
                                            require not uint8(stor8.field_72)
                                    require uint8(stor8.field_88)
                                    require block.timestamp < crowdfundEndTime
                                    require 1 == bool(uint8(stor8.field_96))
        else:
            if sub_aa36de7f <= block.timestamp:
                if uint8(stor8.field_88):
                    if sub_9ecca3f1 <= block.timestamp:
                        if block.timestamp <= sub_9ecca3f1:
                            if sub_9ecca3f1 > block.timestamp:
                                require not uint8(stor8.field_64)
                            if block.timestamp > sub_9ecca3f1:
                                if sub_aa36de7f > block.timestamp:
                                    require not uint8(stor8.field_72)
                            require uint8(stor8.field_88)
                            require block.timestamp < crowdfundEndTime
                            require 1 == bool(uint8(stor8.field_96))
                        else:
                            if sub_aa36de7f <= block.timestamp:
                                if sub_9ecca3f1 > block.timestamp:
                                    require not uint8(stor8.field_64)
                                if block.timestamp > sub_9ecca3f1:
                                    if sub_aa36de7f > block.timestamp:
                                        require not uint8(stor8.field_72)
                                require uint8(stor8.field_88)
                                require block.timestamp < crowdfundEndTime
                                require 1 == bool(uint8(stor8.field_96))
                            else:
                                if not uint8(stor8.field_72):
                                    if sub_9ecca3f1 > block.timestamp:
                                        require not uint8(stor8.field_64)
                                    if block.timestamp > sub_9ecca3f1:
                                        if sub_aa36de7f > block.timestamp:
                                            require not uint8(stor8.field_72)
                                    require uint8(stor8.field_88)
                                    require block.timestamp < crowdfundEndTime
                                    require 1 == bool(uint8(stor8.field_96))
                    else:
                        if uint8(stor8.field_64):
                            if sub_9ecca3f1 > block.timestamp:
                                require not uint8(stor8.field_64)
                            if block.timestamp > sub_9ecca3f1:
                                if sub_aa36de7f > block.timestamp:
                                    require not uint8(stor8.field_72)
                            require uint8(stor8.field_88)
                            require block.timestamp < crowdfundEndTime
                            require 1 == bool(uint8(stor8.field_96))
                        else:
                            if block.timestamp <= sub_9ecca3f1:
                                if sub_9ecca3f1 > block.timestamp:
                                    require not uint8(stor8.field_64)
                                if block.timestamp > sub_9ecca3f1:
                                    if sub_aa36de7f > block.timestamp:
                                        require not uint8(stor8.field_72)
                                require uint8(stor8.field_88)
                                require block.timestamp < crowdfundEndTime
                                require 1 == bool(uint8(stor8.field_96))
                            else:
                                if sub_aa36de7f <= block.timestamp:
                                    if sub_9ecca3f1 > block.timestamp:
                                        require not uint8(stor8.field_64)
                                    if block.timestamp > sub_9ecca3f1:
                                        if sub_aa36de7f > block.timestamp:
                                            require not uint8(stor8.field_72)
                                    require uint8(stor8.field_88)
                                    require block.timestamp < crowdfundEndTime
                                    require 1 == bool(uint8(stor8.field_96))
                                else:
                                    if not uint8(stor8.field_72):
                                        if sub_9ecca3f1 > block.timestamp:
                                            require not uint8(stor8.field_64)
                                        if block.timestamp > sub_9ecca3f1:
                                            if sub_aa36de7f > block.timestamp:
                                                require not uint8(stor8.field_72)
                                        require uint8(stor8.field_88)
                                        require block.timestamp < crowdfundEndTime
                                        require 1 == bool(uint8(stor8.field_96))
            else:
                if uint8(stor8.field_72):
                    if sub_9ecca3f1 <= block.timestamp:
                        if block.timestamp <= sub_9ecca3f1:
                            if sub_9ecca3f1 > block.timestamp:
                                require not uint8(stor8.field_64)
                            if block.timestamp > sub_9ecca3f1:
                                if sub_aa36de7f > block.timestamp:
                                    require not uint8(stor8.field_72)
                            require uint8(stor8.field_88)
                            require block.timestamp < crowdfundEndTime
                            require 1 == bool(uint8(stor8.field_96))
                        else:
                            if sub_aa36de7f <= block.timestamp:
                                if sub_9ecca3f1 > block.timestamp:
                                    require not uint8(stor8.field_64)
                                if block.timestamp > sub_9ecca3f1:
                                    if sub_aa36de7f > block.timestamp:
                                        require not uint8(stor8.field_72)
                                require uint8(stor8.field_88)
                                require block.timestamp < crowdfundEndTime
                                require 1 == bool(uint8(stor8.field_96))
                            else:
                                if not uint8(stor8.field_72):
                                    if sub_9ecca3f1 > block.timestamp:
                                        require not uint8(stor8.field_64)
                                    if block.timestamp > sub_9ecca3f1:
                                        if sub_aa36de7f > block.timestamp:
                                            require not uint8(stor8.field_72)
                                    require uint8(stor8.field_88)
                                    require block.timestamp < crowdfundEndTime
                                    require 1 == bool(uint8(stor8.field_96))
                    else:
                        if uint8(stor8.field_64):
                            if sub_9ecca3f1 > block.timestamp:
                                require not uint8(stor8.field_64)
                            if block.timestamp > sub_9ecca3f1:
                                if sub_aa36de7f > block.timestamp:
                                    require not uint8(stor8.field_72)
                            require uint8(stor8.field_88)
                            require block.timestamp < crowdfundEndTime
                            require 1 == bool(uint8(stor8.field_96))
                        else:
                            if block.timestamp <= sub_9ecca3f1:
                                if sub_9ecca3f1 > block.timestamp:
                                    require not uint8(stor8.field_64)
                                if block.timestamp > sub_9ecca3f1:
                                    if sub_aa36de7f > block.timestamp:
                                        require not uint8(stor8.field_72)
                                require uint8(stor8.field_88)
                                require block.timestamp < crowdfundEndTime
                                require 1 == bool(uint8(stor8.field_96))
                            else:
                                if sub_aa36de7f <= block.timestamp:
                                    if sub_9ecca3f1 > block.timestamp:
                                        require not uint8(stor8.field_64)
                                    if block.timestamp > sub_9ecca3f1:
                                        if sub_aa36de7f > block.timestamp:
                                            require not uint8(stor8.field_72)
                                    require uint8(stor8.field_88)
                                    require block.timestamp < crowdfundEndTime
                                    require 1 == bool(uint8(stor8.field_96))
                                else:
                                    if not uint8(stor8.field_72):
                                        if sub_9ecca3f1 > block.timestamp:
                                            require not uint8(stor8.field_64)
                                        if block.timestamp > sub_9ecca3f1:
                                            if sub_aa36de7f > block.timestamp:
                                                require not uint8(stor8.field_72)
                                        require uint8(stor8.field_88)
                                        require block.timestamp < crowdfundEndTime
                                        require 1 == bool(uint8(stor8.field_96))
                else:
                    if uint8(stor8.field_88):
                        if sub_9ecca3f1 <= block.timestamp:
                            if block.timestamp <= sub_9ecca3f1:
                                if sub_9ecca3f1 > block.timestamp:
                                    require not uint8(stor8.field_64)
                                if block.timestamp > sub_9ecca3f1:
                                    if sub_aa36de7f > block.timestamp:
                                        require not uint8(stor8.field_72)
                                require uint8(stor8.field_88)
                                require block.timestamp < crowdfundEndTime
                                require 1 == bool(uint8(stor8.field_96))
                            else:
                                if sub_aa36de7f <= block.timestamp:
                                    if sub_9ecca3f1 > block.timestamp:
                                        require not uint8(stor8.field_64)
                                    if block.timestamp > sub_9ecca3f1:
                                        if sub_aa36de7f > block.timestamp:
                                            require not uint8(stor8.field_72)
                                    require uint8(stor8.field_88)
                                    require block.timestamp < crowdfundEndTime
                                    require 1 == bool(uint8(stor8.field_96))
                                else:
                                    if not uint8(stor8.field_72):
                                        if sub_9ecca3f1 > block.timestamp:
                                            require not uint8(stor8.field_64)
                                        if block.timestamp > sub_9ecca3f1:
                                            if sub_aa36de7f > block.timestamp:
                                                require not uint8(stor8.field_72)
                                        require uint8(stor8.field_88)
                                        require block.timestamp < crowdfundEndTime
                                        require 1 == bool(uint8(stor8.field_96))
                        else:
                            if uint8(stor8.field_64):
                                if sub_9ecca3f1 > block.timestamp:
                                    require not uint8(stor8.field_64)
                                if block.timestamp > sub_9ecca3f1:
                                    if sub_aa36de7f > block.timestamp:
                                        require not uint8(stor8.field_72)
                                require uint8(stor8.field_88)
                                require block.timestamp < crowdfundEndTime
                                require 1 == bool(uint8(stor8.field_96))
                            else:
                                if block.timestamp <= sub_9ecca3f1:
                                    if sub_9ecca3f1 > block.timestamp:
                                        require not uint8(stor8.field_64)
                                    if block.timestamp > sub_9ecca3f1:
                                        if sub_aa36de7f > block.timestamp:
                                            require not uint8(stor8.field_72)
                                    require uint8(stor8.field_88)
                                    require block.timestamp < crowdfundEndTime
                                    require 1 == bool(uint8(stor8.field_96))
                                else:
                                    if sub_aa36de7f <= block.timestamp:
                                        if sub_9ecca3f1 > block.timestamp:
                                            require not uint8(stor8.field_64)
                                        if block.timestamp > sub_9ecca3f1:
                                            if sub_aa36de7f > block.timestamp:
                                                require not uint8(stor8.field_72)
                                        require uint8(stor8.field_88)
                                        require block.timestamp < crowdfundEndTime
                                        require 1 == bool(uint8(stor8.field_96))
                                    else:
                                        if not uint8(stor8.field_72):
                                            if sub_9ecca3f1 > block.timestamp:
                                                require not uint8(stor8.field_64)
                                            if block.timestamp > sub_9ecca3f1:
                                                if sub_aa36de7f > block.timestamp:
                                                    require not uint8(stor8.field_72)
                                            require uint8(stor8.field_88)
                                            require block.timestamp < crowdfundEndTime
                                            require 1 == bool(uint8(stor8.field_96))
    else:
        if not uint8(stor8.field_64):
            if block.timestamp <= sub_9ecca3f1:
                if uint8(stor8.field_88):
                    if sub_9ecca3f1 <= block.timestamp:
                        if block.timestamp <= sub_9ecca3f1:
                            if sub_9ecca3f1 > block.timestamp:
                                require not uint8(stor8.field_64)
                            if block.timestamp > sub_9ecca3f1:
                                if sub_aa36de7f > block.timestamp:
                                    require not uint8(stor8.field_72)
                            require uint8(stor8.field_88)
                            require block.timestamp < crowdfundEndTime
                            require 1 == bool(uint8(stor8.field_96))
                        else:
                            if sub_aa36de7f <= block.timestamp:
                                if sub_9ecca3f1 > block.timestamp:
                                    require not uint8(stor8.field_64)
                                if block.timestamp > sub_9ecca3f1:
                                    if sub_aa36de7f > block.timestamp:
                                        require not uint8(stor8.field_72)
                                require uint8(stor8.field_88)
                                require block.timestamp < crowdfundEndTime
                                require 1 == bool(uint8(stor8.field_96))
                            else:
                                if not uint8(stor8.field_72):
                                    if sub_9ecca3f1 > block.timestamp:
                                        require not uint8(stor8.field_64)
                                    if block.timestamp > sub_9ecca3f1:
                                        if sub_aa36de7f > block.timestamp:
                                            require not uint8(stor8.field_72)
                                    require uint8(stor8.field_88)
                                    require block.timestamp < crowdfundEndTime
                                    require 1 == bool(uint8(stor8.field_96))
                    else:
                        if uint8(stor8.field_64):
                            if sub_9ecca3f1 > block.timestamp:
                                require not uint8(stor8.field_64)
                            if block.timestamp > sub_9ecca3f1:
                                if sub_aa36de7f > block.timestamp:
                                    require not uint8(stor8.field_72)
                            require uint8(stor8.field_88)
                            require block.timestamp < crowdfundEndTime
                            require 1 == bool(uint8(stor8.field_96))
                        else:
                            if block.timestamp <= sub_9ecca3f1:
                                if sub_9ecca3f1 > block.timestamp:
                                    require not uint8(stor8.field_64)
                                if block.timestamp > sub_9ecca3f1:
                                    if sub_aa36de7f > block.timestamp:
                                        require not uint8(stor8.field_72)
                                require uint8(stor8.field_88)
                                require block.timestamp < crowdfundEndTime
                                require 1 == bool(uint8(stor8.field_96))
                            else:
                                if sub_aa36de7f <= block.timestamp:
                                    if sub_9ecca3f1 > block.timestamp:
                                        require not uint8(stor8.field_64)
                                    if block.timestamp > sub_9ecca3f1:
                                        if sub_aa36de7f > block.timestamp:
                                            require not uint8(stor8.field_72)
                                    require uint8(stor8.field_88)
                                    require block.timestamp < crowdfundEndTime
                                    require 1 == bool(uint8(stor8.field_96))
                                else:
                                    if not uint8(stor8.field_72):
                                        if sub_9ecca3f1 > block.timestamp:
                                            require not uint8(stor8.field_64)
                                        if block.timestamp > sub_9ecca3f1:
                                            if sub_aa36de7f > block.timestamp:
                                                require not uint8(stor8.field_72)
                                        require uint8(stor8.field_88)
                                        require block.timestamp < crowdfundEndTime
                                        require 1 == bool(uint8(stor8.field_96))
            else:
                if sub_aa36de7f <= block.timestamp:
                    if uint8(stor8.field_88):
                        if sub_9ecca3f1 <= block.timestamp:
                            if block.timestamp <= sub_9ecca3f1:
                                if sub_9ecca3f1 > block.timestamp:
                                    require not uint8(stor8.field_64)
                                if block.timestamp > sub_9ecca3f1:
                                    if sub_aa36de7f > block.timestamp:
                                        require not uint8(stor8.field_72)
                                require uint8(stor8.field_88)
                                require block.timestamp < crowdfundEndTime
                                require 1 == bool(uint8(stor8.field_96))
                            else:
                                if sub_aa36de7f <= block.timestamp:
                                    if sub_9ecca3f1 > block.timestamp:
                                        require not uint8(stor8.field_64)
                                    if block.timestamp > sub_9ecca3f1:
                                        if sub_aa36de7f > block.timestamp:
                                            require not uint8(stor8.field_72)
                                    require uint8(stor8.field_88)
                                    require block.timestamp < crowdfundEndTime
                                    require 1 == bool(uint8(stor8.field_96))
                                else:
                                    if not uint8(stor8.field_72):
                                        if sub_9ecca3f1 > block.timestamp:
                                            require not uint8(stor8.field_64)
                                        if block.timestamp > sub_9ecca3f1:
                                            if sub_aa36de7f > block.timestamp:
                                                require not uint8(stor8.field_72)
                                        require uint8(stor8.field_88)
                                        require block.timestamp < crowdfundEndTime
                                        require 1 == bool(uint8(stor8.field_96))
                        else:
                            if uint8(stor8.field_64):
                                if sub_9ecca3f1 > block.timestamp:
                                    require not uint8(stor8.field_64)
                                if block.timestamp > sub_9ecca3f1:
                                    if sub_aa36de7f > block.timestamp:
                                        require not uint8(stor8.field_72)
                                require uint8(stor8.field_88)
                                require block.timestamp < crowdfundEndTime
                                require 1 == bool(uint8(stor8.field_96))
                            else:
                                if block.timestamp <= sub_9ecca3f1:
                                    if sub_9ecca3f1 > block.timestamp:
                                        require not uint8(stor8.field_64)
                                    if block.timestamp > sub_9ecca3f1:
                                        if sub_aa36de7f > block.timestamp:
                                            require not uint8(stor8.field_72)
                                    require uint8(stor8.field_88)
                                    require block.timestamp < crowdfundEndTime
                                    require 1 == bool(uint8(stor8.field_96))
                                else:
                                    if sub_aa36de7f <= block.timestamp:
                                        if sub_9ecca3f1 > block.timestamp:
                                            require not uint8(stor8.field_64)
                                        if block.timestamp > sub_9ecca3f1:
                                            if sub_aa36de7f > block.timestamp:
                                                require not uint8(stor8.field_72)
                                        require uint8(stor8.field_88)
                                        require block.timestamp < crowdfundEndTime
                                        require 1 == bool(uint8(stor8.field_96))
                                    else:
                                        if not uint8(stor8.field_72):
                                            if sub_9ecca3f1 > block.timestamp:
                                                require not uint8(stor8.field_64)
                                            if block.timestamp > sub_9ecca3f1:
                                                if sub_aa36de7f > block.timestamp:
                                                    require not uint8(stor8.field_72)
                                            require uint8(stor8.field_88)
                                            require block.timestamp < crowdfundEndTime
                                            require 1 == bool(uint8(stor8.field_96))
                else:
                    if uint8(stor8.field_72):
                        if sub_9ecca3f1 <= block.timestamp:
                            if block.timestamp <= sub_9ecca3f1:
                                if sub_9ecca3f1 > block.timestamp:
                                    require not uint8(stor8.field_64)
                                if block.timestamp > sub_9ecca3f1:
                                    if sub_aa36de7f > block.timestamp:
                                        require not uint8(stor8.field_72)
                                require uint8(stor8.field_88)
                                require block.timestamp < crowdfundEndTime
                                require 1 == bool(uint8(stor8.field_96))
                            else:
                                if sub_aa36de7f <= block.timestamp:
                                    if sub_9ecca3f1 > block.timestamp:
                                        require not uint8(stor8.field_64)
                                    if block.timestamp > sub_9ecca3f1:
                                        if sub_aa36de7f > block.timestamp:
                                            require not uint8(stor8.field_72)
                                    require uint8(stor8.field_88)
                                    require block.timestamp < crowdfundEndTime
                                    require 1 == bool(uint8(stor8.field_96))
                                else:
                                    if not uint8(stor8.field_72):
                                        if sub_9ecca3f1 > block.timestamp:
                                            require not uint8(stor8.field_64)
                                        if block.timestamp > sub_9ecca3f1:
                                            if sub_aa36de7f > block.timestamp:
                                                require not uint8(stor8.field_72)
                                        require uint8(stor8.field_88)
                                        require block.timestamp < crowdfundEndTime
                                        require 1 == bool(uint8(stor8.field_96))
                        else:
                            if uint8(stor8.field_64):
                                if sub_9ecca3f1 > block.timestamp:
                                    require not uint8(stor8.field_64)
                                if block.timestamp > sub_9ecca3f1:
                                    if sub_aa36de7f > block.timestamp:
                                        require not uint8(stor8.field_72)
                                require uint8(stor8.field_88)
                                require block.timestamp < crowdfundEndTime
                                require 1 == bool(uint8(stor8.field_96))
                            else:
                                if block.timestamp <= sub_9ecca3f1:
                                    if sub_9ecca3f1 > block.timestamp:
                                        require not uint8(stor8.field_64)
                                    if block.timestamp > sub_9ecca3f1:
                                        if sub_aa36de7f > block.timestamp:
                                            require not uint8(stor8.field_72)
                                    require uint8(stor8.field_88)
                                    require block.timestamp < crowdfundEndTime
                                    require 1 == bool(uint8(stor8.field_96))
                                else:
                                    if sub_aa36de7f <= block.timestamp:
                                        if sub_9ecca3f1 > block.timestamp:
                                            require not uint8(stor8.field_64)
                                        if block.timestamp > sub_9ecca3f1:
                                            if sub_aa36de7f > block.timestamp:
                                                require not uint8(stor8.field_72)
                                        require uint8(stor8.field_88)
                                        require block.timestamp < crowdfundEndTime
                                        require 1 == bool(uint8(stor8.field_96))
                                    else:
                                        if not uint8(stor8.field_72):
                                            if sub_9ecca3f1 > block.timestamp:
                                                require not uint8(stor8.field_64)
                                            if block.timestamp > sub_9ecca3f1:
                                                if sub_aa36de7f > block.timestamp:
                                                    require not uint8(stor8.field_72)
                                            require uint8(stor8.field_88)
                                            require block.timestamp < crowdfundEndTime
                                            require 1 == bool(uint8(stor8.field_96))
                    else:
                        if uint8(stor8.field_88):
                            if sub_9ecca3f1 <= block.timestamp:
                                if block.timestamp <= sub_9ecca3f1:
                                    if sub_9ecca3f1 > block.timestamp:
                                        require not uint8(stor8.field_64)
                                    if block.timestamp > sub_9ecca3f1:
                                        if sub_aa36de7f > block.timestamp:
                                            require not uint8(stor8.field_72)
                                    require uint8(stor8.field_88)
                                    require block.timestamp < crowdfundEndTime
                                    require 1 == bool(uint8(stor8.field_96))
                                else:
                                    if sub_aa36de7f <= block.timestamp:
                                        if sub_9ecca3f1 > block.timestamp:
                                            require not uint8(stor8.field_64)
                                        if block.timestamp > sub_9ecca3f1:
                                            if sub_aa36de7f > block.timestamp:
                                                require not uint8(stor8.field_72)
                                        require uint8(stor8.field_88)
                                        require block.timestamp < crowdfundEndTime
                                        require 1 == bool(uint8(stor8.field_96))
                                    else:
                                        if not uint8(stor8.field_72):
                                            if sub_9ecca3f1 > block.timestamp:
                                                require not uint8(stor8.field_64)
                                            if block.timestamp > sub_9ecca3f1:
                                                if sub_aa36de7f > block.timestamp:
                                                    require not uint8(stor8.field_72)
                                            require uint8(stor8.field_88)
                                            require block.timestamp < crowdfundEndTime
                                            require 1 == bool(uint8(stor8.field_96))
                            else:
                                if uint8(stor8.field_64):
                                    if sub_9ecca3f1 > block.timestamp:
                                        require not uint8(stor8.field_64)
                                    if block.timestamp > sub_9ecca3f1:
                                        if sub_aa36de7f > block.timestamp:
                                            require not uint8(stor8.field_72)
                                    require uint8(stor8.field_88)
                                    require block.timestamp < crowdfundEndTime
                                    require 1 == bool(uint8(stor8.field_96))
                                else:
                                    if block.timestamp <= sub_9ecca3f1:
                                        if sub_9ecca3f1 > block.timestamp:
                                            require not uint8(stor8.field_64)
                                        if block.timestamp > sub_9ecca3f1:
                                            if sub_aa36de7f > block.timestamp:
                                                require not uint8(stor8.field_72)
                                        require uint8(stor8.field_88)
                                        require block.timestamp < crowdfundEndTime
                                        require 1 == bool(uint8(stor8.field_96))
                                    else:
                                        if sub_aa36de7f <= block.timestamp:
                                            if sub_9ecca3f1 > block.timestamp:
                                                require not uint8(stor8.field_64)
                                            if block.timestamp > sub_9ecca3f1:
                                                if sub_aa36de7f > block.timestamp:
                                                    require not uint8(stor8.field_72)
                                            require uint8(stor8.field_88)
                                            require block.timestamp < crowdfundEndTime
                                            require 1 == bool(uint8(stor8.field_96))
                                        else:
                                            if not uint8(stor8.field_72):
                                                if sub_9ecca3f1 > block.timestamp:
                                                    require not uint8(stor8.field_64)
                                                if block.timestamp > sub_9ecca3f1:
                                                    if sub_aa36de7f > block.timestamp:
                                                        require not uint8(stor8.field_72)
                                                require uint8(stor8.field_88)
                                                require block.timestamp < crowdfundEndTime
                                                require 1 == bool(uint8(stor8.field_96))
    call founderMultiSigAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require msg.value + totalWeiRaised >= totalWeiRaised
    totalWeiRaised += msg.value
}

function buyTokens(address arg1) payable {
    require msg.value > 0
    require 1 == bool(uint8(stor8.field_80))
    require founderMultiSigAddress != msg.sender
    require arg1
    if sub_9ecca3f1 <= block.timestamp:
        if block.timestamp <= sub_9ecca3f1:
            if uint8(stor8.field_88):
                if sub_9ecca3f1 <= block.timestamp:
                    if block.timestamp <= sub_9ecca3f1:
                        if sub_9ecca3f1 > block.timestamp:
                            require not uint8(stor8.field_64)
                        if block.timestamp > sub_9ecca3f1:
                            if sub_aa36de7f > block.timestamp:
                                require not uint8(stor8.field_72)
                        require uint8(stor8.field_88)
                        require block.timestamp < crowdfundEndTime
                        require 1 == bool(uint8(stor8.field_96))
                    else:
                        if sub_aa36de7f <= block.timestamp:
                            if sub_9ecca3f1 > block.timestamp:
                                require not uint8(stor8.field_64)
                            if block.timestamp > sub_9ecca3f1:
                                if sub_aa36de7f > block.timestamp:
                                    require not uint8(stor8.field_72)
                            require uint8(stor8.field_88)
                            require block.timestamp < crowdfundEndTime
                            require 1 == bool(uint8(stor8.field_96))
                        else:
                            if not uint8(stor8.field_72):
                                if sub_9ecca3f1 > block.timestamp:
                                    require not uint8(stor8.field_64)
                                if block.timestamp > sub_9ecca3f1:
                                    if sub_aa36de7f > block.timestamp:
                                        require not uint8(stor8.field_72)
                                require uint8(stor8.field_88)
                                require block.timestamp < crowdfundEndTime
                                require 1 == bool(uint8(stor8.field_96))
                else:
                    if uint8(stor8.field_64):
                        if sub_9ecca3f1 > block.timestamp:
                            require not uint8(stor8.field_64)
                        if block.timestamp > sub_9ecca3f1:
                            if sub_aa36de7f > block.timestamp:
                                require not uint8(stor8.field_72)
                        require uint8(stor8.field_88)
                        require block.timestamp < crowdfundEndTime
                        require 1 == bool(uint8(stor8.field_96))
                    else:
                        if block.timestamp <= sub_9ecca3f1:
                            if sub_9ecca3f1 > block.timestamp:
                                require not uint8(stor8.field_64)
                            if block.timestamp > sub_9ecca3f1:
                                if sub_aa36de7f > block.timestamp:
                                    require not uint8(stor8.field_72)
                            require uint8(stor8.field_88)
                            require block.timestamp < crowdfundEndTime
                            require 1 == bool(uint8(stor8.field_96))
                        else:
                            if sub_aa36de7f <= block.timestamp:
                                if sub_9ecca3f1 > block.timestamp:
                                    require not uint8(stor8.field_64)
                                if block.timestamp > sub_9ecca3f1:
                                    if sub_aa36de7f > block.timestamp:
                                        require not uint8(stor8.field_72)
                                require uint8(stor8.field_88)
                                require block.timestamp < crowdfundEndTime
                                require 1 == bool(uint8(stor8.field_96))
                            else:
                                if not uint8(stor8.field_72):
                                    if sub_9ecca3f1 > block.timestamp:
                                        require not uint8(stor8.field_64)
                                    if block.timestamp > sub_9ecca3f1:
                                        if sub_aa36de7f > block.timestamp:
                                            require not uint8(stor8.field_72)
                                    require uint8(stor8.field_88)
                                    require block.timestamp < crowdfundEndTime
                                    require 1 == bool(uint8(stor8.field_96))
        else:
            if sub_aa36de7f <= block.timestamp:
                if uint8(stor8.field_88):
                    if sub_9ecca3f1 <= block.timestamp:
                        if block.timestamp <= sub_9ecca3f1:
                            if sub_9ecca3f1 > block.timestamp:
                                require not uint8(stor8.field_64)
                            if block.timestamp > sub_9ecca3f1:
                                if sub_aa36de7f > block.timestamp:
                                    require not uint8(stor8.field_72)
                            require uint8(stor8.field_88)
                            require block.timestamp < crowdfundEndTime
                            require 1 == bool(uint8(stor8.field_96))
                        else:
                            if sub_aa36de7f <= block.timestamp:
                                if sub_9ecca3f1 > block.timestamp:
                                    require not uint8(stor8.field_64)
                                if block.timestamp > sub_9ecca3f1:
                                    if sub_aa36de7f > block.timestamp:
                                        require not uint8(stor8.field_72)
                                require uint8(stor8.field_88)
                                require block.timestamp < crowdfundEndTime
                                require 1 == bool(uint8(stor8.field_96))
                            else:
                                if not uint8(stor8.field_72):
                                    if sub_9ecca3f1 > block.timestamp:
                                        require not uint8(stor8.field_64)
                                    if block.timestamp > sub_9ecca3f1:
                                        if sub_aa36de7f > block.timestamp:
                                            require not uint8(stor8.field_72)
                                    require uint8(stor8.field_88)
                                    require block.timestamp < crowdfundEndTime
                                    require 1 == bool(uint8(stor8.field_96))
                    else:
                        if uint8(stor8.field_64):
                            if sub_9ecca3f1 > block.timestamp:
                                require not uint8(stor8.field_64)
                            if block.timestamp > sub_9ecca3f1:
                                if sub_aa36de7f > block.timestamp:
                                    require not uint8(stor8.field_72)
                            require uint8(stor8.field_88)
                            require block.timestamp < crowdfundEndTime
                            require 1 == bool(uint8(stor8.field_96))
                        else:
                            if block.timestamp <= sub_9ecca3f1:
                                if sub_9ecca3f1 > block.timestamp:
                                    require not uint8(stor8.field_64)
                                if block.timestamp > sub_9ecca3f1:
                                    if sub_aa36de7f > block.timestamp:
                                        require not uint8(stor8.field_72)
                                require uint8(stor8.field_88)
                                require block.timestamp < crowdfundEndTime
                                require 1 == bool(uint8(stor8.field_96))
                            else:
                                if sub_aa36de7f <= block.timestamp:
                                    if sub_9ecca3f1 > block.timestamp:
                                        require not uint8(stor8.field_64)
                                    if block.timestamp > sub_9ecca3f1:
                                        if sub_aa36de7f > block.timestamp:
                                            require not uint8(stor8.field_72)
                                    require uint8(stor8.field_88)
                                    require block.timestamp < crowdfundEndTime
                                    require 1 == bool(uint8(stor8.field_96))
                                else:
                                    if not uint8(stor8.field_72):
                                        if sub_9ecca3f1 > block.timestamp:
                                            require not uint8(stor8.field_64)
                                        if block.timestamp > sub_9ecca3f1:
                                            if sub_aa36de7f > block.timestamp:
                                                require not uint8(stor8.field_72)
                                        require uint8(stor8.field_88)
                                        require block.timestamp < crowdfundEndTime
                                        require 1 == bool(uint8(stor8.field_96))
            else:
                if uint8(stor8.field_72):
                    if sub_9ecca3f1 <= block.timestamp:
                        if block.timestamp <= sub_9ecca3f1:
                            if sub_9ecca3f1 > block.timestamp:
                                require not uint8(stor8.field_64)
                            if block.timestamp > sub_9ecca3f1:
                                if sub_aa36de7f > block.timestamp:
                                    require not uint8(stor8.field_72)
                            require uint8(stor8.field_88)
                            require block.timestamp < crowdfundEndTime
                            require 1 == bool(uint8(stor8.field_96))
                        else:
                            if sub_aa36de7f <= block.timestamp:
                                if sub_9ecca3f1 > block.timestamp:
                                    require not uint8(stor8.field_64)
                                if block.timestamp > sub_9ecca3f1:
                                    if sub_aa36de7f > block.timestamp:
                                        require not uint8(stor8.field_72)
                                require uint8(stor8.field_88)
                                require block.timestamp < crowdfundEndTime
                                require 1 == bool(uint8(stor8.field_96))
                            else:
                                if not uint8(stor8.field_72):
                                    if sub_9ecca3f1 > block.timestamp:
                                        require not uint8(stor8.field_64)
                                    if block.timestamp > sub_9ecca3f1:
                                        if sub_aa36de7f > block.timestamp:
                                            require not uint8(stor8.field_72)
                                    require uint8(stor8.field_88)
                                    require block.timestamp < crowdfundEndTime
                                    require 1 == bool(uint8(stor8.field_96))
                    else:
                        if uint8(stor8.field_64):
                            if sub_9ecca3f1 > block.timestamp:
                                require not uint8(stor8.field_64)
                            if block.timestamp > sub_9ecca3f1:
                                if sub_aa36de7f > block.timestamp:
                                    require not uint8(stor8.field_72)
                            require uint8(stor8.field_88)
                            require block.timestamp < crowdfundEndTime
                            require 1 == bool(uint8(stor8.field_96))
                        else:
                            if block.timestamp <= sub_9ecca3f1:
                                if sub_9ecca3f1 > block.timestamp:
                                    require not uint8(stor8.field_64)
                                if block.timestamp > sub_9ecca3f1:
                                    if sub_aa36de7f > block.timestamp:
                                        require not uint8(stor8.field_72)
                                require uint8(stor8.field_88)
                                require block.timestamp < crowdfundEndTime
                                require 1 == bool(uint8(stor8.field_96))
                            else:
                                if sub_aa36de7f <= block.timestamp:
                                    if sub_9ecca3f1 > block.timestamp:
                                        require not uint8(stor8.field_64)
                                    if block.timestamp > sub_9ecca3f1:
                                        if sub_aa36de7f > block.timestamp:
                                            require not uint8(stor8.field_72)
                                    require uint8(stor8.field_88)
                                    require block.timestamp < crowdfundEndTime
                                    require 1 == bool(uint8(stor8.field_96))
                                else:
                                    if not uint8(stor8.field_72):
                                        if sub_9ecca3f1 > block.timestamp:
                                            require not uint8(stor8.field_64)
                                        if block.timestamp > sub_9ecca3f1:
                                            if sub_aa36de7f > block.timestamp:
                                                require not uint8(stor8.field_72)
                                        require uint8(stor8.field_88)
                                        require block.timestamp < crowdfundEndTime
                                        require 1 == bool(uint8(stor8.field_96))
                else:
                    if uint8(stor8.field_88):
                        if sub_9ecca3f1 <= block.timestamp:
                            if block.timestamp <= sub_9ecca3f1:
                                if sub_9ecca3f1 > block.timestamp:
                                    require not uint8(stor8.field_64)
                                if block.timestamp > sub_9ecca3f1:
                                    if sub_aa36de7f > block.timestamp:
                                        require not uint8(stor8.field_72)
                                require uint8(stor8.field_88)
                                require block.timestamp < crowdfundEndTime
                                require 1 == bool(uint8(stor8.field_96))
                            else:
                                if sub_aa36de7f <= block.timestamp:
                                    if sub_9ecca3f1 > block.timestamp:
                                        require not uint8(stor8.field_64)
                                    if block.timestamp > sub_9ecca3f1:
                                        if sub_aa36de7f > block.timestamp:
                                            require not uint8(stor8.field_72)
                                    require uint8(stor8.field_88)
                                    require block.timestamp < crowdfundEndTime
                                    require 1 == bool(uint8(stor8.field_96))
                                else:
                                    if not uint8(stor8.field_72):
                                        if sub_9ecca3f1 > block.timestamp:
                                            require not uint8(stor8.field_64)
                                        if block.timestamp > sub_9ecca3f1:
                                            if sub_aa36de7f > block.timestamp:
                                                require not uint8(stor8.field_72)
                                        require uint8(stor8.field_88)
                                        require block.timestamp < crowdfundEndTime
                                        require 1 == bool(uint8(stor8.field_96))
                        else:
                            if uint8(stor8.field_64):
                                if sub_9ecca3f1 > block.timestamp:
                                    require not uint8(stor8.field_64)
                                if block.timestamp > sub_9ecca3f1:
                                    if sub_aa36de7f > block.timestamp:
                                        require not uint8(stor8.field_72)
                                require uint8(stor8.field_88)
                                require block.timestamp < crowdfundEndTime
                                require 1 == bool(uint8(stor8.field_96))
                            else:
                                if block.timestamp <= sub_9ecca3f1:
                                    if sub_9ecca3f1 > block.timestamp:
                                        require not uint8(stor8.field_64)
                                    if block.timestamp > sub_9ecca3f1:
                                        if sub_aa36de7f > block.timestamp:
                                            require not uint8(stor8.field_72)
                                    require uint8(stor8.field_88)
                                    require block.timestamp < crowdfundEndTime
                                    require 1 == bool(uint8(stor8.field_96))
                                else:
                                    if sub_aa36de7f <= block.timestamp:
                                        if sub_9ecca3f1 > block.timestamp:
                                            require not uint8(stor8.field_64)
                                        if block.timestamp > sub_9ecca3f1:
                                            if sub_aa36de7f > block.timestamp:
                                                require not uint8(stor8.field_72)
                                        require uint8(stor8.field_88)
                                        require block.timestamp < crowdfundEndTime
                                        require 1 == bool(uint8(stor8.field_96))
                                    else:
                                        if not uint8(stor8.field_72):
                                            if sub_9ecca3f1 > block.timestamp:
                                                require not uint8(stor8.field_64)
                                            if block.timestamp > sub_9ecca3f1:
                                                if sub_aa36de7f > block.timestamp:
                                                    require not uint8(stor8.field_72)
                                            require uint8(stor8.field_88)
                                            require block.timestamp < crowdfundEndTime
                                            require 1 == bool(uint8(stor8.field_96))
    else:
        if not uint8(stor8.field_64):
            if block.timestamp <= sub_9ecca3f1:
                if uint8(stor8.field_88):
                    if sub_9ecca3f1 <= block.timestamp:
                        if block.timestamp <= sub_9ecca3f1:
                            if sub_9ecca3f1 > block.timestamp:
                                require not uint8(stor8.field_64)
                            if block.timestamp > sub_9ecca3f1:
                                if sub_aa36de7f > block.timestamp:
                                    require not uint8(stor8.field_72)
                            require uint8(stor8.field_88)
                            require block.timestamp < crowdfundEndTime
                            require 1 == bool(uint8(stor8.field_96))
                        else:
                            if sub_aa36de7f <= block.timestamp:
                                if sub_9ecca3f1 > block.timestamp:
                                    require not uint8(stor8.field_64)
                                if block.timestamp > sub_9ecca3f1:
                                    if sub_aa36de7f > block.timestamp:
                                        require not uint8(stor8.field_72)
                                require uint8(stor8.field_88)
                                require block.timestamp < crowdfundEndTime
                                require 1 == bool(uint8(stor8.field_96))
                            else:
                                if not uint8(stor8.field_72):
                                    if sub_9ecca3f1 > block.timestamp:
                                        require not uint8(stor8.field_64)
                                    if block.timestamp > sub_9ecca3f1:
                                        if sub_aa36de7f > block.timestamp:
                                            require not uint8(stor8.field_72)
                                    require uint8(stor8.field_88)
                                    require block.timestamp < crowdfundEndTime
                                    require 1 == bool(uint8(stor8.field_96))
                    else:
                        if uint8(stor8.field_64):
                            if sub_9ecca3f1 > block.timestamp:
                                require not uint8(stor8.field_64)
                            if block.timestamp > sub_9ecca3f1:
                                if sub_aa36de7f > block.timestamp:
                                    require not uint8(stor8.field_72)
                            require uint8(stor8.field_88)
                            require block.timestamp < crowdfundEndTime
                            require 1 == bool(uint8(stor8.field_96))
                        else:
                            if block.timestamp <= sub_9ecca3f1:
                                if sub_9ecca3f1 > block.timestamp:
                                    require not uint8(stor8.field_64)
                                if block.timestamp > sub_9ecca3f1:
                                    if sub_aa36de7f > block.timestamp:
                                        require not uint8(stor8.field_72)
                                require uint8(stor8.field_88)
                                require block.timestamp < crowdfundEndTime
                                require 1 == bool(uint8(stor8.field_96))
                            else:
                                if sub_aa36de7f <= block.timestamp:
                                    if sub_9ecca3f1 > block.timestamp:
                                        require not uint8(stor8.field_64)
                                    if block.timestamp > sub_9ecca3f1:
                                        if sub_aa36de7f > block.timestamp:
                                            require not uint8(stor8.field_72)
                                    require uint8(stor8.field_88)
                                    require block.timestamp < crowdfundEndTime
                                    require 1 == bool(uint8(stor8.field_96))
                                else:
                                    if not uint8(stor8.field_72):
                                        if sub_9ecca3f1 > block.timestamp:
                                            require not uint8(stor8.field_64)
                                        if block.timestamp > sub_9ecca3f1:
                                            if sub_aa36de7f > block.timestamp:
                                                require not uint8(stor8.field_72)
                                        require uint8(stor8.field_88)
                                        require block.timestamp < crowdfundEndTime
                                        require 1 == bool(uint8(stor8.field_96))
            else:
                if sub_aa36de7f <= block.timestamp:
                    if uint8(stor8.field_88):
                        if sub_9ecca3f1 <= block.timestamp:
                            if block.timestamp <= sub_9ecca3f1:
                                if sub_9ecca3f1 > block.timestamp:
                                    require not uint8(stor8.field_64)
                                if block.timestamp > sub_9ecca3f1:
                                    if sub_aa36de7f > block.timestamp:
                                        require not uint8(stor8.field_72)
                                require uint8(stor8.field_88)
                                require block.timestamp < crowdfundEndTime
                                require 1 == bool(uint8(stor8.field_96))
                            else:
                                if sub_aa36de7f <= block.timestamp:
                                    if sub_9ecca3f1 > block.timestamp:
                                        require not uint8(stor8.field_64)
                                    if block.timestamp > sub_9ecca3f1:
                                        if sub_aa36de7f > block.timestamp:
                                            require not uint8(stor8.field_72)
                                    require uint8(stor8.field_88)
                                    require block.timestamp < crowdfundEndTime
                                    require 1 == bool(uint8(stor8.field_96))
                                else:
                                    if not uint8(stor8.field_72):
                                        if sub_9ecca3f1 > block.timestamp:
                                            require not uint8(stor8.field_64)
                                        if block.timestamp > sub_9ecca3f1:
                                            if sub_aa36de7f > block.timestamp:
                                                require not uint8(stor8.field_72)
                                        require uint8(stor8.field_88)
                                        require block.timestamp < crowdfundEndTime
                                        require 1 == bool(uint8(stor8.field_96))
                        else:
                            if uint8(stor8.field_64):
                                if sub_9ecca3f1 > block.timestamp:
                                    require not uint8(stor8.field_64)
                                if block.timestamp > sub_9ecca3f1:
                                    if sub_aa36de7f > block.timestamp:
                                        require not uint8(stor8.field_72)
                                require uint8(stor8.field_88)
                                require block.timestamp < crowdfundEndTime
                                require 1 == bool(uint8(stor8.field_96))
                            else:
                                if block.timestamp <= sub_9ecca3f1:
                                    if sub_9ecca3f1 > block.timestamp:
                                        require not uint8(stor8.field_64)
                                    if block.timestamp > sub_9ecca3f1:
                                        if sub_aa36de7f > block.timestamp:
                                            require not uint8(stor8.field_72)
                                    require uint8(stor8.field_88)
                                    require block.timestamp < crowdfundEndTime
                                    require 1 == bool(uint8(stor8.field_96))
                                else:
                                    if sub_aa36de7f <= block.timestamp:
                                        if sub_9ecca3f1 > block.timestamp:
                                            require not uint8(stor8.field_64)
                                        if block.timestamp > sub_9ecca3f1:
                                            if sub_aa36de7f > block.timestamp:
                                                require not uint8(stor8.field_72)
                                        require uint8(stor8.field_88)
                                        require block.timestamp < crowdfundEndTime
                                        require 1 == bool(uint8(stor8.field_96))
                                    else:
                                        if not uint8(stor8.field_72):
                                            if sub_9ecca3f1 > block.timestamp:
                                                require not uint8(stor8.field_64)
                                            if block.timestamp > sub_9ecca3f1:
                                                if sub_aa36de7f > block.timestamp:
                                                    require not uint8(stor8.field_72)
                                            require uint8(stor8.field_88)
                                            require block.timestamp < crowdfundEndTime
                                            require 1 == bool(uint8(stor8.field_96))
                else:
                    if uint8(stor8.field_72):
                        if sub_9ecca3f1 <= block.timestamp:
                            if block.timestamp <= sub_9ecca3f1:
                                if sub_9ecca3f1 > block.timestamp:
                                    require not uint8(stor8.field_64)
                                if block.timestamp > sub_9ecca3f1:
                                    if sub_aa36de7f > block.timestamp:
                                        require not uint8(stor8.field_72)
                                require uint8(stor8.field_88)
                                require block.timestamp < crowdfundEndTime
                                require 1 == bool(uint8(stor8.field_96))
                            else:
                                if sub_aa36de7f <= block.timestamp:
                                    if sub_9ecca3f1 > block.timestamp:
                                        require not uint8(stor8.field_64)
                                    if block.timestamp > sub_9ecca3f1:
                                        if sub_aa36de7f > block.timestamp:
                                            require not uint8(stor8.field_72)
                                    require uint8(stor8.field_88)
                                    require block.timestamp < crowdfundEndTime
                                    require 1 == bool(uint8(stor8.field_96))
                                else:
                                    if not uint8(stor8.field_72):
                                        if sub_9ecca3f1 > block.timestamp:
                                            require not uint8(stor8.field_64)
                                        if block.timestamp > sub_9ecca3f1:
                                            if sub_aa36de7f > block.timestamp:
                                                require not uint8(stor8.field_72)
                                        require uint8(stor8.field_88)
                                        require block.timestamp < crowdfundEndTime
                                        require 1 == bool(uint8(stor8.field_96))
                        else:
                            if uint8(stor8.field_64):
                                if sub_9ecca3f1 > block.timestamp:
                                    require not uint8(stor8.field_64)
                                if block.timestamp > sub_9ecca3f1:
                                    if sub_aa36de7f > block.timestamp:
                                        require not uint8(stor8.field_72)
                                require uint8(stor8.field_88)
                                require block.timestamp < crowdfundEndTime
                                require 1 == bool(uint8(stor8.field_96))
                            else:
                                if block.timestamp <= sub_9ecca3f1:
                                    if sub_9ecca3f1 > block.timestamp:
                                        require not uint8(stor8.field_64)
                                    if block.timestamp > sub_9ecca3f1:
                                        if sub_aa36de7f > block.timestamp:
                                            require not uint8(stor8.field_72)
                                    require uint8(stor8.field_88)
                                    require block.timestamp < crowdfundEndTime
                                    require 1 == bool(uint8(stor8.field_96))
                                else:
                                    if sub_aa36de7f <= block.timestamp:
                                        if sub_9ecca3f1 > block.timestamp:
                                            require not uint8(stor8.field_64)
                                        if block.timestamp > sub_9ecca3f1:
                                            if sub_aa36de7f > block.timestamp:
                                                require not uint8(stor8.field_72)
                                        require uint8(stor8.field_88)
                                        require block.timestamp < crowdfundEndTime
                                        require 1 == bool(uint8(stor8.field_96))
                                    else:
                                        if not uint8(stor8.field_72):
                                            if sub_9ecca3f1 > block.timestamp:
                                                require not uint8(stor8.field_64)
                                            if block.timestamp > sub_9ecca3f1:
                                                if sub_aa36de7f > block.timestamp:
                                                    require not uint8(stor8.field_72)
                                            require uint8(stor8.field_88)
                                            require block.timestamp < crowdfundEndTime
                                            require 1 == bool(uint8(stor8.field_96))
                    else:
                        if uint8(stor8.field_88):
                            if sub_9ecca3f1 <= block.timestamp:
                                if block.timestamp <= sub_9ecca3f1:
                                    if sub_9ecca3f1 > block.timestamp:
                                        require not uint8(stor8.field_64)
                                    if block.timestamp > sub_9ecca3f1:
                                        if sub_aa36de7f > block.timestamp:
                                            require not uint8(stor8.field_72)
                                    require uint8(stor8.field_88)
                                    require block.timestamp < crowdfundEndTime
                                    require 1 == bool(uint8(stor8.field_96))
                                else:
                                    if sub_aa36de7f <= block.timestamp:
                                        if sub_9ecca3f1 > block.timestamp:
                                            require not uint8(stor8.field_64)
                                        if block.timestamp > sub_9ecca3f1:
                                            if sub_aa36de7f > block.timestamp:
                                                require not uint8(stor8.field_72)
                                        require uint8(stor8.field_88)
                                        require block.timestamp < crowdfundEndTime
                                        require 1 == bool(uint8(stor8.field_96))
                                    else:
                                        if not uint8(stor8.field_72):
                                            if sub_9ecca3f1 > block.timestamp:
                                                require not uint8(stor8.field_64)
                                            if block.timestamp > sub_9ecca3f1:
                                                if sub_aa36de7f > block.timestamp:
                                                    require not uint8(stor8.field_72)
                                            require uint8(stor8.field_88)
                                            require block.timestamp < crowdfundEndTime
                                            require 1 == bool(uint8(stor8.field_96))
                            else:
                                if uint8(stor8.field_64):
                                    if sub_9ecca3f1 > block.timestamp:
                                        require not uint8(stor8.field_64)
                                    if block.timestamp > sub_9ecca3f1:
                                        if sub_aa36de7f > block.timestamp:
                                            require not uint8(stor8.field_72)
                                    require uint8(stor8.field_88)
                                    require block.timestamp < crowdfundEndTime
                                    require 1 == bool(uint8(stor8.field_96))
                                else:
                                    if block.timestamp <= sub_9ecca3f1:
                                        if sub_9ecca3f1 > block.timestamp:
                                            require not uint8(stor8.field_64)
                                        if block.timestamp > sub_9ecca3f1:
                                            if sub_aa36de7f > block.timestamp:
                                                require not uint8(stor8.field_72)
                                        require uint8(stor8.field_88)
                                        require block.timestamp < crowdfundEndTime
                                        require 1 == bool(uint8(stor8.field_96))
                                    else:
                                        if sub_aa36de7f <= block.timestamp:
                                            if sub_9ecca3f1 > block.timestamp:
                                                require not uint8(stor8.field_64)
                                            if block.timestamp > sub_9ecca3f1:
                                                if sub_aa36de7f > block.timestamp:
                                                    require not uint8(stor8.field_72)
                                            require uint8(stor8.field_88)
                                            require block.timestamp < crowdfundEndTime
                                            require 1 == bool(uint8(stor8.field_96))
                                        else:
                                            if not uint8(stor8.field_72):
                                                if sub_9ecca3f1 > block.timestamp:
                                                    require not uint8(stor8.field_64)
                                                if block.timestamp > sub_9ecca3f1:
                                                    if sub_aa36de7f > block.timestamp:
                                                        require not uint8(stor8.field_72)
                                                require uint8(stor8.field_88)
                                                require block.timestamp < crowdfundEndTime
                                                require 1 == bool(uint8(stor8.field_96))
    call founderMultiSigAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require msg.value + totalWeiRaised >= totalWeiRaised
    totalWeiRaised += msg.value
    return 1
}



}
