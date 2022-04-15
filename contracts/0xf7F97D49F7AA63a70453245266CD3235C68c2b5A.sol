contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    require code.data[1188 len 20]
    stor0 = code.data[1188 len 20]
    return code.data[104 len 1072]
}



// =====================  Runtime code  =====================


address sub_5fcb246dAddress;

function sub_5fcb246d(?) {
    return sub_5fcb246dAddress
}

function _fallback() payable {
    revert
}

function sub_be000174(?) {
    s = 0
    idx = 5
    s = 0
    while idx > 0:
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 544] = 0
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 516] = sha3('user/ids', idx)
        require ext_code.size(sub_5fcb246dAddress)
        call sub_5fcb246dAddress.getAddressValue(bytes32 rg1) with:
             gas gas_remaining - 710 wei
            args sha3('user/ids', idx)
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 512] = ext_call.return_data[0]
        require ext_call.success
        require s < 5
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + (32 * s) + 352] = address(ext_call.return_data[0])
        s = ext_call.return_data[0]
        idx = idx - 1
        s = s + 1
        continue 
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 576 len 0] = None
    return Array(len=5, data=mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 576 len 160]), 
}



}
