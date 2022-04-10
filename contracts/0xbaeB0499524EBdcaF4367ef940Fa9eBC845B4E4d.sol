contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 7911]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function newBurnableOpenPayment(address arg1, uint256 arg2, uint8 arg3, uint256 arg4, string arg5) payable {
    mem[128 len arg5.length] = arg5[all]
    mem[ceil32(arg5.length) + 128 len 7029] = code.data[839 len 7029]
    require arg3 <= 2
    create contract with callvalue wei
                    code: code.data[839 len 7029], address(arg1), arg2, arg3 << 248, arg4, 160, arg5.length, Mask(8 * arg5.length, -(8 * arg5.length) + 256, arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]) << (8 * arg5.length) - 256
    require create.new_address
    require arg3 <= 2
    emit NewBOP(address(create.new_address), address(arg1), arg2, arg3 << 248, arg4, Array(len=arg5.length, data=arg5[all]));
    return address(create.new_address)
}



}
