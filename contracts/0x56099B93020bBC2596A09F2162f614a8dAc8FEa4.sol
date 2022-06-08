contract main {




// =====================  Runtime code  =====================


address owner;
uint8 stor1; offset 160
uint128 stor1; offset 160
address ownerAddress;
uint256 stor2;
uint256 stor3;
uint256 stor4;
array of struct user;
mapping of uint256 sub_e13f48da;
mapping of address star;
mapping of uint256 sub_8c06cc3d;

function user(address arg1) {
    return user[arg1].field_512
}

function star(uint256 arg1) {
    return star[arg1]
}

function sub_8c06cc3d(?) {
    return sub_8c06cc3d[arg1]
}

function owner() {
    return owner
}

function ownerAddress() {
    return ownerAddress
}

function sub_9454373f(?) {
    return bool(uint8(stor1.field_160))
}

function sub_e13f48da(?) {
    return sub_e13f48da[arg1]
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function sub_7fc65be7(?) {
    require msg.sender == owner
    star[arg1] = arg2
}

function sub_333b1687(?) {
    require msg.sender == owner
    sub_8c06cc3d[arg1] = arg2
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_61c1b21d(?) {
    require msg.sender == owner
    Mask(96, 0, stor1.field_160) = Mask(96, 0, arg1)
    stor2 = arg2
    stor3 = arg3
    stor4 = arg4
}

function sub_d3c004cc(?) payable {
    require msg.value >= 10^16
    require stor4 > 0
    require stor4
    require star[arg1]
    call star[arg1] with:
       value msg.value - (msg.value / stor4) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call ownerAddress with:
       value msg.value / stor4 wei
         gas 2300 * is_zero(value) wei
    emit 0x9bb057a1: arg1, msg.sender, msg.value
}

function sub_dc135fcf(?) payable {
    require msg.value >= 10^16
    if uint8(stor1.field_160):
        require star[arg1]
        call star[arg1] with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call ownerAddress with:
             gas 2300 wei
    else:
        require stor2 > 0
        require stor2
        require star[arg1]
        call star[arg1] with:
           value msg.value - (msg.value / stor2) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call ownerAddress with:
           value msg.value / stor2 wei
             gas 2300 * is_zero(value) wei
    emit 0x4da69d91: arg1, msg.sender, arg2, msg.value
}

function sub_2d16c08a(?) payable {
    require msg.value >= 10^16
    require stor3 > 0
    require stor3
    require star[arg1]
    call star[arg1] with:
       value msg.value - (msg.value / stor3) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call ownerAddress with:
       value msg.value / stor3 wei
         gas 2300 * is_zero(value) wei
    mem[96] = arg1
    mem[128] = arg2
    mem[160] = msg.value
    user[msg.sender].field_256++
    s = 3 * user[msg.sender].field_256
    idx = 96
    while 192 > idx:
        user[msg.sender][s + 1].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (3 * user[msg.sender].field_256) + 3
    while (3 * user[msg.sender].field_256) + 3 > idx:
        user[msg.sender][idx + 1].field_0 = 0
        idx = idx + 1
        continue 
    emit 0xdba1d294: arg1, arg2, msg.sender, msg.value
}

function sub_b8be4968(?) payable {
    require msg.value >= 10^16
    if 64 < arg2.length:
        revert with 0, 'Too long'
    require stor4 > 0
    require stor4
    require star[arg1]
    if not sub_8c06cc3d[arg1]:
        call star[arg1] with:
           value msg.value - (msg.value / stor4) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call 0x0 with:
             gas 2300 wei
    else:
        call star[arg1] with:
           value msg.value - (msg.value / stor4) - (msg.value / 5) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call star[stor8[arg1]] with:
           value msg.value / 5 wei
             gas 2300 * is_zero(value) wei
    call ownerAddress with:
       value msg.value / stor4 wei
         gas 2300 * is_zero(value) wei
    emit 0x4c325d02: arg1, msg.sender, Array(len=arg2.length, data=arg2[all]), msg.value, sub_8c06cc3d[arg1]
}

function buyStoreItem(uint256 arg1, uint256 arg2) payable {
    require msg.value >= 10^16
    if uint8(stor1.field_160):
        require star[arg2]
        if not sub_8c06cc3d[arg2]:
            call star[arg2] with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call 0x0 with:
                 gas 2300 wei
        else:
            call star[arg2] with:
               value msg.value - (msg.value / 5) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call star[stor8[arg2]] with:
               value msg.value / 5 wei
                 gas 2300 * is_zero(value) wei
        call ownerAddress with:
             gas 2300 wei
    else:
        require stor3 > 0
        require stor3
        require star[arg2]
        if not sub_8c06cc3d[arg2]:
            call star[arg2] with:
               value msg.value - (msg.value / stor3) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call 0x0 with:
                 gas 2300 wei
        else:
            call star[arg2] with:
               value msg.value - (msg.value / stor3) - (msg.value / 5) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call star[stor8[arg2]] with:
               value msg.value / 5 wei
                 gas 2300 * is_zero(value) wei
        call ownerAddress with:
           value msg.value / stor3 wei
             gas 2300 * is_zero(value) wei
    emit 0x81eb2ab5: arg2, arg1, msg.sender, msg.value, sub_8c06cc3d[arg2]
}

function sub_2945acd5(?) payable {
    require msg.value >= 10^16
    if uint8(stor1.field_160):
        require star[arg2]
        if not sub_8c06cc3d[arg2]:
            call star[arg2] with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call 0x0 with:
                 gas 2300 wei
        else:
            call star[arg2] with:
               value msg.value - (msg.value / 5) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call star[stor8[arg2]] with:
               value msg.value / 5 wei
                 gas 2300 * is_zero(value) wei
        call ownerAddress with:
             gas 2300 wei
    else:
        require stor3 > 0
        require stor3
        require star[arg2]
        if not sub_8c06cc3d[arg2]:
            call star[arg2] with:
               value msg.value - (msg.value / stor3) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call 0x0 with:
                 gas 2300 wei
        else:
            call star[arg2] with:
               value msg.value - (msg.value / stor3) - (msg.value / 5) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call star[stor8[arg2]] with:
               value msg.value / 5 wei
                 gas 2300 * is_zero(value) wei
        call ownerAddress with:
           value msg.value / stor3 wei
             gas 2300 * is_zero(value) wei
    user[msg.sender].field_0++
    user[msg.sender][user[msg.sender].field_0].field_0 = arg1
    emit 0x102343d7: msg.sender, arg1, msg.value, sub_8c06cc3d[arg2]
}



}
