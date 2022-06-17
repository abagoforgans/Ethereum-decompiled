contract main {




// =====================  Runtime code  =====================


#
#  - multiExecute(address[] arg1, uint256 arg2)
#
address stor0;
array of uint256 stor1;
array of struct order;
address tokenContractAddress;
uint256 lastSellPrice;
uint256 sellCeiling;
uint256 sellFloor;
uint256 etherFeePercent;
uint256 etherFeeMin;
uint8 stor9;
mapping of uint8 stor10;

function etherFeeMin() {
    return etherFeeMin
}

function tokenContract() {
    return tokenContractAddress
}

function getOrder(address arg1) {
    require calldata.size - 4 >= 32
    return order[address(arg1)].field_0, order[address(arg1)].field_256, order[address(arg1)].field_512
}

function tradingWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor10[arg1])
}

function orderBook(address arg1) {
    require calldata.size - 4 >= 32
    return order[arg1].field_0, order[arg1].field_256, order[arg1].field_512
}

function lastSellPrice() {
    return lastSellPrice
}

function owner() {
    return address(stor1.length)
}

function sellFloor() {
    return sellFloor
}

function sellCeiling() {
    return sellCeiling
}

function etherFeePercent() {
    return etherFeePercent
}

function enforceKyc() {
    return bool(stor9)
}

function isAllowedTrade(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor10[address(arg1)])
}

function retire(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the owner can call this function.'
    emit ContractRetired(arg2);
    selfdestruct(arg1)
}

function _fallback() payable {
    revert
}

function setSellFloor(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the owner can call this function.'
    sellFloor = arg1
}

function setEnforceKyc(bool arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the owner can call this function.'
    stor9 = uint8(arg1)
}

function setSellCeiling(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the owner can call this function.'
    sellCeiling = arg1
}

function setEtherFeeMin(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the owner can call this function.'
    etherFeeMin = arg1
}

function setTradingAllowed(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the owner can call this function.'
    stor10[address(arg1)] = uint8(arg2)
}

function cancel() {
    order[address(msg.sender)].field_0 = 0
    order[address(msg.sender)].field_256 = 0
    order[address(msg.sender)].field_512 = 0
    emit TokenOfferChanged(msg.sender, order[address(msg.sender)].field_0, order[address(msg.sender)].field_256, order[address(msg.sender)].field_512);
}

function setEtherFeePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the owner can call this function.'
    if arg1 > 100 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Percent must be between 0 and 100.'
    etherFeePercent = arg1
}

function calculateFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not etherFeePercent / 100:
        if 0 >= etherFeeMin:
            return 0
    else:
        require etherFeePercent / 100
        require arg1 * etherFeePercent / 100 / etherFeePercent / 100 == arg1
        require (arg1 * etherFeePercent / 100) + 5 * 10^17 >= arg1 * etherFeePercent / 100
        if (arg1 * etherFeePercent / 100) + 5 * 10^17 / 10^18 >= etherFeeMin:
            return ((arg1 * etherFeePercent / 100) + 5 * 10^17 / 10^18)
    return etherFeeMin
}

