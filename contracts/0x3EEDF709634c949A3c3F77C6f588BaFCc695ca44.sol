contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2)
#  - __callback(bytes32 arg1, string arg2, bytes arg3)
#  - update(uint256 arg1)
#
array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
mapping of uint256 balanceOf;
array of address stor9;
address stor10;
uint256 sub_353d090b;
array of uint256 stor12;
array of uint256 stor13;
array of uint256 stor14;

function name() {
    return name[0 len name.length]
}

function sub_353d090b(?) {
    return sub_353d090b
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
    if stor10 != msg.sender:
    selfdestruct(msg.sender)
}

function sub_e624ae2e(?) payable {
  stop
}

function setOwner(address arg1) {
    if msg.sender == stor10:
        stor10 = arg1
}

function tokenSupplies(uint256 arg1) {
    require arg1 < 3
    return stor12[arg1], stor13[arg1], stor14[arg1]
}

function burn(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    if not balanceOf[address(arg1)]:
        stor9.length++
        if not stor9.length <= stor9.length + 1:
            idx = stor9.length + 1
            while stor9.length > idx:
                uint256(stor9[idx]) = 0
                idx = idx + 1
                continue 
        require stor9.length - 1 < stor9.length
        address(stor9[stor9.length]) = arg1
    balanceOf[address(arg1)] += arg2
    return 1
}

function sub_6be28ea8(?) {
    if msg.sender == stor10:
        s = 0
        idx = 0
        while idx < stor9.length:
            mem[100] = address(stor9[idx])
            mem[132] = balanceOf[address(stor9[idx])] * arg2
            require ext_code.size(arg1)
            call arg1.transferFromOwner(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args address(stor9[idx]), balanceOf[address(stor9[idx])] * arg2
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            mem[0] = address(stor9[idx])
            mem[32] = 8
            balanceOf[address(stor9[idx])] = 0
            s = address(stor9[idx])
            idx = idx + 1
            continue 
}

function _fallback() payable {
    require sub_353d090b
    s = 0
    s = 0
    s = 0
    s = 0
    idx = 0
    s = msg.value * sub_353d090b / 10^18
    t = 0
    u = 0
    while idx < 3:
        if s > 0:
            require idx < 3
            require stor14[idx]
            mem[0] = stor10
            mem[32] = 8
            if (stor12[idx] * stor14[idx]) - (stor13[idx] * stor14[idx]) >= s:
                if s / stor14[idx] >= balanceOf[stor10] - u:
                    stor13[idx] = stor13[idx] + balanceOf[stor10] - u
                    s = (balanceOf[stor10] * stor14[idx]) - (u * stor14[idx])
                    s = balanceOf[stor10] - u
                    s = s
                    s = (3 * idx) + 12
                    idx = idx + 1
                    s = s - (balanceOf[stor10] * stor14[idx]) + (u * stor14[idx])
                    t = t + (balanceOf[stor10] * stor14[idx]) - (u * stor14[idx])
                    u = balanceOf[stor10]
                    continue 
                stor13[idx] += s / stor14[idx]
                s = s / stor14[idx] * stor14[idx]
                s = s / stor14[idx]
                s = s
                s = (3 * idx) + 12
                idx = idx + 1
                s = s - (s / stor14[idx] * stor14[idx])
                t = t + (s / stor14[idx] * stor14[idx])
                u = u + (s / stor14[idx])
                continue 
            if (stor12[idx] * stor14[idx]) - (stor13[idx] * stor14[idx]) / stor14[idx] >= balanceOf[stor10] - u:
                stor13[idx] = stor13[idx] + balanceOf[stor10] - u
                s = (balanceOf[stor10] * stor14[idx]) - (u * stor14[idx])
                s = balanceOf[stor10] - u
                s = (stor12[idx] * stor14[idx]) - (stor13[idx] * stor14[idx])
                s = (3 * idx) + 12
                idx = idx + 1
                s = s - (balanceOf[stor10] * stor14[idx]) + (u * stor14[idx])
                t = t + (balanceOf[stor10] * stor14[idx]) - (u * stor14[idx])
                u = balanceOf[stor10]
                continue 
            stor13[idx] += (stor12[idx] * stor14[idx]) - (stor13[idx] * stor14[idx]) / stor14[idx]
            s = (stor12[idx] * stor14[idx]) - (stor13[idx] * stor14[idx]) / stor14[idx] * stor14[idx]
            s = (stor12[idx] * stor14[idx]) - (stor13[idx] * stor14[idx]) / stor14[idx]
            s = (stor12[idx] * stor14[idx]) - (stor13[idx] * stor14[idx])
            s = (3 * idx) + 12
            idx = idx + 1
            s = s - ((stor12[idx] * stor14[idx]) - (stor13[idx] * stor14[idx]) / stor14[idx] * stor14[idx])
            t = t + ((stor12[idx] * stor14[idx]) - (stor13[idx] * stor14[idx]) / stor14[idx] * stor14[idx])
            u = u + ((stor12[idx] * stor14[idx]) - (stor13[idx] * stor14[idx]) / stor14[idx])
            continue 
        require u
        require balanceOf[stor10] >= u
        require balanceOf[address(msg.sender)] + u >= balanceOf[address(msg.sender)]
        balanceOf[stor10] -= u
        if not balanceOf[address(msg.sender)]:
            stor9.length++
            if not stor9.length <= stor9.length + 1:
                idx = sha3(9) + stor9.length + 1
                while sha3(9) + stor9.length > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
            require stor9.length - 1 < stor9.length
            address(stor9[stor9.length]) = msg.sender
        balanceOf[address(msg.sender)] += u
        require sub_353d090b
        call stor10 with:
           value 10^18 * t / sub_353d090b wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        call msg.sender with:
           value msg.value - (10^18 * t / sub_353d090b) wei
             gas 2300 * is_zero(value) wei
    require u
    require balanceOf[stor10] >= u
    require balanceOf[address(msg.sender)] + u >= balanceOf[address(msg.sender)]
    balanceOf[stor10] -= u
    if not balanceOf[address(msg.sender)]:
        stor9.length++
        if not stor9.length <= stor9.length + 1:
            idx = stor9.length + 1
            while stor9.length > idx:
                uint256(stor9[idx]) = 0
                idx = idx + 1
                continue 
        require stor9.length - 1 < stor9.length
        address(stor9[stor9.length]) = msg.sender
    balanceOf[address(msg.sender)] += u
    require sub_353d090b
    call stor10 with:
       value 10^18 * t / sub_353d090b wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call msg.sender with:
       value msg.value - (10^18 * t / sub_353d090b) wei
         gas 2300 * is_zero(value) wei
}



}
