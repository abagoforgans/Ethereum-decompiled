contract main {




// =====================  Runtime code  =====================


address stor1;
address stor2;
bool stor3;
bool stor3; offset 255
uint256 stor3;
uint256 stor3; offset 1
uint256 stor3;
uint256 cost1token;
uint256 stor5;
uint256 stor6;
address tokenRewardAddress;

function tokenReward() {
    return tokenRewardAddress
}

function cost1token() {
    return cost1token
}

function _fallback() payable {
    require cost1token
    uint256(stor3.field_0) = msg.value / cost1token
    if msg.value >= 5 * 10^18:
        require cost1token
        uint256(stor3.field_0) = msg.value / cost1token
        uint255(stor3.field_0) = 3 * uint256(stor3.field_0) / 2
        bool(stor3.field_255) = 0
        if msg.value >= 15 * 10^18:
            require cost1token
            uint256(stor3.field_0) = msg.value / cost1token
            bool(stor3.field_0) = 0
            uint255(stor3.field_1) = uint255(stor3.field_0)
            if msg.value >= 25 * 10^18:
                require cost1token
                uint256(stor3.field_0) = msg.value / cost1token
                uint256(stor3.field_0) = 3 * uint256(stor3.field_0)
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x23b872dd with:
         gas gas_remaining wei
        args stor1, msg.sender, uint256(stor3.field_0)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor6 = 8 * msg.value / 100
    stor5 = msg.value - stor6
    call stor1 with:
       value stor5 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call stor2 with:
       value stor6 wei
         gas 2300 * is_zero(value) wei
}



}
