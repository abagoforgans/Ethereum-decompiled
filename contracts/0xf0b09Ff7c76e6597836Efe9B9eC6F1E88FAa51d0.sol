contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
mapping of uint256 stor5;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 7
    stor0.length.field_8 = 'Storage' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 3
    stor1.length.field_8 = 'STR' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 18
    stor5[0x408a302b84c5747fb668234f6ca6d3c63f305611] = 10^15
    return code.data[477 len 2618]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct sub_898572a6;
array of struct children;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function children(uint256 arg1) {
    require arg1 < children.length
    return children[arg1].field_0
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function sub_898572a6(?) {
    require arg1 < sub_898572a6.length
    return sub_898572a6[arg1].field_0
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    mem[96] = 0x85196da9269b24bdf5ffd2624abb387fca05382b
    children.length = 1
    s = 0
    idx = 96
    while 128 > idx:
        children[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 1
    while children.length > idx:
        children[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[128] = 0xbe887fac27a2d354f2ac26b0ef111fbaeed119c9
    sub_898572a6.length = 1
    s = 0
    idx = 128
    while 160 > idx:
        sub_898572a6[s].field_0 = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 1
    while sub_898572a6.length > idx:
        sub_898572a6[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_898572a6.length:
        if not children.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.0xc48e1c4d with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_898572a6.length, children.length
        else:
            mem[292] = address(children.field_0)
            idx = 292
            s = 0
            while (32 * children.length) + 292 > idx + 32:
                mem[idx + 32] = children[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.0xc48e1c4d with:
                 gas gas_remaining - 710 wei
                args 64, 96, sub_898572a6.length, children.length, mem[292 len 32 * children.length]
    else:
        mem[260] = address(sub_898572a6.field_0)
        idx = 260
        s = 0
        while (32 * sub_898572a6.length) + 260 > idx + 32:
            mem[idx + 32] = sub_898572a6[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(32 * sub_898572a6.length) + 260] = children.length
        if not children.length:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.0xc48e1c4d with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_898572a6.length, data=mem[260 len (32 * sub_898572a6.length) + 32]), (32 * sub_898572a6.length) + 96
        else:
            mem[(32 * sub_898572a6.length) + 292] = address(children.field_0)
            idx = (32 * sub_898572a6.length) + 292
            s = 0
            while (32 * sub_898572a6.length) + (32 * children.length) + 292 > idx + 32:
                mem[idx + 32] = children[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.0xc48e1c4d with:
                 gas gas_remaining - 710 wei
                args Array(len=sub_898572a6.length, data=mem[260 len (32 * sub_898572a6.length) + (32 * children.length) + 32]), (32 * sub_898572a6.length) + 96
    require ext_call.success
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit 0xddf252ad: arg2, msg.sender, arg1
}



}
