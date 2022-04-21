contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor3;
uint256 stor4;
address stor5;
uint8 stor7;
uint256 stor7; offset 16
uint256 stor7; offset 8

function _fallback() payable {
    uint8(stor7.field_0) = 0
    Mask(248, 0, stor7.field_8) = 0
    Mask(240, 0, stor7.field_16) = 0
    require not msg.value
    stor0 = code.data[2277 len 20]
    stor1 = 10^18 * code.data[2297 len 32]
    stor3 = (24 * 3600 * code.data[2329 len 32]) + block.timestamp
    stor4 = code.data[2361 len 32]
    stor5 = code.data[2405 len 20]
    return code.data[218 len 2047]
}



// =====================  Runtime code  =====================


address walletAddress;
uint256 sub_339689c9;
uint256 sub_5a170a3c;
uint256 deadline;
uint256 price;
address tokenRewardAddress;
mapping of uint256 balanceOf;
uint8 stor7;
uint8 stor7; offset 8
uint256 stor7; offset 8

function deadline() {
    return deadline
}

function sub_339689c9(?) {
    return sub_339689c9
}

function wallet() {
    return walletAddress
}

function sub_5a170a3c(?) {
    return sub_5a170a3c
}

function tokenReward() {
    return tokenRewardAddress
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function price() {
    return price
}

function checkGoalReached() {
    if block.timestamp >= deadline:
        if sub_5a170a3c >= sub_339689c9:
            uint8(stor7.field_0) = 1
            emit GoalReached(walletAddress, sub_5a170a3c);
        Mask(248, 0, stor7.field_8) = 1
}

function getRateAt(uint256 arg1) {
    if arg1 > deadline:
        return 0
    if arg1 < deadline - (168 * 24 * 3600):
        return 0
    if arg1 < deadline - (120 * 24 * 3600):
        return 1500
    if arg1 < deadline - (72 * 24 * 3600):
        return 1400
    if arg1 < deadline - (48 * 24 * 3600):
        return 1300
    if arg1 < deadline - (24 * 3600):
        return 1200
    if arg1 >= deadline:
        return 0
    return 1000
}

function safeWithdrawal() {
    if block.timestamp >= deadline:
        if uint8(stor7.field_0):
            if walletAddress == msg.sender:
                call walletAddress with:
                   value sub_5a170a3c wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    uint8(stor7.field_0) = 0
                else:
                    emit FundTransfer(walletAddress, sub_5a170a3c, 0);
        else:
            if walletAddress != msg.sender:
                if uint8(stor7.field_0):
                    if walletAddress == msg.sender:
                        call walletAddress with:
                           value sub_5a170a3c wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            uint8(stor7.field_0) = 0
                        else:
                            emit FundTransfer(walletAddress, sub_5a170a3c, 0);
            else:
                call walletAddress with:
                   value sub_5a170a3c wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    uint8(stor7.field_0) = 0
                else:
                    emit FundTransfer(walletAddress, sub_5a170a3c, 0);
                if uint8(stor7.field_0):
                    if walletAddress == msg.sender:
                        call walletAddress with:
                           value sub_5a170a3c wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            uint8(stor7.field_0) = 0
                        else:
                            emit FundTransfer(walletAddress, sub_5a170a3c, 0);
}

function _fallback() payable {
    require not uint8(stor7.field_8)
    require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += msg.value
    require msg.value + sub_5a170a3c >= sub_5a170a3c
    sub_5a170a3c += msg.value
    require price
    if block.timestamp > deadline:
        if msg.value / price != 0:
            require msg.value / price
            require not 0 / msg.value / price
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, 0
    else:
        if block.timestamp < deadline - (168 * 24 * 3600):
            if msg.value / price != 0:
                require msg.value / price
                require not 0 / msg.value / price
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, 0
        else:
            if block.timestamp < deadline - (120 * 24 * 3600):
                if msg.value / price != 0:
                    require msg.value / price
                    require 1500 * msg.value / price / msg.value / price == 1500
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 1500 * msg.value / price
            else:
                if block.timestamp < deadline - (72 * 24 * 3600):
                    if msg.value / price != 0:
                        require msg.value / price
                        require 1400 * msg.value / price / msg.value / price == 1400
                    require ext_code.size(tokenRewardAddress)
                    call tokenRewardAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 1400 * msg.value / price
                else:
                    if block.timestamp < deadline - (48 * 24 * 3600):
                        if msg.value / price != 0:
                            require msg.value / price
                            require 1300 * msg.value / price / msg.value / price == 1300
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 1300 * msg.value / price
                    else:
                        if block.timestamp < deadline - (24 * 3600):
                            if msg.value / price != 0:
                                require msg.value / price
                                require 1200 * msg.value / price / msg.value / price == 1200
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 1200 * msg.value / price
                        else:
                            if block.timestamp >= deadline:
                                if msg.value / price != 0:
                                    require msg.value / price
                                    require not 0 / msg.value / price
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, 0
                            else:
                                if msg.value / price != 0:
                                    require msg.value / price
                                    require 1000 * msg.value / price / msg.value / price == 1000
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, 1000 * msg.value / price
    require ext_call.success
    emit FundTransfer(msg.sender, msg.value, 1);
}



}
