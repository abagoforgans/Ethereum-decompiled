contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 2816]




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of uint8 stor1;

function verify(address arg1) {
    return bool(stor0[arg1])
}

function _fallback() {
    revert 
}

function createTradeContract(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, bool arg5, bool arg6) {
    require arg2 <= arg3
    require arg4 != 0
    create contract with 0 wei
                    code: code.data[677 len 2139], address(arg1), arg2, arg3, arg4, arg5, arg6
    require create.new_address
    stor0[address(create.new_address)] = 1
    require ext_code.size(address(create.new_address))
    call address(create.new_address).transferOwnership(address rg1) with:
         gas gas_remaining - 50 wei
        args msg.sender
    require ext_call.success
    if not stor1[arg1][arg4]:
        stor1[arg1][arg4] = 1
        emit NewBook(sha3(arg1, arg4), address(arg1), arg4);
    emit TradeListing(sha3(arg1, arg4), msg.sender, address(create.new_address));
    return 0
}



}
