contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
address stor5;
uint256 stor6;
address stor7;
uint256 stor8;
uint256 stor9;
address stor10;
address stor11;
address stor12;
mapping of uint256 stor13;

function _fallback() payable {
    stor2 = 2
    stor7 = 0xc587d94787035b32c6c481e2c5211288f3f45f8c
    stor8 = 250000
    stor9 = 83333
    stor10 = 0x44f994297de6a9f2d9ee7f7beff94802531df3c2
    stor11 = 0xd1d6f0c93eb7c2c4a4b8a38b7cd1da9c81875306
    stor12 = 0xe390fa8e1b30258feb0a01e9c32e9c56ebf7e786
    require not msg.value
    mem[96 len -5539] = code.data[6380 len -5539]
    mem[64] = -5443
    stor6 = mem[160]
    stor3 = mem[160]
    stor13[address(msg.sender)] = mem[160]
    stor5 = msg.sender
    stor4 = mem[192]
    stor0[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor1[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    return code.data[841 len 5539]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 INITIAL_SUPPLY;
uint256 price;
address owner;
uint256 totalSupply;
address stor7;
uint256 stor8;
uint256 stor9;
address stor10;
address stor11;
address stor12;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function INITIAL_SUPPLY() {
    return INITIAL_SUPPLY
}

function decimals() {
    return decimals
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

function price() {
    return price
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function createTokens(address arg1) payable {
    require msg.value
    require msg.value
    require msg.value * price / msg.value == price
    require msg.value * price == (10^18 * msg.value * price / 10^18) + (msg.value * price % 10^18)
    emit Log(Array(len=35, data='total amount of tokens to send b', 'ack'), msg.value * price / 10^18);
    require msg.value * price / 10^18 <= totalSupply
    totalSupply -= msg.value * price / 10^18
    require totalSupply >= 0
    require balanceOf[address(arg1)] + (msg.value * price / 10^18) >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += msg.value * price / 10^18
    emit Log(Array(len=34, data='amount of tokens sent to purchas', 'er'), msg.value * price / 10^18);
    emit Log(Array(len=22, data='amount of wei received'), msg.value);
    emit Log(Array(len=22, data='amount of wei for tax1'), msg.value * stor8 / 100 * 10^6);
    call stor7 with:
       value msg.value * stor8 / 100 * 10^6 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Log(Array(len=22, data='amount of wei for tax1'), msg.value * stor9 / 100 * 10^6);
    call stor10 with:
       value msg.value * stor9 / 100 * 10^6 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Log(Array(len=22, data='amount of wei for tax1'), msg.value * stor9 / 100 * 10^6);
    call stor11 with:
       value msg.value * stor9 / 100 * 10^6 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Log(Array(len=22, data='amount of wei for tax1'), msg.value * stor9 / 100 * 10^6);
    call stor12 with:
       value msg.value * stor9 / 100 * 10^6 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Log(Array(len=23, data='amount of wei for owner'), msg.value - (msg.value * stor8 / 100 * 10^6) - (3 * msg.value * stor9 / 100 * 10^6));
    call owner with:
       value msg.value - (msg.value * stor8 / 100 * 10^6) - (3 * msg.value * stor9 / 100 * 10^6) wei
         gas 2300 * is_zero(value) wei
    require msg.value * price / 10^18 <= balanceOf[stor5]
    balanceOf[stor5] -= msg.value * price / 10^18
    emit Transfer((msg.value * price / 10^18), owner, msg.sender);
}

function _fallback() payable {
    require msg.value
    require msg.value
    require msg.value * price / msg.value == price
    require msg.value * price == (10^18 * msg.value * price / 10^18) + (msg.value * price % 10^18)
    emit Log(Array(len=35, data='total amount of tokens to send b', 'ack'), msg.value * price / 10^18);
    require msg.value * price / 10^18 <= totalSupply
    totalSupply -= msg.value * price / 10^18
    require totalSupply >= 0
    require balanceOf[address(msg.sender)] + (msg.value * price / 10^18) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += msg.value * price / 10^18
    emit Log(Array(len=34, data='amount of tokens sent to purchas', 'er'), msg.value * price / 10^18);
    emit Log(Array(len=22, data='amount of wei received'), msg.value);
    emit Log(Array(len=22, data='amount of wei for tax1'), msg.value * stor8 / 100 * 10^6);
    call stor7 with:
       value msg.value * stor8 / 100 * 10^6 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Log(Array(len=22, data='amount of wei for tax1'), msg.value * stor9 / 100 * 10^6);
    call stor10 with:
       value msg.value * stor9 / 100 * 10^6 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Log(Array(len=22, data='amount of wei for tax1'), msg.value * stor9 / 100 * 10^6);
    call stor11 with:
       value msg.value * stor9 / 100 * 10^6 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Log(Array(len=22, data='amount of wei for tax1'), msg.value * stor9 / 100 * 10^6);
    call stor12 with:
       value msg.value * stor9 / 100 * 10^6 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Log(Array(len=23, data='amount of wei for owner'), msg.value - (msg.value * stor8 / 100 * 10^6) - (3 * msg.value * stor9 / 100 * 10^6));
    call owner with:
       value msg.value - (msg.value * stor8 / 100 * 10^6) - (3 * msg.value * stor9 / 100 * 10^6) wei
         gas 2300 * is_zero(value) wei
    require msg.value * price / 10^18 <= balanceOf[stor5]
    balanceOf[stor5] -= msg.value * price / 10^18
    emit Transfer((msg.value * price / 10^18), owner, msg.sender);
}



}
