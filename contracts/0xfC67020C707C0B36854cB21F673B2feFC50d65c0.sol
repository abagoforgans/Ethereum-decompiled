contract main {


// =======================  Init code  ======================


address stor0;
uint8 stor1; offset 160
address stor1;
uint256 stor2;
uint256 stor3;
array of uint256 stor4;
array of uint256 stor5;
uint256 stor6;
mapping of uint256 stor7;
uint256 stor10;
uint256 stor11;
uint256 stor12;
array of uint256 stor13;
uint8 stor14;

function _fallback() payable {
    stor2 = 18
    stor3 = 10^18
    stor11 = 0
    stor12 = 0
    bool(stor13.length) = 0
    stor13.length.field_1 = 7
    stor13.length.field_8 = '18.1.20' / 256
    idx = 0
    while stor13.length + 31 / 32 > idx:
        stor13[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor14 = 1
    require not msg.value
    bool(stor4.length) = 0
    stor4.length.field_1 = 10
    stor4.length.field_8 = 'USD Cheque' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor5.length) = 0
    stor5.length.field_1 = 5
    stor5.length.field_8 = 'USDCH' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor10 = 720
    stor6 = 100 * 10^6 * stor3
    stor7[address(msg.sender)] = 100 * 10^6 * stor3
    stor0 = msg.sender
    address(stor1.field_0) = msg.sender
    address(stor1.field_0) = msg.sender
    uint8(stor1.field_160) = 2
    return code.data[580 len 5477]
}



// =====================  Runtime code  =====================


const isToken = 1


address owner;
uint8 state; offset 160
address targetAddress;
uint256 decimals;
uint256 sub_2837502c;
array of uint256 name;
array of uint256 symbol;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor9;
uint256 saleRate;
uint256 totalEthReceived;
uint256 investorCount;
array of uint256 version;
uint8 stor14;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function sub_2837502c(?) {
    return sub_2837502c
}

function decimals() {
    return decimals
}

function saleRate() {
    return saleRate
}

function version() {
    return version[0 len version.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function frozenAccounts(address arg1) {
    return bool(stor9[arg1])
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function autoSend() {
    return bool(stor14)
}

function totalEthReceived() {
    return totalEthReceived
}

function state() {
    require state <= 2
    return state
}

function target() {
    return targetAddress
}

function investorCount() {
    return investorCount
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function selling() {
    require state <= 2
    return (state == 2)
}

function sub_087e48d7(?) {
    require owner == msg.sender
    state = 1
}

function sub_62fbaf8f(?) {
    require owner == msg.sender
    state = 2
}

function sub_a9c47b68(?) {
    require owner == msg.sender
    state = 0
}

function sub_4c24a64d(?) {
    require owner == msg.sender
    stor14 = uint8(arg1)
}

function getPrice() {
    require 10^18 * saleRate / 10^18 == saleRate
    return (10^18 * saleRate)
}

function updateSaleRate(uint256 arg1) {
    require owner == msg.sender
    require arg1 > 0
    saleRate = arg1
    emit 0x608c9d52: arg1
}

function freezeAccount(address arg1, bool arg2) {
    require owner == msg.sender
    stor9[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function sub_ea1b495f(?) {
    require state <= 2
    require not state
    require owner == msg.sender
    require eth.balance(this.address) <= 10^16
    if arg1:
        targetAddress = arg1
}

function increaseSupply(uint256 arg1) {
    require state <= 2
    require not state
    require owner == msg.sender
    require arg1 > 0
    require (arg1 * sub_2837502c) + balanceOf[stor0] >= balanceOf[stor0]
    balanceOf[stor0] += arg1 * sub_2837502c
    require (arg1 * sub_2837502c) + totalSupply >= totalSupply
    totalSupply += arg1 * sub_2837502c
}

function transferOwner(address arg1) {
    require state <= 2
    require not state
    require owner == msg.sender
    require eth.balance(this.address) <= 10^16
    if arg1:
        balanceOf[stor0] = 0
        require balanceOf[stor0] + balanceOf[arg1] >= balanceOf[arg1]
        balanceOf[address(arg1)] = balanceOf[stor0] + balanceOf[arg1]
        owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require state <= 2
    if state != 1:
        require state <= 2
        require state == 2
    require arg1
    require arg2 >= 0
    require balanceOf[address(msg.sender)] > 0
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_3b20f2e0(?) {
    require state <= 2
    require not state
    require owner == msg.sender
    require eth.balance(this.address) <= 10^16
    require state <= 2
    require not state
    require owner == msg.sender
    require eth.balance(this.address) <= 10^16
    if targetAddress:
        balanceOf[stor0] = 0
        require balanceOf[stor0] + balanceOf[stor1] >= balanceOf[stor1]
        balanceOf[stor1] += balanceOf[stor0]
        owner = targetAddress
}

function transfer(address arg1, uint256 arg2) {
    require state <= 2
    if state != 1:
        require state <= 2
        require state == 2
    require not stor9[address(msg.sender)]
    require arg1
    require arg2 >= 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function withdraw(uint256 arg1) {
    if owner != msg.sender:
        require targetAddress == msg.sender
    require arg1 >= 0
    if arg1 > 0:
        call msg.sender with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        if eth.balance(this.address) > 0:
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require state <= 2
    if state != 1:
        require state <= 2
        require state == 2
    require not stor9[address(arg1)]
    require arg1
    require arg2
    require arg3 >= 0
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_f3a7861f(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _10 = mem[(32 * idx) + 128]
        require mem[(32 * idx) + 140 len 20]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 9
        stor9[mem[(32 * idx) + 140 len 20]] = uint8(arg2)
        mem[(32 * arg1.length) + 128] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg1.length) + 160] = arg2
        emit FrozenFunds(mem[(32 * arg1.length) + 128], arg2);
        s = _10
        idx = idx + 1
        continue 
}

function sub_89540cab(?) payable {
    require state <= 2
    require state == 2
    require msg.value >= 10^17
    require arg1
    require msg.value + totalEthReceived >= totalEthReceived
    totalEthReceived += msg.value
    if msg.value:
        require msg.value
        require saleRate * msg.value / msg.value == saleRate
    require saleRate * msg.value <= balanceOf[stor0]
    balanceOf[stor0] += -1 * saleRate * msg.value
    require (saleRate * msg.value) + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = (saleRate * msg.value) + balanceOf[arg1]
    if stor14:
        call targetAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    investorCount++
    emit Invest(investorCount, address(arg1), msg.value, saleRate * msg.value);
}

function _fallback() payable {
    if owner == msg.sender:
        if eth.balance(this.address) > 0:
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
    else:
        if targetAddress == msg.sender:
            if eth.balance(this.address) > 0:
                call msg.sender with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
        else:
            require state <= 2
            require state == 2
            require msg.value >= 10^17
            require msg.sender
            require msg.value + totalEthReceived >= totalEthReceived
            totalEthReceived += msg.value
            if msg.value:
                require msg.value
                require saleRate * msg.value / msg.value == saleRate
            require saleRate * msg.value <= balanceOf[stor0]
            balanceOf[stor0] += -1 * saleRate * msg.value
            require (saleRate * msg.value) + balanceOf[msg.sender] >= balanceOf[msg.sender]
            balanceOf[address(msg.sender)] = (saleRate * msg.value) + balanceOf[msg.sender]
            if stor14:
                call targetAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            investorCount++
            emit Invest(investorCount, msg.sender, msg.value, saleRate * msg.value);
}



}
