contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 5413]




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of uint8 stor1;

function _fallback() {
    revert
}

function createTradeContract(address arg1, uint256 arg2, uint256 arg3, bool arg4) {
    require arg3
    create contract with 0 wei
                    code: code.data[1949 len 3421], address(arg1), arg2, arg3, arg4
    require create.new_address
    stor0[address(create.new_address)] = 1
    require ext_code.size(address(create.new_address))
    call address(create.new_address).transferOwnership(address rg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    if not stor1[arg1][arg3]:
        stor1[arg1][arg3] = 1
        emit NewBook(sha3(arg1, arg3), address(arg1), arg3);
    emit TradeListing(sha3(arg1, arg3), msg.sender, address(create.new_address));
    return 0
}

function verify(address arg1) {
    if not stor0[address(arg1)]:
        return bool(stor0[address(arg1)]), 0, 0, 0, 0
    require ext_code.size(arg1)
    call arg1.asset() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.sellPrice() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.units() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.sellsTokens() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return bool(stor0[address(arg1)]), 0, ext_call.return_data[0], ext_call.return_data[0], bool(ext_call.return_data[0])
}



}
