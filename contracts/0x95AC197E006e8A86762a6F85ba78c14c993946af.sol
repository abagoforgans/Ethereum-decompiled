contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() {
    create contract with 0 wei
                    code: code.data[1049 len 9042]
    require create.new_address
    stor1 = address(create.new_address)
    return code.data[144 len 905]
}



// =====================  Runtime code  =====================


address mainAddress;
address mAddress;

function mainAddress() {
    return mainAddress
}

function m() {
    return mAddress
}

function _fallback() payable {
    revert
}

function sub_5ed81e5b(?) {
    mainAddress = arg1
    return 1
}

function sub_4debd5df(?) {
    mAddress = arg1
    require ext_code.size(mAddress)
    call mAddress.0xab82782c with:
         gas gas_remaining - 50 wei
        args 0xccc8a6a72f0c83362d858b580cc4e81f107f30b0
    require ext_call.success
    return bool(ext_call.return_data[0])
}



}
