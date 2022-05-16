contract main {




// =====================  Runtime code  =====================


const rand = (sha3(block.difficulty, block.timestamp) % 17)


address beneficiaryAddress;
uint256 price;
address tokenRewardAddress;
uint256 sub_63a8b185;
uint256 sub_163ba0cc;
uint256 sub_c0ccc9f7;
uint256 totalToken;
array of address stor7;
mapping of uint256 balanceOf;
mapping of uint8 stor25;

function sub_163ba0cc(?) {
    return sub_163ba0cc
}

function beneficiary() {
    return beneficiaryAddress
}

function totalToken() {
    return totalToken
}

function sub_63a8b185(?) {
    return sub_63a8b185
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

function sub_af8bd5be(?) {
    return bool(stor25[arg1])
}

function sub_c0ccc9f7(?) {
    return sub_c0ccc9f7
}

function sub_66b6b666(?) {
    if sub_63a8b185 + sub_c0ccc9f7 < totalToken:
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0xa9059cbb with:
             gas gas_remaining wei
            args stor7.length, totalToken - sub_63a8b185 - sub_c0ccc9f7
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if not stor25[address(msg.sender)]:
        if sub_c0ccc9f7 < sub_163ba0cc:
            stor25[address(msg.sender)] = 1
            sub_c0ccc9f7 += 10 * 10^18
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 10 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    require sha3(block.difficulty, block.timestamp) % 17 < 17
    beneficiaryAddress = stor7[('map', 'difficulty', 'timestamp') % 17]
    balanceOf[address(msg.sender)] += msg.value
    require price
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 10^18 * msg.value / price
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require price
    sub_63a8b185 += 10^18 * msg.value / price
    call beneficiaryAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
