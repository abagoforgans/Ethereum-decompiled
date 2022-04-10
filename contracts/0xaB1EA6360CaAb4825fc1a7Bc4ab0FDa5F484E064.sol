contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
array of uint256 stor3;
array of uint256 stor4;
uint8 stor5;
uint256 stor6;
uint8 stor7; offset 160
address stor7;

function _fallback() payable {
    stor6 = 0
    uint8(stor7.field_160) = 1
    require not msg.value
    bool(stor3.length) = 0
    stor3.length.field_1 = 16
    stor3.length.field_8 = 'Imperial Credits' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor4.length) = 0
    stor4.length.field_1 = 3
    stor4.length.field_8 = 'XIC' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 0
    address(stor7.field_0) = msg.sender
    stor0[address(msg.sender)] = 100000
    stor6 = 100000
    return code.data[465 len 3315]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of struct stor2;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint8 isIco; offset 160
address stor7;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function isIco() {
    return bool(isIco)
}

function destroyCredits(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function icoWithdraw() {
    require eth.balance(this.address)
    require stor7 == msg.sender
    call stor7 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function icoClose() {
    require stor7 == msg.sender
    require isIco
    if eth.balance(this.address) > 0:
        call stor7 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    if -totalSupply + 10^9 > 0:
        balanceOf[address(msg.sender)] = -totalSupply + balanceOf[address(msg.sender)] + 10^9
        totalSupply = 10^9
    isIco = 0
}

function _fallback() payable {
    require totalSupply < 10^9
    require isIco
    if msg.value / 10^14 <= -totalSupply + 10^9:
        call msg.sender with:
           value msg.value - (10^14 * msg.value / 10^14) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        balanceOf[address(msg.sender)] += msg.value / 10^14
        totalSupply += msg.value / 10^14
    else:
        call msg.sender with:
           value msg.value + (10^14 * totalSupply) - 100000 * 10^18 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        balanceOf[address(msg.sender)] = -totalSupply + balanceOf[address(msg.sender)] + 10^9
        totalSupply = 10^9
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[msg.sender] -= arg2
    balanceOf[address(arg1)] += arg2
    if balanceOf[address(arg1)] < 1:
        idx = 0
        while idx < stor2.length:
            mem[0] = 2
            if address(stor2[idx].field_0) != arg1:
                idx = idx + 1
                continue 
            if balanceOf[address(msg.sender)] < 1:
                idx = 0
                while idx < stor2.length:
                    mem[0] = 2
                    if address(stor2[idx].field_0) != msg.sender:
                        idx = idx + 1
                        continue 
                    s = idx
                    while s < stor2.length - 1:
                        require s + 1 < stor2.length
                        require s < stor2.length
                        mem[0] = 2
                        address(stor2[s].field_0) = address(stor2[s].field_256)
                        s = s + 1
                        continue 
                    stor2.length--
                    if not stor2.length <= stor2.length - 1:
                        idx = stor2.length + sha3(2) - 1
                        while sha3(2) + stor2.length > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    emit Transfer(arg2, msg.sender, arg1);
                    return 1
            emit Transfer(arg2, msg.sender, arg1);
            return 1
        stor2.length++
        if not stor2.length <= stor2.length + 1:
            idx = stor2.length + 1
            while stor2.length > idx:
                stor2[idx].field_0 = 0
                idx = idx + 1
                continue 
        require stor2.length - 1 < stor2.length
        address(stor2[stor2.length].field_0) = arg1
    if balanceOf[address(msg.sender)] < 1:
        idx = 0
        while idx < stor2.length:
            mem[0] = 2
            if address(stor2[idx].field_0) != msg.sender:
                idx = idx + 1
                continue 
            s = idx
            while s < stor2.length - 1:
                require s + 1 < stor2.length
                require s < stor2.length
                mem[0] = 2
                address(stor2[s].field_0) = address(stor2[s].field_256)
                s = s + 1
                continue 
            stor2.length--
            if not stor2.length <= stor2.length - 1:
                idx = stor2.length + sha3(2) - 1
                while sha3(2) + stor2.length > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
            emit Transfer(arg2, msg.sender, arg1);
            return 1
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[arg1] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg2)] += arg3
    if balanceOf[address(arg2)] < 1:
        idx = 0
        while idx < stor2.length:
            mem[0] = 2
            if address(stor2[idx].field_0) != arg2:
                idx = idx + 1
                continue 
            if balanceOf[address(arg1)] < 1:
                idx = 0
                while idx < stor2.length:
                    mem[0] = 2
                    if address(stor2[idx].field_0) != arg1:
                        idx = idx + 1
                        continue 
                    s = idx
                    while s < stor2.length - 1:
                        require s + 1 < stor2.length
                        require s < stor2.length
                        mem[0] = 2
                        address(stor2[s].field_0) = address(stor2[s].field_256)
                        s = s + 1
                        continue 
                    stor2.length--
                    if not stor2.length <= stor2.length - 1:
                        idx = stor2.length + sha3(2) - 1
                        while sha3(2) + stor2.length > idx:
                            stor[idx] = 0
                            idx = idx + 1
                            continue 
                    emit Transfer(arg3, arg1, arg2);
                    return 1
            emit Transfer(arg3, arg1, arg2);
            return 1
        stor2.length++
        if not stor2.length <= stor2.length + 1:
            idx = stor2.length + 1
            while stor2.length > idx:
                stor2[idx].field_0 = 0
                idx = idx + 1
                continue 
        require stor2.length - 1 < stor2.length
        address(stor2[stor2.length].field_0) = arg2
    if balanceOf[address(arg1)] < 1:
        idx = 0
        while idx < stor2.length:
            mem[0] = 2
            if address(stor2[idx].field_0) != arg1:
                idx = idx + 1
                continue 
            s = idx
            while s < stor2.length - 1:
                require s + 1 < stor2.length
                require s < stor2.length
                mem[0] = 2
                address(stor2[s].field_0) = address(stor2[s].field_256)
                s = s + 1
                continue 
            stor2.length--
            if not stor2.length <= stor2.length - 1:
                idx = stor2.length + sha3(2) - 1
                while sha3(2) + stor2.length > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
            emit Transfer(arg3, arg1, arg2);
            return 1
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
