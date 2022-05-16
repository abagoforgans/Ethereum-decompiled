contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address organisationWalletAddress;
address tokenRewardAddress;
uint256 tokenPrice;
uint256 minimalPrice;
uint256 discount;
uint256 amountRaised;
uint8 stor7;
uint8 stor7; offset 8
uint256 stor7; offset 8
mapping of uint256 balanceOf;

function minimalPrice() {
    return minimalPrice
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function presaleFail() {
    return bool(uint8(stor7.field_8))
}

function discount() {
    return discount
}

function tokenReward() {
    return tokenRewardAddress
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function amountRaised() {
    return amountRaised
}

function tokenPrice() {
    return tokenPrice
}

function owner() {
    return owner
}

function finished() {
    return bool(uint8(stor7.field_0))
}

function organisationWallet() {
    return organisationWalletAddress
}

function updatePrice(uint256 arg1) {
    require msg.sender == owner
    tokenPrice = arg1
}

function updateDiscount(uint256 arg1) {
    require msg.sender == owner
    discount = arg1
}

function updateMinimal(uint256 arg1) {
    require msg.sender == owner
    minimalPrice = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function unpause() {
    require msg.sender == owner
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
}

function setPresaleFail() {
    require msg.sender == owner
    uint8(stor7.field_0) = 1
    Mask(248, 0, stor7.field_8) = 1
}

function pause() {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
}

function safeWithdrawal() {
    require uint8(stor7.field_8)
    call msg.sender with:
       value balanceOf[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    balanceOf[address(msg.sender)] = 0
}

function finishPresale() {
    require msg.sender == owner
    if not amountRaised:
        call organisationWalletAddress with:
             gas 2300 wei
    else:
        require amountRaised
        require 3 * amountRaised / amountRaised == 3
        call organisationWalletAddress with:
           value 3 * amountRaised / 100 wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    uint8(stor7.field_0) = 1
}

function buy(address arg1) payable {
    require not uint8(stor0.field_160)
    require not uint8(stor7.field_0)
    require arg1
    require msg.value
    require msg.value >= minimalPrice
    require discount + 100 >= discount
    if not msg.value:
        require balanceOf[address(arg1)] + msg.value >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += msg.value
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0x40c10f19 with:
             gas gas_remaining wei
            args address(arg1), 0
    else:
        require msg.value
        require msg.value * tokenPrice / msg.value == tokenPrice
        if not msg.value * tokenPrice:
            require balanceOf[address(arg1)] + msg.value >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += msg.value
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(arg1), 0
        else:
            require msg.value * tokenPrice
            require (100 * msg.value * tokenPrice) + (discount * msg.value * tokenPrice) / msg.value * tokenPrice == discount + 100
            require balanceOf[address(arg1)] + msg.value >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += msg.value
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args address(arg1), (100 * msg.value * tokenPrice) + (discount * msg.value * tokenPrice) / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require amountRaised + msg.value >= amountRaised
    amountRaised += msg.value
}

function _fallback() payable {
    require not uint8(stor0.field_160)
    require not uint8(stor7.field_0)
    require msg.sender
    require msg.value
    require msg.value >= minimalPrice
    require discount + 100 >= discount
    if not msg.value:
        require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += msg.value
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, 0
    else:
        require msg.value
        require msg.value * tokenPrice / msg.value == tokenPrice
        if not msg.value * tokenPrice:
            require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += msg.value
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, 0
        else:
            require msg.value * tokenPrice
            require (100 * msg.value * tokenPrice) + (discount * msg.value * tokenPrice) / msg.value * tokenPrice == discount + 100
            require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += msg.value
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args msg.sender, (100 * msg.value * tokenPrice) + (discount * msg.value * tokenPrice) / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require amountRaised + msg.value >= amountRaised
    amountRaised += msg.value
}



}
