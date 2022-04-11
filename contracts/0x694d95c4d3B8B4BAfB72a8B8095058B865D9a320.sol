contract main {


// =======================  Init code  ======================


uint8 stor3; offset 160
address stor3;
array of uint256 stor4;
array of uint256 stor5;
uint8 stor6;
address stor6; offset 8
uint256 stor7;

function _fallback() payable {
    uint8(stor3.field_160) = 0
    require not msg.value
    mem[96 len -3092] = code.data[3515 len -3092]
    mem[64] = -2996
    address(stor3.field_0) = msg.sender
    require mem[96] > 0
    require mem[140 len 20]
    stor7 = mem[96]
    address(stor6.field_8) = mem[140 len 20]
    stor4[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor5[] = Array(len=mem[mem[192] + 96], data=mem[mem[192] + 128 len mem[mem[192] + 96]])
    uint8(stor6.field_0) = mem[255 len 1]
    return code.data[423 len 3092]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor3; offset 160
address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address walletAddress; offset 8
uint256 rate;

function mintingFinished() {
    return bool(stor3)
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function rate() {
    return rate
}

function decimals() {
    return decimals
}

function wallet() {
    return walletAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function finishMinting() {
    require owner == msg.sender
    stor3 = 1
    emit MintFinished()
    return 1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require owner == msg.sender
    require not stor3
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require owner == msg.sender
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require owner == msg.sender
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function buyTokens(address arg1) payable {
    require arg1
    require msg.value > 0
    if not msg.value:
        require not stor3
        if (rate * msg.value) + totalSupply >= totalSupply:
            totalSupply += rate * msg.value
            if (rate * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]:
                balanceOf[address(arg1)] += rate * msg.value
                emit Mint((rate * msg.value), arg1);
                emit TokenPurchase(msg.value, rate * msg.value, msg.sender, arg1);
                call walletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
    else:
        if msg.value:
            if rate * msg.value / msg.value == rate:
                require not stor3
                if (rate * msg.value) + totalSupply >= totalSupply:
                    totalSupply += rate * msg.value
                    if (rate * msg.value) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]:
                        balanceOf[address(arg1)] += rate * msg.value
                        emit Mint((rate * msg.value), arg1);
                        emit TokenPurchase(msg.value, rate * msg.value, msg.sender, arg1);
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if ext_call.success:
    revert
}

function _fallback() payable {
    require msg.sender
    require msg.value > 0
    if not msg.value:
        require not stor3
        if (rate * msg.value) + totalSupply >= totalSupply:
            totalSupply += rate * msg.value
            if (rate * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]:
                balanceOf[address(msg.sender)] += rate * msg.value
                emit Mint((rate * msg.value), msg.sender);
                emit TokenPurchase(msg.value, rate * msg.value, msg.sender, msg.sender);
                call walletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
    else:
        if msg.value:
            if rate * msg.value / msg.value == rate:
                require not stor3
                if (rate * msg.value) + totalSupply >= totalSupply:
                    totalSupply += rate * msg.value
                    if (rate * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]:
                        balanceOf[address(msg.sender)] += rate * msg.value
                        emit Mint((rate * msg.value), msg.sender);
                        emit TokenPurchase(msg.value, rate * msg.value, msg.sender, msg.sender);
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if ext_call.success:
    revert
}



}
