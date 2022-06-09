contract main {




// =====================  Runtime code  =====================


address authorityAddress;
address owner;

function owner() {
    return owner
}

function authority() {
    return authorityAddress
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    require msg.sender == owner
    owner = arg1
    emit LogSetOwner(owner);
}

function setAuthority(address arg1) {
    require msg.sender == owner
    authorityAddress = arg1
    emit LogSetAuthority(authorityAddress);
}

function sub_e9b1a792(?) {
    if arg1 == owner:
        return 1
    if not authorityAddress:
        return 0
    require ext_code.size(authorityAddress)
    call authorityAddress.0x91413637 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3, Array(len=arg4.length, data=arg4[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}



}
