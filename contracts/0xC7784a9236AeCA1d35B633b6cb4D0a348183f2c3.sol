contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 _tokenPrice;
uint8 stor5;
uint256 shareholdersBalance;
uint256 totalShareholders;
mapping of uint8 stor8;
mapping of address stor9;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function totalShareholders() {
    return totalShareholders
}

function _allowManualTokensGeneration() {
    return bool(stor5)
}

function decimals() {
    return decimals
}

function _tokenPrice() {
    return _tokenPrice
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

function receiveFunds() payable {
  stop
}

function Owned() {
    owner = msg.sender
}

function _fallback() payable {
    revert
}

function addSomeTokens(uint256 arg1) {
    require msg.sender == owner
    require stor5
    balanceOf[address(msg.sender)] += arg1
    emit Transfer(arg1, 0, msg.sender);
}

function mint() payable {
    require msg.value
    require msg.value >= _tokenPrice
    balanceOf[address(msg.sender)] += msg.value * _tokenPrice
    emit Transfer((msg.value * _tokenPrice), 0, msg.sender);
    if owner != msg.sender:
        shareholdersBalance += msg.value * _tokenPrice
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
                require shareholdersBalance
                mem[0] = idx
                mem[32] = 9
                call stor9[idx] with:
                   value eth.balance(this.address) * balanceOf[stor9[idx]] / shareholdersBalance wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                s = eth.balance(this.address) * balanceOf[stor9[idx]] / shareholdersBalance
                t = balanceOf[stor9[idx]]
                idx = idx + 1
                continue 
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



}
