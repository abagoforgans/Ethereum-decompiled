contract main {




// =====================  Runtime code  =====================


address sub_949b61c2Address;
mapping of uint8 stor1;

function sub_949b61c2(?) {
    return sub_949b61c2Address
}

function sub_eb196545(?) {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
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

function sub_8e4ee55c(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('TransferModule'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Allowed only for the transfer module.'
    stor1[arg1] = uint8(arg2)
}

function sub_bc87872c(?) {
    require calldata.size - 4 >= 256
    require ext_code.size(sub_949b61c2Address)
    staticcall sub_949b61c2Address.0x792a0a80 with:
            gas gas_remaining wei
           args Mask(32, 224, sha3('TransferModule'))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Allowed only for the transfer module.'
    emit 0x75ad03ec: address(arg4), arg5, arg6, arg7, arg8, arg1, arg2, arg3
}



}
