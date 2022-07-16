contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 stor1;
uint256 returnWalletTxCount;

function returnWalletTxCount() {
    return returnWalletTxCount
}

function returnUserAccountAddress() {
    require ext_code.size(stor0)
    staticcall stor0.0xec9614a1 with:
            gas gas_remaining wei
           args stor1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function _fallback() payable {
    if msg.value > 0:
        emit Deposit(msg.value, msg.sender);
    if calldata.size <= 0:
    require ext_code.size(stor0)
    staticcall stor0.0xb0bb7ebd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    staticcall ext_call.return_data[0] with:
         funct call.data[0 len 4]
            gas gas_remaining wei
           args call.data[4 len calldata.size - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function callTx(bytes arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[64] = ceil32(arg1.length) + ceil32(arg4.length) + 160
    mem[ceil32(arg1.length) + 128] = arg4.length
    mem[ceil32(arg1.length) + 160 len arg4.length] = arg4[all]
    mem[ceil32(arg1.length) + arg4.length + 160] = 0
    require ext_code.size(stor0)
    staticcall stor0.0xd9ea7ed5 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require bool(ext_call.return_data[0]) == 1
    require ext_code.size(stor0)
    staticcall stor0.0xec9614a1 with:
            gas gas_remaining wei
           args stor1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 160] = 0xa334f5c400000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 260] = returnWalletTxCount
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 292] = arg4.length
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 324 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg1.length) + arg4.length + 160 len ceil32(arg4.length) - arg4.length]
    require ext_code.size(stor0)
    staticcall stor0 with:
            gas gas_remaining wei
           args Array(len=arg4.length, data=arg4[all]), address(arg2), arg3, returnWalletTxCount
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 164] = ext_call.return_data[0]
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 196] = 64
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 228] = arg1.length
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 260 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    require ext_code.size(stor0)
    staticcall stor0 with:
            gas gas_remaining wei
           args ext_call.return_data[0], Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == address(ext_call.return_data[0])
    call arg2.mem[ceil32(arg1.length) + 160 len 4] with:
       value arg3 wei
         gas gas_remaining - 34710 wei
        args mem[ceil32(arg1.length) + 164 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] - 4]
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 160] = arg3
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 192] = 64
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 224] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 256 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    if not ext_call.success:
        if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
            emit ExecutionFailure(address arg1, uint256 arg2, bytes arg3):
                                  mem[ceil32(arg1.length) + ceil32(arg4.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 96],
                                  arg2,
        else:
            mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(arg4.length) + 256] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 288 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
            emit ExecutionFailure(address arg1, uint256 arg2, bytes arg3):
                                  mem[ceil32(arg1.length) + ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 128],
                                  arg2,
    else:
        if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
            emit Execution(address arg1, uint256 arg2, bytes arg3):
                           mem[ceil32(arg1.length) + ceil32(arg4.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 96],
                           arg2,
        else:
            mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(arg4.length) + 256] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + ceil32(arg4.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 288 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
            emit Execution(address arg1, uint256 arg2, bytes arg3):
                           mem[ceil32(arg1.length) + ceil32(arg4.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 128],
                           arg2,
    returnWalletTxCount++
    return 0, 1
}



}