function setOfferExpiry(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor9:
        if not stor10[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You are unknown and not allowed to trade.'
    if arg1 <= block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot have an expiry date in the past.'
    order[address(msg.sender)].field_512 = arg1
    emit TokenOfferChanged(msg.sender, order[address(msg.sender)].field_0, order[address(msg.sender)].field_256, arg1);
}

function setOfferPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor9:
        if not stor10[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You are unknown and not allowed to trade.'
    if arg1 < sellFloor:
        revert with 0, 'Updated price is out of range.'
    if sellCeiling:
        if arg1 > sellCeiling:
            revert with 0, 'Updated price is out of range.'
    if not order[address(msg.sender)].field_256:
        if not order[address(msg.sender)].field_512:
            revert with 0, 'There is no existing order to modify.'
    order[address(msg.sender)].field_256 = arg1
    emit TokenOfferChanged(msg.sender, order[address(msg.sender)].field_0, arg1, order[address(msg.sender)].field_512);
}

function setOfferSize(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor9:
        if not stor10[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You are unknown and not allowed to trade.'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Size must be greater than zero, change rejected.'
    require ext_code.size(tokenContractAddress)
    staticcall tokenContractAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Not enough tokens owned to complete the order change.'
    require ext_code.size(tokenContractAddress)
    staticcall tokenContractAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You must approve the transfer of tokens before offering them for sale.'
    order[address(msg.sender)].field_0 = arg1
    emit TokenOfferChanged(msg.sender, arg1, order[address(msg.sender)].field_256, order[address(msg.sender)].field_512);
}

function offer(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if stor9:
        if not stor10[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You are unknown and not allowed to trade.'
    if arg1 <= 0:
        revert with 0, 'You must supply a quantity.'
    if arg2 <= 0:
        revert with 0, 'The sale price cannot be zero.'
    if arg3 <= block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot have an expiry date in the past.'
    if arg2 < sellFloor:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The ask is below the minimum allowed.'
    if sellCeiling:
        if arg2 > sellCeiling:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The ask is above the maximum allowed.'
    require ext_code.size(tokenContractAddress)
    staticcall tokenContractAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You must approve the transfer of tokens before offering them for sale.'
    require ext_code.size(tokenContractAddress)
    staticcall tokenContractAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Not enough tokens owned to complete the order.'
    order[address(msg.sender)].field_0 = arg1
    order[address(msg.sender)].field_256 = arg2
    order[address(msg.sender)].field_512 = arg3
    emit TokensOffered(arg1, arg2, arg3, msg.sender);
}

function execute(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if stor9:
        if not stor10[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Buyer and Seller must be approved to trade on this exchange.'
        if not stor10[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Buyer and Seller must be approved to trade on this exchange.'
    if order[address(arg1)].field_256 != arg3:
        revert with 0, 'Buy price does not match the listed sell price.'
    if block.timestamp >= order[address(arg1)].field_512:
        revert with 0, 'Sell order has expired.'
    if arg3 < sellFloor:
        revert with 0, 'The bid is below the minimum allowed.'
    if sellCeiling:
        if arg3 > sellCeiling:
            revert with 0, 'The bid is above the maximum allowed.'
    if order[address(arg1)].field_0 <= arg2:
        require order[address(arg1)].field_0 <= order[address(arg1)].field_0
        order[address(arg1)].field_0 = 0
        order[address(arg1)].field_256 = 0
        order[address(arg1)].field_512 = 0
        if not arg3:
            if msg.value < 0:
                revert with 0, 'You did not send enough Ether to purchase the tokens.'
            if etherFeePercent / 100:
                require etherFeePercent / 100
                require not 0 / etherFeePercent / 100
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.0x23b872dd with:
                 gas gas_remaining wei
                args address(arg1), msg.sender, order[address(arg1)].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Unable to transfer tokens from seller to buyer.'
            if 0 >= etherFeeMin:
                call arg1 with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                require etherFeeMin <= 0
                call arg1 with:
                   value -etherFeeMin wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if etherFeeMin > 0:
                    call address(stor1.length) with:
                       value etherFeeMin wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        else:
            require arg3
            require order[address(arg1)].field_0 * arg3 / arg3 == order[address(arg1)].field_0
            require (order[address(arg1)].field_0 * arg3) + 5 * 10^17 >= order[address(arg1)].field_0 * arg3
            if msg.value < (order[address(arg1)].field_0 * arg3) + 5 * 10^17 / 10^18:
                revert with 0, 'You did not send enough Ether to purchase the tokens.'
            if not etherFeePercent / 100:
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args address(arg1), msg.sender, order[address(arg1)].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Unable to transfer tokens from seller to buyer.'
                if 0 >= etherFeeMin:
                    require 0 <= (order[address(arg1)].field_0 * arg3) + 5 * 10^17 / 10^18
                    call arg1 with:
                       value (order[address(arg1)].field_0 * arg3) + 5 * 10^17 / 10^18 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    require etherFeeMin <= (order[address(arg1)].field_0 * arg3) + 5 * 10^17 / 10^18
                    call arg1 with:
                       value ((order[address(arg1)].field_0 * arg3) + 5 * 10^17 / 10^18) - etherFeeMin wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if etherFeeMin > 0:
                        call address(stor1.length) with:
                           value etherFeeMin wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                require etherFeePercent / 100
                require (order[address(arg1)].field_0 * arg3) + 5 * 10^17 / 10^18 * etherFeePercent / 100 / etherFeePercent / 100 == (order[address(arg1)].field_0 * arg3) + 5 * 10^17 / 10^18
                require ((order[address(arg1)].field_0 * arg3) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 >= (order[address(arg1)].field_0 * arg3) + 5 * 10^17 / 10^18 * etherFeePercent / 100
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args address(arg1), msg.sender, order[address(arg1)].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Unable to transfer tokens from seller to buyer.'
                if ((order[address(arg1)].field_0 * arg3) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 >= etherFeeMin:
                    require ((order[address(arg1)].field_0 * arg3) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 <= (order[address(arg1)].field_0 * arg3) + 5 * 10^17 / 10^18
                    call arg1 with:
                       value ((order[address(arg1)].field_0 * arg3) + 5 * 10^17 / 10^18) - (((order[address(arg1)].field_0 * arg3) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if ((order[address(arg1)].field_0 * arg3) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 > 0:
                        call address(stor1.length) with:
                           value ((order[address(arg1)].field_0 * arg3) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    require etherFeeMin <= (order[address(arg1)].field_0 * arg3) + 5 * 10^17 / 10^18
                    call arg1 with:
                       value ((order[address(arg1)].field_0 * arg3) + 5 * 10^17 / 10^18) - etherFeeMin wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if etherFeeMin > 0:
                        call address(stor1.length) with:
                           value etherFeeMin wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
        lastSellPrice = arg3
        emit TokensPurchased(order[address(arg1)].field_0, arg3, msg.sender, arg1);
    else:
        require arg2 <= order[address(arg1)].field_0
        order[address(arg1)].field_0 -= arg2
        if order[address(arg1)].field_0 - arg2:
        else:
            order[address(arg1)].field_256 = 0
            order[address(arg1)].field_512 = 0
        if not arg3:
            if msg.value < 0:
                revert with 0, 'You did not send enough Ether to purchase the tokens.'
            if etherFeePercent / 100:
                require etherFeePercent / 100
                require not 0 / etherFeePercent / 100
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.0x23b872dd with:
                 gas gas_remaining wei
                args address(arg1), msg.sender, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Unable to transfer tokens from seller to buyer.'
            if 0 >= etherFeeMin:
                call arg1 with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                require etherFeeMin <= 0
                call arg1 with:
                   value -etherFeeMin wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if etherFeeMin > 0:
                    call address(stor1.length) with:
                       value etherFeeMin wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        else:
            require arg3
            require arg2 * arg3 / arg3 == arg2
            require (arg2 * arg3) + 5 * 10^17 >= arg2 * arg3
            if msg.value < (arg2 * arg3) + 5 * 10^17 / 10^18:
                revert with 0, 'You did not send enough Ether to purchase the tokens.'
            if not etherFeePercent / 100:
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args address(arg1), msg.sender, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Unable to transfer tokens from seller to buyer.'
                if 0 >= etherFeeMin:
                    require 0 <= (arg2 * arg3) + 5 * 10^17 / 10^18
                    call arg1 with:
                       value (arg2 * arg3) + 5 * 10^17 / 10^18 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    require etherFeeMin <= (arg2 * arg3) + 5 * 10^17 / 10^18
                    call arg1 with:
                       value ((arg2 * arg3) + 5 * 10^17 / 10^18) - etherFeeMin wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if etherFeeMin > 0:
                        call address(stor1.length) with:
                           value etherFeeMin wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                require etherFeePercent / 100
                require (arg2 * arg3) + 5 * 10^17 / 10^18 * etherFeePercent / 100 / etherFeePercent / 100 == (arg2 * arg3) + 5 * 10^17 / 10^18
                require ((arg2 * arg3) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 >= (arg2 * arg3) + 5 * 10^17 / 10^18 * etherFeePercent / 100
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args address(arg1), msg.sender, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Unable to transfer tokens from seller to buyer.'
                if ((arg2 * arg3) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 >= etherFeeMin:
                    require ((arg2 * arg3) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 <= (arg2 * arg3) + 5 * 10^17 / 10^18
                    call arg1 with:
                       value ((arg2 * arg3) + 5 * 10^17 / 10^18) - (((arg2 * arg3) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if ((arg2 * arg3) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 > 0:
                        call address(stor1.length) with:
                           value ((arg2 * arg3) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    require etherFeeMin <= (arg2 * arg3) + 5 * 10^17 / 10^18
                    call arg1 with:
                       value ((arg2 * arg3) + 5 * 10^17 / 10^18) - etherFeeMin wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if etherFeeMin > 0:
                        call address(stor1.length) with:
                           value etherFeeMin wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
        lastSellPrice = arg3
        emit TokensPurchased(arg2, arg3, msg.sender, arg1);
}

function redeemVoucherSingle(uint256 arg1, address arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the owner can call this function.'
    if stor9:
        if not stor10[address(msg.sender)]:
            revert with 0, 'Buyer and Seller must be approved to trade on this exchange.'
        if not stor10[address(arg3)]:
            revert with 0, 'Buyer and Seller must be approved to trade on this exchange.'
    if order[address(arg3)].field_256 != order[address(arg3)].field_256:
        revert with 0, 'Buy price does not match the listed sell price.'
    if block.timestamp >= order[address(arg3)].field_512:
        revert with 0, 'Sell order has expired.'
    if order[address(arg3)].field_256 < sellFloor:
        revert with 0, 'The bid is below the minimum allowed.'
    if sellCeiling:
        if order[address(arg3)].field_256 > sellCeiling:
            revert with 0, 'The bid is above the maximum allowed.'
    if order[address(arg3)].field_0 <= arg4:
        require order[address(arg3)].field_0 <= order[address(arg3)].field_0
        order[address(arg3)].field_0 = 0
        order[address(arg3)].field_256 = 0
        order[address(arg3)].field_512 = 0
        if not order[address(arg3)].field_256:
            if msg.value < 0:
                revert with 0, 'You did not send enough Ether to purchase the tokens.'
            if etherFeePercent / 100:
                require etherFeePercent / 100
                require not 0 / etherFeePercent / 100
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.0x23b872dd with:
                 gas gas_remaining wei
                args address(arg3), msg.sender, order[address(arg3)].field_0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Unable to transfer tokens from seller to buyer.'
            if 0 >= etherFeeMin:
                call arg3 with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                require etherFeeMin <= 0
                call arg3 with:
                   value -etherFeeMin wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if etherFeeMin > 0:
                    call address(stor1.length) with:
                       value etherFeeMin wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        else:
            require order[address(arg3)].field_256
            require order[address(arg3)].field_0 * order[address(arg3)].field_256 / order[address(arg3)].field_256 == order[address(arg3)].field_0
            require (order[address(arg3)].field_0 * order[address(arg3)].field_256) + 5 * 10^17 >= order[address(arg3)].field_0 * order[address(arg3)].field_256
            if msg.value < (order[address(arg3)].field_0 * order[address(arg3)].field_256) + 5 * 10^17 / 10^18:
                revert with 0, 'You did not send enough Ether to purchase the tokens.'
            if not etherFeePercent / 100:
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args address(arg3), msg.sender, order[address(arg3)].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Unable to transfer tokens from seller to buyer.'
                if 0 >= etherFeeMin:
                    require 0 <= (order[address(arg3)].field_0 * order[address(arg3)].field_256) + 5 * 10^17 / 10^18
                    call arg3 with:
                       value (order[address(arg3)].field_0 * order[address(arg3)].field_256) + 5 * 10^17 / 10^18 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    require etherFeeMin <= (order[address(arg3)].field_0 * order[address(arg3)].field_256) + 5 * 10^17 / 10^18
                    call arg3 with:
                       value ((order[address(arg3)].field_0 * order[address(arg3)].field_256) + 5 * 10^17 / 10^18) - etherFeeMin wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if etherFeeMin > 0:
                        call address(stor1.length) with:
                           value etherFeeMin wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                require etherFeePercent / 100
                require (order[address(arg3)].field_0 * order[address(arg3)].field_256) + 5 * 10^17 / 10^18 * etherFeePercent / 100 / etherFeePercent / 100 == (order[address(arg3)].field_0 * order[address(arg3)].field_256) + 5 * 10^17 / 10^18
                require ((order[address(arg3)].field_0 * order[address(arg3)].field_256) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 >= (order[address(arg3)].field_0 * order[address(arg3)].field_256) + 5 * 10^17 / 10^18 * etherFeePercent / 100
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args address(arg3), msg.sender, order[address(arg3)].field_0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Unable to transfer tokens from seller to buyer.'
                if ((order[address(arg3)].field_0 * order[address(arg3)].field_256) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 >= etherFeeMin:
                    require ((order[address(arg3)].field_0 * order[address(arg3)].field_256) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 <= (order[address(arg3)].field_0 * order[address(arg3)].field_256) + 5 * 10^17 / 10^18
                    call arg3 with:
                       value ((order[address(arg3)].field_0 * order[address(arg3)].field_256) + 5 * 10^17 / 10^18) - (((order[address(arg3)].field_0 * order[address(arg3)].field_256) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if ((order[address(arg3)].field_0 * order[address(arg3)].field_256) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 > 0:
                        call address(stor1.length) with:
                           value ((order[address(arg3)].field_0 * order[address(arg3)].field_256) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    require etherFeeMin <= (order[address(arg3)].field_0 * order[address(arg3)].field_256) + 5 * 10^17 / 10^18
                    call arg3 with:
                       value ((order[address(arg3)].field_0 * order[address(arg3)].field_256) + 5 * 10^17 / 10^18) - etherFeeMin wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if etherFeeMin > 0:
                        call address(stor1.length) with:
                           value etherFeeMin wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
        lastSellPrice = order[address(arg3)].field_256
        emit TokensPurchased(order[address(arg3)].field_0, order[address(arg3)].field_256, msg.sender, arg3);
    else:
        require arg4 <= order[address(arg3)].field_0
        order[address(arg3)].field_0 -= arg4
        if order[address(arg3)].field_0 - arg4:
        else:
            order[address(arg3)].field_256 = 0
            order[address(arg3)].field_512 = 0
        if not order[address(arg3)].field_256:
            if msg.value < 0:
                revert with 0, 'You did not send enough Ether to purchase the tokens.'
            if etherFeePercent / 100:
                require etherFeePercent / 100
                require not 0 / etherFeePercent / 100
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.0x23b872dd with:
                 gas gas_remaining wei
                args address(arg3), msg.sender, arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Unable to transfer tokens from seller to buyer.'
            if 0 >= etherFeeMin:
                call arg3 with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                require etherFeeMin <= 0
                call arg3 with:
                   value -etherFeeMin wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if etherFeeMin > 0:
                    call address(stor1.length) with:
                       value etherFeeMin wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        else:
            require order[address(arg3)].field_256
            require arg4 * order[address(arg3)].field_256 / order[address(arg3)].field_256 == arg4
            require (arg4 * order[address(arg3)].field_256) + 5 * 10^17 >= arg4 * order[address(arg3)].field_256
            if msg.value < (arg4 * order[address(arg3)].field_256) + 5 * 10^17 / 10^18:
                revert with 0, 'You did not send enough Ether to purchase the tokens.'
            if not etherFeePercent / 100:
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args address(arg3), msg.sender, arg4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Unable to transfer tokens from seller to buyer.'
                if 0 >= etherFeeMin:
                    require 0 <= (arg4 * order[address(arg3)].field_256) + 5 * 10^17 / 10^18
                    call arg3 with:
                       value (arg4 * order[address(arg3)].field_256) + 5 * 10^17 / 10^18 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    require etherFeeMin <= (arg4 * order[address(arg3)].field_256) + 5 * 10^17 / 10^18
                    call arg3 with:
                       value ((arg4 * order[address(arg3)].field_256) + 5 * 10^17 / 10^18) - etherFeeMin wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if etherFeeMin > 0:
                        call address(stor1.length) with:
                           value etherFeeMin wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                require etherFeePercent / 100
                require (arg4 * order[address(arg3)].field_256) + 5 * 10^17 / 10^18 * etherFeePercent / 100 / etherFeePercent / 100 == (arg4 * order[address(arg3)].field_256) + 5 * 10^17 / 10^18
                require ((arg4 * order[address(arg3)].field_256) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 >= (arg4 * order[address(arg3)].field_256) + 5 * 10^17 / 10^18 * etherFeePercent / 100
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args address(arg3), msg.sender, arg4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Unable to transfer tokens from seller to buyer.'
                if ((arg4 * order[address(arg3)].field_256) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 >= etherFeeMin:
                    require ((arg4 * order[address(arg3)].field_256) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 <= (arg4 * order[address(arg3)].field_256) + 5 * 10^17 / 10^18
                    call arg3 with:
                       value ((arg4 * order[address(arg3)].field_256) + 5 * 10^17 / 10^18) - (((arg4 * order[address(arg3)].field_256) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if ((arg4 * order[address(arg3)].field_256) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 > 0:
                        call address(stor1.length) with:
                           value ((arg4 * order[address(arg3)].field_256) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    require etherFeeMin <= (arg4 * order[address(arg3)].field_256) + 5 * 10^17 / 10^18
                    call arg3 with:
                       value ((arg4 * order[address(arg3)].field_256) + 5 * 10^17 / 10^18) - etherFeeMin wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if etherFeeMin > 0:
                        call address(stor1.length) with:
                           value etherFeeMin wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
        lastSellPrice = order[address(arg3)].field_256
        emit TokensPurchased(arg4, order[address(arg3)].field_256, msg.sender, arg3);
    emit VoucherRedeemed(arg1, address(arg2), address(arg3), arg4);
}

function redeemVoucher(uint256 arg1, address arg2, address[] arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[64] = (32 * arg3.length) + 128
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = 0
    if stor0 != msg.sender:
        revert with 0, 'Only the owner can call this function.'
    if not stor9:
        idx = 0
        s = 0
        while idx < arg3.length:
            _7604 = mem[64]
            mem[64] = mem[64] + 96
            mem[_7604] = 0
            mem[_7604 + 32] = 0
            mem[_7604 + 64] = 0
            require idx < mem[96]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 2
            _7615 = sha3(mem[(32 * idx) + 140 len 20], 2)
            _7616 = mem[64]
            mem[64] = mem[64] + 96
            mem[_7616] = order[mem[(32 * idx) + 140 len 20]].field_0
            mem[_7616 + 32] = uint256(stor1[_7615])
            mem[_7616 + 64] = order[_7615].field_0
            require idx < mem[96]
            if idx == mem[96] - 1:
                _7636 = mem[(32 * idx) + 128]
                if not stor9:
                    _7648 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_7648] = 0
                    mem[_7648 + 32] = 0
                    mem[_7648 + 64] = 0
                    mem[0] = address(_7636)
                    mem[32] = 2
                    _7655 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_7655 + 32] = order[address(_7636)].field_256
                    mem[_7655 + 64] = order[address(_7636)].field_512
                    if order[address(_7636)].field_256 != uint256(stor1[_7615]):
                        revert with 0, 'Buy price does not match the listed sell price.'
                    if block.timestamp >= order[address(_7636)].field_512:
                        revert with 0, 'Sell order has expired.'
                    if uint256(stor1[_7615]) < sellFloor:
                        revert with 0, 'The bid is below the minimum allowed.'
                    if sellCeiling:
                        if uint256(stor1[_7615]) > sellCeiling:
                            revert with 0, 'The bid is above the maximum allowed.'
                    if order[address(_7636)].field_0 <= arg4:
                        require order[address(_7636)].field_0 <= order[address(_7636)].field_0
                        mem[_7655] = 0
                        mem[_7655 + 32] = 0
                        mem[_7655 + 64] = 0
                        mem[0] = address(_7636)
                        mem[32] = 2
                        order[address(_7636)].field_0 = 0
                        order[address(_7636)].field_256 = 0
                        order[address(_7636)].field_512 = 0
                        if not uint256(stor1[_7615]):
                            if msg.value < 0:
                                revert with 0, 'You did not send enough Ether to purchase the tokens.'
                            if etherFeePercent / 100:
                                require etherFeePercent / 100
                                require not 0 / etherFeePercent / 100
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = order[address(_7636)].field_0
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(_7636), msg.sender, order[address(_7636)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'Unable to transfer tokens from seller to buyer.'
                            if 0 >= etherFeeMin:
                                call address(_7636) with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require etherFeeMin <= 0
                                call address(_7636) with:
                                   value -etherFeeMin wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if etherFeeMin > 0:
                                    call address(stor1.length) with:
                                       value etherFeeMin wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require uint256(stor1[_7615])
                            require order[address(_7636)].field_0 * uint256(stor1[_7615]) / uint256(stor1[_7615]) == order[address(_7636)].field_0
                            require (order[address(_7636)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 >= order[address(_7636)].field_0 * uint256(stor1[_7615])
                            if msg.value < (order[address(_7636)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18:
                                revert with 0, 'You did not send enough Ether to purchase the tokens.'
                            if not etherFeePercent / 100:
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = order[address(_7636)].field_0
                                require ext_code.size(tokenContractAddress)
                                call tokenContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(_7636), msg.sender, order[address(_7636)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Unable to transfer tokens from seller to buyer.'
                                if 0 >= etherFeeMin:
                                    require 0 <= (order[address(_7636)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18
                                    call address(_7636) with:
                                       value (order[address(_7636)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require etherFeeMin <= (order[address(_7636)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18
                                    call address(_7636) with:
                                       value ((order[address(_7636)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18) - etherFeeMin wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if etherFeeMin > 0:
                                        call address(stor1.length) with:
                                           value etherFeeMin wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require etherFeePercent / 100
                                require (order[address(_7636)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100 / etherFeePercent / 100 == (order[address(_7636)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18
                                require ((order[address(_7636)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 >= (order[address(_7636)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = order[address(_7636)].field_0
                                require ext_code.size(tokenContractAddress)
                                call tokenContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(_7636), msg.sender, order[address(_7636)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Unable to transfer tokens from seller to buyer.'
                                if ((order[address(_7636)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 >= etherFeeMin:
                                    require ((order[address(_7636)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 <= (order[address(_7636)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18
                                    call address(_7636) with:
                                       value ((order[address(_7636)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18) - (((order[address(_7636)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18) wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ((order[address(_7636)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 > 0:
                                        call address(stor1.length) with:
                                           value ((order[address(_7636)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require etherFeeMin <= (order[address(_7636)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18
                                    call address(_7636) with:
                                       value ((order[address(_7636)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18) - etherFeeMin wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if etherFeeMin > 0:
                                        call address(stor1.length) with:
                                           value etherFeeMin wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                        lastSellPrice = uint256(stor1[_7615])
                        mem[mem[64]] = order[address(_7636)].field_0
                        mem[mem[64] + 32] = uint256(stor1[_7615])
                        emit TokensPurchased(order[address(_7636)].field_0, uint256(stor1[_7615]), msg.sender, address(_7636));
                    else:
                        require arg4 <= order[address(_7636)].field_0
                        mem[_7655] = order[address(_7636)].field_0 - arg4
                        if order[address(_7636)].field_0 - arg4:
                            mem[0] = address(_7636)
                            mem[32] = 2
                            order[address(_7636)].field_0 -= arg4
                        else:
                            mem[_7655 + 32] = 0
                            mem[_7655 + 64] = 0
                            mem[0] = address(_7636)
                            mem[32] = 2
                            order[address(_7636)].field_0 -= arg4
                            order[address(_7636)].field_256 = 0
                            order[address(_7636)].field_512 = 0
                        if not uint256(stor1[_7615]):
                            if msg.value < 0:
                                revert with 0, 'You did not send enough Ether to purchase the tokens.'
                            if etherFeePercent / 100:
                                require etherFeePercent / 100
                                require not 0 / etherFeePercent / 100
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = arg4
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(_7636), msg.sender, arg4
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'Unable to transfer tokens from seller to buyer.'
                            if 0 >= etherFeeMin:
                                call address(_7636) with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require etherFeeMin <= 0
                                call address(_7636) with:
                                   value -etherFeeMin wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if etherFeeMin > 0:
                                    call address(stor1.length) with:
                                       value etherFeeMin wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require uint256(stor1[_7615])
                            require arg4 * uint256(stor1[_7615]) / uint256(stor1[_7615]) == arg4
                            require (arg4 * uint256(stor1[_7615])) + 5 * 10^17 >= arg4 * uint256(stor1[_7615])
                            if msg.value < (arg4 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18:
                                revert with 0, 'You did not send enough Ether to purchase the tokens.'
                            if not etherFeePercent / 100:
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = arg4
                                require ext_code.size(tokenContractAddress)
                                call tokenContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(_7636), msg.sender, arg4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Unable to transfer tokens from seller to buyer.'
                                if 0 >= etherFeeMin:
                                    require 0 <= (arg4 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18
                                    call address(_7636) with:
                                       value (arg4 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require etherFeeMin <= (arg4 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18
                                    call address(_7636) with:
                                       value ((arg4 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18) - etherFeeMin wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if etherFeeMin > 0:
                                        call address(stor1.length) with:
                                           value etherFeeMin wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require etherFeePercent / 100
                                require (arg4 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100 / etherFeePercent / 100 == (arg4 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18
                                require ((arg4 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 >= (arg4 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = arg4
                                require ext_code.size(tokenContractAddress)
                                call tokenContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(_7636), msg.sender, arg4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Unable to transfer tokens from seller to buyer.'
                                if ((arg4 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 >= etherFeeMin:
                                    require ((arg4 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 <= (arg4 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18
                                    call address(_7636) with:
                                       value ((arg4 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18) - (((arg4 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18) wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ((arg4 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 > 0:
                                        call address(stor1.length) with:
                                           value ((arg4 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require etherFeeMin <= (arg4 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18
                                    call address(_7636) with:
                                       value ((arg4 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18) - etherFeeMin wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if etherFeeMin > 0:
                                        call address(stor1.length) with:
                                           value etherFeeMin wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                        lastSellPrice = uint256(stor1[_7615])
                        mem[mem[64]] = arg4
                        mem[mem[64] + 32] = uint256(stor1[_7615])
                        emit TokensPurchased(arg4, uint256(stor1[_7615]), msg.sender, address(_7636));
                else:
                    if not stor10[address(msg.sender)]:
                        revert with 0, 'Buyer and Seller must be approved to trade on this exchange.'
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 10
                    if not stor10[address(mem[(32 * idx) + 128])]:
                        revert with 0, 'Buyer and Seller must be approved to trade on this exchange.'
                    _7724 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_7724] = 0
                    mem[_7724 + 32] = 0
                    mem[_7724 + 64] = 0
                    mem[0] = address(_7636)
                    mem[32] = 2
                    _7745 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_7745 + 32] = order[address(_7636)].field_256
                    mem[_7745 + 64] = order[address(_7636)].field_512
                    if order[address(_7636)].field_256 != uint256(stor1[_7615]):
                        revert with 0, 'Buy price does not match the listed sell price.'
                    if block.timestamp >= order[address(_7636)].field_512:
                        revert with 0, 'Sell order has expired.'
                    if uint256(stor1[_7615]) < sellFloor:
                        revert with 0, 'The bid is below the minimum allowed.'
                    if sellCeiling:
                        if uint256(stor1[_7615]) > sellCeiling:
                            revert with 0, 'The bid is above the maximum allowed.'
                    if order[address(_7636)].field_0 <= arg4:
                        require order[address(_7636)].field_0 <= order[address(_7636)].field_0
                        mem[_7745] = 0
                        mem[_7745 + 32] = 0
                        mem[_7745 + 64] = 0
                        mem[0] = address(_7636)
                        mem[32] = 2
                        order[address(_7636)].field_0 = 0
                        order[address(_7636)].field_256 = 0
                        order[address(_7636)].field_512 = 0
                        if not uint256(stor1[_7615]):
                            if msg.value < 0:
                                revert with 0, 'You did not send enough Ether to purchase the tokens.'
                            if etherFeePercent / 100:
                                require etherFeePercent / 100
                                require not 0 / etherFeePercent / 100
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = order[address(_7636)].field_0
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(_7636), msg.sender, order[address(_7636)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'Unable to transfer tokens from seller to buyer.'
                            if 0 >= etherFeeMin:
                                call address(_7636) with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require etherFeeMin <= 0
                                call address(_7636) with:
                                   value -etherFeeMin wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if etherFeeMin > 0:
                                    call address(stor1.length) with:
                                       value etherFeeMin wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require uint256(stor1[_7615])
                            require order[address(_7636)].field_0 * uint256(stor1[_7615]) / uint256(stor1[_7615]) == order[address(_7636)].field_0
                            require (order[address(_7636)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 >= order[address(_7636)].field_0 * uint256(stor1[_7615])
                            if msg.value < (order[address(_7636)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18:
                                revert with 0, 'You did not send enough Ether to purchase the tokens.'
                            if not etherFeePercent / 100:
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = order[address(_7636)].field_0
                                require ext_code.size(tokenContractAddress)
                                call tokenContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(_7636), msg.sender, order[address(_7636)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Unable to transfer tokens from seller to buyer.'
                                if 0 >= etherFeeMin:
                                    require 0 <= (order[address(_7636)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18
                                    call address(_7636) with:
                                       value (order[address(_7636)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require etherFeeMin <= (order[address(_7636)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18
                                    call address(_7636) with:
                                       value ((order[address(_7636)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18) - etherFeeMin wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if etherFeeMin > 0:
                                        call address(stor1.length) with:
                                           value etherFeeMin wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require etherFeePercent / 100
                                require (order[address(_7636)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100 / etherFeePercent / 100 == (order[address(_7636)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18
                                require ((order[address(_7636)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 >= (order[address(_7636)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = order[address(_7636)].field_0
                                require ext_code.size(tokenContractAddress)
                                call tokenContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(_7636), msg.sender, order[address(_7636)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Unable to transfer tokens from seller to buyer.'
                                if ((order[address(_7636)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 >= etherFeeMin:
                                    require ((order[address(_7636)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 <= (order[address(_7636)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18
                                    call address(_7636) with:
                                       value ((order[address(_7636)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18) - (((order[address(_7636)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18) wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ((order[address(_7636)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 > 0:
                                        call address(stor1.length) with:
                                           value ((order[address(_7636)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require etherFeeMin <= (order[address(_7636)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18
                                    call address(_7636) with:
                                       value ((order[address(_7636)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18) - etherFeeMin wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if etherFeeMin > 0:
                                        call address(stor1.length) with:
                                           value etherFeeMin wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                        lastSellPrice = uint256(stor1[_7615])
                        mem[mem[64]] = order[address(_7636)].field_0
                        mem[mem[64] + 32] = uint256(stor1[_7615])
                        emit TokensPurchased(order[address(_7636)].field_0, uint256(stor1[_7615]), msg.sender, address(_7636));
                    else:
                        require arg4 <= order[address(_7636)].field_0
                        mem[_7745] = order[address(_7636)].field_0 - arg4
                        if order[address(_7636)].field_0 - arg4:
                            mem[0] = address(_7636)
                            mem[32] = 2
                            order[address(_7636)].field_0 -= arg4
                        else:
                            mem[_7745 + 32] = 0
                            mem[_7745 + 64] = 0
                            mem[0] = address(_7636)
                            mem[32] = 2
                            order[address(_7636)].field_0 -= arg4
                            order[address(_7636)].field_256 = 0
                            order[address(_7636)].field_512 = 0
                        if not uint256(stor1[_7615]):
                            if msg.value < 0:
                                revert with 0, 'You did not send enough Ether to purchase the tokens.'
                            if etherFeePercent / 100:
                                require etherFeePercent / 100
                                require not 0 / etherFeePercent / 100
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = arg4
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(_7636), msg.sender, arg4
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'Unable to transfer tokens from seller to buyer.'
                            if 0 >= etherFeeMin:
                                call address(_7636) with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require etherFeeMin <= 0
                                call address(_7636) with:
                                   value -etherFeeMin wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if etherFeeMin > 0:
                                    call address(stor1.length) with:
                                       value etherFeeMin wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require uint256(stor1[_7615])
                            require arg4 * uint256(stor1[_7615]) / uint256(stor1[_7615]) == arg4
                            require (arg4 * uint256(stor1[_7615])) + 5 * 10^17 >= arg4 * uint256(stor1[_7615])
                            if msg.value < (arg4 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18:
                                revert with 0, 'You did not send enough Ether to purchase the tokens.'
                            if not etherFeePercent / 100:
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = arg4
                                require ext_code.size(tokenContractAddress)
                                call tokenContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(_7636), msg.sender, arg4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Unable to transfer tokens from seller to buyer.'
                                if 0 >= etherFeeMin:
                                    require 0 <= (arg4 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18
                                    call address(_7636) with:
                                       value (arg4 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require etherFeeMin <= (arg4 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18
                                    call address(_7636) with:
                                       value ((arg4 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18) - etherFeeMin wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if etherFeeMin > 0:
                                        call address(stor1.length) with:
                                           value etherFeeMin wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require etherFeePercent / 100
                                require (arg4 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100 / etherFeePercent / 100 == (arg4 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18
                                require ((arg4 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 >= (arg4 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = arg4
                                require ext_code.size(tokenContractAddress)
                                call tokenContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(_7636), msg.sender, arg4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Unable to transfer tokens from seller to buyer.'
                                if ((arg4 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 >= etherFeeMin:
                                    require ((arg4 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 <= (arg4 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18
                                    call address(_7636) with:
                                       value ((arg4 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18) - (((arg4 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18) wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ((arg4 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 > 0:
                                        call address(stor1.length) with:
                                           value ((arg4 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require etherFeeMin <= (arg4 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18
                                    call address(_7636) with:
                                       value ((arg4 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18) - etherFeeMin wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if etherFeeMin > 0:
                                        call address(stor1.length) with:
                                           value etherFeeMin wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                        lastSellPrice = uint256(stor1[_7615])
                        mem[mem[64]] = arg4
                        mem[mem[64] + 32] = uint256(stor1[_7615])
                        emit TokensPurchased(arg4, uint256(stor1[_7615]), msg.sender, address(_7636));
                idx = idx + 1
                s = s + arg4
                continue 
            _7633 = mem[(32 * idx) + 128]
            _7634 = mem[_7616]
            if not stor9:
                _7647 = mem[64]
                mem[64] = mem[64] + 96
                mem[_7647] = 0
                mem[_7647 + 32] = 0
                mem[_7647 + 64] = 0
                mem[0] = address(_7633)
                mem[32] = 2
                _7652 = mem[64]
                mem[64] = mem[64] + 96
                mem[_7652 + 32] = order[address(_7633)].field_256
                mem[_7652 + 64] = order[address(_7633)].field_512
                if order[address(_7633)].field_256 != uint256(stor1[_7615]):
                    revert with 0, 'Buy price does not match the listed sell price.'
                if block.timestamp >= order[address(_7633)].field_512:
                    revert with 0, 'Sell order has expired.'
                if uint256(stor1[_7615]) < sellFloor:
                    revert with 0, 'The bid is below the minimum allowed.'
                if sellCeiling:
                    if uint256(stor1[_7615]) > sellCeiling:
                        revert with 0, 'The bid is above the maximum allowed.'
                if order[address(_7633)].field_0 <= _7634:
                    require order[address(_7633)].field_0 <= order[address(_7633)].field_0
                    mem[_7652] = 0
                    mem[_7652 + 32] = 0
                    mem[_7652 + 64] = 0
                    mem[0] = address(_7633)
                    mem[32] = 2
                    order[address(_7633)].field_0 = 0
                    order[address(_7633)].field_256 = 0
                    order[address(_7633)].field_512 = 0
                    if not uint256(stor1[_7615]):
                        if msg.value < 0:
                            revert with 0, 'You did not send enough Ether to purchase the tokens.'
                        if etherFeePercent / 100:
                            require etherFeePercent / 100
                            require not 0 / etherFeePercent / 100
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = order[address(_7633)].field_0
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args address(_7633), msg.sender, order[address(_7633)].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'Unable to transfer tokens from seller to buyer.'
                        if 0 >= etherFeeMin:
                            call address(_7633) with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require etherFeeMin <= 0
                            call address(_7633) with:
                               value -etherFeeMin wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if etherFeeMin > 0:
                                call address(stor1.length) with:
                                   value etherFeeMin wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require uint256(stor1[_7615])
                        require order[address(_7633)].field_0 * uint256(stor1[_7615]) / uint256(stor1[_7615]) == order[address(_7633)].field_0
                        require (order[address(_7633)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 >= order[address(_7633)].field_0 * uint256(stor1[_7615])
                        if msg.value < (order[address(_7633)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18:
                            revert with 0, 'You did not send enough Ether to purchase the tokens.'
                        if not etherFeePercent / 100:
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = order[address(_7633)].field_0
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(_7633), msg.sender, order[address(_7633)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'Unable to transfer tokens from seller to buyer.'
                            if 0 >= etherFeeMin:
                                require 0 <= (order[address(_7633)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18
                                call address(_7633) with:
                                   value (order[address(_7633)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require etherFeeMin <= (order[address(_7633)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18
                                call address(_7633) with:
                                   value ((order[address(_7633)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18) - etherFeeMin wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if etherFeeMin > 0:
                                    call address(stor1.length) with:
                                       value etherFeeMin wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require etherFeePercent / 100
                            require (order[address(_7633)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100 / etherFeePercent / 100 == (order[address(_7633)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18
                            require ((order[address(_7633)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 >= (order[address(_7633)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = order[address(_7633)].field_0
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(_7633), msg.sender, order[address(_7633)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'Unable to transfer tokens from seller to buyer.'
                            if ((order[address(_7633)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 >= etherFeeMin:
                                require ((order[address(_7633)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 <= (order[address(_7633)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18
                                call address(_7633) with:
                                   value ((order[address(_7633)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18) - (((order[address(_7633)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ((order[address(_7633)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 > 0:
                                    call address(stor1.length) with:
                                       value ((order[address(_7633)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require etherFeeMin <= (order[address(_7633)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18
                                call address(_7633) with:
                                   value ((order[address(_7633)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18) - etherFeeMin wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if etherFeeMin > 0:
                                    call address(stor1.length) with:
                                       value etherFeeMin wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                    lastSellPrice = uint256(stor1[_7615])
                    mem[mem[64]] = order[address(_7633)].field_0
                    mem[mem[64] + 32] = uint256(stor1[_7615])
                    emit TokensPurchased(order[address(_7633)].field_0, uint256(stor1[_7615]), msg.sender, address(_7633));
                else:
                    require _7634 <= order[address(_7633)].field_0
                    mem[_7652] = order[address(_7633)].field_0 - _7634
                    if order[address(_7633)].field_0 - _7634:
                        mem[0] = address(_7633)
                        mem[32] = 2
                        order[address(_7633)].field_0 -= _7634
                    else:
                        mem[_7652 + 32] = 0
                        mem[_7652 + 64] = 0
                        mem[0] = address(_7633)
                        mem[32] = 2
                        order[address(_7633)].field_0 -= _7634
                        order[address(_7633)].field_256 = 0
                        order[address(_7633)].field_512 = 0
                    if not uint256(stor1[_7615]):
                        if msg.value < 0:
                            revert with 0, 'You did not send enough Ether to purchase the tokens.'
                        if etherFeePercent / 100:
                            require etherFeePercent / 100
                            require not 0 / etherFeePercent / 100
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _7634
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args address(_7633), msg.sender, _7634
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'Unable to transfer tokens from seller to buyer.'
                        if 0 >= etherFeeMin:
                            call address(_7633) with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require etherFeeMin <= 0
                            call address(_7633) with:
                               value -etherFeeMin wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if etherFeeMin > 0:
                                call address(stor1.length) with:
                                   value etherFeeMin wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require uint256(stor1[_7615])
                        require _7634 * uint256(stor1[_7615]) / uint256(stor1[_7615]) == _7634
                        require (_7634 * uint256(stor1[_7615])) + 5 * 10^17 >= _7634 * uint256(stor1[_7615])
                        if msg.value < (_7634 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18:
                            revert with 0, 'You did not send enough Ether to purchase the tokens.'
                        if not etherFeePercent / 100:
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _7634
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(_7633), msg.sender, _7634
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'Unable to transfer tokens from seller to buyer.'
                            if 0 >= etherFeeMin:
                                require 0 <= (_7634 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18
                                call address(_7633) with:
                                   value (_7634 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require etherFeeMin <= (_7634 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18
                                call address(_7633) with:
                                   value ((_7634 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18) - etherFeeMin wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if etherFeeMin > 0:
                                    call address(stor1.length) with:
                                       value etherFeeMin wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require etherFeePercent / 100
                            require (_7634 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100 / etherFeePercent / 100 == (_7634 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18
                            require ((_7634 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 >= (_7634 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _7634
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(_7633), msg.sender, _7634
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'Unable to transfer tokens from seller to buyer.'
                            if ((_7634 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 >= etherFeeMin:
                                require ((_7634 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 <= (_7634 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18
                                call address(_7633) with:
                                   value ((_7634 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18) - (((_7634 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ((_7634 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 > 0:
                                    call address(stor1.length) with:
                                       value ((_7634 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require etherFeeMin <= (_7634 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18
                                call address(_7633) with:
                                   value ((_7634 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18) - etherFeeMin wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if etherFeeMin > 0:
                                    call address(stor1.length) with:
                                       value etherFeeMin wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                    lastSellPrice = uint256(stor1[_7615])
                    mem[mem[64]] = _7634
                    mem[mem[64] + 32] = uint256(stor1[_7615])
                    emit TokensPurchased(_7634, uint256(stor1[_7615]), msg.sender, address(_7633));
            else:
                if not stor10[address(msg.sender)]:
                    revert with 0, 'Buyer and Seller must be approved to trade on this exchange.'
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 10
                if not stor10[address(mem[(32 * idx) + 128])]:
                    revert with 0, 'Buyer and Seller must be approved to trade on this exchange.'
                _7719 = mem[64]
                mem[64] = mem[64] + 96
                mem[_7719] = 0
                mem[_7719 + 32] = 0
                mem[_7719 + 64] = 0
                mem[0] = address(_7633)
                mem[32] = 2
                _7739 = mem[64]
                mem[64] = mem[64] + 96
                mem[_7739 + 32] = order[address(_7633)].field_256
                mem[_7739 + 64] = order[address(_7633)].field_512
                if order[address(_7633)].field_256 != uint256(stor1[_7615]):
                    revert with 0, 'Buy price does not match the listed sell price.'
                if block.timestamp >= order[address(_7633)].field_512:
                    revert with 0, 'Sell order has expired.'
                if uint256(stor1[_7615]) < sellFloor:
                    revert with 0, 'The bid is below the minimum allowed.'
                if sellCeiling:
                    if uint256(stor1[_7615]) > sellCeiling:
                        revert with 0, 'The bid is above the maximum allowed.'
                if order[address(_7633)].field_0 <= _7634:
                    require order[address(_7633)].field_0 <= order[address(_7633)].field_0
                    mem[_7739] = 0
                    mem[_7739 + 32] = 0
                    mem[_7739 + 64] = 0
                    mem[0] = address(_7633)
                    mem[32] = 2
                    order[address(_7633)].field_0 = 0
                    order[address(_7633)].field_256 = 0
                    order[address(_7633)].field_512 = 0
                    if not uint256(stor1[_7615]):
                        if msg.value < 0:
                            revert with 0, 'You did not send enough Ether to purchase the tokens.'
                        if etherFeePercent / 100:
                            require etherFeePercent / 100
                            require not 0 / etherFeePercent / 100
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = order[address(_7633)].field_0
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args address(_7633), msg.sender, order[address(_7633)].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'Unable to transfer tokens from seller to buyer.'
                        if 0 >= etherFeeMin:
                            call address(_7633) with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require etherFeeMin <= 0
                            call address(_7633) with:
                               value -etherFeeMin wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if etherFeeMin > 0:
                                call address(stor1.length) with:
                                   value etherFeeMin wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require uint256(stor1[_7615])
                        require order[address(_7633)].field_0 * uint256(stor1[_7615]) / uint256(stor1[_7615]) == order[address(_7633)].field_0
                        require (order[address(_7633)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 >= order[address(_7633)].field_0 * uint256(stor1[_7615])
                        if msg.value < (order[address(_7633)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18:
                            revert with 0, 'You did not send enough Ether to purchase the tokens.'
                        if not etherFeePercent / 100:
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = order[address(_7633)].field_0
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(_7633), msg.sender, order[address(_7633)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'Unable to transfer tokens from seller to buyer.'
                            if 0 >= etherFeeMin:
                                require 0 <= (order[address(_7633)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18
                                call address(_7633) with:
                                   value (order[address(_7633)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require etherFeeMin <= (order[address(_7633)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18
                                call address(_7633) with:
                                   value ((order[address(_7633)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18) - etherFeeMin wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if etherFeeMin > 0:
                                    call address(stor1.length) with:
                                       value etherFeeMin wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require etherFeePercent / 100
                            require (order[address(_7633)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100 / etherFeePercent / 100 == (order[address(_7633)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18
                            require ((order[address(_7633)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 >= (order[address(_7633)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = order[address(_7633)].field_0
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(_7633), msg.sender, order[address(_7633)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'Unable to transfer tokens from seller to buyer.'
                            if ((order[address(_7633)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 >= etherFeeMin:
                                require ((order[address(_7633)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 <= (order[address(_7633)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18
                                call address(_7633) with:
                                   value ((order[address(_7633)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18) - (((order[address(_7633)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ((order[address(_7633)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 > 0:
                                    call address(stor1.length) with:
                                       value ((order[address(_7633)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require etherFeeMin <= (order[address(_7633)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18
                                call address(_7633) with:
                                   value ((order[address(_7633)].field_0 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18) - etherFeeMin wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if etherFeeMin > 0:
                                    call address(stor1.length) with:
                                       value etherFeeMin wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                    lastSellPrice = uint256(stor1[_7615])
                    mem[mem[64]] = order[address(_7633)].field_0
                    mem[mem[64] + 32] = uint256(stor1[_7615])
                    emit TokensPurchased(order[address(_7633)].field_0, uint256(stor1[_7615]), msg.sender, address(_7633));
                else:
                    require _7634 <= order[address(_7633)].field_0
                    mem[_7739] = order[address(_7633)].field_0 - _7634
                    if order[address(_7633)].field_0 - _7634:
                        mem[0] = address(_7633)
                        mem[32] = 2
                        order[address(_7633)].field_0 -= _7634
                    else:
                        mem[_7739 + 32] = 0
                        mem[_7739 + 64] = 0
                        mem[0] = address(_7633)
                        mem[32] = 2
                        order[address(_7633)].field_0 -= _7634
                        order[address(_7633)].field_256 = 0
                        order[address(_7633)].field_512 = 0
                    if not uint256(stor1[_7615]):
                        if msg.value < 0:
                            revert with 0, 'You did not send enough Ether to purchase the tokens.'
                        if etherFeePercent / 100:
                            require etherFeePercent / 100
                            require not 0 / etherFeePercent / 100
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _7634
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args address(_7633), msg.sender, _7634
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'Unable to transfer tokens from seller to buyer.'
                        if 0 >= etherFeeMin:
                            call address(_7633) with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require etherFeeMin <= 0
                            call address(_7633) with:
                               value -etherFeeMin wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if etherFeeMin > 0:
                                call address(stor1.length) with:
                                   value etherFeeMin wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require uint256(stor1[_7615])
                        require _7634 * uint256(stor1[_7615]) / uint256(stor1[_7615]) == _7634
                        require (_7634 * uint256(stor1[_7615])) + 5 * 10^17 >= _7634 * uint256(stor1[_7615])
                        if msg.value < (_7634 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18:
                            revert with 0, 'You did not send enough Ether to purchase the tokens.'
                        if not etherFeePercent / 100:
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _7634
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(_7633), msg.sender, _7634
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'Unable to transfer tokens from seller to buyer.'
                            if 0 >= etherFeeMin:
                                require 0 <= (_7634 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18
                                call address(_7633) with:
                                   value (_7634 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require etherFeeMin <= (_7634 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18
                                call address(_7633) with:
                                   value ((_7634 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18) - etherFeeMin wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if etherFeeMin > 0:
                                    call address(stor1.length) with:
                                       value etherFeeMin wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require etherFeePercent / 100
                            require (_7634 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100 / etherFeePercent / 100 == (_7634 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18
                            require ((_7634 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 >= (_7634 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _7634
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(_7633), msg.sender, _7634
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'Unable to transfer tokens from seller to buyer.'
                            if ((_7634 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 >= etherFeeMin:
                                require ((_7634 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 <= (_7634 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18
                                call address(_7633) with:
                                   value ((_7634 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18) - (((_7634 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ((_7634 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 > 0:
                                    call address(stor1.length) with:
                                       value ((_7634 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require etherFeeMin <= (_7634 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18
                                call address(_7633) with:
                                   value ((_7634 * uint256(stor1[_7615])) + 5 * 10^17 / 10^18) - etherFeeMin wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if etherFeeMin > 0:
                                    call address(stor1.length) with:
                                       value etherFeeMin wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                    lastSellPrice = uint256(stor1[_7615])
                    mem[mem[64]] = _7634
                    mem[mem[64] + 32] = uint256(stor1[_7615])
                    emit TokensPurchased(_7634, uint256(stor1[_7615]), msg.sender, address(_7633));
            idx = idx + 1
            s = s + mem[_7616]
            continue 
    else:
        mem[0] = msg.sender
        mem[32] = 10
        if not stor10[address(msg.sender)]:
            revert with 0, 'You are unknown and not allowed to trade.'
        idx = 0
        s = 0
        while idx < arg3.length:
            _7606 = mem[64]
            mem[64] = mem[64] + 96
            mem[_7606] = 0
            mem[_7606 + 32] = 0
            mem[_7606 + 64] = 0
            require idx < mem[96]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 2
            _7622 = sha3(mem[(32 * idx) + 140 len 20], 2)
            _7623 = mem[64]
            mem[64] = mem[64] + 96
            mem[_7623] = order[mem[(32 * idx) + 140 len 20]].field_0
            mem[_7623 + 32] = uint256(stor1[_7622])
            mem[_7623 + 64] = order[_7622].field_0
            require idx < mem[96]
            if idx == mem[96] - 1:
                _7641 = mem[(32 * idx) + 128]
                if not stor9:
                    _7650 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_7650] = 0
                    mem[_7650 + 32] = 0
                    mem[_7650 + 64] = 0
                    mem[0] = address(_7641)
                    mem[32] = 2
                    _7661 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_7661 + 32] = order[address(_7641)].field_256
                    mem[_7661 + 64] = order[address(_7641)].field_512
                    if order[address(_7641)].field_256 != uint256(stor1[_7622]):
                        revert with 0, 'Buy price does not match the listed sell price.'
                    if block.timestamp >= order[address(_7641)].field_512:
                        revert with 0, 'Sell order has expired.'
                    if uint256(stor1[_7622]) < sellFloor:
                        revert with 0, 'The bid is below the minimum allowed.'
                    if sellCeiling:
                        if uint256(stor1[_7622]) > sellCeiling:
                            revert with 0, 'The bid is above the maximum allowed.'
                    if order[address(_7641)].field_0 <= arg4:
                        require order[address(_7641)].field_0 <= order[address(_7641)].field_0
                        mem[_7661] = 0
                        mem[_7661 + 32] = 0
                        mem[_7661 + 64] = 0
                        mem[0] = address(_7641)
                        mem[32] = 2
                        order[address(_7641)].field_0 = 0
                        order[address(_7641)].field_256 = 0
                        order[address(_7641)].field_512 = 0
                        if not uint256(stor1[_7622]):
                            if msg.value < 0:
                                revert with 0, 'You did not send enough Ether to purchase the tokens.'
                            if etherFeePercent / 100:
                                require etherFeePercent / 100
                                require not 0 / etherFeePercent / 100
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = order[address(_7641)].field_0
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(_7641), msg.sender, order[address(_7641)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'Unable to transfer tokens from seller to buyer.'
                            if 0 >= etherFeeMin:
                                call address(_7641) with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require etherFeeMin <= 0
                                call address(_7641) with:
                                   value -etherFeeMin wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if etherFeeMin > 0:
                                    call address(stor1.length) with:
                                       value etherFeeMin wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require uint256(stor1[_7622])
                            require order[address(_7641)].field_0 * uint256(stor1[_7622]) / uint256(stor1[_7622]) == order[address(_7641)].field_0
                            require (order[address(_7641)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 >= order[address(_7641)].field_0 * uint256(stor1[_7622])
                            if msg.value < (order[address(_7641)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18:
                                revert with 0, 'You did not send enough Ether to purchase the tokens.'
                            if not etherFeePercent / 100:
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = order[address(_7641)].field_0
                                require ext_code.size(tokenContractAddress)
                                call tokenContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(_7641), msg.sender, order[address(_7641)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Unable to transfer tokens from seller to buyer.'
                                if 0 >= etherFeeMin:
                                    require 0 <= (order[address(_7641)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18
                                    call address(_7641) with:
                                       value (order[address(_7641)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require etherFeeMin <= (order[address(_7641)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18
                                    call address(_7641) with:
                                       value ((order[address(_7641)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18) - etherFeeMin wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if etherFeeMin > 0:
                                        call address(stor1.length) with:
                                           value etherFeeMin wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require etherFeePercent / 100
                                require (order[address(_7641)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100 / etherFeePercent / 100 == (order[address(_7641)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18
                                require ((order[address(_7641)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 >= (order[address(_7641)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = order[address(_7641)].field_0
                                require ext_code.size(tokenContractAddress)
                                call tokenContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(_7641), msg.sender, order[address(_7641)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Unable to transfer tokens from seller to buyer.'
                                if ((order[address(_7641)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 >= etherFeeMin:
                                    require ((order[address(_7641)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 <= (order[address(_7641)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18
                                    call address(_7641) with:
                                       value ((order[address(_7641)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18) - (((order[address(_7641)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18) wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ((order[address(_7641)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 > 0:
                                        call address(stor1.length) with:
                                           value ((order[address(_7641)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require etherFeeMin <= (order[address(_7641)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18
                                    call address(_7641) with:
                                       value ((order[address(_7641)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18) - etherFeeMin wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if etherFeeMin > 0:
                                        call address(stor1.length) with:
                                           value etherFeeMin wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                        lastSellPrice = uint256(stor1[_7622])
                        mem[mem[64]] = order[address(_7641)].field_0
                        mem[mem[64] + 32] = uint256(stor1[_7622])
                        emit TokensPurchased(order[address(_7641)].field_0, uint256(stor1[_7622]), msg.sender, address(_7641));
                    else:
                        require arg4 <= order[address(_7641)].field_0
                        mem[_7661] = order[address(_7641)].field_0 - arg4
                        if order[address(_7641)].field_0 - arg4:
                            mem[0] = address(_7641)
                            mem[32] = 2
                            order[address(_7641)].field_0 -= arg4
                        else:
                            mem[_7661 + 32] = 0
                            mem[_7661 + 64] = 0
                            mem[0] = address(_7641)
                            mem[32] = 2
                            order[address(_7641)].field_0 -= arg4
                            order[address(_7641)].field_256 = 0
                            order[address(_7641)].field_512 = 0
                        if not uint256(stor1[_7622]):
                            if msg.value < 0:
                                revert with 0, 'You did not send enough Ether to purchase the tokens.'
                            if etherFeePercent / 100:
                                require etherFeePercent / 100
                                require not 0 / etherFeePercent / 100
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = arg4
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(_7641), msg.sender, arg4
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'Unable to transfer tokens from seller to buyer.'
                            if 0 >= etherFeeMin:
                                call address(_7641) with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require etherFeeMin <= 0
                                call address(_7641) with:
                                   value -etherFeeMin wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if etherFeeMin > 0:
                                    call address(stor1.length) with:
                                       value etherFeeMin wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require uint256(stor1[_7622])
                            require arg4 * uint256(stor1[_7622]) / uint256(stor1[_7622]) == arg4
                            require (arg4 * uint256(stor1[_7622])) + 5 * 10^17 >= arg4 * uint256(stor1[_7622])
                            if msg.value < (arg4 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18:
                                revert with 0, 'You did not send enough Ether to purchase the tokens.'
                            if not etherFeePercent / 100:
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = arg4
                                require ext_code.size(tokenContractAddress)
                                call tokenContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(_7641), msg.sender, arg4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Unable to transfer tokens from seller to buyer.'
                                if 0 >= etherFeeMin:
                                    require 0 <= (arg4 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18
                                    call address(_7641) with:
                                       value (arg4 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require etherFeeMin <= (arg4 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18
                                    call address(_7641) with:
                                       value ((arg4 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18) - etherFeeMin wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if etherFeeMin > 0:
                                        call address(stor1.length) with:
                                           value etherFeeMin wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require etherFeePercent / 100
                                require (arg4 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100 / etherFeePercent / 100 == (arg4 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18
                                require ((arg4 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 >= (arg4 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = arg4
                                require ext_code.size(tokenContractAddress)
                                call tokenContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(_7641), msg.sender, arg4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Unable to transfer tokens from seller to buyer.'
                                if ((arg4 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 >= etherFeeMin:
                                    require ((arg4 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 <= (arg4 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18
                                    call address(_7641) with:
                                       value ((arg4 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18) - (((arg4 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18) wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ((arg4 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 > 0:
                                        call address(stor1.length) with:
                                           value ((arg4 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require etherFeeMin <= (arg4 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18
                                    call address(_7641) with:
                                       value ((arg4 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18) - etherFeeMin wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if etherFeeMin > 0:
                                        call address(stor1.length) with:
                                           value etherFeeMin wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                        lastSellPrice = uint256(stor1[_7622])
                        mem[mem[64]] = arg4
                        mem[mem[64] + 32] = uint256(stor1[_7622])
                        emit TokensPurchased(arg4, uint256(stor1[_7622]), msg.sender, address(_7641));
                else:
                    if not stor10[address(msg.sender)]:
                        revert with 0, 'Buyer and Seller must be approved to trade on this exchange.'
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 10
                    if not stor10[address(mem[(32 * idx) + 128])]:
                        revert with 0, 'Buyer and Seller must be approved to trade on this exchange.'
                    _7734 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_7734] = 0
                    mem[_7734 + 32] = 0
                    mem[_7734 + 64] = 0
                    mem[0] = address(_7641)
                    mem[32] = 2
                    _7757 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_7757 + 32] = order[address(_7641)].field_256
                    mem[_7757 + 64] = order[address(_7641)].field_512
                    if order[address(_7641)].field_256 != uint256(stor1[_7622]):
                        revert with 0, 'Buy price does not match the listed sell price.'
                    if block.timestamp >= order[address(_7641)].field_512:
                        revert with 0, 'Sell order has expired.'
                    if uint256(stor1[_7622]) < sellFloor:
                        revert with 0, 'The bid is below the minimum allowed.'
                    if sellCeiling:
                        if uint256(stor1[_7622]) > sellCeiling:
                            revert with 0, 'The bid is above the maximum allowed.'
                    if order[address(_7641)].field_0 <= arg4:
                        require order[address(_7641)].field_0 <= order[address(_7641)].field_0
                        mem[_7757] = 0
                        mem[_7757 + 32] = 0
                        mem[_7757 + 64] = 0
                        mem[0] = address(_7641)
                        mem[32] = 2
                        order[address(_7641)].field_0 = 0
                        order[address(_7641)].field_256 = 0
                        order[address(_7641)].field_512 = 0
                        if not uint256(stor1[_7622]):
                            if msg.value < 0:
                                revert with 0, 'You did not send enough Ether to purchase the tokens.'
                            if etherFeePercent / 100:
                                require etherFeePercent / 100
                                require not 0 / etherFeePercent / 100
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = order[address(_7641)].field_0
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(_7641), msg.sender, order[address(_7641)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'Unable to transfer tokens from seller to buyer.'
                            if 0 >= etherFeeMin:
                                call address(_7641) with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require etherFeeMin <= 0
                                call address(_7641) with:
                                   value -etherFeeMin wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if etherFeeMin > 0:
                                    call address(stor1.length) with:
                                       value etherFeeMin wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require uint256(stor1[_7622])
                            require order[address(_7641)].field_0 * uint256(stor1[_7622]) / uint256(stor1[_7622]) == order[address(_7641)].field_0
                            require (order[address(_7641)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 >= order[address(_7641)].field_0 * uint256(stor1[_7622])
                            if msg.value < (order[address(_7641)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18:
                                revert with 0, 'You did not send enough Ether to purchase the tokens.'
                            if not etherFeePercent / 100:
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = order[address(_7641)].field_0
                                require ext_code.size(tokenContractAddress)
                                call tokenContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(_7641), msg.sender, order[address(_7641)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Unable to transfer tokens from seller to buyer.'
                                if 0 >= etherFeeMin:
                                    require 0 <= (order[address(_7641)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18
                                    call address(_7641) with:
                                       value (order[address(_7641)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require etherFeeMin <= (order[address(_7641)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18
                                    call address(_7641) with:
                                       value ((order[address(_7641)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18) - etherFeeMin wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if etherFeeMin > 0:
                                        call address(stor1.length) with:
                                           value etherFeeMin wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require etherFeePercent / 100
                                require (order[address(_7641)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100 / etherFeePercent / 100 == (order[address(_7641)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18
                                require ((order[address(_7641)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 >= (order[address(_7641)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = order[address(_7641)].field_0
                                require ext_code.size(tokenContractAddress)
                                call tokenContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(_7641), msg.sender, order[address(_7641)].field_0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Unable to transfer tokens from seller to buyer.'
                                if ((order[address(_7641)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 >= etherFeeMin:
                                    require ((order[address(_7641)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 <= (order[address(_7641)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18
                                    call address(_7641) with:
                                       value ((order[address(_7641)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18) - (((order[address(_7641)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18) wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ((order[address(_7641)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 > 0:
                                        call address(stor1.length) with:
                                           value ((order[address(_7641)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require etherFeeMin <= (order[address(_7641)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18
                                    call address(_7641) with:
                                       value ((order[address(_7641)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18) - etherFeeMin wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if etherFeeMin > 0:
                                        call address(stor1.length) with:
                                           value etherFeeMin wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                        lastSellPrice = uint256(stor1[_7622])
                        mem[mem[64]] = order[address(_7641)].field_0
                        mem[mem[64] + 32] = uint256(stor1[_7622])
                        emit TokensPurchased(order[address(_7641)].field_0, uint256(stor1[_7622]), msg.sender, address(_7641));
                    else:
                        require arg4 <= order[address(_7641)].field_0
                        mem[_7757] = order[address(_7641)].field_0 - arg4
                        if order[address(_7641)].field_0 - arg4:
                            mem[0] = address(_7641)
                            mem[32] = 2
                            order[address(_7641)].field_0 -= arg4
                        else:
                            mem[_7757 + 32] = 0
                            mem[_7757 + 64] = 0
                            mem[0] = address(_7641)
                            mem[32] = 2
                            order[address(_7641)].field_0 -= arg4
                            order[address(_7641)].field_256 = 0
                            order[address(_7641)].field_512 = 0
                        if not uint256(stor1[_7622]):
                            if msg.value < 0:
                                revert with 0, 'You did not send enough Ether to purchase the tokens.'
                            if etherFeePercent / 100:
                                require etherFeePercent / 100
                                require not 0 / etherFeePercent / 100
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = arg4
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(_7641), msg.sender, arg4
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'Unable to transfer tokens from seller to buyer.'
                            if 0 >= etherFeeMin:
                                call address(_7641) with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require etherFeeMin <= 0
                                call address(_7641) with:
                                   value -etherFeeMin wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if etherFeeMin > 0:
                                    call address(stor1.length) with:
                                       value etherFeeMin wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require uint256(stor1[_7622])
                            require arg4 * uint256(stor1[_7622]) / uint256(stor1[_7622]) == arg4
                            require (arg4 * uint256(stor1[_7622])) + 5 * 10^17 >= arg4 * uint256(stor1[_7622])
                            if msg.value < (arg4 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18:
                                revert with 0, 'You did not send enough Ether to purchase the tokens.'
                            if not etherFeePercent / 100:
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = arg4
                                require ext_code.size(tokenContractAddress)
                                call tokenContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(_7641), msg.sender, arg4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Unable to transfer tokens from seller to buyer.'
                                if 0 >= etherFeeMin:
                                    require 0 <= (arg4 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18
                                    call address(_7641) with:
                                       value (arg4 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require etherFeeMin <= (arg4 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18
                                    call address(_7641) with:
                                       value ((arg4 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18) - etherFeeMin wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if etherFeeMin > 0:
                                        call address(stor1.length) with:
                                           value etherFeeMin wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require etherFeePercent / 100
                                require (arg4 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100 / etherFeePercent / 100 == (arg4 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18
                                require ((arg4 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 >= (arg4 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100
                                mem[mem[64] + 36] = msg.sender
                                mem[mem[64] + 68] = arg4
                                require ext_code.size(tokenContractAddress)
                                call tokenContractAddress.0x23b872dd with:
                                     gas gas_remaining wei
                                    args address(_7641), msg.sender, arg4
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, 'Unable to transfer tokens from seller to buyer.'
                                if ((arg4 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 >= etherFeeMin:
                                    require ((arg4 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 <= (arg4 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18
                                    call address(_7641) with:
                                       value ((arg4 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18) - (((arg4 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18) wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ((arg4 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 > 0:
                                        call address(stor1.length) with:
                                           value ((arg4 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require etherFeeMin <= (arg4 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18
                                    call address(_7641) with:
                                       value ((arg4 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18) - etherFeeMin wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if etherFeeMin > 0:
                                        call address(stor1.length) with:
                                           value etherFeeMin wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                        lastSellPrice = uint256(stor1[_7622])
                        mem[mem[64]] = arg4
                        mem[mem[64] + 32] = uint256(stor1[_7622])
                        emit TokensPurchased(arg4, uint256(stor1[_7622]), msg.sender, address(_7641));
                idx = idx + 1
                s = s + arg4
                continue 
            _7638 = mem[(32 * idx) + 128]
            _7639 = mem[_7623]
            if not stor9:
                _7649 = mem[64]
                mem[64] = mem[64] + 96
                mem[_7649] = 0
                mem[_7649 + 32] = 0
                mem[_7649 + 64] = 0
                mem[0] = address(_7638)
                mem[32] = 2
                _7658 = mem[64]
                mem[64] = mem[64] + 96
                mem[_7658 + 32] = order[address(_7638)].field_256
                mem[_7658 + 64] = order[address(_7638)].field_512
                if order[address(_7638)].field_256 != uint256(stor1[_7622]):
                    revert with 0, 'Buy price does not match the listed sell price.'
                if block.timestamp >= order[address(_7638)].field_512:
                    revert with 0, 'Sell order has expired.'
                if uint256(stor1[_7622]) < sellFloor:
                    revert with 0, 'The bid is below the minimum allowed.'
                if sellCeiling:
                    if uint256(stor1[_7622]) > sellCeiling:
                        revert with 0, 'The bid is above the maximum allowed.'
                if order[address(_7638)].field_0 <= _7639:
                    require order[address(_7638)].field_0 <= order[address(_7638)].field_0
                    mem[_7658] = 0
                    mem[_7658 + 32] = 0
                    mem[_7658 + 64] = 0
                    mem[0] = address(_7638)
                    mem[32] = 2
                    order[address(_7638)].field_0 = 0
                    order[address(_7638)].field_256 = 0
                    order[address(_7638)].field_512 = 0
                    if not uint256(stor1[_7622]):
                        if msg.value < 0:
                            revert with 0, 'You did not send enough Ether to purchase the tokens.'
                        if etherFeePercent / 100:
                            require etherFeePercent / 100
                            require not 0 / etherFeePercent / 100
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = order[address(_7638)].field_0
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args address(_7638), msg.sender, order[address(_7638)].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'Unable to transfer tokens from seller to buyer.'
                        if 0 >= etherFeeMin:
                            call address(_7638) with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require etherFeeMin <= 0
                            call address(_7638) with:
                               value -etherFeeMin wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if etherFeeMin > 0:
                                call address(stor1.length) with:
                                   value etherFeeMin wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require uint256(stor1[_7622])
                        require order[address(_7638)].field_0 * uint256(stor1[_7622]) / uint256(stor1[_7622]) == order[address(_7638)].field_0
                        require (order[address(_7638)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 >= order[address(_7638)].field_0 * uint256(stor1[_7622])
                        if msg.value < (order[address(_7638)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18:
                            revert with 0, 'You did not send enough Ether to purchase the tokens.'
                        if not etherFeePercent / 100:
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = order[address(_7638)].field_0
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(_7638), msg.sender, order[address(_7638)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'Unable to transfer tokens from seller to buyer.'
                            if 0 >= etherFeeMin:
                                require 0 <= (order[address(_7638)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18
                                call address(_7638) with:
                                   value (order[address(_7638)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require etherFeeMin <= (order[address(_7638)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18
                                call address(_7638) with:
                                   value ((order[address(_7638)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18) - etherFeeMin wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if etherFeeMin > 0:
                                    call address(stor1.length) with:
                                       value etherFeeMin wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require etherFeePercent / 100
                            require (order[address(_7638)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100 / etherFeePercent / 100 == (order[address(_7638)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18
                            require ((order[address(_7638)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 >= (order[address(_7638)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = order[address(_7638)].field_0
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(_7638), msg.sender, order[address(_7638)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'Unable to transfer tokens from seller to buyer.'
                            if ((order[address(_7638)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 >= etherFeeMin:
                                require ((order[address(_7638)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 <= (order[address(_7638)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18
                                call address(_7638) with:
                                   value ((order[address(_7638)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18) - (((order[address(_7638)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ((order[address(_7638)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 > 0:
                                    call address(stor1.length) with:
                                       value ((order[address(_7638)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require etherFeeMin <= (order[address(_7638)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18
                                call address(_7638) with:
                                   value ((order[address(_7638)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18) - etherFeeMin wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if etherFeeMin > 0:
                                    call address(stor1.length) with:
                                       value etherFeeMin wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                    lastSellPrice = uint256(stor1[_7622])
                    mem[mem[64]] = order[address(_7638)].field_0
                    mem[mem[64] + 32] = uint256(stor1[_7622])
                    emit TokensPurchased(order[address(_7638)].field_0, uint256(stor1[_7622]), msg.sender, address(_7638));
                else:
                    require _7639 <= order[address(_7638)].field_0
                    mem[_7658] = order[address(_7638)].field_0 - _7639
                    if order[address(_7638)].field_0 - _7639:
                        mem[0] = address(_7638)
                        mem[32] = 2
                        order[address(_7638)].field_0 -= _7639
                    else:
                        mem[_7658 + 32] = 0
                        mem[_7658 + 64] = 0
                        mem[0] = address(_7638)
                        mem[32] = 2
                        order[address(_7638)].field_0 -= _7639
                        order[address(_7638)].field_256 = 0
                        order[address(_7638)].field_512 = 0
                    if not uint256(stor1[_7622]):
                        if msg.value < 0:
                            revert with 0, 'You did not send enough Ether to purchase the tokens.'
                        if etherFeePercent / 100:
                            require etherFeePercent / 100
                            require not 0 / etherFeePercent / 100
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _7639
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args address(_7638), msg.sender, _7639
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'Unable to transfer tokens from seller to buyer.'
                        if 0 >= etherFeeMin:
                            call address(_7638) with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require etherFeeMin <= 0
                            call address(_7638) with:
                               value -etherFeeMin wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if etherFeeMin > 0:
                                call address(stor1.length) with:
                                   value etherFeeMin wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require uint256(stor1[_7622])
                        require _7639 * uint256(stor1[_7622]) / uint256(stor1[_7622]) == _7639
                        require (_7639 * uint256(stor1[_7622])) + 5 * 10^17 >= _7639 * uint256(stor1[_7622])
                        if msg.value < (_7639 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18:
                            revert with 0, 'You did not send enough Ether to purchase the tokens.'
                        if not etherFeePercent / 100:
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _7639
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(_7638), msg.sender, _7639
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'Unable to transfer tokens from seller to buyer.'
                            if 0 >= etherFeeMin:
                                require 0 <= (_7639 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18
                                call address(_7638) with:
                                   value (_7639 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require etherFeeMin <= (_7639 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18
                                call address(_7638) with:
                                   value ((_7639 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18) - etherFeeMin wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if etherFeeMin > 0:
                                    call address(stor1.length) with:
                                       value etherFeeMin wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require etherFeePercent / 100
                            require (_7639 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100 / etherFeePercent / 100 == (_7639 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18
                            require ((_7639 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 >= (_7639 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _7639
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(_7638), msg.sender, _7639
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'Unable to transfer tokens from seller to buyer.'
                            if ((_7639 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 >= etherFeeMin:
                                require ((_7639 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 <= (_7639 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18
                                call address(_7638) with:
                                   value ((_7639 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18) - (((_7639 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ((_7639 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 > 0:
                                    call address(stor1.length) with:
                                       value ((_7639 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require etherFeeMin <= (_7639 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18
                                call address(_7638) with:
                                   value ((_7639 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18) - etherFeeMin wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if etherFeeMin > 0:
                                    call address(stor1.length) with:
                                       value etherFeeMin wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                    lastSellPrice = uint256(stor1[_7622])
                    mem[mem[64]] = _7639
                    mem[mem[64] + 32] = uint256(stor1[_7622])
                    emit TokensPurchased(_7639, uint256(stor1[_7622]), msg.sender, address(_7638));
            else:
                if not stor10[address(msg.sender)]:
                    revert with 0, 'Buyer and Seller must be approved to trade on this exchange.'
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 10
                if not stor10[address(mem[(32 * idx) + 128])]:
                    revert with 0, 'Buyer and Seller must be approved to trade on this exchange.'
                _7729 = mem[64]
                mem[64] = mem[64] + 96
                mem[_7729] = 0
                mem[_7729 + 32] = 0
                mem[_7729 + 64] = 0
                mem[0] = address(_7638)
                mem[32] = 2
                _7751 = mem[64]
                mem[64] = mem[64] + 96
                mem[_7751 + 32] = order[address(_7638)].field_256
                mem[_7751 + 64] = order[address(_7638)].field_512
                if order[address(_7638)].field_256 != uint256(stor1[_7622]):
                    revert with 0, 'Buy price does not match the listed sell price.'
                if block.timestamp >= order[address(_7638)].field_512:
                    revert with 0, 'Sell order has expired.'
                if uint256(stor1[_7622]) < sellFloor:
                    revert with 0, 'The bid is below the minimum allowed.'
                if sellCeiling:
                    if uint256(stor1[_7622]) > sellCeiling:
                        revert with 0, 'The bid is above the maximum allowed.'
                if order[address(_7638)].field_0 <= _7639:
                    require order[address(_7638)].field_0 <= order[address(_7638)].field_0
                    mem[_7751] = 0
                    mem[_7751 + 32] = 0
                    mem[_7751 + 64] = 0
                    mem[0] = address(_7638)
                    mem[32] = 2
                    order[address(_7638)].field_0 = 0
                    order[address(_7638)].field_256 = 0
                    order[address(_7638)].field_512 = 0
                    if not uint256(stor1[_7622]):
                        if msg.value < 0:
                            revert with 0, 'You did not send enough Ether to purchase the tokens.'
                        if etherFeePercent / 100:
                            require etherFeePercent / 100
                            require not 0 / etherFeePercent / 100
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = order[address(_7638)].field_0
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args address(_7638), msg.sender, order[address(_7638)].field_0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'Unable to transfer tokens from seller to buyer.'
                        if 0 >= etherFeeMin:
                            call address(_7638) with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require etherFeeMin <= 0
                            call address(_7638) with:
                               value -etherFeeMin wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if etherFeeMin > 0:
                                call address(stor1.length) with:
                                   value etherFeeMin wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require uint256(stor1[_7622])
                        require order[address(_7638)].field_0 * uint256(stor1[_7622]) / uint256(stor1[_7622]) == order[address(_7638)].field_0
                        require (order[address(_7638)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 >= order[address(_7638)].field_0 * uint256(stor1[_7622])
                        if msg.value < (order[address(_7638)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18:
                            revert with 0, 'You did not send enough Ether to purchase the tokens.'
                        if not etherFeePercent / 100:
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = order[address(_7638)].field_0
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(_7638), msg.sender, order[address(_7638)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'Unable to transfer tokens from seller to buyer.'
                            if 0 >= etherFeeMin:
                                require 0 <= (order[address(_7638)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18
                                call address(_7638) with:
                                   value (order[address(_7638)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require etherFeeMin <= (order[address(_7638)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18
                                call address(_7638) with:
                                   value ((order[address(_7638)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18) - etherFeeMin wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if etherFeeMin > 0:
                                    call address(stor1.length) with:
                                       value etherFeeMin wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require etherFeePercent / 100
                            require (order[address(_7638)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100 / etherFeePercent / 100 == (order[address(_7638)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18
                            require ((order[address(_7638)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 >= (order[address(_7638)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = order[address(_7638)].field_0
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(_7638), msg.sender, order[address(_7638)].field_0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'Unable to transfer tokens from seller to buyer.'
                            if ((order[address(_7638)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 >= etherFeeMin:
                                require ((order[address(_7638)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 <= (order[address(_7638)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18
                                call address(_7638) with:
                                   value ((order[address(_7638)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18) - (((order[address(_7638)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ((order[address(_7638)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 > 0:
                                    call address(stor1.length) with:
                                       value ((order[address(_7638)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require etherFeeMin <= (order[address(_7638)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18
                                call address(_7638) with:
                                   value ((order[address(_7638)].field_0 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18) - etherFeeMin wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if etherFeeMin > 0:
                                    call address(stor1.length) with:
                                       value etherFeeMin wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                    lastSellPrice = uint256(stor1[_7622])
                    mem[mem[64]] = order[address(_7638)].field_0
                    mem[mem[64] + 32] = uint256(stor1[_7622])
                    emit TokensPurchased(order[address(_7638)].field_0, uint256(stor1[_7622]), msg.sender, address(_7638));
                else:
                    require _7639 <= order[address(_7638)].field_0
                    mem[_7751] = order[address(_7638)].field_0 - _7639
                    if order[address(_7638)].field_0 - _7639:
                        mem[0] = address(_7638)
                        mem[32] = 2
                        order[address(_7638)].field_0 -= _7639
                    else:
                        mem[_7751 + 32] = 0
                        mem[_7751 + 64] = 0
                        mem[0] = address(_7638)
                        mem[32] = 2
                        order[address(_7638)].field_0 -= _7639
                        order[address(_7638)].field_256 = 0
                        order[address(_7638)].field_512 = 0
                    if not uint256(stor1[_7622]):
                        if msg.value < 0:
                            revert with 0, 'You did not send enough Ether to purchase the tokens.'
                        if etherFeePercent / 100:
                            require etherFeePercent / 100
                            require not 0 / etherFeePercent / 100
                        mem[mem[64] + 36] = msg.sender
                        mem[mem[64] + 68] = _7639
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args address(_7638), msg.sender, _7639
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            revert with 0, 'Unable to transfer tokens from seller to buyer.'
                        if 0 >= etherFeeMin:
                            call address(_7638) with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require etherFeeMin <= 0
                            call address(_7638) with:
                               value -etherFeeMin wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if etherFeeMin > 0:
                                call address(stor1.length) with:
                                   value etherFeeMin wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require uint256(stor1[_7622])
                        require _7639 * uint256(stor1[_7622]) / uint256(stor1[_7622]) == _7639
                        require (_7639 * uint256(stor1[_7622])) + 5 * 10^17 >= _7639 * uint256(stor1[_7622])
                        if msg.value < (_7639 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18:
                            revert with 0, 'You did not send enough Ether to purchase the tokens.'
                        if not etherFeePercent / 100:
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _7639
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(_7638), msg.sender, _7639
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'Unable to transfer tokens from seller to buyer.'
                            if 0 >= etherFeeMin:
                                require 0 <= (_7639 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18
                                call address(_7638) with:
                                   value (_7639 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require etherFeeMin <= (_7639 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18
                                call address(_7638) with:
                                   value ((_7639 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18) - etherFeeMin wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if etherFeeMin > 0:
                                    call address(stor1.length) with:
                                       value etherFeeMin wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require etherFeePercent / 100
                            require (_7639 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100 / etherFeePercent / 100 == (_7639 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18
                            require ((_7639 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 >= (_7639 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100
                            mem[mem[64] + 36] = msg.sender
                            mem[mem[64] + 68] = _7639
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args address(_7638), msg.sender, _7639
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, 'Unable to transfer tokens from seller to buyer.'
                            if ((_7639 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 >= etherFeeMin:
                                require ((_7639 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 <= (_7639 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18
                                call address(_7638) with:
                                   value ((_7639 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18) - (((_7639 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18) wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if ((_7639 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 > 0:
                                    call address(stor1.length) with:
                                       value ((_7639 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18 * etherFeePercent / 100) + 5 * 10^17 / 10^18 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require etherFeeMin <= (_7639 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18
                                call address(_7638) with:
                                   value ((_7639 * uint256(stor1[_7622])) + 5 * 10^17 / 10^18) - etherFeeMin wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if etherFeeMin > 0:
                                    call address(stor1.length) with:
                                       value etherFeeMin wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                    lastSellPrice = uint256(stor1[_7622])
                    mem[mem[64]] = _7639
                    mem[mem[64] + 32] = uint256(stor1[_7622])
                    emit TokensPurchased(_7639, uint256(stor1[_7622]), msg.sender, address(_7638));
            idx = idx + 1
            s = s + mem[_7623]
            continue 
    if mem[96] != 1:
        emit VoucherRedeemed(arg1, address(arg2), 0, s);
    else:
        require 0 < mem[96]
        emit VoucherRedeemed(arg1, address(arg2), address(mem[128]), s);
}



}
