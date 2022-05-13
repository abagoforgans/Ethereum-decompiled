contract main {




// =====================  Runtime code  =====================


address owner;
uint256 takerFee;

function takerFee() {
    return takerFee
}

function owner() {
    return owner
}

function kill() {
    require msg.sender == owner
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    require owner == msg.sender
    require owner != arg1
    owner = arg1
    return 1
}

function setFee(uint256 arg1) {
    require owner == msg.sender
    require takerFee != arg1
    takerFee = arg1
    return 1
}

function withdraw() {
    require owner == msg.sender
    require eth.balance(this.address) > 0
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function approve(address arg1, address arg2, uint256 arg3) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    return 1
}

function withdrawTokens(address arg1) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    return 1
}

function sub_42bb2522(?) payable {
    require ext_code.size(0x964f35fae36d75b1e72770e244f6595b68508cf5)
    call 0x964f35fae36d75b1e72770e244f6595b68508cf5.trade(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, address arg7) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, 4008636142, msg.value, address(arg1), this.address, 0, arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    if takerFee <= 0:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
    else:
        require takerFee
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] / takerFee)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    return 1
}

function tradeAirswap(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint8 arg6, bytes32 arg7, bytes32 arg8) payable {
    require ext_code.size(0x8fd3121013a07c57f0d69646e86e7a4880b467b7)
    call 0x8fd3121013a07c57f0d69646e86e7a4880b467b7.fill(address arg1, uint256 arg2, address arg3, address arg4, uint256 arg5, address arg6, uint256 arg7, uint256 arg8, uint8 arg9, bytes32 arg10, bytes32 arg11) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, 0, arg2, address(arg3), 0x28b7d7b7608296e0ee3d77c242f1f3ac571723e7, msg.value, 0, arg4, arg5, arg6 << 248, arg7, arg8
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if takerFee <= 0:
        require ext_code.size(arg3)
        call arg3.0x23b872dd with:
             gas gas_remaining wei
            args 0x28b7d7b7608296e0ee3d77c242f1f3ac571723e7, msg.sender, arg2
    else:
        require takerFee
        require ext_code.size(arg3)
        call arg3.0x23b872dd with:
             gas gas_remaining wei
            args 0x28b7d7b7608296e0ee3d77c242f1f3ac571723e7, msg.sender, arg2 - (arg2 / takerFee)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    return 1
}

function tradeBancor(address[] arg1, uint256 arg2, uint256 arg3, address arg4) payable {
    mem[(32 * arg1.length) + 260 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    require ext_code.size(0xc6725ae749677f21e4d8f85f41cfb6de49b9db29)
    call 0xc6725ae749677f21e4d8f85f41cfb6de49b9db29.0xf0843ba9 with:
       value msg.value wei
         gas gas_remaining wei
        args Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + floor32(arg1.length) + 260 len (32 * arg1.length) - floor32(arg1.length)]), arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    if takerFee <= 0:
        require ext_code.size(arg4)
        call arg4.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
    else:
        require takerFee
        require ext_code.size(arg4)
        call arg4.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] / takerFee)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    return 1
}

function sub_044bc09f(?) payable {
    require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
         gas gas_remaining wei
        args 0, 0, arg1, address(arg2), arg3, arg4, arg5, address(arg6), arg7 << 248, arg8, arg9, arg10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.0x9e281a98 with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if takerFee <= 0:
        require ext_code.size(arg2)
        call arg2.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg3
    else:
        require takerFee
        require ext_code.size(arg2)
        call arg2.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg3 - (arg3 / takerFee)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    return 1
}



}
