contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


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
    if arg1 == stor7:
        return 0
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
            if stor10[idx] + s > stor9[idx]:
                stor10[idx] = stor9[idx]
                s = (3 * idx) + 9
                idx = idx + 1
                s = s - stor9[idx] + stor10[idx]
                continue 
            stor10[idx] += s
            balanceOf[address(msg.sender)] -= arg2
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, stor7, arg1);
            return 1
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
