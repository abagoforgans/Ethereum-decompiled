contract main {




// =====================  Runtime code  =====================


const ETH = 0

const MAX_UINT = -1


address owner;
address exchangeAddress;

function owner() {
    return owner
}

function exchange() {
    return exchangeAddress
}

function _fallback() payable {
  stop
}

function setExchange(address arg1) {
    require msg.sender == owner
    exchangeAddress = arg1
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

function getTokens(address arg1, uint256 arg2) payable {
    require ext_code.size(arg1)
    call arg1.ethToTokenTransferInput(uint256 arg1, uint256 arg2, address arg3) with:
       value msg.value wei
         gas gas_remaining wei
        args arg2, block.timestamp + 1, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address):
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0]
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

function getEther(address arg1, uint256 arg2) {
    require ext_code.size(arg1)
    call arg1.tokenAddress() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xdd62ed3e with:
         gas gas_remaining wei
        args address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xdd62ed3e with:
             gas gas_remaining wei
            args address(this.address), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        if ext_call.return_data[0]:
            call address(ext_call.return_data[0]) with:
               funct Mask(32, 224, sha3('approve(address,uint256)')) >> 224
                 gas gas_remaining wei
                args address(arg1), 0
            require ext_call.success
            if return_data.size:
                require return_data.size == 32
                if not ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Asm approve failed, non-zero allowance'
        call address(ext_call.return_data[0]) with:
           funct Mask(32, 224, sha3('approve(address,uint256)')) >> 224
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0]
        require ext_call.success
        if return_data.size:
            require return_data.size == 32
            if not ext_call.return_data[0]:
                revert with 0, 'Asm approve failed'
    require ext_code.size(arg1)
    call arg1.tokenToEthTransferInput(uint256 arg1, uint256 arg2, uint256 arg3, address arg4) with:
         gas gas_remaining wei
        args 0, ext_call.return_data[28 len 4], arg2, block.timestamp + 1, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if not address(ext_call.return_data[0]):
            call msg.sender with:
               value ext_call.return_data[0] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]) with:
               funct Mask(32, 224, sha3('transfer(address,uint256)')) >> 224
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0]
            require ext_call.success
            if return_data.size:
                require return_data.size == 32
                if not ext_call.return_data[0]:
                    revert with 0, 'Asm Transfer reverted'
    return ext_call.return_data[0]
}



}
