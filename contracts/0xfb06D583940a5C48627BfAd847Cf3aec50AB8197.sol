contract main {




// =====================  Runtime code  =====================


const sub_4c737b46(?) = 10^18

const sub_cb450db8(?) = 10000 * 10^18

const sub_d2f2f9a0(?) = 10^18


address owner;
uint256 price;
address stor2;
address stor3;
address stor4;

function owner() {
    return owner
}

function price() {
    return price
}

function _fallback() payable {
    revert
}

function setPrice(uint256 arg1) {
    require msg.sender == owner
    price = arg1
}

function setFinance(address arg1) {
    require msg.sender == owner
    stor4 = arg1
}

function setStableToken(address arg1) {
    require msg.sender == owner
    stor3 = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sell() {
    require ext_code.size(stor3)
    call stor3.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0 >= ext_call.return_data[0]:
        revert with 0, 'TOKENS_NOT_AVAILABLE'
    require ext_code.size(stor2)
    call stor2.0xdd62ed3e with:
         gas gas_remaining wei
        args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 10000 * 10^18:
        revert with 0, 'EXCEEDED_PAYMENT'
    if 10^18 > ext_call.return_data[0]:
        revert with 0, 'INSUFFICIENT_PAYMENT'
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] >= 0:
            require ext_code.size(stor2)
            call stor2.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_code.size(stor2)
                call stor2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor4, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(stor4)
                call stor4.deposit(address arg1, uint256 arg2, string arg3) with:
                     gas gas_remaining wei
                    args stor2, ext_call.return_data[0], Array(len=14, data='Seller Revenue')
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Sell(0, ext_call.return_data[0], msg.sender);
                require ext_code.size(stor3)
                call stor3.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
        else:
            if not ext_call.return_data[0]:
                require price
                require ext_code.size(stor2)
                call stor2.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), 0 / price
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require ext_code.size(stor2)
                    call stor2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor4, 0 / price
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require ext_code.size(stor4)
                    call stor4.deposit(address arg1, uint256 arg2, string arg3) with:
                         gas gas_remaining wei
                        args stor2, 0 / price, Array(len=14, data='Seller Revenue')
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Sell(ext_call.return_data[0], 0 / price, msg.sender);
                    require ext_code.size(stor3)
                    call stor3.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
            else:
                require ext_call.return_data[0]
                require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                require price
                require ext_code.size(stor2)
                call stor2.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), 10^18 * ext_call.return_data[0] / price
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require ext_code.size(stor2)
                    call stor2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor4, 10^18 * ext_call.return_data[0] / price
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require ext_code.size(stor4)
                    call stor4.deposit(address arg1, uint256 arg2, string arg3) with:
                         gas gas_remaining wei
                        args stor2, 10^18 * ext_call.return_data[0] / price, Array(len=14, data='Seller Revenue')
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Sell(ext_call.return_data[0], 10^18 * ext_call.return_data[0] / price, msg.sender);
                    require ext_code.size(stor3)
                    call stor3.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
    else:
        require ext_call.return_data[0]
        require ext_call.return_data[0] * price / ext_call.return_data[0] == price
        if ext_call.return_data[0] >= ext_call.return_data[0] * price / 10^18:
            require ext_code.size(stor2)
            call stor2.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                require ext_code.size(stor2)
                call stor2.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor4, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require ext_code.size(stor4)
                call stor4.deposit(address arg1, uint256 arg2, string arg3) with:
                     gas gas_remaining wei
                    args stor2, ext_call.return_data[0], Array(len=14, data='Seller Revenue')
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Sell(ext_call.return_data[0] * price / 10^18, ext_call.return_data[0], msg.sender);
                require ext_code.size(stor3)
                call stor3.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0] * price / 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
        else:
            if not ext_call.return_data[0]:
                require price
                require ext_code.size(stor2)
                call stor2.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), 0 / price
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require ext_code.size(stor2)
                    call stor2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor4, 0 / price
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require ext_code.size(stor4)
                    call stor4.deposit(address arg1, uint256 arg2, string arg3) with:
                         gas gas_remaining wei
                        args stor2, 0 / price, Array(len=14, data='Seller Revenue')
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Sell(ext_call.return_data[0], 0 / price, msg.sender);
                    require ext_code.size(stor3)
                    call stor3.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
            else:
                require ext_call.return_data[0]
                require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
                require price
                require ext_code.size(stor2)
                call stor2.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), 10^18 * ext_call.return_data[0] / price
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require ext_code.size(stor2)
                    call stor2.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor4, 10^18 * ext_call.return_data[0] / price
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require ext_code.size(stor4)
                    call stor4.deposit(address arg1, uint256 arg2, string arg3) with:
                         gas gas_remaining wei
                        args stor2, 10^18 * ext_call.return_data[0] / price, Array(len=14, data='Seller Revenue')
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Sell(ext_call.return_data[0], 10^18 * ext_call.return_data[0] / price, msg.sender);
                    require ext_code.size(stor3)
                    call stor3.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
}



}
