contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
uint256 stor4;
array of address stor5;
address stor6;
mapping of uint256 stor7;

function _fallback() payable {
    mem[128] = 'Token 0.1'
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'Token 0.1' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    mem[160 len -5609] = code.data[6587 len -5609]
    stor6 = msg.sender
    stor7[address(msg.sender)] = mem[160]
    stor4 = mem[160]
    stor1[] = Array(len=mem[mem[192] + 160], data=mem[mem[192] + 192 len mem[mem[192] + 160]])
    stor2[] = Array(len=mem[mem[256] + 160], data=mem[mem[256] + 192 len mem[mem[256] + 160]])
    stor3 = mem[255 len 1]
    stor5.length++
    if not stor5.length <= stor5.length + 1:
        idx = stor5.length + 1
        while stor5.length > idx:
            uint256(stor5[idx]) = 0
            idx = idx + 1
            continue 
    address(stor5[stor5.length]) = msg.sender
    return code.data[978 len 5609]
}



// =====================  Runtime code  =====================


array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
array of address users;
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function users(uint256 arg1) {
    require arg1 < users.length
    return address(users[arg1])
}

function standard() {
    return standard[0 len standard.length]
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() {
  stop
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function sendDividend(address arg1, uint256 arg2) {
    if owner == msg.sender:
        require totalSupply
        call arg1 with:
           value arg2 * 10 * 10^6 * balanceOf[address(arg1)] / totalSupply / 10 * 10^6 wei
             gas 2300 * is_zero(value) wei
}

function liquidateUser(address arg1, uint256 arg2) {
    if owner == msg.sender:
        require totalSupply
        call arg1 with:
           value arg2 * 10 * 10^6 * balanceOf[address(arg1)] / totalSupply / 10 * 10^6 wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            balanceOf[address(arg1)] = 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function issueDividend() {
    if owner == msg.sender:
        idx = 0
        while idx < users.length:
            mem[0] = 5
            if owner == msg.sender:
                mem[0] = address(users[idx])
                mem[32] = 7
                require totalSupply
                call address(users[idx]) with:
                   value msg.value * 10 * 10^6 * balanceOf[address(stor5[idx])] / totalSupply / 10 * 10^6 wei
                     gas 2300 * is_zero(value) wei
            idx = idx + 1
            continue 
}

function liquidate(address arg1) {
    if owner == msg.sender:
        owner = arg1
        idx = 0
        while idx < users.length:
            mem[0] = 5
            if owner == msg.sender:
                mem[0] = address(users[idx])
                mem[32] = 7
                require totalSupply
                call address(users[idx]) with:
                   value msg.value * 10 * 10^6 * balanceOf[address(stor5[idx])] / totalSupply / 10 * 10^6 wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
                    mem[0] = address(users[idx])
                    mem[32] = 7
                    balanceOf[address(stor5[idx])] = 0
            idx = idx + 1
            continue 
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    idx = 0
    s = 0
    while idx < users.length:
        mem[0] = 5
        if address(users[idx]) != arg1:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if not s:
        users.length++
        if not users.length <= users.length + 1:
            s = users.length + 1
            while users.length > s:
                uint256(users[s]) = 0
                s = s + 1
                continue 
        address(users[users.length]) = arg1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    allowance[address(msg.sender)][address(arg1)] = arg2
    mem[ceil32(arg3.length) + 128] = 0x8f4ffcb100000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 132] = msg.sender
    mem[ceil32(arg3.length) + 164] = arg2
    mem[ceil32(arg3.length) + 196] = this.address
    mem[ceil32(arg3.length) + 228] = 128
    mem[ceil32(arg3.length) + 260] = arg3.length
    if not arg3.length:
        if not arg3.length % 32:
            require ext_code.size(arg1)
            call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining - 50 wei
                args 0, uint32(msg.sender), arg2, address(this.address), 128, arg3.length, mem[ceil32(arg3.length) + 292 len arg3.length]
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + 292] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 324 len arg3.length % 32]
            require ext_code.size(arg1)
            call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining - 50 wei
                args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=mem[ceil32(arg3.length) + 292 len floor32(arg3.length) + 32])
    else:
        mem[ceil32(arg3.length) + 292] = mem[128]
        mem[ceil32(arg3.length) + 324 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
        require ext_code.size(arg1)
        call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining - 50 wei
            args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=mem[ceil32(arg3.length) + 292 len arg3.length])
    require ext_call.success
    return 1
}



}
