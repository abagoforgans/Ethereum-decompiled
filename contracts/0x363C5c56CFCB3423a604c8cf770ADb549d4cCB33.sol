contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
address stor15;
address stor16;
uint16 stor18;

function _fallback() payable {
    stor1 = 416640 * 24 * 3600
    stor2 = 416664 * 24 * 3600
    stor3 = 416688 * 24 * 3600
    stor4 = 416832 * 24 * 3600
    stor5 = 417408 * 24 * 3600
    stor6 = 100000
    stor7 = 150 * 10^6
    stor8 = 120 * 10^6
    stor9 = 110 * 10^6
    stor10 = 100 * 10^6
    stor11 = 203 * 10^10
    stor12 = 2 * 10^12
    stor13 = 0
    stor14 = 0
    stor18 = 0
    require not msg.value
    stor16 = code.data[2290 len 20]
    stor15 = code.data[2322 len 20]
    stor0 = msg.sender
    return code.data[238 len 2040]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 sub_4dfc384d;
uint256 sub_444a77e0;
uint256 sub_4188d8a5;
uint256 sub_38981b75;
uint256 sub_e6323d33;
uint256 sub_41ba2b9a;
uint256 sub_f9d32918;
uint256 amountRaisedInWei;
address tokenRewardAddress;
address beneficiaryAddress;
mapping of uint256 balanceOf;
uint8 stor18;
uint8 stor18; offset 8

function sub_38981b75(?) {
    return sub_38981b75
}

function beneficiary() {
    return beneficiaryAddress
}

function sub_4188d8a5(?) {
    return sub_4188d8a5
}

function sub_41ba2b9a(?) {
    return sub_41ba2b9a
}

function sub_444a77e0(?) {
    return sub_444a77e0
}

function sub_4dfc384d(?) {
    return sub_4dfc384d
}

function tokenReward() {
    return tokenRewardAddress
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function amountRaisedInWei() {
    return amountRaisedInWei
}

function owner() {
    return owner
}

function sub_e6323d33(?) {
    return sub_e6323d33
}

function sub_f9d32918(?) {
    return sub_f9d32918
}

function checkGoalReached() {
    if block.timestamp >= stor5:
        if sub_f9d32918 >= sub_e6323d33:
            uint8(stor18.field_0) = 1
            emit GoalReached(beneficiaryAddress, amountRaisedInWei);
        uint8(stor18.field_8) = 1
}

function sub_f0f24ecb(?) {
    require block.timestamp >= stor1
    if block.timestamp < stor2:
        require sub_f9d32918 < sub_41ba2b9a
        return sub_4dfc384d
    if block.timestamp < stor3:
        return sub_444a77e0
    if block.timestamp >= stor4:
        return sub_38981b75
    return sub_4188d8a5
}

function _fallback() payable {
    require not uint8(stor18.field_8)
    require block.timestamp <= stor5
    require ext_code.size(this.address)
    call this.address.0xf0f24ecb with:
         gas gas_remaining - 710 wei
    require ext_call.success
    balanceOf[address(msg.sender)] += msg.value
    sub_f9d32918 += ext_call.return_data[0] * msg.value / 10^18
    amountRaisedInWei += msg.value
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, ext_call.return_data[0] * msg.value / 10^18
    require ext_call.success
    emit FundTransfer(msg.sender, msg.value, 1);
}

function safeWithdrawal() {
    if block.timestamp >= stor5:
        require ext_code.size(this.address)
        call this.address.checkGoalReached() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if uint8(stor18.field_0):
            if owner == msg.sender:
                call beneficiaryAddress with:
                   value amountRaisedInWei wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    uint8(stor18.field_0) = 0
                else:
                    emit FundTransfer(beneficiaryAddress, amountRaisedInWei, 0);
        else:
            balanceOf[address(msg.sender)] = 0
            if balanceOf[address(msg.sender)] <= 0:
                if uint8(stor18.field_0):
                    if owner == msg.sender:
                        call beneficiaryAddress with:
                           value amountRaisedInWei wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            uint8(stor18.field_0) = 0
                        else:
                            emit FundTransfer(beneficiaryAddress, amountRaisedInWei, 0);
            else:
                call msg.sender with:
                   value balanceOf[address(msg.sender)] wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
                    emit FundTransfer(msg.sender, balanceOf[address(msg.sender)], 0);
                if uint8(stor18.field_0):
                    if owner == msg.sender:
                        call beneficiaryAddress with:
                           value amountRaisedInWei wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            uint8(stor18.field_0) = 0
                        else:
                            emit FundTransfer(beneficiaryAddress, amountRaisedInWei, 0);
}



}
