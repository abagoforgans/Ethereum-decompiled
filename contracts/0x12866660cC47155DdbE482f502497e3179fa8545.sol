contract main {




// =====================  Runtime code  =====================


address rbacAddress;
array of struct sub_1432a7da;

function sub_1432a7da(?) {
    return sub_1432a7da[0 len sub_1432a7da.length].field_0
}

function rbac() {
    return rbacAddress
}

function _fallback() payable {
    revert
}

function accept(address arg1) {
    revert
}

function reject(address arg1) {
    revert
}

function setManager(address arg1) {
    revert
}

function isAccepted(address arg1) {
    mem[196] = uint256(sub_1432a7da.field_0)
    idx = 196
    s = 0
    while sub_1432a7da.length + 196 > idx + 32:
        mem[idx + 32] = sub_1432a7da[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require ext_code.size(rbacAddress)
    call rbacAddress.hasRole(string arg1, address arg2) with:
         gas gas_remaining wei
        args Array(len=sub_1432a7da.length, data=mem[196 len sub_1432a7da.length + (floor32(sub_1432a7da.length - 1) + -sub_1432a7da.length + 32 % 32)]), address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}



}
