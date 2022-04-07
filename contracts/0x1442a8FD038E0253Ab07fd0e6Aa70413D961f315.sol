contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 6811]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function newBurnableOpenPayment(address arg1, string arg2, uint256 arg3, uint8 arg4, uint256 arg5) payable {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len 6121] = code.data[647 len 6121]
    mem[ceil32(arg2.length) + 6249] = arg1
    mem[ceil32(arg2.length) + 6313] = arg3
    require arg4 <= 2
    mem[ceil32(arg2.length) + 6345] = arg4
    mem[ceil32(arg2.length) + 6377] = arg5
    mem[ceil32(arg2.length) + 6281] = 160
    mem[ceil32(arg2.length) + 6409] = arg2.length
    if not arg2.length:
        if not arg2.length % 32:
            create contract with callvalue wei
                            code: code.data[647 len 6121], address(arg1), Array(len=arg5, data=arg2.length, mem[ceil32(arg2.length) + 6441 len arg2.length]), arg3, arg4 << 248
        else:
            mem[floor32(arg2.length) + ceil32(arg2.length) + 6441] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 6473 len arg2.length % 32]
            create contract with callvalue wei
                            code: code.data[647 len 6121], address(arg1), Array(len=arg5, data=arg2.length, mem[ceil32(arg2.length) + 6441 len floor32(arg2.length) + 32]), arg3, arg4 << 248
    else:
        mem[ceil32(arg2.length) + 6441] = mem[128]
        mem[ceil32(arg2.length) + 6473 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
        if not arg2.length % 32:
            create contract with callvalue wei
                            code: code.data[647 len 6121], address(arg1), Array(len=arg5, data=arg2.length, mem[ceil32(arg2.length) + 6441 len arg2.length]), arg3, arg4 << 248
        else:
            mem[floor32(arg2.length) + ceil32(arg2.length) + 6441] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 6473 len arg2.length % 32]
            create contract with callvalue wei
                            code: code.data[647 len 6121], address(arg1), Array(len=arg5, data=arg2.length, mem[128], mem[ceil32(arg2.length) + 6473 len floor32(arg2.length)]), arg3, arg4 << 248
    require create.new_address
    emit NewBOP(address(create.new_address));
    return address(create.new_address)
}



}
