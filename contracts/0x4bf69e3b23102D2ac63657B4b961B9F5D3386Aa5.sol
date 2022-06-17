contract main {




// =====================  Runtime code  =====================


address sub_949b61c2Address;
uint256 sub_32d414dc;

function sub_32d414dc(?) {
    return sub_32d414dc
}

function sub_949b61c2(?) {
    return sub_949b61c2Address
}

function _fallback() payable {
    revert
}

function sub_0256a287(?) {
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('TransferModule'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function setTransactionId(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('TransferModule'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Allowed only for the transfer module.'
    sub_32d414dc = arg1
}

function sub_708a62d2(?) {
    require calldata.size - 4 >= 192
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('TransferModule'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Allowed only for the transfer module.'
    emit 0x261650ea: arg4, arg5, arg6, arg1, arg2, arg3
}



}
