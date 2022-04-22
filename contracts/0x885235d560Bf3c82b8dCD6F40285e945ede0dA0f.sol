contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
address stor3;
address stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
address stor18;
uint32 stor20;

function _fallback() payable {
    stor20 = 0
    require not msg.value
    stor3 = 0xdb25ac88e728d124a303a81182943f4151994894
    stor4 = 0xf6f209c6c031b1560d073d5e82b380c40cd02469
    stor5 = 3000 * 10^18
    stor6 = 15000 * 10^18
    stor7 = 100000 * 10^18
    stor9 = 28
    stor10 = 24
    stor11 = 18
    stor18 = code.data[4264 len 20]
    stor12 = 308
    stor13 = 336
    stor14 = 350
    stor15 = 364
    stor16 = 420
    stor17 = 490
    stor0 = block.timestamp
    stor1 = block.timestamp + (941 * 3600)
    stor2 = block.timestamp + (221 * 3600)
    return code.data[275 len 3977]
}



// =====================  Runtime code  =====================


uint256 createdTimestamp;
uint256 icoStart;
uint256 deadline;
address beneficiaryAddress;
address sub_5a0254e2Address;
uint256 sub_2ec914b5;
uint256 sub_aff29802;
uint256 fundingGoal;
uint256 amountRaised;
uint256 sub_8f48399a;
uint256 sub_92dcc41c;
uint256 sub_ace38f8c;
uint256 sub_a8a75b78;
uint256 sub_3b41ddba;
uint256 sub_89e66aea;
uint256 sub_31252103;
uint256 sub_4c95f5d0;
uint256 sub_7c24ce7d;
address tokenRewardAddress;
mapping of uint256 balanceOf;
uint8 stor20;
uint8 stor20; offset 8
uint8 stor20; offset 16

function createdTimestamp() {
    return createdTimestamp
}

function deadline() {
    return deadline
}

function sub_2ec914b5(?) {
    return sub_2ec914b5
}

function sub_31252103(?) {
    return sub_31252103
}

function beneficiary() {
    return beneficiaryAddress
}

function sub_3b41ddba(?) {
    return sub_3b41ddba
}

function sub_4c95f5d0(?) {
    return sub_4c95f5d0
}

function sub_5a0254e2(?) {
    return sub_5a0254e2Address
}

function sub_5b54d2d6(?) {
    return bool(uint8(stor20.field_16))
}

function tokenReward() {
    return tokenRewardAddress
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function fundingGoal() {
    return fundingGoal
}

function amountRaised() {
    return amountRaised
}

function sub_7c24ce7d(?) {
    return sub_7c24ce7d
}

function icoStart() {
    return icoStart
}

function sub_89e66aea(?) {
    return sub_89e66aea
}

function sub_8f48399a(?) {
    return sub_8f48399a
}

function sub_92dcc41c(?) {
    return sub_92dcc41c
}

function sub_a8a75b78(?) {
    return sub_a8a75b78
}

function sub_ace38f8c(?) {
    return sub_ace38f8c
}

function sub_aff29802(?) {
    return sub_aff29802
}

function crowdsaleClosed() {
    return bool(uint8(stor20.field_8))
}

function fundingGoalReached() {
    return bool(uint8(stor20.field_0))
}

function sub_4fa34075(?) {
    if sub_5a0254e2Address == msg.sender:
        uint8(stor20.field_8) = 0
}

function sub_a02d55a3(?) {
    if sub_5a0254e2Address == msg.sender:
        uint8(stor20.field_8) = 1
}

function sub_998936b0(?) {
    if sub_5a0254e2Address == msg.sender:
        uint8(stor20.field_16) = 0
}

function sub_dcd22c9b(?) {
    if sub_5a0254e2Address == msg.sender:
        uint8(stor20.field_16) = 1
}

function checkGoalReached() {
    if block.timestamp >= deadline:
        if amountRaised >= sub_2ec914b5:
            uint8(stor20.field_0) = 1
        else:
            if uint8(stor20.field_16):
                uint8(stor20.field_0) = 1
        uint8(stor20.field_8) = 1
}

function sub_1fd8ffb0(?) {
    if block.timestamp >= deadline:
        if sub_5a0254e2Address == msg.sender:
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, arg1
            require ext_call.success
}

function _fallback() payable {
    require not uint8(stor20.field_8)
    require amountRaised <= fundingGoal
    if block.timestamp < icoStart:
        require block.timestamp >= icoStart
    balanceOf[address(msg.sender)] += msg.value
    amountRaised += msg.value
    require ext_code.size(tokenRewardAddress)
    if amountRaised < sub_2ec914b5:
        call tokenRewardAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, msg.value * sub_8f48399a
    else:
        if amountRaised >= sub_aff29802:
            call tokenRewardAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, msg.value * sub_ace38f8c
        else:
            call tokenRewardAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, msg.value * sub_92dcc41c
    require ext_call.success
    emit FundTransfer(msg.sender, msg.value, 1);
}

function safeWithdrawal() {
    if block.timestamp >= deadline:
        if uint8(stor20.field_0):
            if beneficiaryAddress == msg.sender:
                call beneficiaryAddress with:
                   value amountRaised wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    uint8(stor20.field_0) = 0
                else:
                    emit FundTransfer(beneficiaryAddress, amountRaised, 0);
        else:
            balanceOf[address(msg.sender)] = 0
            if balanceOf[address(msg.sender)] <= 0:
                if uint8(stor20.field_0):
                    if beneficiaryAddress == msg.sender:
                        call beneficiaryAddress with:
                           value amountRaised wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            uint8(stor20.field_0) = 0
                        else:
                            emit FundTransfer(beneficiaryAddress, amountRaised, 0);
            else:
                call msg.sender with:
                   value balanceOf[address(msg.sender)] wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
                    emit FundTransfer(msg.sender, balanceOf[address(msg.sender)], 0);
                if uint8(stor20.field_0):
                    if beneficiaryAddress == msg.sender:
                        call beneficiaryAddress with:
                           value amountRaised wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            uint8(stor20.field_0) = 0
                        else:
                            emit FundTransfer(beneficiaryAddress, amountRaised, 0);
}



}
