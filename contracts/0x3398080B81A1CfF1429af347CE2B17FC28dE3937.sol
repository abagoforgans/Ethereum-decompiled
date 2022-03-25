contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 3544]




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of uint8 stor1;

function _fallback() {
    revert 
}

function createTradeContract(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, bool arg5, bool arg6) {
    require arg2 <= arg3
    require arg4 != 0
    create contract with 0 wei
                    code: code.data[1363 len 2181], address(arg1), arg2, arg3, arg4, arg5, arg6
    require create.new_address
    stor0[address(create.new_address)] = 1
    require ext_code.size(address(create.new_address))
    call address(create.new_address).transferOwnership(address rg1) with:
         gas gas_remaining - 50 wei
        args msg.sender
    require ext_call.success
    if 0 == bool(stor1[arg1][arg4]):
        stor1[arg1][arg4] = 1
        emit NewBook(sha3(arg1, arg4), address(arg1), arg4);
    emit TradeListing(sha3(arg1, arg4), msg.sender, address(create.new_address));
    return 0
}

function verify(address arg1) {
    if not stor0[address(arg1)]:
        return bool(stor0[address(arg1)]), 0, 0, 0, 0, 0, 0
    require ext_code.size(arg1)
    call arg1.asset() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.buyPrice() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.sellPrice() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.units() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.sellsTokens() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.buysTokens() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    return bool(stor0[address(arg1)]), 
           0,
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           bool(ext_call.return_data[0]),
           bool(ext_call.return_data[0])
}



}
