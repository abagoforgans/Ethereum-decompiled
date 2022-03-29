contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = code.data[2111 len 20]
    return code.data[75 len 2024]
}



// =====================  Runtime code  =====================


address sub_44624e34Address;
mapping of struct sub_5fa80c12;
array of struct sub_ea2c43b0;

function sub_44624e34(?) {
    return sub_44624e34Address
}

function sub_5fa80c12(?) {
    return sub_5fa80c12[arg1].field_0, 
           sub_5fa80c12[arg1].field_256,
           sub_5fa80c12[arg1].field_512,
           bool(sub_5fa80c12[arg1].field_768)
}

function sub_ea2c43b0(?) {
    mem[224] = sub_ea2c43b0[arg1][1].field_0
    idx = 224
    s = 0
    while sub_ea2c43b0[arg1][1].length + 224 > idx + 32:
        mem[idx + 32] = sub_ea2c43b0[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return sub_ea2c43b0[arg1].field_0, 
           Array(len=sub_ea2c43b0[arg1][1].length, data=mem[224 len sub_ea2c43b0[arg1][1].length + (floor32(sub_ea2c43b0[arg1][1].length - 1) + -sub_ea2c43b0[arg1][1].length + 32 % 32)]),
           sub_ea2c43b0[arg1].field_512
}

function _fallback() payable {
    revert
}

function sub_5220ea95(?) {
    return sha3(arg1, arg2)
}

function lock(bytes32 arg1) {
    require ext_code.size(sub_44624e34Address)
    call sub_44624e34Address.0x39bc5a53 with:
         gas gas_remaining - 50 wei
        args tx.origin
    require ext_call.success
    if ext_call.return_data[0]:
        if 1 == bool(sub_5fa80c12[arg1].field_0):
            if not sub_5fa80c12[arg1].field_768:
                sub_5fa80c12[arg1].field_768 = 1
                emit 0xdf7bf8f1: 'ConfirmExecution', uint64(block.timestamp)
                emit 0x6c6f636b: 'ConfirmExecution', uint64(block.timestamp)
}

function sub_8b5f6abe(?) {
    require ext_code.size(sub_44624e34Address)
    call sub_44624e34Address.0x39bc5a53 with:
         gas gas_remaining - 50 wei
        args tx.origin
    require ext_call.success
    if ext_call.return_data[0]:
        if 1 == bool(sub_5fa80c12[arg1].field_0):
            if not sub_5fa80c12[arg1].field_768:
                sub_ea2c43b0[arg1][stor1[arg1].field_512].field_0 = arg2
                sub_ea2c43b0[arg1][stor1[arg1].field_512][1][].field_0 = Array(len=arg3.length, data=arg3[all])
                sub_ea2c43b0[arg1][stor1[arg1].field_512].field_512 = uint64(block.timestamp)
                sub_5fa80c12[arg1].field_512++
                if sub_5fa80c12[arg1].field_512 + 1 == 1:
                    emit 0xdf7bf8f1: 'ConfirmExecution', uint64(block.timestamp)
                    emit 0x63726561: 'ConfirmExecution', uint64(block.timestamp)
                else:
                    emit 0xdf7bf8f1: 'ConfirmExecution', uint64(block.timestamp), 'version' % 72057594037927936
}

function sub_1fc756ec(?) {
    require ext_code.size(sub_44624e34Address)
    call sub_44624e34Address.0x39bc5a53 with:
         gas gas_remaining - 50 wei
        args tx.origin
    require ext_call.success
    if ext_call.return_data[0]:
        if not sub_5fa80c12[arg1].field_0:
            sub_5fa80c12[arg1].field_0 = arg3
            sub_5fa80c12[arg1].field_256 = arg2
            sub_5fa80c12[arg1].field_512 = 0
            sub_5fa80c12[arg1].field_768 = 0
            require ext_code.size(sub_44624e34Address)
            call sub_44624e34Address.0x39bc5a53 with:
                 gas gas_remaining - 50 wei
                args tx.origin
            require ext_call.success
            if ext_call.return_data[0]:
                if 1 == bool(sub_5fa80c12[arg1].field_0):
                    if not sub_5fa80c12[arg1].field_768:
                        sub_ea2c43b0[arg1][stor1[arg1].field_512].field_0 = arg4
                        sub_ea2c43b0[arg1][stor1[arg1].field_512][1][].field_0 = Array(len=arg5.length, data=arg5[all])
                        sub_ea2c43b0[arg1][stor1[arg1].field_512].field_512 = uint64(block.timestamp)
                        sub_5fa80c12[arg1].field_512++
                        if sub_5fa80c12[arg1].field_512 + 1 == 1:
                            emit 0xdf7bf8f1: 'ConfirmExecution', uint64(block.timestamp)
                            emit 0x63726561: 'ConfirmExecution', uint64(block.timestamp)
                        else:
                            emit 0xdf7bf8f1: 'ConfirmExecution', uint64(block.timestamp), 'version' % 72057594037927936
}



}
