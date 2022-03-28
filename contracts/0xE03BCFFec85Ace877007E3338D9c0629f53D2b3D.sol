contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 1495]




// =====================  Runtime code  =====================


address settingsAddress;

function settings() {
    return settingsAddress
}

function _fallback() payable {
    revert
}

function sub_bb91b6e4(?) {
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        return 0
    emit 0x6b29b730: arg2, arg1
    return 1
}

function sub_b26b467a(?) {
    require ext_code.size(arg2)
    call arg2.0x5457b3b9 with:
         gas gas_remaining - 50 wei
        args arg3, arg1
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function sub_73f70407(?) {
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 50 wei
        args address(arg2), arg3
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function apiAddress() {
    require ext_code.size(settingsAddress)
    call settingsAddress.0xa671152 with:
         gas gas_remaining - 50 wei
        args 0
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function initialize(address arg1) {
    require ext_code.size(arg1)
    call arg1.0xbea27e7c with:
         gas gas_remaining - 50 wei
        args Mask(32, 224, sha3('forwardERC20(address,address,uin', 't256)')), 32
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xbea27e7c with:
         gas gas_remaining - 50 wei
        args Mask(32, 224, sha3('forwardFundToken(address,address', ',uint256)')), 32
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xbea27e7c with:
         gas gas_remaining - 50 wei
        args Mask(32, 224, sha3('forwardEther(address,uint256)')), 32
    require ext_call.success
}



}
