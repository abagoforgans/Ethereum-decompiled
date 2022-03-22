contract main {


// =======================  Init code  ======================


uint256 stor0;
uint128 stor1; offset 160
uint256 stor1;
uint128 stor2; offset 176
uint128 stor2; offset 160
address stor2;

function _fallback() payable {
    uint256(stor1.field_0) = Mask(96, 0, stor1.field_160)
    stor0 = code.data[2805 len 32] or Mask(96, 160, stor0)
    address(stor2.field_0) = code.data[2785 len 20]
    Mask(96, 0, stor2.field_160) = Mask(96, 0, code.data[2837 len 32])
    Mask(80, 0, stor2.field_176) = code.data[2773 len 10]
    return code.data[125 len 2648]
}



// =====================  Runtime code  =====================


address tokenHolderAddress;
uint256 stor0;
address owner;
uint256 stor1;
uint16 stor2;
uint16 price; offset 160
uint128 stor2; offset 160
address tokenContractAddress;
uint256 tokensPurchasedTotal;
uint256 ethCostTotal;

function ethCostTotal() payable {
    return ethCostTotal
}

function tokensPurchasedTotal() payable {
    return tokensPurchasedTotal
}

function tokenHolder() payable {
    return address(tokenHolderAddress)
}

function tokenContract() payable {
    return tokenContractAddress
}

function owner() payable {
    return address(owner)
}

function price() payable {
    return price
}

function setOwner(address arg1) payable {
    require tx.origin == address(owner)
    uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
}

function setTokenHolder(address arg1) payable {
    require tx.origin == address(owner)
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function setPrice(uint16 arg1) payable {
    require tx.origin == address(owner)
    Mask(96, 0, stor2.field_160) = Mask(96, 0, arg1)
    emit 0x56dd970d: Array(len=14, data='Price changed:'), arg1 << 240
}

function transferETH(address arg1, uint256 arg2) payable {
    require tx.origin == address(owner)
    if arg2 <= eth.balance(this.address):
        call arg1 with:
           value arg2 wei
             gas 0 wei
    else:
        call arg1 with:
           value eth.balance(this.address) wei
             gas 0 wei
}

function tokenSupply() payable {
    call tokenContractAddress.0xdd62ed3e with:
         gas gas_remaining - 25050 wei
        args address(tokenHolderAddress), this.address
    require ext_call.success
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining - 25050 wei
        args address(tokenHolderAddress)
    return ext_call.return_data[0]
}

function tokenSupplyChanged() payable {
    require tx.origin == address(owner)
    call tokenContractAddress.0xdd62ed3e with:
         gas gas_remaining - 25050 wei
        args address(tokenHolderAddress), this.address
    require ext_call.success
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining - 25050 wei
        args address(tokenHolderAddress)
    emit 0x56dd970d: ext_call.return_data[0], ext_call.return_data[0], 27, 'Supply changed, new supply:'
}

function buyTokens() payable {
    if msg.sender != tx.origin:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
        require ext_call.success
        emit 0x56dd970d: 64, 0, 56, 'Please send from a normal accoun', 't, not contract/multisig'
    else:
        if 0 == price:
            call tx.origin with:
               value msg.value wei
                 gas 0 wei
            require ext_call.success
            emit 0x56dd970d: 64, 0, 17, 'Contract disabled'
        else:
            if price < price:
                call tx.origin with:
                   value msg.value wei
                     gas 0 wei
                require ext_call.success
                emit 0x56dd970d: Array(len=22, data='Bid too low, price is:'), uint16(stor2.field_0)
            else:
                if 0 == msg.value:
                    emit 0x56dd970d: 64, 0, 17, 'No ether received'
                else:
                    call tokenContractAddress.0xdd62ed3e with:
                         gas gas_remaining - 25050 wei
                        args address(tokenHolderAddress), this.address
                    require ext_call.success
                    call tokenContractAddress.0x70a08231 with:
                         gas gas_remaining - 25050 wei
                        args address(tokenHolderAddress)
                    if 0 == ext_call.return_data[0]:
                        call tx.origin with:
                           value msg.value wei
                             gas 0 wei
                        require ext_call.success
                        emit 0x56dd970d: ext_call.return_data[0], 0, 37, 'No tokens available, please try ', 'later'
                    else:
                        if 1000 * msg.value / price <= ext_call.return_data[0]:
                            call tokenContractAddress.0x23b872dd with:
                                 gas gas_remaining - 25050 wei
                                args address(tokenHolderAddress), tx.origin, 1000 * msg.value / price
                            require ext_call.success
                            require ext_call.return_data[0]
                            tokensPurchasedTotal += 1000 * msg.value / price
                            ethCostTotal += msg.value
                            emit TokensPurchased(tx.origin, uint16(stor2.field_0), 1000 * msg.value / price, msg.value, msg.value, 0, ext_call.return_data[0] - (1000 * msg.value / price));
                        else:
                            call tx.origin with:
                               value msg.value - (ext_call.return_data[0] * price / 1000) wei
                                 gas 0 wei
                            require ext_call.success
                            call tokenContractAddress.0x23b872dd with:
                                 gas gas_remaining - 25050 wei
                                args address(tokenHolderAddress), tx.origin, ext_call.return_data[0]
                            require ext_call.return_data[0]
                            tokensPurchasedTotal += ext_call.return_data[0]
                            ethCostTotal += ext_call.return_data[0] * price / 1000
                            emit TokensPurchased(tx.origin, uint16(stor2.field_0), ext_call.return_data[0], ext_call.return_data[0] * price / 1000, msg.value, msg.value - (ext_call.return_data[0] * price / 1000), 0);
}

function _fallback() payable {
    if msg.sender != tx.origin:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
        require ext_call.success
        emit 0x56dd970d: 64, 0, 56, 'Please send from a normal accoun', 't, not contract/multisig'
    else:
        if 0 == price:
            call tx.origin with:
               value msg.value wei
                 gas 0 wei
            require ext_call.success
            emit 0x56dd970d: 64, 0, 17, 'Contract disabled'
        else:
            if price < price:
                call tx.origin with:
                   value msg.value wei
                     gas 0 wei
                require ext_call.success
                emit 0x56dd970d: Array(len=22, data='Bid too low, price is:'), uint16(stor2.field_0)
            else:
                if 0 == msg.value:
                    emit 0x56dd970d: 64, 0, 17, 'No ether received'
                else:
                    call tokenContractAddress.0xdd62ed3e with:
                         gas gas_remaining - 25050 wei
                        args address(tokenHolderAddress), this.address
                    require ext_call.success
                    call tokenContractAddress.0x70a08231 with:
                         gas gas_remaining - 25050 wei
                        args address(tokenHolderAddress)
                    if 0 == ext_call.return_data[0]:
                        call tx.origin with:
                           value msg.value wei
                             gas 0 wei
                        require ext_call.success
                        emit 0x56dd970d: ext_call.return_data[0], 0, 37, 'No tokens available, please try ', 'later'
                    else:
                        if 1000 * msg.value / price <= ext_call.return_data[0]:
                            call tokenContractAddress.0x23b872dd with:
                                 gas gas_remaining - 25050 wei
                                args address(tokenHolderAddress), tx.origin, 1000 * msg.value / price
                            require ext_call.success
                            require ext_call.return_data[0]
                            tokensPurchasedTotal += 1000 * msg.value / price
                            ethCostTotal += msg.value
                            emit TokensPurchased(tx.origin, uint16(stor2.field_0), 1000 * msg.value / price, msg.value, msg.value, 0, ext_call.return_data[0] - (1000 * msg.value / price));
                        else:
                            call tx.origin with:
                               value msg.value - (ext_call.return_data[0] * price / 1000) wei
                                 gas 0 wei
                            require ext_call.success
                            call tokenContractAddress.0x23b872dd with:
                                 gas gas_remaining - 25050 wei
                                args address(tokenHolderAddress), tx.origin, ext_call.return_data[0]
                            require ext_call.return_data[0]
                            tokensPurchasedTotal += ext_call.return_data[0]
                            ethCostTotal += ext_call.return_data[0] * price / 1000
                            emit TokensPurchased(tx.origin, uint16(stor2.field_0), ext_call.return_data[0], ext_call.return_data[0] * price / 1000, msg.value, msg.value - (ext_call.return_data[0] * price / 1000), 0);
}

function buyTokens(uint16 arg1) payable {
    if msg.sender != tx.origin:
        call msg.sender with:
           value msg.value wei
             gas 0 wei
        require ext_call.success
        emit 0x56dd970d: 64, 0, 56, 'Please send from a normal accoun', 't, not contract/multisig'
    else:
        if 0 == price:
            call tx.origin with:
               value msg.value wei
                 gas 0 wei
            require ext_call.success
            emit 0x56dd970d: 64, 0, 17, 'Contract disabled'
        else:
            if arg1 < price:
                call tx.origin with:
                   value msg.value wei
                     gas 0 wei
                require ext_call.success
                emit 0x56dd970d: Array(len=22, data='Bid too low, price is:'), uint16(stor2.field_0)
            else:
                if 0 == msg.value:
                    emit 0x56dd970d: 64, 0, 17, 'No ether received'
                else:
                    call tokenContractAddress.0xdd62ed3e with:
                         gas gas_remaining - 25050 wei
                        args address(tokenHolderAddress), this.address
                    require ext_call.success
                    call tokenContractAddress.0x70a08231 with:
                         gas gas_remaining - 25050 wei
                        args address(tokenHolderAddress)
                    if 0 == ext_call.return_data[0]:
                        call tx.origin with:
                           value msg.value wei
                             gas 0 wei
                        require ext_call.success
                        emit 0x56dd970d: ext_call.return_data[0], 0, 37, 'No tokens available, please try ', 'later'
                    else:
                        if 1000 * msg.value / price <= ext_call.return_data[0]:
                            call tokenContractAddress.0x23b872dd with:
                                 gas gas_remaining - 25050 wei
                                args address(tokenHolderAddress), tx.origin, 1000 * msg.value / price
                            require ext_call.success
                            require ext_call.return_data[0]
                            tokensPurchasedTotal += 1000 * msg.value / price
                            ethCostTotal += msg.value
                            emit TokensPurchased(tx.origin, uint16(stor2.field_0), 1000 * msg.value / price, msg.value, msg.value, 0, ext_call.return_data[0] - (1000 * msg.value / price));
                        else:
                            call tx.origin with:
                               value msg.value - (ext_call.return_data[0] * price / 1000) wei
                                 gas 0 wei
                            require ext_call.success
                            call tokenContractAddress.0x23b872dd with:
                                 gas gas_remaining - 25050 wei
                                args address(tokenHolderAddress), tx.origin, ext_call.return_data[0]
                            require ext_call.return_data[0]
                            tokensPurchasedTotal += ext_call.return_data[0]
                            ethCostTotal += ext_call.return_data[0] * price / 1000
                            emit TokensPurchased(tx.origin, uint16(stor2.field_0), ext_call.return_data[0], ext_call.return_data[0] * price / 1000, msg.value, msg.value - (ext_call.return_data[0] * price / 1000), 0);
}



}
