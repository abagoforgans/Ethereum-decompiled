contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
address stor2; offset 8
mapping of uint256 stor3;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint8 stor19;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 3
    stor0.length.field_8 = 'QTC' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 3
    stor1.length.field_8 = 'QTC' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    uint8(stor2.field_0) = 18
    stor5 = 210000000 * 10^18
    stor6 = 70000000 * 10^18
    stor7 = 70000000 * 10^18
    stor8 = 417552 * 24 * 3600
    stor9 = 418176 * 24 * 3600
    stor10 = 418776 * 24 * 3600
    stor11 = 4 * 10^14
    stor12 = 5 * 10^14
    stor13 = 1000000 * 10^18
    stor14 = 1000000 * 10^18
    stor15 = 0
    stor16 = 418944 * 24 * 3600
    stor19 = 0
    require not msg.value
    address(stor2.field_8) = msg.sender
    stor3[address(msg.sender)] = stor6
    return code.data[541 len 3838]
}



// =====================  Runtime code  =====================


array of uint256 symbol;
array of uint256 name;
uint8 decimals;
address owner; offset 8
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 stor5;
uint256 totalSupply;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 sub_90556264;
uint256 sub_7a1e02c3;
uint256 sub_c7795cea;
array of address stor17;
mapping of uint256 stor18;
uint8 transferFrozen;

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

function sub_7a1e02c3(?) {
    return sub_7a1e02c3
}

function owner() {
    return owner
}

function sub_90556264(?) {
    return sub_90556264
}

function symbol() {
    return symbol[0 len symbol.length]
}

function transferFrozen() {
    return bool(transferFrozen)
}

