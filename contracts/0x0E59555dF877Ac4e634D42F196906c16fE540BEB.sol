contract main {




// =====================  Runtime code  =====================


address owner;
array of struct products;
array of struct sub_c270bd3e;

function products(uint256 arg1) {
    require arg1 < products.length
    return products[arg1].field_0
}

function owner() {
    return owner
}

function sub_c270bd3e(?) {
    require arg2 < sub_c270bd3e[arg1].field_0
    return sub_c270bd3e[arg1][arg2].field_0
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getAllProducts() {
    if not products.length:
        mem[(32 * products.length) + 128] = 32
        mem[(32 * products.length) + 160] = products.length
        mem[(32 * products.length) + 192 len floor32(products.length)] = mem[128 len floor32(products.length)]
        return memory
          from (32 * products.length) + 128
           len (96 * products.length) + 64
    mem[128] = address(products.field_0)
    idx = 128
    s = 0
    while (32 * products.length) + 96 > idx:
        mem[idx + 32] = products[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * products.length) + 192 len floor32(products.length)] = mem[128 len floor32(products.length)]
    return Array(len=products.length, data=mem[128 len floor32(products.length)], mem[(32 * products.length) + floor32(products.length) + 192 len (32 * products.length) - floor32(products.length)]), 
}

function getOwnProducts() {
    if sub_c270bd3e[msg.sender].field_0:
        mem[128] = sub_c270bd3e[msg.sender].field_0
        if (32 * sub_c270bd3e[msg.sender].field_0) + 32 > 64:
            mem[160] = sub_c270bd3e[msg.sender].field_256
            idx = 160
            s = 1
            while (32 * sub_c270bd3e[msg.sender].field_0) + 96 > idx:
                mem[idx + 32] = sub_c270bd3e[msg.sender][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * sub_c270bd3e[msg.sender].field_0) + 128] = 32
    mem[(32 * sub_c270bd3e[msg.sender].field_0) + 160] = sub_c270bd3e[msg.sender].field_0
    mem[(32 * sub_c270bd3e[msg.sender].field_0) + 192 len floor32(sub_c270bd3e[msg.sender].field_0)] = mem[128 len floor32(sub_c270bd3e[msg.sender].field_0)]
    return memory
      from (32 * sub_c270bd3e[msg.sender].field_0) + 128
       len (96 * sub_c270bd3e[msg.sender].field_0) + 64
}

function registerProduct() {
    require ext_code.size(msg.sender)
    call msg.sender.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    while idx < sub_c270bd3e[ext_call.return_data[12 len 20]].field_0:
        require idx < sub_c270bd3e[address(ext_call.return_data[0])].field_0
        require sub_c270bd3e[address(ext_call.return_data[0])][idx].field_0 != msg.sender
        mem[0] = address(ext_call.return_data[0])
        mem[32] = 4
        idx = idx + 1
        continue 
    sub_c270bd3e[address(ext_call.return_data[0])].field_0++
    sub_c270bd3e[address(ext_call.return_data[0])][sub_c270bd3e[address(ext_call.return_data[0])].field_0].field_0 = msg.sender or Mask(96, 160, sub_c270bd3e[address(ext_call.return_data[0])][sub_c270bd3e[address(ext_call.return_data[0])].field_0].field_0)
    products.length++
    products[products.length].field_0 = msg.sender or Mask(96, 160, products[products.length].field_0)
    emit Registered(msg.sender, address(ext_call.return_data[0]));
    return 1
}



}
