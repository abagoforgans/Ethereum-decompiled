contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint8 stor5;
uint8 stor5; offset 8
uint8 stor5; offset 16
array of uint256 stor6;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 3
    stor0.length.field_8 = 'NOT' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 7
    stor1.length.field_8 = 'Nothing' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 27777775 * 10^14 * 3600
    stor3 = 0
    stor4 = 0
    uint8(stor5.field_0) = 0
    uint8(stor5.field_8) = 1
    uint8(stor5.field_16) = 100
    bool(stor6.length) = 0
    stor6.length.field_1 = 16
    stor6.length.field_8 = '2017-08-31 12:00' / 256
    idx = 0
    while stor6.length + 31 / 32 > idx:
        stor6[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not msg.value:
        return code.data[555 len 8198]
    revert
}



// =====================  Runtime code  =====================


const decimals = 18

const tokensPerEther = 500


array of uint256 symbol;
array of uint256 name;
uint256 _totalSupply;
uint256 totalContribution;
uint256 bonusSupply;
uint8 stor5;
uint8 currentSaleDay; offset 8
uint8 currentBonus; offset 16
array of struct startDate;
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowed;

function name() {
    return name[0 len name.length]
}

function startDate() {
    return startDate[0 len startDate.length].field_0
}

function totalContribution() {
    return totalContribution
}

function totalSupply() {
    return _totalSupply
}

function _totalSupply() {
    return _totalSupply
}

function currentSaleDay() {
    return currentSaleDay
}

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function bonusSupply() {
    return bonusSupply
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function purchasingAllowed() {
    return bool(stor5)
}

function allowance(address arg1, address arg2) {
    return allowed[address(arg1)][address(arg2)]
}

function currentBonus() {
    return currentBonus
}

function enablePurchasing() {
    require msg.sender == owner
    stor5 = 1
}

function disablePurchasing() {
    require msg.sender == owner
    stor5 = 0
}

function Panel() {
    owner = msg.sender
    balanceOf[address(msg.sender)] = _totalSupply
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function changeStartDate(string arg1) {
    require msg.sender == owner
    startDate[].field_0 = Array(len=arg1.length, data=arg1[all])
}

function rebrand(string arg1, string arg2) {
    require msg.sender == owner
    symbol[] = Array(len=arg1.length, data=arg1[all])
    name[] = Array(len=arg2.length, data=arg2[all])
}

function withdraw() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowed[address(msg.sender)][address(arg1)]
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setCurrentSaleDayAndBonus(uint8 arg1) {
    require msg.sender == owner
    require arg1 > 0
    require arg1 < 11
    currentBonus = 10
    currentSaleDay = arg1
    if arg1 == 1:
        currentBonus = 100
    if arg1 == 2:
        currentBonus = 75
    if arg1 >= 3:
        if arg1 < 5:
            currentBonus = 50
        else:
            if arg1 < 8:
                currentBonus = 25
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 > 0
    require arg1
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require calldata.size >= 68
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require allowed[address(arg1)][address(msg.sender)] >= arg3
    require balanceOf[address(arg1)] >= arg3
    require arg3 > 0
    require arg2
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require calldata.size >= 68
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowed[address(arg1)][address(msg.sender)]
    allowed[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function getStats() {
    mem[160] = uint256(startDate.field_0)
    idx = 160
    s = 0
    while startDate.length + 128 > idx:
        mem[idx + 32] = startDate[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(startDate.length) + 160] = totalContribution
    mem[ceil32(startDate.length) + 192] = _totalSupply
    mem[ceil32(startDate.length) + 224] = bonusSupply
    mem[ceil32(startDate.length) + 256] = bool(stor5)
    mem[ceil32(startDate.length) + 288] = currentSaleDay
    mem[ceil32(startDate.length) + 320] = currentBonus
    mem[ceil32(startDate.length) + 352] = 224
    mem[ceil32(startDate.length) + 384] = startDate.length
    if startDate.length:
        mem[ceil32(startDate.length) + 416] = mem[160]
        mem[ceil32(startDate.length) + 448 len floor32(startDate.length - 1)] = mem[192 len floor32(startDate.length - 1)]
    return totalContribution, 
           _totalSupply,
           bonusSupply,
           bool(stor5),
           stor5,
           stor5,
           Array(len=startDate.length, data=mem[ceil32(startDate.length) + 416 len startDate.length])
}

function _fallback() payable {
    require msg.value > 0
    require stor5
    if msg.value:
        require msg.value
        require 500 * msg.value / msg.value == 500
        if msg.value:
            require msg.value
            require msg.value * currentBonus / msg.value == currentBonus
    require balanceOf[address(msg.sender)] + (500 * msg.value) >= balanceOf[address(msg.sender)]
    require msg.value * currentBonus >= 0
    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (500 * msg.value) + (msg.value * currentBonus)
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require bonusSupply + (msg.value * currentBonus) >= bonusSupply
    bonusSupply += msg.value * currentBonus
    require totalContribution + msg.value >= totalContribution
    totalContribution += msg.value
    require _totalSupply + (500 * msg.value) >= _totalSupply
    require msg.value * currentBonus >= 0
    _totalSupply = _totalSupply + (500 * msg.value) + (msg.value * currentBonus)
    require (500 * msg.value) + (msg.value * currentBonus) >= 500 * msg.value
    emit Transfer(((500 * msg.value) + (msg.value * currentBonus)), this.address, msg.sender);
}



}
