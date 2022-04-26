contract main {


// =======================  Init code  ======================


address stor0;
address stor4;
uint256 stor5;
uint256 stor6;

function _fallback() {
    stor0 = msg.sender
    stor4 = code.data[1997 len 20]
    stor5 = code.data[2017 len 32]
    stor6 = code.data[2049 len 32]
    return code.data[138 len 1847]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint256 sub_8f7d969e;
array of address whitelist;
array of address sub_a1c4674a;
address recipientAddress;
uint256 price;
uint256 sub_302150e5;

function sub_302150e5(?) {
    return sub_302150e5
}

function sub_31d9b8c2(?) {
    return sub_a1c4674a.length
}

function recipient() {
    return recipientAddress
}

function whitelistLength() {
    return whitelist.length
}

function whitelist(uint256 arg1) {
    require arg1 < whitelist.length
    return whitelist[arg1]
}

function owner() {
    return owner
}

function sub_8f7d969e(?) {
    return sub_8f7d969e[arg1]
}

function price() {
    return price
}

function sub_a1c4674a(?) {
    require arg1 < sub_a1c4674a.length
    return sub_a1c4674a[arg1]
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function refund(address arg1) payable {
    require owner == msg.sender
    require msg.value == price
    idx = 0
    while idx < sub_a1c4674a.length:
        mem[0] = 3
        if sub_a1c4674a[idx] != arg1:
            idx = idx + 1
            continue 
        require idx < sub_a1c4674a.length
        sub_a1c4674a[idx] = 0
        call arg1 with:
           value price wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit Refunded(idx, arg1);
}

function sub_2e31f38c(?) {
    require owner == msg.sender
    require arg2 > 0
    mem[0] = arg1
    idx = arg2 + sub_8f7d969e[mem[0]]
    while idx >= price:
        if whitelist.length >= sub_302150e5:
            sub_a1c4674a.length++
            if not sub_a1c4674a.length <= sub_a1c4674a.length + 1:
                s = sub_a1c4674a.length + sha3(3) + 1
                while sha3(3) + sub_a1c4674a.length > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            mem[0] = 3
            sub_a1c4674a[sub_a1c4674a.length] = arg1
            mem[96] = sub_a1c4674a.length - 1
            emit 0x821591c7: (sub_a1c4674a.length - 1), arg1
        else:
            whitelist.length++
            if not whitelist.length <= whitelist.length + 1:
                s = whitelist.length + sha3(2) + 1
                while sha3(2) + whitelist.length > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            mem[0] = 2
            whitelist[whitelist.length] = arg1
            mem[96] = whitelist.length - 1
            emit Whitelisted((whitelist.length - 1), arg1);
        idx = idx - price
        continue 
    sub_8f7d969e[address(arg1)] = idx
}

function sub_5d63a97a(?) payable {
    require msg.value > 0
    mem[0] = arg1
    idx = msg.value + sub_8f7d969e[mem[0]]
    while idx >= price:
        if whitelist.length >= sub_302150e5:
            sub_a1c4674a.length++
            if not sub_a1c4674a.length <= sub_a1c4674a.length + 1:
                s = sub_a1c4674a.length + sha3(3) + 1
                while sha3(3) + sub_a1c4674a.length > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            mem[0] = 3
            sub_a1c4674a[sub_a1c4674a.length] = arg1
            mem[96] = sub_a1c4674a.length - 1
            emit 0x821591c7: (sub_a1c4674a.length - 1), arg1
        else:
            whitelist.length++
            if not whitelist.length <= whitelist.length + 1:
                s = whitelist.length + sha3(2) + 1
                while sha3(2) + whitelist.length > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            mem[0] = 2
            whitelist[whitelist.length] = arg1
            mem[96] = whitelist.length - 1
            emit Whitelisted((whitelist.length - 1), arg1);
        idx = idx - price
        continue 
    sub_8f7d969e[address(arg1)] = idx
    call recipientAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require msg.value > 0
    mem[0] = msg.sender
    idx = msg.value + sub_8f7d969e[mem[0]]
    while idx >= price:
        if whitelist.length >= sub_302150e5:
            sub_a1c4674a.length++
            if not sub_a1c4674a.length <= sub_a1c4674a.length + 1:
                s = sub_a1c4674a.length + sha3(3) + 1
                while sha3(3) + sub_a1c4674a.length > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            mem[0] = 3
            sub_a1c4674a[sub_a1c4674a.length] = msg.sender
            mem[96] = sub_a1c4674a.length - 1
            emit 0x821591c7: (sub_a1c4674a.length - 1), msg.sender
        else:
            whitelist.length++
            if not whitelist.length <= whitelist.length + 1:
                s = whitelist.length + sha3(2) + 1
                while sha3(2) + whitelist.length > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            mem[0] = 2
            whitelist[whitelist.length] = msg.sender
            mem[96] = whitelist.length - 1
            emit Whitelisted((whitelist.length - 1), msg.sender);
        idx = idx - price
        continue 
    sub_8f7d969e[address(msg.sender)] = idx
    call recipientAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
