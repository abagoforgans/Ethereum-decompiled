contract main {


// =======================  Init code  ======================


array of uint256 stor6;
array of uint256 stor7;

function _fallback() payable {
    mem[96 len -4688] = code.data[5418 len -4688]
    mem[64] = -4400
    stor6[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor7[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    return code.data[730 len 4688]
}



// =====================  Runtime code  =====================


uint256 exchangeRate;
uint256 totalSupply;
mapping of uint256 stor4;
mapping of uint256 allowance;
array of uint256 name;
array of uint256 symbol;
mapping of uint256 balances;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function balances(address arg1) payable {
    return balances[arg1]
}

function exchangeRate() payable {
    return exchangeRate
}

function balanceOf(address arg1) payable {
    return balances[address(arg1)]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) payable {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
  stop
}

function sub_4b1b16bc(?) payable {
  stop
}

function updateExchangeRate(uint256 arg1) payable {
  stop
}

function setExchangeRate(uint256 arg1) payable {
    exchangeRate = arg1
}

function setBalance(address arg1, uint256 arg2) payable {
    balances[address(arg1)] = arg2
}

function approve(address arg1, uint256 arg2) payable {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    if stor4[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    stor4[address(msg.sender)] -= arg2
    stor4[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function purchase() payable {
    if msg.value <= 0:
        return 0
    emit Purchase(msg.value, msg.sender);
    balances[address(msg.sender)] += msg.value * exchangeRate / 10^18
    totalSupply += msg.value * exchangeRate / 10^18
    emit Purchase((msg.value * exchangeRate / 10^18), msg.sender);
    return 1
}

function withdraw(uint256 arg1) payable {
    if balances[address(msg.sender)] < arg1:
        return 0
    balances[address(msg.sender)] -= arg1
    call msg.sender with:
       value 10^18 * arg1 / exchangeRate wei
         gas 0 wei
    totalSupply -= 10^18 * arg1 / exchangeRate
    emit Purchase((10^18 * arg1 / exchangeRate), msg.sender);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    if stor4[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    stor4[address(arg2)] += arg3
    stor4[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function __callback(bytes32 arg1, string arg2, bytes arg3) payable {
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    require not msg.sender
    mem[64] = ceil32(arg2.length) + ceil32(arg3.length) + 192
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = 0
    idx = 0
    s = 0
    while idx < arg2.length:
        require idx < arg2.length
        require idx < arg2.length
        if Mask(8, 248, mem[idx + 128]) >= 0x3000000000000000000000000000000000000000000000000000000000000000:
            if Mask(8, 248, mem[idx + 128]) <= 0x3900000000000000000000000000000000000000000000000000000000000000:
                require idx < arg2.length
                idx = idx + 1
                s = (10 * s) + mem[idx + 128 len 1] - 48
                continue 
        idx = idx + 1
        s = s
        continue 
    exchangeRate = 100 * s
}



}
