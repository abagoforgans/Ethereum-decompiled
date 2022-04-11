contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
uint256 stor5;
uint256 stor6;
uint256 stor7;
mapping of uint256 stor10;

function _fallback() {
    mem[96 len -3671] = code.data[4175 len -3671]
    mem[64] = -3575
    stor10[address(msg.sender)] = mem[192]
    stor5 = mem[192]
    stor6 = mem[224]
    stor1[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor2[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor3 = mem[191 len 1]
    stor0 = msg.sender
    stor7 = 0
    return code.data[504 len 3671]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 shareholdersBalance;
uint256 sub_12579d85;
uint256 sub_f720ee4c;
uint256 totalShareholders;
mapping of uint8 stor8;
mapping of address stor9;
mapping of uint256 balanceOf;
mapping of uint256 stor11;

function name() {
    return name[0 len name.length]
}

function totalShareholders() {
    return totalShareholders
}

function sub_12579d85(?) {
    return sub_12579d85
}

function decimals() {
    return decimals
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

function shareholdersBalance() {
    return shareholdersBalance
}

function sub_f720ee4c(?) {
    return sub_f720ee4c
}

function receiveFunds() payable {
  stop
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    if owner != msg.sender:
        if arg1 == owner:
            shareholdersBalance -= arg2
        if owner != arg1:
            if bool(stor8[address(arg1)]) != 1:
                totalShareholders++
                stor9[stor7] = arg1
                stor8[address(arg1)] = 1
    else:
        if arg1 != owner:
            shareholdersBalance += arg2
        if msg.sender == owner:
            if owner != arg1:
                if bool(stor8[address(arg1)]) != 1:
                    totalShareholders++
                    stor9[stor7] = arg1
                    stor8[address(arg1)] = 1
        else:
            if arg1 == owner:
                shareholdersBalance -= arg2
            if owner != arg1:
                if bool(stor8[address(arg1)]) != 1:
                    totalShareholders++
                    stor9[stor7] = arg1
                    stor8[address(arg1)] = 1
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function payDividends() {
    require msg.sender == owner
    if eth.balance(this.address) > 0:
        if totalShareholders > 0:
            s = 0
            t = 0
            idx = 1
            while idx <= totalShareholders:
                mem[0] = stor9[idx]
                mem[32] = 10
                if balanceOf[stor9[idx]] <= 0:
                    s = s
                    t = balanceOf[stor9[idx]]
                    idx = idx + 1
                    continue 
                stor11[stor9[idx]] += balanceOf[stor9[idx]]
                mem[0] = stor9[idx]
                mem[32] = 11
                if stor11[stor9[idx]] < sub_f720ee4c:
                    s = s
                    t = balanceOf[stor9[idx]]
                    idx = idx + 1
                    continue 
                require sub_12579d85
                call stor9[idx] with:
                   value eth.balance(this.address) * stor11[stor9[idx]] / sub_12579d85 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                mem[0] = stor9[idx]
                mem[32] = 11
                stor11[stor9[idx]] = 0
                s = eth.balance(this.address) * stor11[stor9[idx]] / sub_12579d85
                t = balanceOf[stor9[idx]]
                idx = idx + 1
                continue 
}



}
