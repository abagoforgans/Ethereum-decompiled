contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
mapping of uint256 userAmount;
uint256 stor3;
address beneficiaryAddress;
uint256 softCap;
uint256 hardCap;
uint256 amountRaised;
uint256 preSaleStartdate;
uint256 preSaleDeadline;
uint256 mainSaleStartdate;
uint256 mainSaleDeadline;
uint256 price;
uint256 fundTransferred;
uint256 tokenSold;
address tokenRewardAddress;
mapping of uint256 balanceOf;
uint8 stor17;
uint8 stor17; offset 8
uint256 stor17; offset 8

function getUserAmount(address arg1) {
    require stor1[address(arg1)]
    return userAmount[address(arg1)]
}

function beneficiary() {
    return beneficiaryAddress
}

function HardCap() {
    return hardCap
}

function tokenSold() {
    return tokenSold
}

function mainSaleDeadline() {
    return mainSaleDeadline
}

function fundTransferred() {
    return fundTransferred
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

function owner() {
    return owner
}

function price() {
    return price
}

function isAddressWhiteListed(address arg1) {
    return bool(stor1[address(arg1)])
}

function preSaleStartdate() {
    return preSaleStartdate
}

function mainSaleStartdate() {
    return mainSaleStartdate
}

function SoftCap() {
    return softCap
}

function preSaleDeadline() {
    return preSaleDeadline
}

function ChangePrice(uint256 arg1) {
    require msg.sender == owner
    price = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function EnableReturnFunds() {
    require msg.sender == owner
    Mask(248, 0, stor17.field_8) = 1
}

function DisableReturnFunds() {
    require msg.sender == owner
    Mask(248, 0, stor17.field_8) = 0
}

function ChangeBeneficiary(address arg1) {
    require msg.sender == owner
    beneficiaryAddress = arg1
}

function isWhiteListedValueValid(address arg1, uint256 arg2) {
    return userAmount[address(arg1)] <= arg2
}

function endCrowdsale() {
    if block.timestamp >= mainSaleDeadline:
        require msg.sender == owner
        uint8(stor17.field_0) = 1
}

function isValidUser(address arg1, uint256 arg2) {
    if not stor1[address(arg1)]:
        return bool(stor1[address(arg1)])
    return userAmount[address(arg1)] <= arg2
}

function disableWhitelistAddress(address arg1) {
    require msg.sender == owner
    stor1[address(arg1)] = 0
    userAmount[address(arg1)] = 0
    emit AddressRemoved(arg1);
}

function getResponse(uint256 arg1) {
    require price
    if not arg1 / price:
        return (10^14 * arg1 / price)
    require arg1 / price
    require 10^14 * arg1 / price / arg1 / price == 10^14
    return (10^14 * arg1 / price)
}

function ChangePreSaleDates(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    if arg1:
        preSaleStartdate = arg1
    if arg2:
        preSaleDeadline = arg2
    if bool(uint8(stor17.field_0)) == 1:
        uint8(stor17.field_0) = 0
}

function ChangeMainSaleDates(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    if arg1:
        mainSaleStartdate = arg1
    if arg2:
        mainSaleDeadline = arg2
    if bool(uint8(stor17.field_0)) == 1:
        uint8(stor17.field_0) = 0
}

function addWhiteListAddress(address arg1, uint256 arg2) {
    require not stor1[address(arg1)]
    if arg2:
        require arg2
        require arg2 * stor3 / arg2 == stor3
    stor1[address(arg1)] = 1
    userAmount[address(arg1)] = arg2 * stor3
    emit AddressAdded(arg1);
}

function getTokensBack() {
    require msg.sender == owner
    require uint8(stor17.field_0)
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining wei
        args beneficiaryAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function safeWithdrawal() {
    if block.timestamp >= mainSaleDeadline:
        if uint8(stor17.field_8):
            if balanceOf[address(msg.sender)] > 0:
                call msg.sender with:
                   value balanceOf[address(msg.sender)] wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
                    emit FundTransfer(msg.sender, balanceOf[address(msg.sender)], 0);
                    balanceOf[address(msg.sender)] = 0
                    require fundTransferred + balanceOf[address(msg.sender)] >= fundTransferred
                    fundTransferred += balanceOf[address(msg.sender)]
        if not uint8(stor17.field_8):
            if beneficiaryAddress == msg.sender:
                call beneficiaryAddress with:
                   value amountRaised - fundTransferred wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
                    require amountRaised >= fundTransferred
                    fundTransferred = amountRaised
}

function _fallback() payable {
    require not uint8(stor17.field_0)
    require price
    if msg.value / price:
        require msg.value / price
        require 10^14 * msg.value / price / msg.value / price == 10^14
    require stor1[address(msg.sender)]
    require userAmount[address(msg.sender)] <= 10^14 * msg.value / price
    require balanceOf[address(msg.sender)] + msg.value >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += msg.value
    require amountRaised + msg.value >= amountRaised
    amountRaised += msg.value
    require price
    if block.timestamp < preSaleStartdate:
        if block.timestamp < mainSaleStartdate:
            require (msg.value / price) + (7 * msg.value / price / 100) >= msg.value / price
            if (msg.value / price) + (7 * msg.value / price / 100):
                require (msg.value / price) + (7 * msg.value / price / 100)
                require (10^14 * msg.value / price) + (10^14 * 7 * msg.value / price / 100) / (msg.value / price) + (7 * msg.value / price / 100) == 10^14
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (10^14 * msg.value / price) + (10^14 * 7 * msg.value / price / 100)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require tokenSold + (10^14 * msg.value / price) + (10^14 * 7 * msg.value / price / 100) >= tokenSold
            tokenSold = tokenSold + (10^14 * msg.value / price) + (10^14 * 7 * msg.value / price / 100)
        else:
            if block.timestamp <= mainSaleStartdate + (720 * 24 * 3600):
                require (msg.value / price) + (25 * msg.value / price / 100) >= msg.value / price
                if (msg.value / price) + (25 * msg.value / price / 100):
                    require (msg.value / price) + (25 * msg.value / price / 100)
                    require (10^14 * msg.value / price) + (10^14 * 25 * msg.value / price / 100) / (msg.value / price) + (25 * msg.value / price / 100) == 10^14
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (10^14 * msg.value / price) + (10^14 * 25 * msg.value / price / 100)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require tokenSold + (10^14 * msg.value / price) + (10^14 * 25 * msg.value / price / 100) >= tokenSold
                tokenSold = tokenSold + (10^14 * msg.value / price) + (10^14 * 25 * msg.value / price / 100)
            else:
                if block.timestamp < mainSaleStartdate + (720 * 24 * 3600):
                    require (msg.value / price) + (7 * msg.value / price / 100) >= msg.value / price
                    if (msg.value / price) + (7 * msg.value / price / 100):
                        require (msg.value / price) + (7 * msg.value / price / 100)
                        require (10^14 * msg.value / price) + (10^14 * 7 * msg.value / price / 100) / (msg.value / price) + (7 * msg.value / price / 100) == 10^14
                    require ext_code.size(tokenRewardAddress)
                    call tokenRewardAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (10^14 * msg.value / price) + (10^14 * 7 * msg.value / price / 100)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require tokenSold + (10^14 * msg.value / price) + (10^14 * 7 * msg.value / price / 100) >= tokenSold
                    tokenSold = tokenSold + (10^14 * msg.value / price) + (10^14 * 7 * msg.value / price / 100)
                else:
                    if block.timestamp <= mainSaleStartdate + (1080 * 24 * 3600):
                        require (msg.value / price) + (15 * msg.value / price / 100) >= msg.value / price
                        if (msg.value / price) + (15 * msg.value / price / 100):
                            require (msg.value / price) + (15 * msg.value / price / 100)
                            require (10^14 * msg.value / price) + (10^14 * 15 * msg.value / price / 100) / (msg.value / price) + (15 * msg.value / price / 100) == 10^14
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (10^14 * msg.value / price) + (10^14 * 15 * msg.value / price / 100)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require tokenSold + (10^14 * msg.value / price) + (10^14 * 15 * msg.value / price / 100) >= tokenSold
                        tokenSold = tokenSold + (10^14 * msg.value / price) + (10^14 * 15 * msg.value / price / 100)
                    else:
                        if block.timestamp < mainSaleStartdate + (1080 * 24 * 3600):
                            require (msg.value / price) + (7 * msg.value / price / 100) >= msg.value / price
                            if (msg.value / price) + (7 * msg.value / price / 100):
                                require (msg.value / price) + (7 * msg.value / price / 100)
                                require (10^14 * msg.value / price) + (10^14 * 7 * msg.value / price / 100) / (msg.value / price) + (7 * msg.value / price / 100) == 10^14
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (10^14 * msg.value / price) + (10^14 * 7 * msg.value / price / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require tokenSold + (10^14 * msg.value / price) + (10^14 * 7 * msg.value / price / 100) >= tokenSold
                            tokenSold = tokenSold + (10^14 * msg.value / price) + (10^14 * 7 * msg.value / price / 100)
                        else:
                            if block.timestamp > mainSaleStartdate + (1440 * 24 * 3600):
                                require (msg.value / price) + (7 * msg.value / price / 100) >= msg.value / price
                                if (msg.value / price) + (7 * msg.value / price / 100):
                                    require (msg.value / price) + (7 * msg.value / price / 100)
                                    require (10^14 * msg.value / price) + (10^14 * 7 * msg.value / price / 100) / (msg.value / price) + (7 * msg.value / price / 100) == 10^14
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (10^14 * msg.value / price) + (10^14 * 7 * msg.value / price / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require tokenSold + (10^14 * msg.value / price) + (10^14 * 7 * msg.value / price / 100) >= tokenSold
                                tokenSold = tokenSold + (10^14 * msg.value / price) + (10^14 * 7 * msg.value / price / 100)
                            else:
                                require (msg.value / price) + (10 * msg.value / price / 100) >= msg.value / price
                                if (msg.value / price) + (10 * msg.value / price / 100):
                                    require (msg.value / price) + (10 * msg.value / price / 100)
                                    require (10^14 * msg.value / price) + (10^14 * 10 * msg.value / price / 100) / (msg.value / price) + (10 * msg.value / price / 100) == 10^14
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (10^14 * msg.value / price) + (10^14 * 10 * msg.value / price / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require tokenSold + (10^14 * msg.value / price) + (10^14 * 10 * msg.value / price / 100) >= tokenSold
                                tokenSold = tokenSold + (10^14 * msg.value / price) + (10^14 * 10 * msg.value / price / 100)
    else:
        if block.timestamp <= preSaleDeadline:
            require (msg.value / price) + (33 * msg.value / price / 100) >= msg.value / price
            if (msg.value / price) + (33 * msg.value / price / 100):
                require (msg.value / price) + (33 * msg.value / price / 100)
                require (10^14 * msg.value / price) + (10^14 * 33 * msg.value / price / 100) / (msg.value / price) + (33 * msg.value / price / 100) == 10^14
            require ext_code.size(tokenRewardAddress)
            call tokenRewardAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (10^14 * msg.value / price) + (10^14 * 33 * msg.value / price / 100)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require tokenSold + (10^14 * msg.value / price) + (10^14 * 33 * msg.value / price / 100) >= tokenSold
            tokenSold = tokenSold + (10^14 * msg.value / price) + (10^14 * 33 * msg.value / price / 100)
        else:
            if block.timestamp < mainSaleStartdate:
                require (msg.value / price) + (7 * msg.value / price / 100) >= msg.value / price
                if (msg.value / price) + (7 * msg.value / price / 100):
                    require (msg.value / price) + (7 * msg.value / price / 100)
                    require (10^14 * msg.value / price) + (10^14 * 7 * msg.value / price / 100) / (msg.value / price) + (7 * msg.value / price / 100) == 10^14
                require ext_code.size(tokenRewardAddress)
                call tokenRewardAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (10^14 * msg.value / price) + (10^14 * 7 * msg.value / price / 100)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require tokenSold + (10^14 * msg.value / price) + (10^14 * 7 * msg.value / price / 100) >= tokenSold
                tokenSold = tokenSold + (10^14 * msg.value / price) + (10^14 * 7 * msg.value / price / 100)
            else:
                if block.timestamp <= mainSaleStartdate + (720 * 24 * 3600):
                    require (msg.value / price) + (25 * msg.value / price / 100) >= msg.value / price
                    if (msg.value / price) + (25 * msg.value / price / 100):
                        require (msg.value / price) + (25 * msg.value / price / 100)
                        require (10^14 * msg.value / price) + (10^14 * 25 * msg.value / price / 100) / (msg.value / price) + (25 * msg.value / price / 100) == 10^14
                    require ext_code.size(tokenRewardAddress)
                    call tokenRewardAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (10^14 * msg.value / price) + (10^14 * 25 * msg.value / price / 100)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require tokenSold + (10^14 * msg.value / price) + (10^14 * 25 * msg.value / price / 100) >= tokenSold
                    tokenSold = tokenSold + (10^14 * msg.value / price) + (10^14 * 25 * msg.value / price / 100)
                else:
                    if block.timestamp < mainSaleStartdate + (720 * 24 * 3600):
                        require (msg.value / price) + (7 * msg.value / price / 100) >= msg.value / price
                        if (msg.value / price) + (7 * msg.value / price / 100):
                            require (msg.value / price) + (7 * msg.value / price / 100)
                            require (10^14 * msg.value / price) + (10^14 * 7 * msg.value / price / 100) / (msg.value / price) + (7 * msg.value / price / 100) == 10^14
                        require ext_code.size(tokenRewardAddress)
                        call tokenRewardAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (10^14 * msg.value / price) + (10^14 * 7 * msg.value / price / 100)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require tokenSold + (10^14 * msg.value / price) + (10^14 * 7 * msg.value / price / 100) >= tokenSold
                        tokenSold = tokenSold + (10^14 * msg.value / price) + (10^14 * 7 * msg.value / price / 100)
                    else:
                        if block.timestamp <= mainSaleStartdate + (1080 * 24 * 3600):
                            require (msg.value / price) + (15 * msg.value / price / 100) >= msg.value / price
                            if (msg.value / price) + (15 * msg.value / price / 100):
                                require (msg.value / price) + (15 * msg.value / price / 100)
                                require (10^14 * msg.value / price) + (10^14 * 15 * msg.value / price / 100) / (msg.value / price) + (15 * msg.value / price / 100) == 10^14
                            require ext_code.size(tokenRewardAddress)
                            call tokenRewardAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (10^14 * msg.value / price) + (10^14 * 15 * msg.value / price / 100)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require tokenSold + (10^14 * msg.value / price) + (10^14 * 15 * msg.value / price / 100) >= tokenSold
                            tokenSold = tokenSold + (10^14 * msg.value / price) + (10^14 * 15 * msg.value / price / 100)
                        else:
                            if block.timestamp < mainSaleStartdate + (1080 * 24 * 3600):
                                require (msg.value / price) + (7 * msg.value / price / 100) >= msg.value / price
                                if (msg.value / price) + (7 * msg.value / price / 100):
                                    require (msg.value / price) + (7 * msg.value / price / 100)
                                    require (10^14 * msg.value / price) + (10^14 * 7 * msg.value / price / 100) / (msg.value / price) + (7 * msg.value / price / 100) == 10^14
                                require ext_code.size(tokenRewardAddress)
                                call tokenRewardAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, (10^14 * msg.value / price) + (10^14 * 7 * msg.value / price / 100)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require tokenSold + (10^14 * msg.value / price) + (10^14 * 7 * msg.value / price / 100) >= tokenSold
                                tokenSold = tokenSold + (10^14 * msg.value / price) + (10^14 * 7 * msg.value / price / 100)
                            else:
                                if block.timestamp > mainSaleStartdate + (1440 * 24 * 3600):
                                    require (msg.value / price) + (7 * msg.value / price / 100) >= msg.value / price
                                    if (msg.value / price) + (7 * msg.value / price / 100):
                                        require (msg.value / price) + (7 * msg.value / price / 100)
                                        require (10^14 * msg.value / price) + (10^14 * 7 * msg.value / price / 100) / (msg.value / price) + (7 * msg.value / price / 100) == 10^14
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (10^14 * msg.value / price) + (10^14 * 7 * msg.value / price / 100)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require tokenSold + (10^14 * msg.value / price) + (10^14 * 7 * msg.value / price / 100) >= tokenSold
                                    tokenSold = tokenSold + (10^14 * msg.value / price) + (10^14 * 7 * msg.value / price / 100)
                                else:
                                    require (msg.value / price) + (10 * msg.value / price / 100) >= msg.value / price
                                    if (msg.value / price) + (10 * msg.value / price / 100):
                                        require (msg.value / price) + (10 * msg.value / price / 100)
                                        require (10^14 * msg.value / price) + (10^14 * 10 * msg.value / price / 100) / (msg.value / price) + (10 * msg.value / price / 100) == 10^14
                                    require ext_code.size(tokenRewardAddress)
                                    call tokenRewardAddress.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, (10^14 * msg.value / price) + (10^14 * 10 * msg.value / price / 100)
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require tokenSold + (10^14 * msg.value / price) + (10^14 * 10 * msg.value / price / 100) >= tokenSold
                                    tokenSold = tokenSold + (10^14 * msg.value / price) + (10^14 * 10 * msg.value / price / 100)
    stor1[address(msg.sender)] = 1
    userAmount[address(msg.sender)] = 0
    emit AddressReset(msg.sender);
    emit FundTransfer(msg.sender, msg.value, 1);
}



}
