contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
uint8 stor12;
address stor12; offset 8

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 17
    stor0.length.field_8 = 'LuckyStrikeTokens' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 3
    stor1.length.field_8 = 'LST' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 0
    uint8(stor12.field_0) = 1
    require not msg.value
    address(stor12.field_8) = msg.sender
    return code.data[408 len 4526]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
address teamAddress;
uint256 invested;
uint256 hardCap;
uint256 tokenSaleStarted;
uint256 salePeriod;
uint8 stor12;
address stor12; offset 8
uint256 stor74BE;
uint256 stor9C5F;
uint256 storB5FC;
uint256 storEB0A;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function tokenSaleStarted() {
    return tokenSaleStarted
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function team() {
    return teamAddress
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function tokenSaleIsRunning() {
    return bool(uint8(stor12.field_0))
}

function salePeriod() {
    return salePeriod
}

function invested() {
    return invested
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function hardCap() {
    return hardCap
}

function _fallback() payable {
    revert
}

function transferDividends() payable {
  stop
}

function approve(address arg1, uint256 arg2) {
    require arg2 >= 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function withdrawAllByOwner() {
    require teamAddress == msg.sender
    require not totalSupply
    require not uint8(stor12.field_0)
    call teamAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit 0xd8934431: eth.balance(this.address), teamAddress, msg.sender
}

function init(address arg1) {
    require address(stor12.field_8) == msg.sender
    require not tokenSaleStarted
    hardCap = 125 * 10^16 * 3600
    salePeriod = 4800 * 24 * 3600
    teamAddress = 0xbbab60c495413c870f8cabf09436bee9fe3542f
    stor74BE = 33040000
    storEB0A = 8260000
    stor9C5F = 26600000
    storB5FC = 2100000
    totalSupply = 70 * 10^6
    owner = arg1
    tokenSaleStarted = block.timestamp
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    require arg2 >= 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.0x8f4ffcb1 with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    emit DataSentToAnotherContract(Array(len=arg3.length, data=arg3[all]), msg.sender, arg1);
    return 1
}

function approveAllAndCall(address arg1, bytes arg2) {
    require balanceOf[address(msg.sender)] >= 0
    allowance[address(msg.sender)][address(arg1)] = balanceOf[address(msg.sender)]
    emit Approval(balanceOf[address(msg.sender)], msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.0x8f4ffcb1 with:
         gas gas_remaining - 710 wei
        args msg.sender, balanceOf[address(msg.sender)], address(this.address), Array(len=arg2.length, data=arg2[all])
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    emit DataSentToAnotherContract(Array(len=arg2.length, data=arg2[all]), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor12.field_0)
    require arg3 >= 0
    if arg1 != msg.sender:
        require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    if arg1 != msg.sender:
        require arg3 <= allowance[address(arg1)][address(msg.sender)]
        allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function mint(address arg1, uint256 arg2, uint256 arg3) {
    require uint8(stor12.field_0)
    require owner == msg.sender
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg3 + invested >= invested
    invested += arg3
    if arg3 + invested >= hardCap:
        uint8(stor12.field_0) = 0
    else:
        require tokenSaleStarted <= block.timestamp
        if block.timestamp - tokenSaleStarted > salePeriod:
            uint8(stor12.field_0) = 0
    emit 0xb3535153: arg3, arg2, invested, arg1, msg.sender, not bool(uint8(stor12.field_0))
    return 1
}

function transferAndCall(address arg1, uint256 arg2, bytes arg3) {
    require not uint8(stor12.field_0)
    require arg2 >= 0
    if msg.sender != msg.sender:
        require arg2 <= allowance[address(msg.sender)][address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    if msg.sender != msg.sender:
        require arg2 <= allowance[address(msg.sender)][address(msg.sender)]
        allowance[address(msg.sender)][address(msg.sender)] -= arg2
    emit Transfer(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.tokenFallback(address arg1, uint256 arg2, bytes arg3) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    emit DataSentToAnotherContract(Array(len=arg3.length, data=arg3[all]), msg.sender, arg1);
    return 1
}

function takeDividends(uint256 arg1) {
    require not uint8(stor12.field_0)
    require eth.balance(this.address) > 0
    require totalSupply > 0
    if not eth.balance(this.address):
        require totalSupply
        require arg1 <= totalSupply
        totalSupply -= arg1
        require arg1 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg1
        call msg.sender with:
           value 0 / totalSupply wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit DividendsPaid(arg1, 0 / totalSupply, msg.sender);
    else:
        require arg1 * eth.balance(this.address) / eth.balance(this.address) == arg1
        require totalSupply
        require arg1 <= totalSupply
        totalSupply -= arg1
        require arg1 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg1
        call msg.sender with:
           value arg1 * eth.balance(this.address) / totalSupply wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit DividendsPaid(arg1, arg1 * eth.balance(this.address) / totalSupply, msg.sender);
    return 1
}

function transferAllAndCall(address arg1, bytes arg2) {
    require not uint8(stor12.field_0)
    require balanceOf[address(msg.sender)] >= 0
    if msg.sender != msg.sender:
        require balanceOf[address(msg.sender)] <= allowance[address(msg.sender)][address(msg.sender)]
    require balanceOf[address(msg.sender)] <= balanceOf[address(msg.sender)]
    require balanceOf[address(msg.sender)] <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] = 0
    require balanceOf[address(msg.sender)] + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[address(msg.sender)] + balanceOf[arg1]
    if msg.sender != msg.sender:
        require balanceOf[address(msg.sender)] <= allowance[address(msg.sender)][address(msg.sender)]
        allowance[address(msg.sender)][address(msg.sender)] -= balanceOf[address(msg.sender)]
    emit Transfer(balanceOf[address(msg.sender)], msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.tokenFallback(address arg1, uint256 arg2, bytes arg3) with:
         gas gas_remaining - 710 wei
        args msg.sender, balanceOf[address(msg.sender)], Array(len=arg2.length, data=arg2[all])
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    emit DataSentToAnotherContract(Array(len=arg2.length, data=arg2[all]), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor12.field_0)
    if arg1 != this.address:
        require arg2 >= 0
        if msg.sender != msg.sender:
            require arg2 <= allowance[address(msg.sender)][address(msg.sender)]
        require arg2 <= balanceOf[address(msg.sender)]
        require arg2 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg2
        require arg2 + balanceOf[arg1] >= balanceOf[arg1]
        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
        if msg.sender != msg.sender:
            require arg2 <= allowance[address(msg.sender)][address(msg.sender)]
            allowance[address(msg.sender)][address(msg.sender)] -= arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        require eth.balance(this.address) > 0
        require totalSupply > 0
        if not eth.balance(this.address):
            require totalSupply
            require arg2 <= totalSupply
            totalSupply -= arg2
            require arg2 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg2
            call msg.sender with:
               value 0 / totalSupply wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit DividendsPaid(arg2, 0 / totalSupply, msg.sender);
        else:
            require arg2 * eth.balance(this.address) / eth.balance(this.address) == arg2
            require totalSupply
            require arg2 <= totalSupply
            totalSupply -= arg2
            require arg2 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg2
            call msg.sender with:
               value arg2 * eth.balance(this.address) / totalSupply wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit DividendsPaid(arg2, arg2 * eth.balance(this.address) / totalSupply, msg.sender);
    return 1
}



}
