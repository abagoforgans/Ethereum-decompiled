contract main {




// =====================  Runtime code  =====================


address owner;
uint256 sub_6d99aa74;
uint256 sub_36c019ef;
array of struct sub_2ee17b2f;

function sub_2ee17b2f(?) {
    require arg1 < sub_2ee17b2f.length
    mem[128] = stor[sha3((6 * arg1) + ('name', 'sub_2ee17b2f', 3) + 5)].field_0
    idx = 128
    s = 0
    while stor[(6 * arg1) + ('name', 'sub_2ee17b2f', 3) + 5].length + 96 > idx:
        mem[idx + 32] = stor[s + sha3((6 * arg1) + ('name', 'sub_2ee17b2f', 3) + 5)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return sub_2ee17b2f[arg1].field_0, 
           sub_2ee17b2f[arg1].field_256,
           sub_2ee17b2f[arg1].field_512,
           sub_2ee17b2f[arg1].field_768,
           sub_2ee17b2f[arg1].field_1024,
           Array(len=stor[(6 * arg1) + ('name', 'sub_2ee17b2f', 3) + 5].length, data=mem[128 len stor[(6 * arg1) + ('name', 'sub_2ee17b2f', 3) + 5].length])
}

function sub_36c019ef(?) {
    return sub_36c019ef
}

function sub_6d99aa74(?) {
    return sub_6d99aa74
}

function owner() {
    return owner
}

function _destroyContract() {
    require msg.sender == owner
    selfdestruct(msg.sender)
}

function _fallback() payable {
  stop
}

function setNewOwner(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function sub_84a5054d(?) payable {
    require arg4 >= 200000
    require msg.value > arg4
    require block.number < arg2
    sub_2ee17b2f.length++
    sub_2ee17b2f[sub_2ee17b2f.length].field_0 = arg1
    sub_2ee17b2f[sub_2ee17b2f.length].field_256 = arg2
    sub_2ee17b2f[sub_2ee17b2f.length].field_512 = arg3
    sub_2ee17b2f[sub_2ee17b2f.length].field_768 = msg.value - arg4
    sub_2ee17b2f[sub_2ee17b2f.length].field_1024 = arg4
    stor[sha3((6 * sub_2ee17b2f.length) + ('name', 'sub_2ee17b2f', 3) + 5)][].field_0 = Array(len=arg5.length, data=arg5[all])
    sub_6d99aa74++
    sub_36c019ef++
    emit 0x72c0c572: address(arg1), arg2, arg3, msg.value - arg4, arg4, Array(len=arg5.length, data=arg5[all])
}

function sub_a9395540(?) payable {
    require arg1 < sub_2ee17b2f.length
    require sub_2ee17b2f[arg1].field_768 > 0
    require arg1 < sub_2ee17b2f.length
    require block.number >= sub_2ee17b2f[arg1].field_256
    require arg1 < sub_2ee17b2f.length
    require block.number < sub_2ee17b2f[arg1].field_256 + sub_2ee17b2f[arg1].field_512
    require arg1 < sub_2ee17b2f.length
    call msg.sender with:
       value sub_2ee17b2f[arg1].field_768 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg1 < sub_2ee17b2f.length
    sub_2ee17b2f[arg1].field_768 = 0
    sub_36c019ef--
    mem[96] = stor[sha3((6 * arg1) + ('name', 'sub_2ee17b2f', 3) + 5)].field_0
    idx = 96
    s = 0
    while stor[(6 * arg1) + ('name', 'sub_2ee17b2f', 3) + 5].length + 96 > idx + 32:
        mem[idx + 32] = stor[s + sha3((6 * arg1) + ('name', 'sub_2ee17b2f', 3) + 5)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    call sub_2ee17b2f[arg1].field_0.mem[96 len 4] with:
         gas sub_2ee17b2f[arg1].field_1024 wei
        args mem[100 len stor[(6 * arg1) + ('name', 'sub_2ee17b2f', 3) + 5].length + (floor32(stor[(6 * arg1) + ('name', 'sub_2ee17b2f', 3) + 5].length - 1) + -stor[(6 * arg1) + ('name', 'sub_2ee17b2f', 3) + 5].length + 32 % 32) - 4]
    require ext_call.success
}



}
