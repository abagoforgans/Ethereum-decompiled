contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;
address owner;
address sub_0620f6a8Address;
uint256 price;

function sub_0620f6a8(?) {
    return sub_0620f6a8Address
}

function sub_5482bdf9(?) {
    return price
}

function owner() {
    return owner
}

function price() {
    return price
}

function _fallback() payable {
    revert
}

function sub_edd3ba9a(?) {
    require msg.sender == owner
    price = arg1
    emit 0xf86f9934: arg1
}

function sub_d4ea3de1(?) {
    require msg.sender == owner
    sub_0620f6a8Address = arg1
    emit 0x430ccf64: arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
    emit OwnershipTransferred(arg1, arg1);
}

function find(uint256 arg1) {
    mem[128] = stor0[arg1][2].field_0
    idx = 128
    s = 0
    while stor0[arg1][2].length + 96 > idx:
        mem[idx + 32] = stor0[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor0[arg1].field_0, stor0[arg1].field_256, Array(len=stor0[arg1][2].length, data=mem[128 len stor0[arg1][2].length])
}

function hashes(uint256 arg1) {
    mem[128] = stor0[arg1][2].field_0
    idx = 128
    s = 0
    while stor0[arg1][2].length + 96 > idx:
        mem[idx + 32] = stor0[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor0[arg1].field_0, stor0[arg1].field_256, Array(len=stor0[arg1][2].length, data=mem[128 len stor0[arg1][2].length])
}

function sub_bc54adf1(?) payable {
    require ext_code.size(sub_0620f6a8Address)
    call sub_0620f6a8Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, price
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    stor0[arg2].field_0 = msg.sender or Mask(96, 160, stor0[arg2].field_0)
    stor0[arg2].field_256 = arg1
    stor0[arg2][2][].field_0 = Array(len=arg3.length, data=arg3[all])
    mem[ceil32(arg3.length) + 256] = stor0[arg2][2].field_0
    idx = ceil32(arg3.length) + 256
    s = 0
    while ceil32(arg3.length) + stor0[arg2][2].length + 256 > idx + 32:
        mem[idx + 32] = stor0[arg2][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit 0x20231c74: arg2, stor0[arg2].field_256, Array(len=stor0[arg2][2].length, data=mem[ceil32(arg3.length) + 256 len stor0[arg2][2].length + (floor32(stor0[arg2][2].length - 1) + -stor0[arg2][2].length + 32 % 32)]), stor0[arg2].field_0
}

function withdrawBalance() {
    require msg.sender == owner
    require ext_code.size(sub_0620f6a8Address)
    call sub_0620f6a8Address.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_0620f6a8Address)
    call sub_0620f6a8Address.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args this.address, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_0620f6a8Address)
    call sub_0620f6a8Address.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args this.address, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_0620f6a8Address)
    call sub_0620f6a8Address.0x23b872dd with:
         gas gas_remaining wei
        args this.address, owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit Withdrawn(ext_call.return_data[0], owner);
}



}
