contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 7904]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function newBurnableOpenPayment(address arg1, string arg2, uint256 arg3, uint8 arg4, uint256 arg5) payable {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len 7222] = code.data[639 len 7222]
    require arg4 <= 2
    mem[ceil32(arg2.length) + 7542 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        create contract with callvalue wei
                        code: code.data[639 len 7222], address(arg1), Array(len=arg5, data=arg2.length, Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256), arg3, arg4 << 248
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 7542] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 7574 len arg2.length % 32]
        create contract with callvalue wei
                        code: code.data[639 len 7222], address(arg1), Array(len=arg5, data=arg2.length, Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + 7542 len floor32(arg2.length) + -ceil32(arg2.length) + 32]), arg3, arg4 << 248
    require create.new_address
    emit NewBOP(address(create.new_address));
    return address(create.new_address)
}



}
