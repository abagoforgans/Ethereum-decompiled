contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 7962]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function newBurnableOpenPayment(address arg1, string arg2, uint256 arg3, uint8 arg4, uint256 arg5) payable {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len 7272] = code.data[647 len 7272]
    mem[ceil32(arg2.length) + 7400] = arg1
    mem[ceil32(arg2.length) + 7464] = arg3
    require arg4 <= 2
    mem[ceil32(arg2.length) + 7496] = arg4
    mem[ceil32(arg2.length) + 7528] = arg5
    mem[ceil32(arg2.length) + 7432] = 160
    mem[ceil32(arg2.length) + 7560] = arg2.length
    if not arg2.length:
        if not arg2.length % 32:
            create contract with callvalue wei
                            code: code.data[647 len 7272], address(arg1), Array(len=arg5, data=arg2.length, mem[ceil32(arg2.length) + 7592 len arg2.length]), arg3, arg4 << 248
        else:
            mem[floor32(arg2.length) + ceil32(arg2.length) + 7592] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 7624 len arg2.length % 32]
            create contract with callvalue wei
                            code: code.data[647 len 7272], address(arg1), Array(len=arg5, data=arg2.length, mem[ceil32(arg2.length) + 7592 len floor32(arg2.length) + 32]), arg3, arg4 << 248
    else:
        mem[ceil32(arg2.length) + 7592] = mem[128]
        mem[ceil32(arg2.length) + 7624 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
        if not arg2.length % 32:
            create contract with callvalue wei
                            code: code.data[647 len 7272], address(arg1), Array(len=arg5, data=arg2.length, mem[ceil32(arg2.length) + 7592 len arg2.length]), arg3, arg4 << 248
        else:
            mem[floor32(arg2.length) + ceil32(arg2.length) + 7592] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 7624 len arg2.length % 32]
            create contract with callvalue wei
                            code: code.data[647 len 7272], address(arg1), Array(len=arg5, data=arg2.length, mem[128], mem[ceil32(arg2.length) + 7624 len floor32(arg2.length)]), arg3, arg4 << 248
    require create.new_address
    emit NewBOP(address(create.new_address));
    return address(create.new_address)
}



}
