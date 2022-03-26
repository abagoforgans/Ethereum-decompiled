contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 4705]




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of uint8 stor1;

function _fallback() {
    revert 
}

function createTradeContract(address arg1, uint256 arg2, uint256 arg3, bool arg4) {
    require arg3
    create contract with 0 wei
                    code: code.data[1562 len 3143], address(arg1), arg2, arg3, arg4
    require create.new_address
    stor0[address(create.new_address)] = 1
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf2fde38b with:
         gas gas_remaining - 50 wei
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
    call arg1.0x38d52e0f with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0x4b750334 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0x976a8435 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0x4ca50f59 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    return bool(stor0[address(arg1)]), 
           address(ext_call.return_data[0]),
           ext_call.return_data[0],
           ext_call.return_data[0],
           bool(ext_call.return_data[0])
}



}
