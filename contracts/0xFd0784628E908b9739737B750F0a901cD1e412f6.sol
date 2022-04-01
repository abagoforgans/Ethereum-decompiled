contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint8 stor9;

function _fallback() payable {
    stor8 = 0
    stor9 = 0
    require not msg.value
    stor0 = msg.sender
    stor7 = code.data[3817 len 32]
    stor5 = code.data[3849 len 32]
    stor6 = code.data[3881 len 32]
    return code.data[122 len 3695]
}



// =====================  Runtime code  =====================


address owner;
array of struct sub_3f0bee32;
mapping of struct sub_3cc84212;
uint256 tokenPrice;
uint256 sub_ff100d09;
uint256 maxTokens;
uint256 soldTokens;
uint8 saleStopped;
mapping of uint256 balanceOf;
array of struct stor11;

function sub_3cc84212(?) {
    return sub_3cc84212[arg1].field_0, sub_3cc84212[arg1].field_256, sub_3cc84212[arg1].field_512
}

function sub_3f0bee32(?) {
    require arg1 < sub_3f0bee32.length
    return sub_3f0bee32[arg1].field_0
}

function saleStopped() {
    return bool(saleStopped)
}

function soldTokens() {
    return soldTokens
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function tokenPrice() {
    return tokenPrice
}

function owner() {
    return owner
}

function sub_96759d76(?) {
    return sub_3f0bee32.length
}

function maxTokens() {
    return maxTokens
}

function getBuyersCount() {
    return stor11.length
}

function sub_ff100d09(?) {
    return sub_ff100d09
}

function destroy() {
    require owner == msg.sender
    selfdestruct(msg.sender)
}

function setMaxTokens(uint256 arg1) {
    require owner == msg.sender
    maxTokens = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function stopSale(bool arg1) {
    require owner == msg.sender
    saleStopped = uint8(arg1)
}

function saleEnded() {
    if soldTokens >= maxTokens:
        return soldTokens >= maxTokens
    return bool(saleStopped)
}

function setPrice(uint256 arg1, uint256 arg2) {
    require owner == msg.sender
    tokenPrice = arg1
    sub_ff100d09 = arg2
}

function withdraw(uint256 arg1) {
    require owner == msg.sender
    call msg.sender with:
       value arg1 wei
         gas gas_remaining - 34710 wei
    require ext_call.success
}

function sub_dbc94f82(?) {
    require owner == msg.sender
    require arg1
    require arg2
    require arg2 + soldTokens >= soldTokens
    soldTokens += arg2
    if not balanceOf[address(arg1)]:
        stor11.length++
        if not stor11.length <= stor11.length + 1:
            idx = stor11.length + 1
            while stor11.length > idx:
                stor11[idx].field_0 = 0
                idx = idx + 1
                continue 
        stor11[stor11.length].field_0 = arg1
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit code.data[3620 len 32]: arg2, 0, 0, arg1, 0
}

function sub_b01b19ab(?) {
    create contract with 0 wei
                    code: code.data[3415 len 205]
    require create.new_address
    sub_3cc84212[address(create.new_address)].field_0 = msg.sender
    sub_3f0bee32.length++
    if not sub_3f0bee32.length <= sub_3f0bee32.length + 1:
        idx = sub_3f0bee32.length + 1
        while sub_3f0bee32.length > idx:
            sub_3f0bee32[idx].field_0 = 0
            idx = idx + 1
            continue 
    sub_3f0bee32[sub_3f0bee32.length].field_0 = address(create.new_address)
    emit 0x135fd237: sub_3f0bee32.length + 1, address(create.new_address), msg.sender
    return address(create.new_address)
}

function sub_51cc87d6(?) {
    require owner == msg.sender
    create contract with 0 wei
                    code: code.data[3415 len 205]
    require create.new_address
    sub_3cc84212[address(create.new_address)].field_0 = arg1
    sub_3f0bee32.length++
    if not sub_3f0bee32.length <= sub_3f0bee32.length + 1:
        idx = sub_3f0bee32.length + 1
        while sub_3f0bee32.length > idx:
            sub_3f0bee32[idx].field_0 = 0
            idx = idx + 1
            continue 
    sub_3f0bee32[sub_3f0bee32.length].field_0 = address(create.new_address)
    emit 0x135fd237: sub_3f0bee32.length + 1, address(create.new_address), arg1
    return address(create.new_address)
}

function sub_49e8be2f(?) {
    if sub_3f0bee32.length:
        mem[160] = address(sub_3f0bee32.field_0)
        idx = 160
        s = 0
        while (32 * sub_3f0bee32.length) + 128 > idx:
            mem[idx + 32] = sub_3f0bee32[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * sub_3f0bee32.length) + 160] = 32
    mem[(32 * sub_3f0bee32.length) + 192] = sub_3f0bee32.length
    if Mask(251, 0, sub_3f0bee32.length):
        mem[(32 * sub_3f0bee32.length) + 224] = mem[160]
        mem[(32 * sub_3f0bee32.length) + 256 len floor32((32 * sub_3f0bee32.length) - 1)] = mem[192 len floor32((32 * sub_3f0bee32.length) - 1)]
    return Array(len=sub_3f0bee32.length, data=mem[(32 * sub_3f0bee32.length) + 224 len 32 * sub_3f0bee32.length])
}

function getBuyers() {
    if not stor11.length:
        mem[(32 * stor11.length) + 160] = 32
        mem[(32 * stor11.length) + 192] = stor11.length
        if Mask(251, 0, stor11.length):
            mem[(32 * stor11.length) + 224] = mem[160]
            mem[(32 * stor11.length) + 256 len floor32((32 * stor11.length) - 1)] = mem[192 len floor32((32 * stor11.length) - 1)]
    else:
        mem[160] = address(stor11.field_0)
        if (32 * stor11.length) + 32 > 64:
            mem[192] = address(stor11.field_256)
            idx = 192
            s = 1
            while (32 * stor11.length) + 128 > idx:
                mem[idx + 32] = stor11[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
        mem[(32 * stor11.length) + 160] = 32
        mem[(32 * stor11.length) + 192] = stor11.length
        if Mask(251, 0, stor11.length):
            mem[(32 * stor11.length) + 224] = address(stor11.field_0)
            mem[(32 * stor11.length) + 256 len floor32((32 * stor11.length) - 1)] = mem[192 len floor32((32 * stor11.length) - 1)]
    return Array(len=stor11.length, data=mem[(32 * stor11.length) + 224 len 32 * stor11.length])
}

function buyTokenFor(address arg1) payable {
    require not saleStopped
    if msg.value:
        require msg.value
        require sub_ff100d09 * msg.value / msg.value == sub_ff100d09
    require tokenPrice > 0
    require tokenPrice
    require sub_ff100d09 * msg.value == (tokenPrice * sub_ff100d09 * msg.value / tokenPrice) + (sub_ff100d09 * msg.value % tokenPrice)
    require soldTokens <= maxTokens
    require sub_ff100d09 * msg.value / tokenPrice
    require maxTokens - soldTokens
    if sub_ff100d09 * msg.value / tokenPrice <= maxTokens - soldTokens:
        if sub_ff100d09 * msg.value / tokenPrice:
            require sub_ff100d09 * msg.value / tokenPrice
            require tokenPrice * sub_ff100d09 * msg.value / tokenPrice / sub_ff100d09 * msg.value / tokenPrice == tokenPrice
        require sub_ff100d09 > 0
        require sub_ff100d09
        require tokenPrice * sub_ff100d09 * msg.value / tokenPrice == (sub_ff100d09 * tokenPrice * sub_ff100d09 * msg.value / tokenPrice / sub_ff100d09) + (tokenPrice * sub_ff100d09 * msg.value / tokenPrice % sub_ff100d09)
        require tokenPrice * sub_ff100d09 * msg.value / tokenPrice / sub_ff100d09 <= msg.value
        require (sub_ff100d09 * msg.value / tokenPrice) + soldTokens >= soldTokens
        soldTokens += sub_ff100d09 * msg.value / tokenPrice
        if not balanceOf[address(arg1)]:
            stor11.length++
            if not stor11.length <= stor11.length + 1:
                idx = stor11.length + 1
                while stor11.length > idx:
                    stor11[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            stor11[stor11.length].field_0 = arg1
        require (sub_ff100d09 * msg.value / tokenPrice) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += sub_ff100d09 * msg.value / tokenPrice
        if sub_3cc84212[address(msg.sender)].field_0:
            sub_3cc84212[address(msg.sender)].field_256 += sub_ff100d09 * msg.value / tokenPrice
            sub_3cc84212[address(msg.sender)].field_512 += tokenPrice * sub_ff100d09 * msg.value / tokenPrice / sub_ff100d09
        if msg.value - (tokenPrice * sub_ff100d09 * msg.value / tokenPrice / sub_ff100d09) >= 10^13:
            call arg1 with:
               value msg.value - (tokenPrice * sub_ff100d09 * msg.value / tokenPrice / sub_ff100d09) wei
                 gas gas_remaining - 34710 wei
            require ext_call.success
        emit code.data[3620 len 32]: sub_ff100d09 * msg.value / tokenPrice, tokenPrice * sub_ff100d09 * msg.value / tokenPrice / sub_ff100d09, msg.value - (tokenPrice * sub_ff100d09 * msg.value / tokenPrice / sub_ff100d09), arg1, msg.sender
    else:
        if maxTokens - soldTokens:
            require maxTokens - soldTokens
            require (maxTokens * tokenPrice) - (soldTokens * tokenPrice) / maxTokens - soldTokens == tokenPrice
        require sub_ff100d09 > 0
        require sub_ff100d09
        require (maxTokens * tokenPrice) - (soldTokens * tokenPrice) == (sub_ff100d09 * (maxTokens * tokenPrice) - (soldTokens * tokenPrice) / sub_ff100d09) + ((maxTokens * tokenPrice) - (soldTokens * tokenPrice) % sub_ff100d09)
        require (maxTokens * tokenPrice) - (soldTokens * tokenPrice) / sub_ff100d09 <= msg.value
        require maxTokens >= soldTokens
        soldTokens = maxTokens
        if not balanceOf[address(arg1)]:
            stor11.length++
            if not stor11.length <= stor11.length + 1:
                idx = stor11.length + 1
                while stor11.length > idx:
                    stor11[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            stor11[stor11.length].field_0 = arg1
        require maxTokens - soldTokens + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] = maxTokens - soldTokens + balanceOf[address(arg1)]
        if sub_3cc84212[address(msg.sender)].field_0:
            sub_3cc84212[address(msg.sender)].field_256 = maxTokens - soldTokens + sub_3cc84212[address(msg.sender)].field_256
            sub_3cc84212[address(msg.sender)].field_512 += (maxTokens * tokenPrice) - (soldTokens * tokenPrice) / sub_ff100d09
        if msg.value - ((maxTokens * tokenPrice) - (soldTokens * tokenPrice) / sub_ff100d09) >= 10^13:
            call arg1 with:
               value msg.value - ((maxTokens * tokenPrice) - (soldTokens * tokenPrice) / sub_ff100d09) wei
                 gas gas_remaining - 34710 wei
            require ext_call.success
        emit code.data[3620 len 32]: maxTokens - soldTokens, (maxTokens * tokenPrice) - (soldTokens * tokenPrice) / sub_ff100d09, msg.value - ((maxTokens * tokenPrice) - (soldTokens * tokenPrice) / sub_ff100d09), arg1, msg.sender
}

function _fallback() payable {
    require not saleStopped
    if msg.value:
        require msg.value
        require sub_ff100d09 * msg.value / msg.value == sub_ff100d09
    require tokenPrice > 0
    require tokenPrice
    require sub_ff100d09 * msg.value == (tokenPrice * sub_ff100d09 * msg.value / tokenPrice) + (sub_ff100d09 * msg.value % tokenPrice)
    require soldTokens <= maxTokens
    require sub_ff100d09 * msg.value / tokenPrice
    require maxTokens - soldTokens
    if sub_ff100d09 * msg.value / tokenPrice <= maxTokens - soldTokens:
        if sub_ff100d09 * msg.value / tokenPrice:
            require sub_ff100d09 * msg.value / tokenPrice
            require tokenPrice * sub_ff100d09 * msg.value / tokenPrice / sub_ff100d09 * msg.value / tokenPrice == tokenPrice
        require sub_ff100d09 > 0
        require sub_ff100d09
        require tokenPrice * sub_ff100d09 * msg.value / tokenPrice == (sub_ff100d09 * tokenPrice * sub_ff100d09 * msg.value / tokenPrice / sub_ff100d09) + (tokenPrice * sub_ff100d09 * msg.value / tokenPrice % sub_ff100d09)
        require tokenPrice * sub_ff100d09 * msg.value / tokenPrice / sub_ff100d09 <= msg.value
        require (sub_ff100d09 * msg.value / tokenPrice) + soldTokens >= soldTokens
        soldTokens += sub_ff100d09 * msg.value / tokenPrice
        if not balanceOf[address(msg.sender)]:
            stor11.length++
            if not stor11.length <= stor11.length + 1:
                idx = stor11.length + 1
                while stor11.length > idx:
                    stor11[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            stor11[stor11.length].field_0 = msg.sender
        require (sub_ff100d09 * msg.value / tokenPrice) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += sub_ff100d09 * msg.value / tokenPrice
        if sub_3cc84212[address(msg.sender)].field_0:
            sub_3cc84212[address(msg.sender)].field_256 += sub_ff100d09 * msg.value / tokenPrice
            sub_3cc84212[address(msg.sender)].field_512 += tokenPrice * sub_ff100d09 * msg.value / tokenPrice / sub_ff100d09
        if msg.value - (tokenPrice * sub_ff100d09 * msg.value / tokenPrice / sub_ff100d09) >= 10^13:
            call msg.sender with:
               value msg.value - (tokenPrice * sub_ff100d09 * msg.value / tokenPrice / sub_ff100d09) wei
                 gas gas_remaining - 34710 wei
            require ext_call.success
        emit code.data[3620 len 32]: sub_ff100d09 * msg.value / tokenPrice, tokenPrice * sub_ff100d09 * msg.value / tokenPrice / sub_ff100d09, msg.value - (tokenPrice * sub_ff100d09 * msg.value / tokenPrice / sub_ff100d09), msg.sender, msg.sender
    else:
        if maxTokens - soldTokens:
            require maxTokens - soldTokens
            require (maxTokens * tokenPrice) - (soldTokens * tokenPrice) / maxTokens - soldTokens == tokenPrice
        require sub_ff100d09 > 0
        require sub_ff100d09
        require (maxTokens * tokenPrice) - (soldTokens * tokenPrice) == (sub_ff100d09 * (maxTokens * tokenPrice) - (soldTokens * tokenPrice) / sub_ff100d09) + ((maxTokens * tokenPrice) - (soldTokens * tokenPrice) % sub_ff100d09)
        require (maxTokens * tokenPrice) - (soldTokens * tokenPrice) / sub_ff100d09 <= msg.value
        require maxTokens >= soldTokens
        soldTokens = maxTokens
        if not balanceOf[address(msg.sender)]:
            stor11.length++
            if not stor11.length <= stor11.length + 1:
                idx = stor11.length + 1
                while stor11.length > idx:
                    stor11[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            stor11[stor11.length].field_0 = msg.sender
        require maxTokens - soldTokens + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = maxTokens - soldTokens + balanceOf[address(msg.sender)]
        if sub_3cc84212[address(msg.sender)].field_0:
            sub_3cc84212[address(msg.sender)].field_256 = maxTokens - soldTokens + sub_3cc84212[address(msg.sender)].field_256
            sub_3cc84212[address(msg.sender)].field_512 += (maxTokens * tokenPrice) - (soldTokens * tokenPrice) / sub_ff100d09
        if msg.value - ((maxTokens * tokenPrice) - (soldTokens * tokenPrice) / sub_ff100d09) >= 10^13:
            call msg.sender with:
               value msg.value - ((maxTokens * tokenPrice) - (soldTokens * tokenPrice) / sub_ff100d09) wei
                 gas gas_remaining - 34710 wei
            require ext_call.success
        emit code.data[3620 len 32]: maxTokens - soldTokens, (maxTokens * tokenPrice) - (soldTokens * tokenPrice) / sub_ff100d09, msg.value - ((maxTokens * tokenPrice) - (soldTokens * tokenPrice) / sub_ff100d09), msg.sender, msg.sender
}



}
