contract main {




// =====================  Runtime code  =====================


address contractOwner;
array of uint256 stor1;
uint256 sub_ac455d87;
address tokenContractAddress;
address sub_363e998dAddress;
address sub_3a822ff3Address;
uint256 balance;
address sub_debe86edAddress;
address tokenContractAddress;

function sub_363e998d(?) {
    return sub_363e998dAddress
}

function sub_3a822ff3(?) {
    return sub_3a822ff3Address
}

function tokenContract() {
    return tokenContractAddress
}

function tokenContractAddress() {
    return tokenContractAddress
}

function sub_ac455d87(?) {
    return sub_ac455d87
}

function balance() {
    return balance
}

function contractOwner() {
    return contractOwner
}

function sub_debe86ed(?) {
    return sub_debe86edAddress
}

function sub_0ce62df4(?) {
    require msg.sender == contractOwner
    selfdestruct(arg1)
}

function _fallback() payable {
    revert
}

function sub_0758eb47(?) {
    require msg.sender == sub_363e998dAddress
    require not sub_ac455d87
    require arg1
    sub_ac455d87 = arg1
    return 1
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    require msg.sender == tokenContractAddress
    require arg2 + balance >= balance
    balance += arg2
    require ext_code.size(sub_debe86edAddress)
    call sub_debe86edAddress.0x53d1f1bb with:
         gas gas_remaining wei
        args sub_ac455d87
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_debe86edAddress)
    call sub_debe86edAddress.0x84e9c671 with:
         gas gas_remaining wei
        args sub_ac455d87
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require bool(ext_call.return_data[0]) != 1
    if ext_call.return_data[0] <= balance:
        require ext_code.size(sub_debe86edAddress)
        call sub_debe86edAddress.0xc9365045 with:
             gas gas_remaining wei
            args sub_ac455d87
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_941398eb(?) {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    require msg.sender == sub_363e998dAddress
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    _58 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])
    mem[0] = 1
    mem[ceil32(arg1.length) + 128] = stor1
    idx = mem[64]
    s = 0
    while ceil32(arg1.length) + stor1.length + 128 > idx + 32:
        mem[idx + 32] = stor[s + sha3(mem[0]) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    require sha3(mem[mem[64] len ceil32(arg1.length) + stor1.length + -mem[64] + 128]) == _58
    require ext_code.size(sub_debe86edAddress)
    call sub_debe86edAddress.0x53d1f1bb with:
         gas gas_remaining wei
        args sub_ac455d87
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_debe86edAddress)
    call sub_debe86edAddress.0xdc14795d with:
         gas gas_remaining wei
        args sub_ac455d87
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_debe86edAddress)
    call sub_debe86edAddress.0x377aebf8 with:
         gas gas_remaining wei
        args sub_ac455d87
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= ext_call.return_data[0]
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xa9059cbb with:
         gas gas_remaining wei
        args sub_3a822ff3Address, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}



}
