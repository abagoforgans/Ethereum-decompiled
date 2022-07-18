contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
uint256 stor2;
mapping of address stor3;

function owner() {
    return owner
}

function _fallback() {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function ownerWithdrawERC20Token(address arg1, uint256 arg2) {
    require msg.sender == owner
    emit OwnerWithdrewERC20Token(arg2, arg1);
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function list() {
    if stor2:
        mem[128 len 32 * stor2] = code.data[4574 len 32 * stor2]
    mem[0] = 0
    mem[32] = 3
    idx = stor[sha3(mem[0 len 64])]
    s = 0
    while address(idx):
        require s < stor2
        mem[(32 * s) + 128] = address(idx)
        mem[0] = address(idx)
        mem[32] = 3
        idx = stor3[address(idx)]
        s = s + 1
        continue 
    mem[(32 * stor2) + 192 len floor32(stor2)] = mem[128 len floor32(stor2)]
    return Array(len=stor2, data=mem[128 len floor32(stor2)], mem[(32 * stor2) + floor32(stor2) + 192 len (32 * stor2) - floor32(stor2)]), 
}

function createTradeContract(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, bool arg5, bool arg6) {
    require arg1
    require ext_code.size(arg1)
    call arg1.0xdd62ed3e with:
         gas gas_remaining wei
        args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2 > 0
    require arg3 > 0
    require arg2 < arg3
    require arg4 > 0
    create contract with 0 wei
                    code: code.data[4574 len 7462], address(arg1), arg2, arg3, arg4, arg5, arg6
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stor1[address(create.new_address)] = 1
    stor3[address(create.new_address)] = stor3[0]
    stor3[0] = address(create.new_address)
    stor2++
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf2fde38b with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit TradeListing(arg2, arg3, arg4, arg5, arg6, msg.sender, address(create.new_address), arg1);
    return address(create.new_address)
}

function verify(address arg1) {
    if not stor1[address(arg1)]:
        return bool(stor1[address(arg1)]), 0, 0, 0, 0, 0, 0, 0
    require ext_code.size(arg1)
    call arg1.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.asset() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0x8620410b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0x4b750334 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.units() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.buysTokens() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.sellsTokens() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(stor1[address(arg1)]), 
           address(ext_call.return_data[0]),
           address(ext_call.return_data[0]),
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           bool(ext_call.return_data[0]),
           bool(ext_call.return_data[0])
}



}
