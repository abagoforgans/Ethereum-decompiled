contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor3;
uint256 stor4;
address stor7;

function _fallback() {
    stor0 = msg.sender
    stor1 = 10^18 * code.data[6162 len 32]
    require code.data[6226 len 32]
    stor3 = 10^18 / code.data[6226 len 32]
    stor4 = code.data[6194 len 32]
    stor7 = code.data[6270 len 20]
    return code.data[265 len 5897]
}



// =====================  Runtime code  =====================


address owner;
uint256 fundingGoal;
uint256 deadline;
uint256 price;
uint256 sub_21365597;
uint256 soldToken;
uint256 startTime;
uint8 stor7; offset 160
uint8 stor7; offset 168
uint128 stor7; offset 168
uint128 stor7; offset 160
address tokenRewardAddress;
mapping of struct sub_5627df88;

function sub_21365597(?) {
    return sub_21365597
}

function deadline() {
    return deadline
}

function sub_5627df88(?) {
    return sub_5627df88[arg1].field_0, sub_5627df88[arg1].field_256, bool(sub_5627df88[arg1].field_512)
}

function soldToken() {
    return soldToken
}

function isOpened() {
    return bool(uint8(stor7.field_168))
}

function tokenReward() {
    return tokenRewardAddress
}

function startTime() {
    return startTime
}

function fundingGoal() {
    return fundingGoal
}

function owner() {
    return owner
}

function price() {
    return price
}

function fundingGoalReached() {
    return bool(uint8(stor7.field_160))
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
    emit TransferOwnership(owner, owner);
}

function currentSwapRate() {
    if startTime + 180 > block.timestamp:
        return 100
    if startTime + 300 > block.timestamp:
        return 50
    if startTime + 600 <= block.timestamp:
        return 0
    return 20
}

function sub_d8c02754(?) {
    if block.timestamp >= deadline:
        return 0, fundingGoal - eth.balance(this.address) / 10^18, sub_21365597 - soldToken
    return deadline - block.timestamp / 60, fundingGoal - eth.balance(this.address) / 10^18, sub_21365597 - soldToken
}

function checkGoalReached() {
    if block.timestamp >= deadline:
        if uint8(stor7.field_168):
            if eth.balance(this.address) >= fundingGoal:
                Mask(96, 0, stor7.field_160) = 1
            Mask(88, 0, stor7.field_168) = 0
            emit 0xc783731a: owner, fundingGoal, eth.balance(this.address), bool(uint8(stor7.field_160)), soldToken
}

function start(uint256 arg1) {
    require msg.sender == owner
    require fundingGoal
    require price
    require sub_21365597
    require tokenRewardAddress
    require arg1
    require not startTime
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x70a08231 with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    if ext_call.return_data[0] >= sub_21365597:
        startTime = block.timestamp
        deadline = block.timestamp + (60 * arg1)
        Mask(88, 0, stor7.field_168) = 1
        emit 0x6a151b16: fundingGoal, deadline, sub_21365597, owner
}

function withdrawal() {
    if not uint8(stor7.field_168):
        require not sub_5627df88[address(msg.sender)].field_512
        if not uint8(stor7.field_160):
            if sub_5627df88[address(msg.sender)].field_0 > 0:
                call msg.sender with:
                   value sub_5627df88[address(msg.sender)].field_0 wei
                     gas gas_remaining - 34050 wei
                if ext_call.success:
                    sub_5627df88[address(msg.sender)].field_512 = 1
                emit 0x5b8e8dab: msg.sender, sub_5627df88[address(msg.sender)].field_0, bool(sub_5627df88[address(msg.sender)].field_512)
        else:
            if sub_5627df88[address(msg.sender)].field_256 > 0:
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0xa9059cbb with:
                     gas gas_remaining - 50 wei
                    args msg.sender, sub_5627df88[address(msg.sender)].field_256
                require ext_call.success
                sub_5627df88[address(msg.sender)].field_512 = 1
                emit 0x860b5331: msg.sender, sub_5627df88[address(msg.sender)].field_256, bool(sub_5627df88[address(msg.sender)].field_512)
}

function withdrawalOwner() {
    require msg.sender == owner
    require not uint8(stor7.field_168)
    if not uint8(stor7.field_160):
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0x70a08231 with:
             gas gas_remaining - 50 wei
            args this.address
        require ext_call.success
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0xa9059cbb with:
             gas gas_remaining - 50 wei
            args msg.sender, ext_call.return_data[0]
        require ext_call.success
        emit 0x860b5331: msg.sender, ext_call.return_data[0], 1
    else:
        if eth.balance(this.address) > 0:
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas gas_remaining - 34050 wei
            emit 0x5b8e8dab: msg.sender, eth.balance(this.address), bool(ext_call.success)
        if sub_21365597 - soldToken > 0:
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0xa9059cbb with:
                 gas gas_remaining - 50 wei
                args msg.sender, sub_21365597 - soldToken
            require ext_call.success
            emit 0x860b5331: msg.sender, 0, 1
}

function _fallback() payable {
    require uint8(stor7.field_168)
    require block.timestamp < deadline
    require price
    if startTime + 180 > block.timestamp:
        require 200 * msg.value / price / 100
        require soldToken + (200 * msg.value / price / 100) <= sub_21365597
        sub_5627df88[address(msg.sender)].field_0 += msg.value
        sub_5627df88[address(msg.sender)].field_256 += 200 * msg.value / price / 100
        soldToken += 200 * msg.value / price / 100
        emit 0xead0fad6: msg.sender, msg.value, 200 * msg.value / price / 100
    else:
        if startTime + 300 > block.timestamp:
            require 150 * msg.value / price / 100
            require soldToken + (150 * msg.value / price / 100) <= sub_21365597
            sub_5627df88[address(msg.sender)].field_0 += msg.value
            sub_5627df88[address(msg.sender)].field_256 += 150 * msg.value / price / 100
            soldToken += 150 * msg.value / price / 100
            emit 0xead0fad6: msg.sender, msg.value, 150 * msg.value / price / 100
        else:
            if startTime + 600 <= block.timestamp:
                require 100 * msg.value / price / 100
                require soldToken + (100 * msg.value / price / 100) <= sub_21365597
                sub_5627df88[address(msg.sender)].field_0 += msg.value
                sub_5627df88[address(msg.sender)].field_256 += 100 * msg.value / price / 100
                soldToken += 100 * msg.value / price / 100
                emit 0xead0fad6: msg.sender, msg.value, 100 * msg.value / price / 100
            else:
                require 120 * msg.value / price / 100
                require soldToken + (120 * msg.value / price / 100) <= sub_21365597
                sub_5627df88[address(msg.sender)].field_0 += msg.value
                sub_5627df88[address(msg.sender)].field_256 += 120 * msg.value / price / 100
                soldToken += 120 * msg.value / price / 100
                emit 0xead0fad6: msg.sender, msg.value, 120 * msg.value / price / 100
}



}
