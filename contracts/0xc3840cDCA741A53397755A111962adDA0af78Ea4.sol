contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint256 stor2;
uint8 stor3;
uint256 stor4;
uint8 stor5;
uint256 stor6;
mapping of uint256 stor7;
array of address stor9;
address stor10;

function _fallback() {
    mem[96 len -7144] = code.data[7976 len -7144]
    mem[64] = -7048
    stor7[address(msg.sender)] = 100 * 10^6 * mem[96]
    stor10 = mem[268 len 20]
    uint256(stor9[stor10])++
    if not uint256(stor9[stor10]) <= uint256(stor9[stor10]) + 1:
        idx = uint256(stor9[stor10]) + 1
        while uint256(stor9[stor10]) > idx:
            uint256(stor9[stor10][idx]) = 0
            idx = idx + 1
            continue 
    address(stor9[stor10][uint256(stor9[stor10])]) = msg.sender
    stor4 = 100 * 10^6 * mem[96]
    stor0[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor1[] = Array(len=mem[mem[192] + 96], data=mem[mem[192] + 128 len mem[mem[192] + 96]])
    stor3 = mem[191 len 1]
    stor2 = mem[224]
    stor5 = 0
    stor6 = 100 * 10^6 * mem[288]
    return code.data[832 len 7144]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint256 stor2;
uint8 decimals;
uint256 sub_abb8fbf9;
uint8 stor5;
address owner; offset 8
uint256 supplylimit;
mapping of uint256 balanceOf;
mapping of uint256 sub_042ab8fd;
array of address sub_15937df8;
address sub_ba50e90eAddress;

function sub_042ab8fd(?) {
    return sub_042ab8fd[arg1][arg2]
}

function name() {
    return name[0 len name.length]
}

function sub_15937df8(?) {
    return uint256(sub_15937df8[stor10])
}

function decimals() {
    return decimals
}

function found() {
    return bool(stor5)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function totalsupply() {
    return sub_abb8fbf9
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function approvals(address arg1, address arg2) {
    return sub_042ab8fd[address(arg1)][address(arg2)]
}

function sub_abb8fbf9(?) {
    return sub_abb8fbf9
}

function sub_ba50e90e(?) {
    return sub_ba50e90eAddress
}

function balance(address arg1) {
    return balanceOf[arg1]
}

function supplylimit() {
    return supplylimit
}

function _fallback() payable {
    revert
}

function sub_119697c4(?) {
    if arg1 == stor2:
        if sub_ba50e90eAddress == arg3:
            stor2 = arg2
}

function approve(address arg1, uint256 arg2) {
    sub_042ab8fd[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function ledger(address arg1) {
    idx = 0
    while idx < uint256(sub_15937df8[stor10]):
        require idx < uint256(sub_15937df8[stor10])
        if arg1 == address(sub_15937df8[stor10][idx]):
            stor5 = 1
            return 1
        mem[0] = sub_ba50e90eAddress
        mem[32] = 9
        idx = idx + 1
        continue 
    return 0
}

function sub_eae235a8(?) {
    sub_042ab8fd[address(msg.sender)][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_06f24df5(?) {
    uint256(sub_15937df8[stor10])++
    if not uint256(sub_15937df8[stor10]) <= uint256(sub_15937df8[stor10]) + 1:
        idx = uint256(sub_15937df8[stor10]) + 1
        while uint256(sub_15937df8[stor10]) > idx:
            uint256(sub_15937df8[stor10][idx]) = 0
            idx = idx + 1
            continue 
    address(sub_15937df8[stor10][uint256(sub_15937df8[stor10])]) = arg1
    stor5 = 0
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    mem[0] = sub_ba50e90eAddress
    idx = 0
    while idx < uint256(sub_15937df8[stor10]):
        require idx < uint256(sub_15937df8[stor10])
        if arg1 != address(sub_15937df8[stor10][idx]):
            mem[0] = sub_ba50e90eAddress
            mem[32] = 9
            idx = idx + 1
            continue 
        stor5 = 1
        if stor5:
            if bool(stor5) == 1:
                stor5 = 0
        else:
            uint256(sub_15937df8[stor10])++
            if not uint256(sub_15937df8[stor10]) <= uint256(sub_15937df8[stor10]) + 1:
                mem[0] = sha3(sub_ba50e90eAddress, 9)
                idx = sha3(mem[0]) + uint256(sub_15937df8[stor10]) + 1
                while sha3(sha3(sub_ba50e90eAddress, 9)) + uint256(sub_15937df8[stor10]) > idx:
                    stor[idx] = 0
                    mem[0] = sub_ba50e90eAddress
                    mem[32] = 9
                    idx = idx + 1
                    continue 
            address(sub_15937df8[stor10][uint256(sub_15937df8[stor10])]) = arg1
            stor5 = 0
            if bool(stor5) == 1:
                stor5 = 0
        emit Transfer(arg2, msg.sender, arg1);
        return 1
    if stor5:
        if bool(stor5) == 1:
            stor5 = 0
    else:
        uint256(sub_15937df8[stor10])++
        if not uint256(sub_15937df8[stor10]) <= uint256(sub_15937df8[stor10]) + 1:
            idx = uint256(sub_15937df8[stor10]) + 1
            while uint256(sub_15937df8[stor10]) > idx:
                uint256(sub_15937df8[stor10][idx]) = 0
                idx = idx + 1
                continue 
        address(sub_15937df8[stor10][uint256(sub_15937df8[stor10])]) = arg1
        stor5 = 0
        if bool(stor5) == 1:
            stor5 = 0
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require balanceOf[address(msg.sender)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    require sub_042ab8fd[address(arg1)][address(msg.sender)] >= 100 * 10^6 * arg3
    sub_042ab8fd[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    mem[0] = sub_ba50e90eAddress
    idx = 0
    while idx < uint256(sub_15937df8[stor10]):
        require idx < uint256(sub_15937df8[stor10])
        if arg2 != address(sub_15937df8[stor10][idx]):
            mem[0] = sub_ba50e90eAddress
            mem[32] = 9
            idx = idx + 1
            continue 
        stor5 = 1
        if stor5:
            if bool(stor5) == 1:
                stor5 = 0
        else:
            uint256(sub_15937df8[stor10])++
            if not uint256(sub_15937df8[stor10]) <= uint256(sub_15937df8[stor10]) + 1:
                mem[0] = sha3(sub_ba50e90eAddress, 9)
                idx = sha3(mem[0]) + uint256(sub_15937df8[stor10]) + 1
                while sha3(sha3(sub_ba50e90eAddress, 9)) + uint256(sub_15937df8[stor10]) > idx:
                    stor[idx] = 0
                    mem[0] = sub_ba50e90eAddress
                    mem[32] = 9
                    idx = idx + 1
                    continue 
            address(sub_15937df8[stor10][uint256(sub_15937df8[stor10])]) = arg2
            stor5 = 0
            if bool(stor5) == 1:
                stor5 = 0
        emit Transfer(arg3, arg1, arg2);
        return 1
    if stor5:
        if bool(stor5) == 1:
            stor5 = 0
    else:
        uint256(sub_15937df8[stor10])++
        if not uint256(sub_15937df8[stor10]) <= uint256(sub_15937df8[stor10]) + 1:
            idx = uint256(sub_15937df8[stor10]) + 1
            while uint256(sub_15937df8[stor10]) > idx:
                uint256(sub_15937df8[stor10][idx]) = 0
                idx = idx + 1
                continue 
        address(sub_15937df8[stor10][uint256(sub_15937df8[stor10])]) = arg2
        stor5 = 0
        if bool(stor5) == 1:
            stor5 = 0
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function mint(uint256 arg1, address arg2, uint256 arg3) {
    if arg1 == stor2:
        if sub_abb8fbf9 + arg3 <= supplylimit:
            balanceOf[address(arg2)] += arg3
            mem[0] = sub_ba50e90eAddress
            idx = 0
            while idx < uint256(sub_15937df8[stor10]):
                require idx < uint256(sub_15937df8[stor10])
                if arg2 != address(sub_15937df8[stor10][idx]):
                    mem[0] = sub_ba50e90eAddress
                    mem[32] = 9
                    idx = idx + 1
                    continue 
                stor5 = 1
                if stor5:
                    if bool(stor5) == 1:
                        stor5 = 0
                else:
                    uint256(sub_15937df8[stor10])++
                    if not uint256(sub_15937df8[stor10]) <= uint256(sub_15937df8[stor10]) + 1:
                        mem[0] = sha3(sub_ba50e90eAddress, 9)
                        idx = sha3(mem[0]) + uint256(sub_15937df8[stor10]) + 1
                        while sha3(sha3(sub_ba50e90eAddress, 9)) + uint256(sub_15937df8[stor10]) > idx:
                            stor[idx] = 0
                            mem[0] = sub_ba50e90eAddress
                            mem[32] = 9
                            idx = idx + 1
                            continue 
                    address(sub_15937df8[stor10][uint256(sub_15937df8[stor10])]) = arg2
                    stor5 = 0
                    if bool(stor5) == 1:
                        stor5 = 0
                sub_abb8fbf9 += arg3
                emit Transfer(arg3, msg.sender, arg2);
            if stor5:
                if bool(stor5) == 1:
                    stor5 = 0
            else:
                uint256(sub_15937df8[stor10])++
                if not uint256(sub_15937df8[stor10]) <= uint256(sub_15937df8[stor10]) + 1:
                    idx = uint256(sub_15937df8[stor10]) + 1
                    while uint256(sub_15937df8[stor10]) > idx:
                        uint256(sub_15937df8[stor10][idx]) = 0
                        idx = idx + 1
                        continue 
                address(sub_15937df8[stor10][uint256(sub_15937df8[stor10])]) = arg2
                stor5 = 0
                if bool(stor5) == 1:
                    stor5 = 0
            sub_abb8fbf9 += arg3
            emit Transfer(arg3, msg.sender, arg2);
}

function sub_b17c9555(?) {
    if arg1 == stor2:
        if arg4 == sub_ba50e90eAddress:
            mem[0] = sub_ba50e90eAddress
            idx = 0
            s = 0
            t = 0
            while idx < uint256(sub_15937df8[stor10]):
                require idx < uint256(sub_15937df8[stor10])
                if address(sub_15937df8[stor10][idx]) == sub_ba50e90eAddress:
                    mem[0] = sub_ba50e90eAddress
                    mem[32] = 9
                    idx = idx + 1
                    s = s
                    t = t
                    continue 
                require idx < uint256(sub_15937df8[stor10])
                require arg3
                if arg1 == stor2:
                    if sub_abb8fbf9 + (balanceOf[address(stor9[stor10][idx])] * arg2 / arg3) <= supplylimit:
                        balanceOf[address(stor9[stor10][idx])] += balanceOf[address(stor9[stor10][idx])] * arg2 / arg3
                        mem[0] = sub_ba50e90eAddress
                        s = 0
                        while s < uint256(sub_15937df8[stor10]):
                            require s < uint256(sub_15937df8[stor10])
                            if address(sub_15937df8[stor10][idx]) != address(sub_15937df8[stor10][s]):
                                mem[0] = sub_ba50e90eAddress
                                mem[32] = 9
                                s = s + 1
                                continue 
                            stor5 = 1
                            if stor5:
                                if bool(stor5) == 1:
                                    stor5 = 0
                            else:
                                uint256(sub_15937df8[stor10])++
                                if not uint256(sub_15937df8[stor10]) <= uint256(sub_15937df8[stor10]) + 1:
                                    mem[0] = sha3(sub_ba50e90eAddress, 9)
                                    s = sha3(mem[0]) + uint256(sub_15937df8[stor10]) + 1
                                    while sha3(sha3(sub_ba50e90eAddress, 9)) + uint256(sub_15937df8[stor10]) > s:
                                        stor[s] = 0
                                        mem[0] = sub_ba50e90eAddress
                                        mem[32] = 9
                                        s = s + 1
                                        continue 
                                address(sub_15937df8[stor10][uint256(sub_15937df8[stor10])]) = address(sub_15937df8[stor10][idx])
                                stor5 = 0
                                if bool(stor5) == 1:
                                    stor5 = 0
                            sub_abb8fbf9 += balanceOf[address(stor9[stor10][idx])] * arg2 / arg3
                            mem[96] = balanceOf[address(stor9[stor10][idx])] * arg2 / arg3
                            emit Transfer((balanceOf[address(stor9[stor10][idx])] * arg2 / arg3), msg.sender, address(sub_15937df8[stor10][idx]));
                            mem[0] = sub_ba50e90eAddress
                            mem[32] = 9
                            idx = idx + 1
                            s = address(sub_15937df8[stor10][idx])
                            t = balanceOf[address(stor9[stor10][idx])] * arg2 / arg3
                            continue 
                        if stor5:
                            if bool(stor5) == 1:
                                stor5 = 0
                        else:
                            uint256(sub_15937df8[stor10])++
                            if not uint256(sub_15937df8[stor10]) <= uint256(sub_15937df8[stor10]) + 1:
                                mem[0] = sha3(sub_ba50e90eAddress, 9)
                                s = sha3(mem[0]) + uint256(sub_15937df8[stor10]) + 1
                                while sha3(sha3(sub_ba50e90eAddress, 9)) + uint256(sub_15937df8[stor10]) > s:
                                    stor[s] = 0
                                    mem[0] = sub_ba50e90eAddress
                                    mem[32] = 9
                                    s = s + 1
                                    continue 
                            address(sub_15937df8[stor10][uint256(sub_15937df8[stor10])]) = address(sub_15937df8[stor10][idx])
                            stor5 = 0
                            if bool(stor5) == 1:
                                stor5 = 0
                        sub_abb8fbf9 += balanceOf[address(stor9[stor10][idx])] * arg2 / arg3
                        mem[96] = balanceOf[address(stor9[stor10][idx])] * arg2 / arg3
                        emit Transfer((balanceOf[address(stor9[stor10][idx])] * arg2 / arg3), msg.sender, address(sub_15937df8[stor10][idx]));
                mem[0] = sub_ba50e90eAddress
                mem[32] = 9
                idx = idx + 1
                s = address(sub_15937df8[stor10][idx])
                t = balanceOf[address(stor9[stor10][idx])] * arg2 / arg3
                continue 
}



}
