contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
uint8 stor4;
mapping of uint256 stor6;

function _fallback() payable {
    mem[128] = 'Token 0.1'
    bool(stor1.length) = 0
    stor1.length.field_1 = 9
    stor1.length.field_8 = 'Token 0.1' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    mem[160 len -5307] = code.data[5778 len -5307]
    stor0 = msg.sender
    stor6[address(msg.sender)] = mem[160]
    stor2[] = Array(len=mem[mem[192] + 160], data=mem[mem[192] + 192 len mem[mem[192] + 160]])
    stor3[] = Array(len=mem[mem[256] + 160], data=mem[mem[256] + 192 len mem[mem[256] + 160]])
    stor4 = mem[255 len 1]
    return code.data[471 len 5307]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalShares;
array of address sub_e719886d;
array of address sub_12d2ff79;
mapping of uint8 stor11;

function name() {
    return name[0 len name.length]
}

function sub_12d2ff79(?) {
    require arg1 < sub_12d2ff79.length
    return address(sub_12d2ff79[arg1])
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function totalShares() {
    return totalShares
}

function standard() {
    return standard[0 len standard.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) {
    return bool(stor11[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_e719886d(?) {
    require arg1 < sub_e719886d.length
    return address(sub_e719886d[arg1])
}

function _fallback() {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function freezeAccount(address arg1, bool arg2) {
    require owner == msg.sender
    stor11[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function mintToken(address arg1, uint256 arg2) {
    require owner == msg.sender
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
}

function sub_db1caeb8(?) {
    require owner == msg.sender
    idx = 0
    while idx < sub_12d2ff79.length:
        mem[0] = 10
        if address(sub_12d2ff79[idx]) != arg1:
            idx = idx + 1
            continue 
        require idx < sub_12d2ff79.length
        address(sub_12d2ff79[idx]) = 0
        return 1
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor11[address(arg1)]
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_c602ca6a(?) {
    require owner == msg.sender
    idx = 0
    while idx < sub_12d2ff79.length:
        mem[0] = 10
        if address(sub_12d2ff79[idx]) != arg1:
            idx = idx + 1
            continue 
        return 1
    sub_12d2ff79.length++
    if not sub_12d2ff79.length <= sub_12d2ff79.length + 1:
        idx = sub_12d2ff79.length + 1
        while sub_12d2ff79.length > idx:
            uint256(sub_12d2ff79[idx]) = 0
            idx = idx + 1
            continue 
    address(sub_12d2ff79[sub_12d2ff79.length]) = arg1
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require not stor11[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    idx = 0
    while idx < sub_12d2ff79.length:
        mem[0] = 10
        if address(sub_12d2ff79[idx]) != arg1:
            idx = idx + 1
            continue 
        idx = 0
        while idx < sub_e719886d.length:
            mem[0] = 9
            if address(sub_e719886d[idx]) != arg1:
                idx = idx + 1
                continue 
    idx = 0
    while idx < sub_e719886d.length:
        mem[0] = 9
        if address(sub_e719886d[idx]) != arg1:
            idx = idx + 1
            continue 
    sub_e719886d.length++
    if not sub_e719886d.length <= sub_e719886d.length + 1:
        idx = sub_e719886d.length + 1
        while sub_e719886d.length > idx:
            uint256(sub_e719886d[idx]) = 0
            idx = idx + 1
            continue 
    address(sub_e719886d[sub_e719886d.length]) = arg1
}

function sub_1d841b16(?) payable {
    mem[64] = 96
    require owner == msg.sender
    totalShares = 0
    idx = 0
    while idx < sub_e719886d.length:
        mem[0] = 9
        if address(sub_e719886d[idx]) != owner:
            require idx < sub_e719886d.length
            mem[0] = address(sub_e719886d[idx])
            mem[32] = 6
            totalShares += balanceOf[address(stor9[idx])]
        idx = idx + 1
        continue 
    if totalShares:
        if arg1:
        if var18006 < sub_e719886d.length:
            mem[0] = 9
            if address(sub_e719886d[var18006]) == owner:
                var18006 = var18006 + 1
                continue 
            if var18006 < sub_e719886d.length:
                mem[0] = address(sub_e719886d[var18006])
                mem[32] = 6
                if not balanceOf[address(stor9[var18006])]:
                    var18006 = var18006 + 1
                    continue 
                idx = 0
                while idx < sub_12d2ff79.length:
                    require var18006 < sub_e719886d.length
                    require idx < sub_12d2ff79.length
                    mem[0] = 10
                    if address(sub_12d2ff79[idx]) != address(sub_e719886d[var18006]):
                        idx = idx + 1
                        continue 
                    var18006 = var18006 + 1
                    continue 
                if var18006 < sub_e719886d.length:
                    mem[32] = 6
                    mem[0] = 9
                    call address(sub_e719886d[var18006]) with:
                       value msg.value / totalShares * balanceOf[address(stor9[var18006])] wei
                         gas gas_remaining - 34710 wei
                    if ext_call.success:
                        var18006 = var18006 + 1
                        continue 
    revert
}



}
