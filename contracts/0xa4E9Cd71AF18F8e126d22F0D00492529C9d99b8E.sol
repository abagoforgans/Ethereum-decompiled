contract main {




// =====================  Runtime code  =====================


const userAddress = 0x557fa19371f9786704e9767f25839047da1602c7


uint256 sub_1eb40824;

function sub_136d5419(?) {
    return sub_1eb40824
}

function sub_1eb40824(?) {
    return sub_1eb40824
}

function sub_89d21eab(?) {
    return sha3('Tx_signature', sub_1eb40824)
}

function _fallback() payable {
    if msg.value > 0:
        emit Deposit(msg.value, msg.sender);
}

function callTx(bytes arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = arg4.length
    mem[ceil32(arg1.length) + 160 len arg4.length] = arg4[all]
    mem[ceil32(arg1.length) + arg4.length + 160] = 0
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 160] = 96
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 192] = 0
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 288] = 12
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 320] = 'Tx_signature'
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 224] = ceil32(arg1.length) + ceil32(arg4.length) + 288
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 256] = sub_1eb40824
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 416] = sub_1eb40824
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 384] = 64
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 448] = 12
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 480] = Mask(96, 0, 'Tx_signature')
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 352] = 128
    if arg1.length != 65:
        return 0
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
            return 0
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 544] = sha3('Tx_signature', sub_1eb40824)
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 576] = uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27)
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 608] = mem[128]
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 640] = mem[160]
    signer = erecover(sha3('Tx_signature', sub_1eb40824), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    mem[ceil32(arg1.length) + ceil32(arg4.length) + 512] = signer
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) != 0x557fa19371f9786704e9767f25839047da1602c7:
        return 0
    call arg2.mem[ceil32(arg1.length) + 160 len 4] with:
       value arg3 wei
         gas gas_remaining - 34710 wei
        args mem[ceil32(arg1.length) + 164 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] - 4]
    if not ext_call.success:
        emit ExecutionFailure(sub_1eb40824 - 1);
    else:
        sub_1eb40824++
        emit Execution(sub_1eb40824 - 1);
    return 1
}



}
