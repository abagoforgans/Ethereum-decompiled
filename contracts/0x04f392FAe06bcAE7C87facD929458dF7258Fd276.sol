contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 balances;
address stor2;
uint256 stor3;
uint256 totalSupply;
array of struct stor5;
mapping of uint256 allowance;
uint256 internalTotalSupply;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;
uint256 reserve;
uint256 stor12;
array of struct stor13;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function decimals() {
    return decimals
}

function internalTotalSupply() {
    return internalTotalSupply
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function reserve() {
    return reserve
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_91a3fc45(?) {
    require msg.sender == owner
    stor2 = arg1
}

function setPrice(uint256 arg1) {
    require msg.sender == stor2
    stor3 = arg1
}

function setName(string arg1) {
    stor5[address(msg.sender)][].field_0 = Array(len=arg1.length, data=arg1[all])
}

function setComment(string arg1) {
    stor5[address(msg.sender)][1][].field_0 = Array(len=arg1.length, data=arg1[all])
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function withdraw() {
    require msg.sender == stor2
    call stor2 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_5cf350d8(?) {
    require msg.sender == owner
    if arg2.length > 0:
        stor5[address(arg1)][].field_0 = Array(len=arg2.length, data=arg2[all])
    if arg3.length > 0:
        stor5[address(arg1)][1][].field_0 = Array(len=arg3.length, data=arg3[all])
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balances[address(msg.sender)]
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balances[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require balances[address(arg2)] + arg3 >= balances[address(arg2)]
    balances[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_3070aab8(?) {
    require msg.sender == owner
    stor5[address(arg1)].field_0 = 0
    if 31 < stor5[address(arg1)].length:
        idx = 0
        while stor5[address(arg1)].length + 31 / 32 > idx:
            stor5[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor5[address(arg1)].field_256 = 0
    if 31 < stor5[address(arg1)][1].length:
        idx = 0
        while stor5[address(arg1)][1].length + 31 / 32 > idx:
            stor5[address(arg1)][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
}

function sub_0d6bb50f(?) {
    if not stor13.length:
        mem[(32 * stor13.length) + 128] = 32
        mem[(32 * stor13.length) + 160] = stor13.length
        mem[(32 * stor13.length) + 192 len floor32(stor13.length)] = mem[128 len floor32(stor13.length)]
        return memory
          from (32 * stor13.length) + 128
           len (96 * stor13.length) + 64
    mem[128] = address(stor13.field_0)
    idx = 128
    s = 0
    while (32 * stor13.length) + 96 > idx:
        mem[idx + 32] = stor13[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor13.length) + 192 len floor32(stor13.length)] = mem[128 len floor32(stor13.length)]
    return Array(len=stor13.length, data=mem[128 len floor32(stor13.length)], mem[(32 * stor13.length) + floor32(stor13.length) + 192 len (32 * stor13.length) - floor32(stor13.length)]), 
}

function sub_c12fe40e(?) {
    mem[32] = 5
    mem[96] = stor5[arg1].length
    mem[128] = stor5[arg1].field_0
    idx = 128
    s = 0
    while stor5[arg1].length + 96 > idx:
        mem[idx + 32] = stor5[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor5[arg1].length) + ceil32(stor5[arg1][1].length) + 160
    mem[ceil32(stor5[arg1].length) + 128] = stor5[arg1][1].length
    mem[0] = sha3(arg1, 5) + 1
    mem[ceil32(stor5[arg1].length) + 160] = stor5[arg1][1].field_0
    idx = ceil32(stor5[arg1].length) + 160
    s = 0
    while ceil32(stor5[arg1].length) + stor5[arg1][1].length + 128 > idx:
        mem[idx + 32] = stor5[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor5[arg1].length) + ceil32(stor5[arg1][1].length) + 160] = 64
    mem[ceil32(stor5[arg1].length) + ceil32(stor5[arg1][1].length) + 224] = stor5[arg1].length
    mem[ceil32(stor5[arg1].length) + ceil32(stor5[arg1][1].length) + 256 len ceil32(stor5[arg1].length)] = mem[128 len ceil32(stor5[arg1].length)]
    mem[ceil32(stor5[arg1].length) + ceil32(stor5[arg1][1].length) + 192] = stor5[arg1].length + 96
    mem[stor5[arg1].length + ceil32(stor5[arg1].length) + ceil32(stor5[arg1][1].length) + 256] = stor5[arg1][1].length
    mem[stor5[arg1].length + ceil32(stor5[arg1].length) + ceil32(stor5[arg1][1].length) + 288 len ceil32(stor5[arg1][1].length)] = mem[ceil32(stor5[arg1].length) + 160 len ceil32(stor5[arg1][1].length)]
    if not stor5[arg1][1].length % 32:
        return Array(len=stor5[arg1].length, data=mem[128 len ceil32(stor5[arg1].length)], mem[(2 * ceil32(stor5[arg1].length)) + ceil32(stor5[arg1][1].length) + 256 len stor5[arg1][1].length + stor5[arg1].length + -ceil32(stor5[arg1].length) + 32]), 
               stor5[arg1].length + 96
    mem[floor32(stor5[arg1][1].length) + stor5[arg1].length + ceil32(stor5[arg1].length) + ceil32(stor5[arg1][1].length) + 288] = mem[floor32(stor5[arg1][1].length) + stor5[arg1].length + ceil32(stor5[arg1].length) + ceil32(stor5[arg1][1].length) + -stor5[arg1][1].length % 32 + 320 len stor5[arg1][1].length % 32]
    return Array(len=stor5[arg1].length, data=mem[128 len ceil32(stor5[arg1].length)], mem[(2 * ceil32(stor5[arg1].length)) + ceil32(stor5[arg1][1].length) + 256 len floor32(stor5[arg1][1].length) + stor5[arg1].length + -ceil32(stor5[arg1].length) + 64]), 
           stor5[arg1].length + 96
}

function sub_2a85788b(?) {
    mem[32] = 5
    mem[96] = stor5[address(arg1)].length
    mem[128] = stor5[address(arg1)].field_0
    idx = 128
    s = 0
    while stor5[address(arg1)].length + 96 > idx:
        mem[idx + 32] = stor5[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor5[address(arg1)].length) + ceil32(stor5[address(arg1)][1].length) + 160
    mem[ceil32(stor5[address(arg1)].length) + 128] = stor5[address(arg1)][1].length
    mem[0] = sha3(address(arg1), 5) + 1
    mem[ceil32(stor5[address(arg1)].length) + 160] = stor5[address(arg1)][1].field_0
    idx = ceil32(stor5[address(arg1)].length) + 160
    s = 0
    while ceil32(stor5[address(arg1)].length) + stor5[address(arg1)][1].length + 128 > idx:
        mem[idx + 32] = stor5[address(arg1)][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor5[address(arg1)].length) + ceil32(stor5[address(arg1)][1].length) + 160] = 64
    mem[ceil32(stor5[address(arg1)].length) + ceil32(stor5[address(arg1)][1].length) + 224] = stor5[address(arg1)].length
    mem[ceil32(stor5[address(arg1)].length) + ceil32(stor5[address(arg1)][1].length) + 256 len ceil32(stor5[address(arg1)].length)] = mem[128 len ceil32(stor5[address(arg1)].length)]
    mem[ceil32(stor5[address(arg1)].length) + ceil32(stor5[address(arg1)][1].length) + 192] = stor5[address(arg1)].length + 96
    mem[stor5[address(arg1)].length + ceil32(stor5[address(arg1)].length) + ceil32(stor5[address(arg1)][1].length) + 256] = stor5[address(arg1)][1].length
    mem[stor5[address(arg1)].length + ceil32(stor5[address(arg1)].length) + ceil32(stor5[address(arg1)][1].length) + 288 len ceil32(stor5[address(arg1)][1].length)] = mem[ceil32(stor5[address(arg1)].length) + 160 len ceil32(stor5[address(arg1)][1].length)]
    if not stor5[address(arg1)][1].length % 32:
        return Array(len=stor5[address(arg1)].length, data=mem[128 len ceil32(stor5[address(arg1)].length)], mem[(2 * ceil32(stor5[address(arg1)].length)) + ceil32(stor5[address(arg1)][1].length) + 256 len stor5[address(arg1)][1].length + stor5[address(arg1)].length + -ceil32(stor5[address(arg1)].length) + 32]), 
               stor5[address(arg1)].length + 96
    mem[floor32(stor5[address(arg1)][1].length) + stor5[address(arg1)].length + ceil32(stor5[address(arg1)].length) + ceil32(stor5[address(arg1)][1].length) + 288] = mem[floor32(stor5[address(arg1)][1].length) + stor5[address(arg1)].length + ceil32(stor5[address(arg1)].length) + ceil32(stor5[address(arg1)][1].length) + -stor5[address(arg1)][1].length % 32 + 320 len stor5[address(arg1)][1].length % 32]
    return Array(len=stor5[address(arg1)].length, data=mem[128 len ceil32(stor5[address(arg1)].length)], mem[(2 * ceil32(stor5[address(arg1)].length)) + ceil32(stor5[address(arg1)][1].length) + 256 len floor32(stor5[address(arg1)][1].length) + stor5[address(arg1)].length + -ceil32(stor5[address(arg1)].length) + 64]), 
           stor5[address(arg1)].length + 96
}

function _fallback() payable {
    require stor3
    require (msg.value / stor3) + balances[address(msg.sender)] >= msg.value / stor3
    require stor13.length - 1 < stor13.length
    if (msg.value / stor3) + balances[address(msg.sender)] > balances[stor13[stor13.length].field_0]:
        if stor13.length:
            mem[128] = address(stor13.field_0)
            idx = 128
            s = 0
            while (32 * stor13.length) + 96 > idx:
                mem[idx + 32] = stor13[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
        idx = 0
        s = 0
        while idx < stor13.length:
            require s < stor13.length
            mem[0] = mem[(32 * s) + 140 len 20]
            mem[32] = 1
            if (msg.value / stor3) + balances[address(msg.sender)] <= balances[mem[(32 * s) + 140 len 20]]:
                if idx > s:
                    if idx < stor13.length:
                        require s < stor13.length
                        require idx < stor13.length
                        mem[0] = 13
                        stor13[idx].field_0 = mem[(32 * s) + 140 len 20]
                idx = idx + 1
                s = s + 1
                continue 
            if idx != s:
                if idx > s:
                    if idx < stor13.length:
                        require s < stor13.length
                        require idx < stor13.length
                        mem[0] = 13
                        stor13[idx].field_0 = mem[(32 * s) + 140 len 20]
                idx = idx + 1
                s = s + 1
                continue 
            require idx < stor13.length
            mem[0] = 13
            stor13[idx].field_0 = msg.sender
            if idx + 1 > s:
                if idx + 1 < stor13.length:
                    require s < stor13.length
                    require idx + 1 < stor13.length
                    mem[0] = 13
                    stor13[idx].field_256 = mem[(32 * s) + 140 len 20]
            idx = idx + 2
            s = s + 1
            continue 
    else:
        if stor13.length < stor12:
            if stor13.length:
                mem[128] = address(stor13.field_0)
                idx = 128
                s = 0
                while (32 * stor13.length) + 96 > idx:
                    mem[idx + 32] = stor13[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            idx = 0
            s = 0
            while idx < stor13.length:
                require s < stor13.length
                mem[0] = mem[(32 * s) + 140 len 20]
                mem[32] = 1
                if (msg.value / stor3) + balances[address(msg.sender)] <= balances[mem[(32 * s) + 140 len 20]]:
                    if idx > s:
                        if idx < stor13.length:
                            require s < stor13.length
                            require idx < stor13.length
                            mem[0] = 13
                            stor13[idx].field_0 = mem[(32 * s) + 140 len 20]
                    idx = idx + 1
                    s = s + 1
                    continue 
                if idx != s:
                    if idx > s:
                        if idx < stor13.length:
                            require s < stor13.length
                            require idx < stor13.length
                            mem[0] = 13
                            stor13[idx].field_0 = mem[(32 * s) + 140 len 20]
                    idx = idx + 1
                    s = s + 1
                    continue 
                require idx < stor13.length
                mem[0] = 13
                stor13[idx].field_0 = msg.sender
                if idx + 1 > s:
                    if idx + 1 < stor13.length:
                        require s < stor13.length
                        require idx + 1 < stor13.length
                        mem[0] = 13
                        stor13[idx].field_256 = mem[(32 * s) + 140 len 20]
                idx = idx + 2
                s = s + 1
                continue 
    require reserve - (msg.value / stor3) >= 0
    require msg.value / stor3 <= reserve
    reserve -= msg.value / stor3
    require balances[address(msg.sender)] + (msg.value / stor3) >= balances[address(msg.sender)]
    balances[address(msg.sender)] += msg.value / stor3
}



}
