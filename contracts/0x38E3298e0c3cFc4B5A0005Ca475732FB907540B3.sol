contract main {




// =====================  Runtime code  =====================


address stor1;
address stor2;
address stor3;
bool stor4;
bool stor4; offset 255
uint256 stor4;
uint256 stor4; offset 1
uint256 stor4;
uint256 cost1token;
uint256 stor6;
uint256 stor7;
uint256 stor8;
address tokenRewardAddress;

function tokenReward() {
    return tokenRewardAddress
}

function cost1token() {
    return cost1token
}

function _fallback() payable {
    require cost1token
    uint256(stor4.field_0) = msg.value / cost1token
    if msg.value >= 5 * 10^18:
        require cost1token
        uint256(stor4.field_0) = msg.value / cost1token
        uint255(stor4.field_0) = 3 * uint256(stor4.field_0) / 2
        bool(stor4.field_255) = 0
        if msg.value >= 15 * 10^18:
            require cost1token
            uint256(stor4.field_0) = msg.value / cost1token
            bool(stor4.field_0) = 0
            uint255(stor4.field_1) = uint255(stor4.field_0)
            if msg.value >= 25 * 10^18:
                require cost1token
                uint256(stor4.field_0) = msg.value / cost1token
                uint256(stor4.field_0) = 3 * uint256(stor4.field_0)
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x23b872dd with:
         gas gas_remaining wei
        args stor1, msg.sender, uint256(stor4.field_0)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor7 = 8 * msg.value / 100
    stor8 = 6 * msg.value / 100
    stor6 = msg.value - stor7 - stor8
    call stor2 with:
       value stor7 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor3 with:
       value stor8 wei
         gas 2300 * is_zero(value) wei
    call stor1 with:
       value stor6 wei
         gas 2300 * is_zero(value) wei
}



}
