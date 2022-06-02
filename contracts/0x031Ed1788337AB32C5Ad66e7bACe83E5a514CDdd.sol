contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of address sub_0ec7a177;
array of struct owners;

function owners(uint256 arg1) {
    require arg1 < owners.length
    return owners[arg1].field_0
}

function sub_0ec7a177(?) {
    return sub_0ec7a177[address(arg1)]
}

function isOwner(address arg1) {
    return bool(stor0[arg1])
}

function sub_db24ba25(?) {
    return sub_0ec7a177[arg1]
}

function _fallback() payable {
    if msg.value > 0:
        emit Deposit(msg.value, msg.sender);
}

function sub_ca245bd4(?) {
    require stor0[address(msg.sender)]
    sub_0ec7a177[address(msg.sender)] = 0
}

function getOwners() {
    if not owners.length:
        mem[(32 * owners.length) + 128] = 32
        mem[(32 * owners.length) + 160] = owners.length
        mem[(32 * owners.length) + 192 len floor32(owners.length)] = mem[128 len floor32(owners.length)]
        return memory
          from (32 * owners.length) + 128
           len (96 * owners.length) + 64
    mem[128] = address(owners.field_0)
    idx = 128
    s = 0
    while (32 * owners.length) + 96 > idx:
        mem[idx + 32] = owners[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * owners.length) + 192 len floor32(owners.length)] = mem[128 len floor32(owners.length)]
    return Array(len=owners.length, data=mem[128 len floor32(owners.length)], mem[(32 * owners.length) + floor32(owners.length) + 192 len (32 * owners.length) - floor32(owners.length)]), 
}

function sub_66d651db(?) {
    require stor0[address(msg.sender)]
    require arg1
    require eth.balance(this.address)
    sub_0ec7a177[address(msg.sender)] = arg1
    idx = 0
    s = 1
    while idx < owners.length:
        mem[0] = owners[idx].field_0
        mem[32] = 1
        if sub_0ec7a177[stor2[idx].field_0]:
            require idx < owners.length
            mem[0] = owners[idx].field_0
            mem[32] = 1
            if arg1 == sub_0ec7a177[stor2[idx].field_0]:
                idx = idx + 1
                s = s
                continue 
        idx = idx + 1
        s = 0
        continue 
    if s:
        call arg1 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        idx = 0
        while idx < owners.length:
            mem[0] = owners[idx].field_0
            mem[32] = 1
            sub_0ec7a177[stor2[idx].field_0] = 0
            idx = idx + 1
            continue 
        emit ExecuteTransaction(eth.balance(this.address), this.address);
    emit 0xac287adc: msg.sender, arg1
}



}
