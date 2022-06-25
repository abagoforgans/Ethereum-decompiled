contract main {




// =====================  Runtime code  =====================


const ETH = 0


address owner;

function owner() {
    return owner
}

function _fallback() payable {
  stop
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

function withdraw() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(address arg1) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if not arg1:
            call owner with:
               value ext_call.return_data[0] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(arg1)
            call arg1 with:
               funct Mask(32, 224, sha3('transfer(address,uint256)')) >> 224
                 gas gas_remaining wei
                args owner, ext_call.return_data[0]
            require ext_call.success
            if return_data.size:
                require return_data.size == 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Asm Transfer reverted'
    return 1
}

function trade(address[2] arg1, address arg2, bytes arg3, bytes arg4) payable {
    call address(arg1) with:
       value msg.value wei
         gas gas_remaining - 34710 wei
        args arg4[all]
    if not ext_call.success:
        revert with 0, 'TradeExecutor ERR: buy_trade'
    require ext_code.size(address(arg3))
    call address(arg3).0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if not address(arg3):
            call arg2 with:
               value ext_call.return_data[0] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(address(arg3))
            call address(arg3) with:
               funct Mask(32, 224, sha3('transfer(address,uint256)')) >> 224
                 gas gas_remaining wei
                args address(arg2), ext_call.return_data[0]
            require ext_call.success
            if return_data.size:
                require return_data.size == 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Asm Transfer reverted'
    call arg2 with:
         gas gas_remaining - 34710 wei
        args call.data[cd[132] + 36 len ('cd', 132).length]
    if not ext_call.success:
        revert with 0, 'TradeExecutor ERR: sell_trade'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_code.size(address(arg3))
    call address(arg3).0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if not address(arg3):
            call msg.sender with:
               value ext_call.return_data[0] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(address(arg3))
            call address(arg3) with:
               funct Mask(32, 224, sha3('transfer(address,uint256)')) >> 224
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
            require ext_call.success
            if return_data.size:
                require return_data.size == 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Asm Transfer reverted'
}



}
