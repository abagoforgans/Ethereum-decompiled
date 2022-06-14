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
mapping of address star;
mapping of uint256 sub_8c06cc3d;

function user(address arg1) {
    require calldata.size - 4 >= 32
    return user[arg1].field_512
}

function star(uint256 arg1) {
    require calldata.size - 4 >= 32
    return star[arg1]
}

function sub_8c06cc3d(?) {
    require calldata.size - 4 >= 32
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

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function sub_7fc65be7(?) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    star[arg1] = arg2
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_333b1687(?) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    sub_8c06cc3d[arg1] = arg2
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_61c1b21d(?) {
    require calldata.size - 4 >= 128
    require msg.sender == owner
    Mask(96, 0, stor1.field_160) = Mask(96, 0, arg1)
    stor2 = arg2
    stor3 = arg3
    stor4 = arg4
}

function sub_3dce3d03(?) payable {
    require calldata.size - 4 >= 32
    require msg.value >= 10^16
    call ownerAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xc7f091a0: arg1, msg.value
}

function sub_4a49760b(?) payable {
    require calldata.size - 4 >= 64
    require msg.value >= 10^16
    require stor3 > 0
    require stor3
    require star[arg2]
    call star[arg2] with:
       value msg.value - (msg.value / stor3) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call ownerAddress with:
       value msg.value / stor3 wei
         gas 2300 * is_zero(value) wei
    emit 0xda84bf49: arg1, arg2, msg.value
}

function sub_788492d9(?) payable {
    require calldata.size - 4 >= 64
    require msg.value >= 10^16
    require stor4 > 0
    require stor4
    require star[arg2]
    call star[arg2] with:
       value msg.value - (msg.value / stor4) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call ownerAddress with:
       value msg.value / stor4 wei
         gas 2300 * is_zero(value) wei
    emit 0xa0e6810c: arg1, arg2, msg.value
}

function sub_033700c4(?) payable {
    require calldata.size - 4 >= 96
    require msg.value >= 10^16
    require stor2 > 0
    require stor2
    require star[arg2]
    if not uint8(stor1.field_160):
        call star[arg2] with:
           value msg.value - (msg.value / stor2) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call ownerAddress with:
           value msg.value / stor2 wei
             gas 2300 * is_zero(value) wei
    else:
        call star[arg2] with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call ownerAddress with:
             gas 2300 wei
    emit 0xa2e9aff7: arg1, arg2, arg3, msg.value
}

function sub_53989b8f(?) payable {
    require calldata.size - 4 >= 96
    require msg.value >= 10^16
    require arg3 > 0
    require arg1 > 0
    require stor3 > 0
    require stor3
    require star[arg2]
    call star[arg2] with:
       value msg.value - (msg.value / stor3) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call ownerAddress with:
       value msg.value / stor3 wei
         gas 2300 * is_zero(value) wei
    mem[96] = arg2
    mem[128] = arg3
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
    emit 0x1d1d905e: arg1, arg2, arg3, msg.value
}

function sub_d4d49b13(?) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require msg.value >= 10^16
    if 64 < arg3.length:
        revert with 0, 'Too long'
    require stor4 > 0
    require stor4
    require star[arg2]
    if not sub_8c06cc3d[arg2]:
        call star[arg2] with:
           value msg.value - (msg.value / stor4) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call 0x0 with:
             gas 2300 wei
    else:
        call star[arg2] with:
           value msg.value - (msg.value / stor4) - (msg.value / 5) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call star[stor7[arg2]] with:
           value msg.value / 5 wei
             gas 2300 * is_zero(value) wei
    call ownerAddress with:
       value msg.value / stor4 wei
         gas 2300 * is_zero(value) wei
    mem[ceil32(arg3.length) + 128] = arg1
    mem[ceil32(arg3.length) + 160] = arg2
    emit 0x7b3ddb47: Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len ceil32(arg3.length) + -arg3.length + 32], Array(len=arg3.length, data=arg3[all]), msg.value, sub_8c06cc3d[arg2]
}

function sub_26b12ba2(?) payable {
    require calldata.size - 4 >= 96
    require msg.value >= 10^16
    require arg2 > 0
    require arg1 > 0
    require stor3 > 0
    require stor3
    require star[arg3]
    if not uint8(stor1.field_160):
        if not sub_8c06cc3d[arg3]:
            call star[arg3] with:
               value msg.value - (msg.value / stor3) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call 0x0 with:
                 gas 2300 wei
        else:
            call star[arg3] with:
               value msg.value - (msg.value / stor3) - (msg.value / 5) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call star[stor7[arg3]] with:
               value msg.value / 5 wei
                 gas 2300 * is_zero(value) wei
        call ownerAddress with:
           value msg.value / stor3 wei
             gas 2300 * is_zero(value) wei
    else:
        if not sub_8c06cc3d[arg3]:
            call star[arg3] with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call 0x0 with:
                 gas 2300 wei
        else:
            call star[arg3] with:
               value msg.value - (msg.value / 5) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call star[stor7[arg3]] with:
               value msg.value / 5 wei
                 gas 2300 * is_zero(value) wei
        call ownerAddress with:
             gas 2300 wei
    emit 0xa92543c3: arg1, arg3, arg2, msg.value, sub_8c06cc3d[arg3]
}

function sub_2e6f623d(?) payable {
    require calldata.size - 4 >= 96
    require msg.value >= 10^16
    require stor3 > 0
    require stor3
    require star[arg3]
    if not uint8(stor1.field_160):
        if not sub_8c06cc3d[arg3]:
            call star[arg3] with:
               value msg.value - (msg.value / stor3) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call 0x0 with:
                 gas 2300 wei
        else:
            call star[arg3] with:
               value msg.value - (msg.value / stor3) - (msg.value / 5) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call star[stor7[arg3]] with:
               value msg.value / 5 wei
                 gas 2300 * is_zero(value) wei
        call ownerAddress with:
           value msg.value / stor3 wei
             gas 2300 * is_zero(value) wei
    else:
        if not sub_8c06cc3d[arg3]:
            call star[arg3] with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call 0x0 with:
                 gas 2300 wei
        else:
            call star[arg3] with:
               value msg.value - (msg.value / 5) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call star[stor7[arg3]] with:
               value msg.value / 5 wei
                 gas 2300 * is_zero(value) wei
        call ownerAddress with:
             gas 2300 wei
    user[msg.sender].field_0++
    user[msg.sender][user[msg.sender].field_0].field_0 = arg2
    emit 0x35d21e8d: arg1, arg2, msg.value, sub_8c06cc3d[arg3]
}



}
