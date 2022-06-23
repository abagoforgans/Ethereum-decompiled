contract main {




// =====================  Runtime code  =====================


array of uint256 vow;
address promisorAddress;
address beneficiaryAddress;
uint256 deposit;
uint256 endDate;
array of address sub_b06b0368;
array of uint256 sub_7367c5eb;
uint256 stor9;
uint256 stor10;
uint8 sub_7d9d906c;
array of uint256 sub_c41bcb1b;
uint256 sub_bc408b13;
array of uint256 sub_0c039f19;
uint256 sub_375c7bbf;
array of uint256 sub_d90b977b;
uint256 sub_ac456ec3;
uint8 sub_56ab648c;

function sub_0c039f19(?) {
    require arg1 < 3
    return sub_0c039f19[arg1]
}

function sub_375c7bbf(?) {
    return sub_375c7bbf
}

function beneficiary() {
    return beneficiaryAddress
}

function sub_56ab648c(?) {
    return bool(sub_56ab648c)
}

function vow() {
    return vow[0 len vow.length]
}

function sub_7367c5eb(?) {
    require arg1 < 3
    return sub_7367c5eb[arg1]
}

function sub_7d9d906c(?) {
    return bool(sub_7d9d906c)
}

function sub_ac456ec3(?) {
    return sub_ac456ec3
}

function sub_b06b0368(?) {
    require arg1 < 3
    return sub_b06b0368[arg1]
}

function sub_bc408b13(?) {
    return sub_bc408b13
}

function endDate() {
    return endDate
}

function promisor() {
    return promisorAddress
}

function sub_c41bcb1b(?) {
    require arg1 < 3
    return sub_c41bcb1b[arg1]
}

function deposit() {
    return deposit
}

function sub_d90b977b(?) {
    require arg1 < 3
    return sub_d90b977b[arg1]
}

function selfDestruct() {
    require sub_56ab648c
    require block.timestamp >= endDate + (120 * 24 * 3600)
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function sub_1309f013(?) {
    require arg1 < 3
    require msg.sender == sub_b06b0368[arg1]
    require arg1 < 3
    sub_7367c5eb[arg1] = 1
}

function sub_c44f1174(?) payable {
    require msg.sender == promisorAddress
    require 1 == sub_7367c5eb.length
    require 1 == stor9
    require 1 == stor10
    require not sub_7d9d906c
    require msg.value == deposit
    sub_7d9d906c = 1
}

function sub_3fb74d81(?) {
    require sub_7d9d906c
    require arg1 < 3
    require msg.sender == sub_b06b0368[arg1]
    require arg1 < 3
    require sub_0c039f19[arg1] != 1
    require arg1 < 3
    require sub_c41bcb1b[arg1] != 1
    sub_375c7bbf++
    require arg1 < 3
    sub_0c039f19[arg1] = 1
    if 2 <= sub_375c7bbf:
        if not sub_56ab648c:
            call promisorAddress with:
               value deposit wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            sub_56ab648c = 1
}

function sub_b31c9ae8(?) {
    require sub_7d9d906c
    require arg1 < 3
    require msg.sender == sub_b06b0368[arg1]
    require arg1 < 3
    require sub_d90b977b[arg1] != 1
    require arg1 < 3
    require sub_c41bcb1b[arg1] != 1
    sub_ac456ec3++
    require arg1 < 3
    sub_d90b977b[arg1] = 1
    if 2 <= sub_ac456ec3:
        if not sub_56ab648c:
            call promisorAddress with:
               value deposit wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            sub_56ab648c = 1
}

function sub_5a84eff2(?) {
    require sub_7d9d906c
    require arg1 < 3
    require msg.sender == sub_b06b0368[arg1]
    require arg1 < 3
    require sub_c41bcb1b[arg1] != 1
    require arg1 < 3
    require sub_0c039f19[arg1] != 1
    require arg1 < 3
    require sub_d90b977b[arg1] != 1
    sub_bc408b13++
    require arg1 < 3
    sub_c41bcb1b[arg1] = 1
    if 2 <= sub_bc408b13:
        if not sub_56ab648c:
            call beneficiaryAddress with:
               value deposit wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            sub_56ab648c = 1
}



}