function sub_c7795cea(?) {
    return sub_c7795cea
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_85e8111d(?) {
    require owner == msg.sender
    transferFrozen = 1
    return 1
}

function unfreezeTransfer() {
    require owner == msg.sender
    transferFrozen = 0
    return 1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function withdraw() {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not transferFrozen
    require block.timestamp >= stor10
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not transferFrozen
    require block.timestamp >= stor10
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require block.timestamp >= stor8
    require totalSupply < stor5
    require msg.value > 0
    if block.timestamp < stor10:
        if block.timestamp >= stor9:
            require stor12
            require (10^18 * msg.value / stor12) + totalSupply >= totalSupply
            require (10^18 * msg.value / stor12) + totalSupply <= stor5
            require (10^18 * msg.value / stor12) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += 10^18 * msg.value / stor12
            require (10^18 * msg.value / stor12) + totalSupply >= totalSupply
            totalSupply += 10^18 * msg.value / stor12
            require (10^18 * msg.value / stor12) + totalSupply <= stor5
            if stor5 - (10^18 * msg.value / stor12) - totalSupply >= stor13:
                sub_90556264 = stor13
            else:
                require totalSupply <= stor5
                sub_90556264 = stor5 - totalSupply
        else:
            require stor11
            require (10^18 * msg.value / stor11) + totalSupply >= totalSupply
            require (10^18 * msg.value / stor11) + totalSupply <= stor5
            require (10^18 * msg.value / stor11) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += 10^18 * msg.value / stor11
            require (10^18 * msg.value / stor11) + totalSupply >= totalSupply
            totalSupply += 10^18 * msg.value / stor11
            require (10^18 * msg.value / stor11) + totalSupply <= stor5
            if stor5 - (10^18 * msg.value / stor11) - totalSupply >= stor13:
                sub_90556264 = stor13
            else:
                require totalSupply <= stor5
                sub_90556264 = stor5 - totalSupply
    require sub_90556264 > 0
    if block.timestamp <= sub_c7795cea:
        s = 0
        idx = 0
        while idx < stor17.length:
            mem[0] = 17
            if address(stor17[idx]) != msg.sender:
                s = address(stor17[idx])
                idx = idx + 1
                continue 
            require msg.value + stor18[address(msg.sender)] >= stor18[address(msg.sender)]
            stor18[address(msg.sender)] += msg.value
            require msg.value + sub_7a1e02c3 >= sub_7a1e02c3
            sub_7a1e02c3 += msg.value
        stor17.length++
        if not stor17.length <= stor17.length + 1:
            idx = stor17.length + 1
            while stor17.length > idx:
                uint256(stor17[idx]) = 0
                idx = idx + 1
                continue 
        address(stor17[stor17.length]) = msg.sender
        require msg.value + stor18[address(msg.sender)] >= stor18[address(msg.sender)]
        stor18[address(msg.sender)] += msg.value
        require msg.value + sub_7a1e02c3 >= sub_7a1e02c3
        sub_7a1e02c3 += msg.value
    if not sub_7a1e02c3:
        # nil
    else:
        require sub_90556264 + totalSupply >= totalSupply
        if sub_90556264 + totalSupply != stor5:
            require sub_7a1e02c3
            s = 0
            s = 0
            idx = 0
            while idx < stor17.length:
                require (stor18[address(stor17[idx])] * sub_90556264 / sub_7a1e02c3) + balanceOf[address(stor17[idx])] >= balanceOf[address(stor17[idx])]
                mem[0] = address(stor17[idx])
                balanceOf[address(stor17[idx])] += stor18[address(stor17[idx])] * sub_90556264 / sub_7a1e02c3
                mem[32] = 18
                stor18[address(stor17[idx])] = 0
                s = stor18[address(stor17[idx])]
                s = address(stor17[idx])
                idx = idx + 1
                continue 
            stor17.length = 0
            idx = 0
            while stor17.length > idx:
                uint256(stor17[idx]) = 0
                idx = idx + 1
                continue 
            sub_7a1e02c3 = 0
            require sub_90556264 + totalSupply >= totalSupply
            totalSupply += sub_90556264
            # nil
        else:
            s = 0
            idx = 0
            while idx < stor17.length:
                mem[0] = 17
                if address(stor17[idx]) != msg.sender:
                    s = address(stor17[idx])
                    idx = idx + 1
                    continue 
                require msg.value + stor18[address(msg.sender)] >= stor18[address(msg.sender)]
                stor18[address(msg.sender)] += msg.value
                require msg.value + sub_7a1e02c3 >= sub_7a1e02c3
                sub_7a1e02c3 += msg.value
                require sub_7a1e02c3
                s = 0
                s = 0
                idx = 0
                while idx < stor17.length:
                    require (stor18[address(stor17[idx])] * sub_90556264 / sub_7a1e02c3) + balanceOf[address(stor17[idx])] >= balanceOf[address(stor17[idx])]
                    mem[0] = address(stor17[idx])
                    balanceOf[address(stor17[idx])] += stor18[address(stor17[idx])] * sub_90556264 / sub_7a1e02c3
                    mem[32] = 18
                    stor18[address(stor17[idx])] = 0
                    s = stor18[address(stor17[idx])]
                    s = address(stor17[idx])
                    idx = idx + 1
                    continue 
                stor17.length = 0
                idx = sha3(17)
                while sha3(17) + stor17.length > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
                sub_7a1e02c3 = 0
                require sub_90556264 + totalSupply >= totalSupply
                totalSupply += sub_90556264
                # nil
            stor17.length++
            if not stor17.length <= stor17.length + 1:
                idx = stor17.length + 1
                while stor17.length > idx:
                    uint256(stor17[idx]) = 0
                    idx = idx + 1
                    continue 
            address(stor17[stor17.length]) = msg.sender
            require msg.value + stor18[address(msg.sender)] >= stor18[address(msg.sender)]
            stor18[address(msg.sender)] += msg.value
            require msg.value + sub_7a1e02c3 >= sub_7a1e02c3
            sub_7a1e02c3 += msg.value
            require sub_7a1e02c3
            s = 0
            s = 0
            idx = 0
            while idx < stor17.length:
                require (stor18[address(stor17[idx])] * sub_90556264 / sub_7a1e02c3) + balanceOf[address(stor17[idx])] >= balanceOf[address(stor17[idx])]
                mem[0] = address(stor17[idx])
                balanceOf[address(stor17[idx])] += stor18[address(stor17[idx])] * sub_90556264 / sub_7a1e02c3
                mem[32] = 18
                stor18[address(stor17[idx])] = 0
                s = stor18[address(stor17[idx])]
                s = address(stor17[idx])
                idx = idx + 1
                continue 
            stor17.length = 0
            idx = 0
            while stor17.length > idx:
                uint256(stor17[idx]) = 0
                idx = idx + 1
                continue 
            sub_7a1e02c3 = 0
            require sub_90556264 + totalSupply >= totalSupply
            totalSupply += sub_90556264
            # nil
}

function buyCoin() payable {
    require block.timestamp >= stor8
    require totalSupply < stor5
    require msg.value > 0
    if block.timestamp < stor10:
        if block.timestamp >= stor9:
            require stor12
            require (10^18 * msg.value / stor12) + totalSupply >= totalSupply
            require (10^18 * msg.value / stor12) + totalSupply <= stor5
            require (10^18 * msg.value / stor12) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += 10^18 * msg.value / stor12
            require (10^18 * msg.value / stor12) + totalSupply >= totalSupply
            totalSupply += 10^18 * msg.value / stor12
            require (10^18 * msg.value / stor12) + totalSupply <= stor5
            if stor5 - (10^18 * msg.value / stor12) - totalSupply >= stor13:
                sub_90556264 = stor13
            else:
                require totalSupply <= stor5
                sub_90556264 = stor5 - totalSupply
        else:
            require stor11
            require (10^18 * msg.value / stor11) + totalSupply >= totalSupply
            require (10^18 * msg.value / stor11) + totalSupply <= stor5
            require (10^18 * msg.value / stor11) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += 10^18 * msg.value / stor11
            require (10^18 * msg.value / stor11) + totalSupply >= totalSupply
            totalSupply += 10^18 * msg.value / stor11
            require (10^18 * msg.value / stor11) + totalSupply <= stor5
            if stor5 - (10^18 * msg.value / stor11) - totalSupply >= stor13:
                sub_90556264 = stor13
            else:
                require totalSupply <= stor5
                sub_90556264 = stor5 - totalSupply
        return 1
    require sub_90556264 > 0
    if block.timestamp <= sub_c7795cea:
        s = 0
        idx = 0
        while idx < stor17.length:
            mem[0] = 17
            if address(stor17[idx]) != msg.sender:
                s = address(stor17[idx])
                idx = idx + 1
                continue 
            require msg.value + stor18[address(msg.sender)] >= stor18[address(msg.sender)]
            stor18[address(msg.sender)] += msg.value
            require msg.value + sub_7a1e02c3 >= sub_7a1e02c3
            sub_7a1e02c3 += msg.value
            return 1
        stor17.length++
        if not stor17.length <= stor17.length + 1:
            idx = stor17.length + 1
            while stor17.length > idx:
                uint256(stor17[idx]) = 0
                idx = idx + 1
                continue 
        address(stor17[stor17.length]) = msg.sender
        require msg.value + stor18[address(msg.sender)] >= stor18[address(msg.sender)]
        stor18[address(msg.sender)] += msg.value
        require msg.value + sub_7a1e02c3 >= sub_7a1e02c3
        sub_7a1e02c3 += msg.value
        return 1
    if not sub_7a1e02c3:
        # nil
    else:
        require sub_90556264 + totalSupply >= totalSupply
        if sub_90556264 + totalSupply != stor5:
            require sub_7a1e02c3
            s = 0
            s = 0
            idx = 0
            while idx < stor17.length:
                require (stor18[address(stor17[idx])] * sub_90556264 / sub_7a1e02c3) + balanceOf[address(stor17[idx])] >= balanceOf[address(stor17[idx])]
                mem[0] = address(stor17[idx])
                balanceOf[address(stor17[idx])] += stor18[address(stor17[idx])] * sub_90556264 / sub_7a1e02c3
                mem[32] = 18
                stor18[address(stor17[idx])] = 0
                s = stor18[address(stor17[idx])]
                s = address(stor17[idx])
                idx = idx + 1
                continue 
            stor17.length = 0
            idx = 0
            while stor17.length > idx:
                uint256(stor17[idx]) = 0
                idx = idx + 1
                continue 
            sub_7a1e02c3 = 0
            require sub_90556264 + totalSupply >= totalSupply
            totalSupply += sub_90556264
            # nil
        else:
            s = 0
            idx = 0
            while idx < stor17.length:
                mem[0] = 17
                if address(stor17[idx]) != msg.sender:
                    s = address(stor17[idx])
                    idx = idx + 1
                    continue 
                require msg.value + stor18[address(msg.sender)] >= stor18[address(msg.sender)]
                stor18[address(msg.sender)] += msg.value
                require msg.value + sub_7a1e02c3 >= sub_7a1e02c3
                sub_7a1e02c3 += msg.value
                require sub_7a1e02c3
                s = 0
                s = 0
                idx = 0
                while idx < stor17.length:
                    require (stor18[address(stor17[idx])] * sub_90556264 / sub_7a1e02c3) + balanceOf[address(stor17[idx])] >= balanceOf[address(stor17[idx])]
                    mem[0] = address(stor17[idx])
                    balanceOf[address(stor17[idx])] += stor18[address(stor17[idx])] * sub_90556264 / sub_7a1e02c3
                    mem[32] = 18
                    stor18[address(stor17[idx])] = 0
                    s = stor18[address(stor17[idx])]
                    s = address(stor17[idx])
                    idx = idx + 1
                    continue 
                stor17.length = 0
                idx = sha3(17)
                while sha3(17) + stor17.length > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
                sub_7a1e02c3 = 0
                require sub_90556264 + totalSupply >= totalSupply
                totalSupply += sub_90556264
                # nil
            stor17.length++
            if not stor17.length <= stor17.length + 1:
                idx = stor17.length + 1
                while stor17.length > idx:
                    uint256(stor17[idx]) = 0
                    idx = idx + 1
                    continue 
            address(stor17[stor17.length]) = msg.sender
            require msg.value + stor18[address(msg.sender)] >= stor18[address(msg.sender)]
            stor18[address(msg.sender)] += msg.value
            require msg.value + sub_7a1e02c3 >= sub_7a1e02c3
            sub_7a1e02c3 += msg.value
            require sub_7a1e02c3
            s = 0
            s = 0
            idx = 0
            while idx < stor17.length:
                require (stor18[address(stor17[idx])] * sub_90556264 / sub_7a1e02c3) + balanceOf[address(stor17[idx])] >= balanceOf[address(stor17[idx])]
                mem[0] = address(stor17[idx])
                balanceOf[address(stor17[idx])] += stor18[address(stor17[idx])] * sub_90556264 / sub_7a1e02c3
                mem[32] = 18
                stor18[address(stor17[idx])] = 0
                s = stor18[address(stor17[idx])]
                s = address(stor17[idx])
                idx = idx + 1
                continue 
            stor17.length = 0
            idx = 0
            while stor17.length > idx:
                uint256(stor17[idx]) = 0
                idx = idx + 1
                continue 
            sub_7a1e02c3 = 0
            require sub_90556264 + totalSupply >= totalSupply
            totalSupply += sub_90556264
            # nil
}



}
