contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[95 len 9677]
}



// =====================  Runtime code  =====================


address adminAddress;
mapping of uint256 sub_454e8247;
mapping of uint256 sub_00e168f0;
mapping of struct licenses;
array of address sub_892d2836;
array of address sub_a9cfd87b;
array of address sub_b2709a7e;
array of uint256 sub_0189874a;

function sub_00e168f0(?) {
    return sub_00e168f0[arg1]
}

function sub_0189874a(?) {
    require arg1 < sub_0189874a.length
    return sub_0189874a[arg1]
}

function providers(address arg1) {
    return sub_9aff291d[arg1].field_0, sub_9aff291d[arg1].field_256, sub_9aff291d[arg1].field_512
}

function sub_1e583e19(?) {
    return sub_0189874a.length
}

function sub_3652e255(?) {
    return sub_a9cfd87b.length
}

function sub_454e8247(?) {
    return sub_454e8247[arg1]
}

function sub_4b73ff39(?) {
    return sub_4b73ff39[address(arg1)].field_768
}

function sub_6fccfc42(?) {
    require arg2 < sub_4b73ff39[address(arg1)].field_768
    return stor[arg2 + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_4b73ff39', 3)))].field_0
}

function sub_892d2836(?) {
    require arg1 < sub_892d2836.length
    return address(sub_892d2836[arg1])
}

function sub_99ef9f3b(?) {
    return sub_892d2836.length
}

function sub_9aff291d(?) {
    require arg2 < sub_9aff291d[address(arg1)].field_768
    return stor[(4 * arg2) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_9aff291d', 1)))].field_0, 
           stor[(4 * arg2) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_9aff291d', 1)))].field_256,
           stor[(4 * arg2) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_9aff291d', 1)))].field_512,
           bool(stor[(4 * arg2) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_9aff291d', 1)))].field_768),
           bool(stor[(4 * arg2) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_9aff291d', 1)))].field_776)
}

function sub_9d639e00(?) {
    return sub_b2709a7e.length
}

function sub_a208c38f(?) {
    return sub_4b73ff39[arg1].field_0, sub_4b73ff39[arg1].field_256, sub_4b73ff39[arg1].field_512
}

function sub_a9cfd87b(?) {
    require arg1 < sub_a9cfd87b.length
    return address(sub_a9cfd87b[arg1])
}

function sub_b2709a7e(?) {
    require arg1 < sub_b2709a7e.length
    return address(sub_b2709a7e[arg1])
}

function licenses(bytes32 arg1) {
    return licenses[arg1].field_0, licenses[arg1].field_256
}

function sub_e517b003(?) {
    return sub_9aff291d[address(arg1)].field_768
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function sub_798cd8da(?) {
    licenses[arg1].field_0 = 0
    licenses[arg1].field_256 = 0
}

function sub_93c4fc8f(?) {
    require msg.sender == adminAddress
    sub_454e8247[address(arg1)] = 0
}

function sub_73681a36(?) {
    require licenses[arg1].field_256 == msg.sender
    licenses[arg1].field_0 = arg2
}

function removeNotary(address arg1) {
    require msg.sender == adminAddress
    sub_00e168f0[address(arg1)] = 0
}

function deleteProvider(address arg1) {
    require sub_00e168f0[address(msg.sender)]
    sub_9aff291d[address(arg1)].field_0 = 0
}

function sub_82f9580b(?) {
    require sub_00e168f0[address(msg.sender)]
    require arg2
    require licenses[arg3].field_256
    sub_9aff291d[address(arg1)].field_0 = arg2
    sub_9aff291d[address(arg1)].field_256 = arg3
}

function sub_78d4f913(?) {
    require ext_code.size(sub_4b73ff39[address(arg1)].field_512)
    call sub_4b73ff39[address(arg1)].field_512.0xf906fa4e with:
         gas gas_remaining - 50 wei
        args address(this.address), arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_11cc8ea7(?) {
    require ext_code.size(licenses[stor1[address(arg1)].field_256].field_0)
    call licenses[stor1[address(arg1)].field_256].field_0.0xa3603ec0 with:
         gas gas_remaining - 50 wei
        args address(this.address), arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function sub_9ab15835(?) {
    require msg.sender == adminAddress
    sub_4b73ff39[address(arg1)].field_0 = 0
    sub_4b73ff39[address(arg1)].field_256 = 0
    sub_4b73ff39[address(arg1)].field_512 = 0
    sub_4b73ff39[address(arg1)].field_768 = 0
    idx = 0
    while sub_4b73ff39[address(arg1)].field_768 > idx:
        sub_4b73ff39[address(arg1)][idx + 3].field_0 = 0
        idx = idx + 1
        continue 
}

function sub_07bce01f(?) {
    require msg.sender == adminAddress
    require arg2
    if not sub_454e8247[address(arg1)]:
        sub_892d2836.length++
        if not sub_892d2836.length <= sub_892d2836.length + 1:
            idx = sub_892d2836.length + 1
            while sub_892d2836.length > idx:
                uint256(sub_892d2836[idx]) = 0
                idx = idx + 1
                continue 
        address(sub_892d2836[sub_892d2836.length]) = arg1
    sub_454e8247[address(arg1)] = arg2
}

function sub_48329398(?) {
    require msg.sender == adminAddress
    require arg2
    if not sub_00e168f0[address(arg1)]:
        sub_b2709a7e.length++
        if not sub_b2709a7e.length <= sub_b2709a7e.length + 1:
            idx = sub_b2709a7e.length + 1
            while sub_b2709a7e.length > idx:
                uint256(sub_b2709a7e[idx]) = 0
                idx = idx + 1
                continue 
        address(sub_b2709a7e[sub_b2709a7e.length]) = arg1
    sub_00e168f0[address(arg1)] = arg2
}

function sub_4f10a061(?) {
    require msg.sender == adminAddress
    require arg2
    require sub_454e8247[address(arg2)]
    if not licenses[arg1].field_256:
        sub_0189874a.length++
        if not sub_0189874a.length <= sub_0189874a.length + 1:
            idx = sub_0189874a.length + 1
            while sub_0189874a.length > idx:
                sub_0189874a[idx] = 0
                idx = idx + 1
                continue 
        sub_0189874a[sub_0189874a.length] = arg1
    licenses[arg1].field_256 = arg2
}

function sub_6daa20a5(?) {
    require msg.sender == adminAddress
    require arg2
    if not sub_4b73ff39[address(arg1)].field_0:
        sub_a9cfd87b.length++
        if not sub_a9cfd87b.length <= sub_a9cfd87b.length + 1:
            idx = sub_a9cfd87b.length + 1
            while sub_a9cfd87b.length > idx:
                uint256(sub_a9cfd87b[idx]) = 0
                idx = idx + 1
                continue 
        address(sub_a9cfd87b[sub_a9cfd87b.length]) = arg1
    sub_4b73ff39[address(arg1)].field_0 = arg2
    sub_4b73ff39[address(arg1)].field_256 = arg3
    sub_4b73ff39[address(arg1)].field_512 = arg4
}

function sub_4254a228(?) {
    require sub_4b73ff39[address(msg.sender)].field_0
    require sub_9aff291d[address(arg1)].field_0
    sub_9aff291d[address(arg1)].field_512 = msg.sender
    sub_4b73ff39[address(msg.sender)].field_768++
    if not sub_4b73ff39[address(msg.sender)].field_768 <= sub_4b73ff39[address(msg.sender)].field_768 + 1:
        idx = sub_4b73ff39[address(msg.sender)].field_768 + 1
        while sub_4b73ff39[address(msg.sender)].field_768 > idx:
            sub_4b73ff39[address(msg.sender)][idx + 3].field_0 = 0
            idx = idx + 1
            continue 
    stor[sub_4b73ff39[address(msg.sender)].field_768 + ('array', 3, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_4b73ff39', 3)))].field_0 = arg1
}

function sub_d0693e77(?) {
    require sub_9aff291d[address(arg1)].field_256
    if licenses[stor1[address(arg1)].field_256].field_256 != msg.sender:
        require sub_00e168f0[address(msg.sender)]
    require sub_9aff291d[address(arg1)].field_768 > arg2
    require arg2 < sub_9aff291d[address(arg1)].field_768
    stor[(4 * arg2) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_9aff291d', 1)))].field_0 = 0
    stor[(4 * arg2) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_9aff291d', 1)))].field_256 = 0
    stor[(4 * arg2) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_9aff291d', 1)))].field_512 = 0
    stor[(4 * arg2) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_9aff291d', 1)))].field_768 = 0
    stor[(4 * arg2) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_9aff291d', 1)))].field_776 = 0
}

function sub_82b64590(?) {
    require sub_9aff291d[address(arg1)].field_256
    if licenses[stor1[address(arg1)].field_256].field_256 != msg.sender:
        require sub_00e168f0[address(msg.sender)]
    sub_9aff291d[address(arg1)].field_768++
    if not sub_9aff291d[address(arg1)].field_768 <= sub_9aff291d[address(arg1)].field_768 + 1:
        idx = 4 * sub_9aff291d[address(arg1)].field_768 + 1
        while 4 * sub_9aff291d[address(arg1)].field_768 > idx:
            sub_9aff291d[address(arg1)][idx + 3].field_0 = 0
            sub_9aff291d[address(arg1)][idx + 3].field_256 = 0
            sub_9aff291d[address(arg1)][idx + 3].field_512 = 0
            sub_9aff291d[address(arg1)][idx + 3].field_768 = 0
            sub_9aff291d[address(arg1)][idx + 3].field_776 = 0
            idx = idx + 4
            continue 
    stor[(4 * sub_9aff291d[address(arg1)].field_768) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_9aff291d', 1)))].field_0 = arg2
    stor[(4 * sub_9aff291d[address(arg1)].field_768) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_9aff291d', 1)))].field_256 = arg3
    stor[(4 * sub_9aff291d[address(arg1)].field_768) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_9aff291d', 1)))].field_512 = arg4
    stor[(4 * sub_9aff291d[address(arg1)].field_768) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_9aff291d', 1)))].field_768 = uint8(arg5)
    stor[(4 * sub_9aff291d[address(arg1)].field_768) + ('array', 3, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_9aff291d', 1)))].field_776 = 1
}



}
