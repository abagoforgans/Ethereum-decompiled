contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
array of uint256 stor3;
array of uint256 stor4;
array of uint256 stor5;

function _fallback() payable {
    stor0 = 0xadaf348788f590709bd1a71af7c29ebfad8aa057
    stor1 = 0xc8bd5d1681aec511617d5385b23d7964931d635
    stor3.length = 0
    idx = 0
    while stor3.length > idx:
        stor3[idx] = 0
        idx = idx + 1
        continue 
    bool(stor4.length) = 0
    stor4.length.field_1 = 8
    stor4.length.field_8 = 'MVP Coin' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor5.length) = 0
    stor5.length.field_1 = 3
    stor5.length.field_8 = 'MVP' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    return code.data[677 len 2764]
}



// =====================  Runtime code  =====================


const getNow = block.timestamp


address beneficiaryAddress;
address stor1;
mapping of struct sub_634204dc;
array of uint256 sub_1c5f91e3;
array of uint256 name;
array of uint256 symbol;

function name() {
    return name[0 len name.length]
}

function sub_1c5f91e3(?) {
    require arg1 < sub_1c5f91e3.length
    return sub_1c5f91e3[arg1]
}

function beneficiary() {
    return beneficiaryAddress
}

function sub_634204dc(?) {
    return sub_634204dc[arg1].field_0
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_e11c1e66(?) {
    return sub_634204dc[arg1].field_256
}

function _fallback() payable {
    revert
}

function totalBalance() {
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function release(uint256 arg1) {
    require block.timestamp >= sub_634204dc[arg1].field_256
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] > 0
    require sub_634204dc[arg1].field_0 > 0
    require ext_call.return_data[0] >= sub_634204dc[arg1].field_0
    sub_634204dc[arg1].field_0 = 0
    sub_634204dc[arg1].field_256 = 0
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args beneficiaryAddress, sub_634204dc[arg1].field_0
    require ext_call.success
}

function lockedBalance() {
    idx = 0
    s = 0
    s = 0
    while idx < sub_1c5f91e3.length:
        mem[0] = sub_1c5f91e3[idx]
        mem[32] = 2
        idx = idx + 1
        s = sub_1c5f91e3[idx]
        s = s + sub_634204dc[stor3[idx]].field_0
        continue 
    return (s * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length)
}

function lock(uint256 arg1, uint256 arg2) {
    idx = 0
    s = 0
    s = 0
    while idx < sub_1c5f91e3.length:
        mem[0] = sub_1c5f91e3[idx]
        mem[32] = 2
        idx = idx + 1
        s = sub_1c5f91e3[idx]
        s = s + sub_634204dc[stor3[idx]].field_0
        continue 
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] - (s * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length) > 0
    require not sub_634204dc[arg1].field_0
    sub_634204dc[arg1].field_0 = ext_call.return_data[0] - (s * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length * sub_1c5f91e3.length)
    if arg2:
        sub_634204dc[arg1].field_256 = block.timestamp + (24 * 3600 * arg2)
    else:
        sub_634204dc[arg1].field_256 = block.timestamp + (8760 * 24 * 3600)
    sub_1c5f91e3.length++
    if not sub_1c5f91e3.length <= sub_1c5f91e3.length + 1:
        idx = sub_1c5f91e3.length + 1
        while sub_1c5f91e3.length > idx:
            sub_1c5f91e3[idx] = 0
            idx = idx + 1
            continue 
    sub_1c5f91e3[sub_1c5f91e3.length] = arg1
    return 1
}



}
