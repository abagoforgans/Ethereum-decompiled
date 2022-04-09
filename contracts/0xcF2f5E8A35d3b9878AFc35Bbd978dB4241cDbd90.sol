contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
uint256 stor3;
uint256 stor4;
mapping of uint256 stor6;
address stor7;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 13
    stor0.length.field_8 = 'PBKXToken 0.3' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 9
    stor1.length.field_8 = 'PBKXToken' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 4
    stor2.length.field_8 = 'PBKX' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = 2
    stor4 = 3 * 10^6
    require not msg.value
    stor7 = msg.sender
    stor6[address(msg.sender)] = 3 * 10^6
    stor9 = 10^6
    stor10 = 0
    stor11 = 11428571428571
    stor12 = 10^6
    stor13 = 0
    stor14 = 11848341232227
    stor15 = 10^6
    stor16 = 0
    stor17 = 125 * 10^11
    return code.data[885 len 5654]
}



// =====================  Runtime code  =====================


array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 totalSupply;
address stor5;
mapping of uint256 balanceOf;
address stor7;
uint256 exchangeRate;
array of uint256 stor9;
array of uint256 stor10;
array of uint256 stor11;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function exchangeRate() {
    return exchangeRate
}

function standard() {
    return standard[0 len standard.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function kill() {
    if stor7 != msg.sender:
    selfdestruct(msg.sender)
}

function setOwner(address arg1) {
    if msg.sender == stor7:
        stor7 = arg1
}

function setToken(address arg1) {
    if msg.sender == stor7:
        stor5 = arg1
}

function setRate(uint256 arg1) {
    if msg.sender == stor7:
        exchangeRate = arg1
}

function tokenSupplies(uint256 arg1) {
    require arg1 < 3
    return stor9[arg1], stor10[arg1], stor11[arg1]
}

function convert() {
    if not balanceOf[address(msg.sender)]:
        return 0
    if not stor5:
        return 0
    require ext_code.size(stor5)
    call stor5.transferFromOwner(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args msg.sender, balanceOf[address(msg.sender)] * exchangeRate
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    emit Converted(balanceOf[address(msg.sender)], msg.sender);
    balanceOf[address(msg.sender)] = 0
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        return 0
    if msg.sender == stor7:
        s = 0
        idx = 0
        s = arg2
        while idx < 3:
            if stor10[idx] >= stor9[idx]:
                s = (3 * idx) + 9
                idx = idx + 1
                s = s
                continue 
            if stor10[idx] + s <= stor9[idx]:
                stor10[idx] += s
                s = (3 * idx) + 9
                idx = idx + 1
                s = s
                continue 
            stor10[idx] = stor9[idx]
            s = (3 * idx) + 9
            idx = idx + 1
            s = s - stor9[idx] + stor10[idx]
            continue 
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, stor7, arg1);
    return 1
}

function _fallback() payable {
    if msg.value <= 0:
        emit Error('no eth was transfered');
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    if balanceOf[stor7] <= 0:
        emit Error('all tokens sold');
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    s = 0
    t = 0
    u = 0
    idx = 0
    u = msg.value
    v = 0
    w = 0
    while idx < 3:
        if stor10[idx] >= stor9[idx]:
            s = s
            t = t
            u = (3 * idx) + 9
            idx = idx + 1
            u = u
            v = v
            w = w
            continue 
        require stor11[idx]
        mem[0] = stor7
        mem[32] = 6
        if u / stor11[idx] <= balanceOf[stor7]:
            if stor10[idx] + (u / stor11[idx]) <= stor9[idx]:
                stor10[idx] += u / stor11[idx]
                s = u / stor11[idx] * stor11[idx]
                t = u / stor11[idx]
                u = (3 * idx) + 9
                idx = idx + 1
                u = u - (u / stor11[idx] * stor11[idx])
                v = v + (u / stor11[idx] * stor11[idx])
                w = w + (u / stor11[idx])
                continue 
        else:
            mem[0] = stor7
            mem[32] = 6
            if stor10[idx] + balanceOf[stor7] <= stor9[idx]:
                stor10[idx] += balanceOf[stor7]
                s = balanceOf[stor7] * stor11[idx]
                t = balanceOf[stor7]
                u = (3 * idx) + 9
                idx = idx + 1
                u = u - (balanceOf[stor7] * stor11[idx])
                v = v + (balanceOf[stor7] * stor11[idx])
                w = w + balanceOf[stor7]
                continue 
        stor10[idx] = stor9[idx]
        s = (stor9[idx] * stor11[idx]) - (stor10[idx] * stor11[idx])
        t = stor9[idx] - stor10[idx]
        u = (3 * idx) + 9
        idx = idx + 1
        u = u - (stor9[idx] * stor11[idx]) + (stor10[idx] * stor11[idx])
        v = v + (stor9[idx] * stor11[idx]) - (stor10[idx] * stor11[idx])
        w = w + stor9[idx] - stor10[idx]
        continue 
    if not w:
        emit Error('no token to buy');
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    if balanceOf[stor7] >= w:
        if balanceOf[address(msg.sender)] + w >= balanceOf[address(msg.sender)]:
            balanceOf[stor7] -= w
            balanceOf[address(msg.sender)] += w
            emit Transfer(w, stor7, msg.sender);
    call stor7 with:
       value v wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call msg.sender with:
       value msg.value - v wei
         gas 2300 * is_zero(value) wei
}



}
