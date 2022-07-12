contract main {




// =====================  Runtime code  =====================


const sub_45529703(?) = 0xc0a47dfe034b400b47bdad5fecda2621de6c4d95

const getAddressAdmin = 0x7284a8451d9a0e7dc62b3a71c0593ea2ec5c5638


uint256 version;

function version() {
    return version
}

function _fallback() payable {
  stop
}

function sub_886a1376(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(0xc0a47dfe034b400b47bdad5fecda2621de6c4d95)
    staticcall 0xc0a47dfe034b400b47bdad5fecda2621de6c4d95.getExchange(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function poolDetails(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(0xc0a47dfe034b400b47bdad5fecda2621de6c4d95)
    staticcall 0xc0a47dfe034b400b47bdad5fecda2621de6c4d95.getExchange(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return address(ext_call.return_data[0]), 
           ext_call.return_data[0],
           eth.balance(ext_call.return_data[0]),
           ext_call.return_data[0]
}

function removeLiquidity(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require ext_code.size(0xc0a47dfe034b400b47bdad5fecda2621de6c4d95)
    staticcall 0xc0a47dfe034b400b47bdad5fecda2621de6c4d95.getExchange(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    if arg2 > ext_call.return_data[0]:
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), 0x8000000000000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    call address(ext_call.return_data[0]).removeLiquidity(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, uint32(arg2), arg3, arg4, 1899063809
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    call msg.sender with:
       value ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xfd80ed75: arg1, ext_call.return_data[32], ext_call.return_data[0], arg2, msg.sender
    return ext_call.return_data[0], ext_call.return_data[32]
}

function shut(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(0xc0a47dfe034b400b47bdad5fecda2621de6c4d95)
    staticcall 0xc0a47dfe034b400b47bdad5fecda2621de6c4d95.getExchange(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    if ext_call.return_data[0] > ext_call.return_data[0]:
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), 0x8000000000000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    call address(ext_call.return_data[0]).removeLiquidity(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, ext_call.return_data[28 len 4], 1, 1, 1899063809
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    call msg.sender with:
       value ext_call.return_data[0] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x73f45fd8: arg1, ext_call.return_data[32], ext_call.return_data[0], ext_call.return_data[0], msg.sender
    return ext_call.return_data[0], ext_call.return_data[32]
}

function addLiquidity(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(0xc0a47dfe034b400b47bdad5fecda2621de6c4d95)
    staticcall 0xc0a47dfe034b400b47bdad5fecda2621de6c4d95.getExchange(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require eth.balance(ext_call.return_data[0])
    if (msg.value * ext_call.return_data[0] / eth.balance(ext_call.return_data[0])) + 1 >= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Token to deposit is greater than Max token to Deposit'
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), (msg.value * ext_call.return_data[0] / eth.balance(ext_call.return_data[0])) + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if (msg.value * ext_call.return_data[0] / eth.balance(ext_call.return_data[0])) + 1 > ext_call.return_data[0]:
        require ext_code.size(arg1)
        call arg1.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), 0x8000000000000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).addLiquidity(uint256 arg1, uint256 arg2, uint256 arg3) with:
       value msg.value wei
         gas gas_remaining wei
        args 1, (msg.value * ext_call.return_data[0] / eth.balance(ext_call.return_data[0])) + 1, 1899063809
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x9b8217aa: address(arg1), (msg.value * ext_call.return_data[0] / eth.balance(ext_call.return_data[0])) + 1, msg.value, ext_call.return_data[0], msg.sender
    return ext_call.return_data[0]
}



}
