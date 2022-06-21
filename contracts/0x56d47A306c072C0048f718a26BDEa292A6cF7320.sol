contract main {




// =====================  Runtime code  =====================


#
#  - sub_faed9d06(?)
#
address owner;
address rbacAddress;
array of uint256 minterRole;
address signerAddress;

function signer() {
    return signerAddress
}

function owner() {
    return owner
}

function rbac() {
    return rbacAddress
}

function minterRole() {
    return minterRole[0 len minterRole.length]
}

function _fallback() payable {
    revert
}

function sub_d3be6051(?) {
    require msg.sender == owner
    require arg1
    rbacAddress = arg1
    emit 0x6def2c1c: rbacAddress
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_35bd9968(?) {
    hash = sha256hash(arg1, arg2, arg3, Mask(192, 64, arg4) >> 64, mem[328 len 8]) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return hash
}

function sub_7026fe9c(?) {
    require ext_code.size(rbacAddress)
    call rbacAddress.0x7026fe9c with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=arg1[all]), address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function hasRole(string arg1, address arg2) {
    require ext_code.size(rbacAddress)
    call rbacAddress.0x6c9cd097 with:
         gas gas_remaining wei
        args Array(len=arg1.length, data=arg1[all]), address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}



}
