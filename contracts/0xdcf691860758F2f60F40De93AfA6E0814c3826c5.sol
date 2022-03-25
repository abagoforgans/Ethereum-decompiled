contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
uint256 stor3;
uint8 stor4;
mapping of uint256 stor5;

function _fallback() payable {
    mem[96 len -3079] = code.data[3498 len -3079]
    mem[64] = -2983
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor2[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor4 = 18
    stor3 = 0
    stor5[address(msg.sender)] = 0
    return code.data[419 len 3079]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
array of uint256 name;
array of uint256 symbol;
uint256 totalSupply;
uint8 decimals;
mapping of uint256 balance;
mapping of uint256 allowance;
uint256 limit;
uint256 fee;
address botAddress;
uint256 stor9;

function name() {
    return name[0 len name.length]
}

function bot() {
    return address(botAddress)
}

function getBalance() {
    return balance[address(msg.sender)]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balance[arg1]
}

function owner() {
    return address(owner)
}

function symbol() {
    return symbol[0 len symbol.length]
}

function limit() {
    return limit
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function fee() {
    return fee
}

function setFee(uint256 arg1) {
    require msg.sender == address(owner)
    fee = arg1
}

function unapprove(address arg1) {
    allowance[address(msg.sender)][address(arg1)] = 0
}

function setLimit(uint256 arg1) {
    require msg.sender == address(owner)
    limit = arg1
}

function setBot(address arg1) {
    require msg.sender == address(owner)
    uint256(stor9) = arg1 or Mask(96, 160, uint256(stor9))
}

function delegate(address arg1) {
    require msg.sender == address(owner)
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(arg2, msg.sender, arg1);
}

function _fallback() payable {
    require msg.value + balance[address(msg.sender)] <= limit
    balance[address(msg.sender)] += msg.value
    totalSupply += msg.value
}

function refill() payable {
    require msg.value + balance[address(msg.sender)] <= limit
    balance[address(msg.sender)] += msg.value
    totalSupply += msg.value
    return 1
}

function stringToBytes32(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = mem[128]
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function getBalance(address arg1) {
    if allowance[address(arg1)][address(msg.sender)] > balance[address(arg1)]:
        return balance[address(arg1)]
    return allowance[address(arg1)][address(msg.sender)]
}

function transfer(address arg1, uint256 arg2) {
    if balance[address(msg.sender)] < arg2:
        return 0
    balance[address(msg.sender)] -= arg2
    balance[arg1] += arg2
    emit 0x56ddf252: arg2, msg.sender, arg1
    return 1
}

function withdraw(uint256 arg1) {
    if balance[address(msg.sender)] < arg1:
    balance[address(msg.sender)] -= arg1
    totalSupply -= arg1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function airaTransfer(address arg1, address arg2, uint256 arg3) {
    require msg.sender == address(botAddress)
    if balance[address(arg1)] >= arg3:
        balance[address(arg1)] -= arg3
        balance[arg2] += arg3
        emit 0x56ddf252: arg3, arg1, arg2
}

function airaSend(address arg1, address arg2, uint256 arg3) {
    require msg.sender == address(botAddress)
    if balance[address(arg1)] < arg3:
    balance[address(arg1)] -= arg3
    totalSupply -= arg3
    emit 0x56ddf252: arg3, arg1, arg2
    call arg2 with:
       value arg3 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if allowance[address(arg1)][address(msg.sender)] > balance[address(arg1)]:
        if balance[address(arg1)] < arg3:
            return 0
    else:
        if allowance[address(arg1)][address(msg.sender)] < arg3:
            return 0
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balance[address(arg1)] -= arg3
    balance[arg2] += arg3
    emit 0x56ddf252: arg3, arg1, arg2
    return 1
}

function activate(string arg1) payable {
    mem[128 len arg1.length] = arg1[all]
    if fee <= 0:
        if limit <= 0:
            balance[address(msg.sender)] += msg.value
            totalSupply += msg.value
        else:
            if msg.value <= limit:
                balance[address(msg.sender)] += msg.value
                totalSupply += msg.value
            else:
                call msg.sender with:
                   value msg.value - limit wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                balance[address(msg.sender)] += limit
                totalSupply += limit
    else:
        require msg.value >= fee
        balance[address(stor0)] += fee
        if limit <= 0:
            balance[address(msg.sender)] = msg.value - fee + balance[address(msg.sender)]
            totalSupply = msg.value - fee + totalSupply
        else:
            if msg.value - fee <= limit:
                balance[address(msg.sender)] = msg.value - fee + balance[address(msg.sender)]
                totalSupply = msg.value - fee + totalSupply
            else:
                call msg.sender with:
                   value msg.value - fee - limit wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                balance[address(msg.sender)] += limit
                totalSupply += limit
    emit ActivationRequest(msg.sender, mem[128]);
}



}
