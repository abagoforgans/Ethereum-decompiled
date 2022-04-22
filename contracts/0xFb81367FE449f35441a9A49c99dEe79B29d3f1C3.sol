contract main {


// =======================  Init code  ======================


uint128 stor3; offset 160
address stor3;
array of uint256 stor4;
array of uint256 stor5;
uint8 stor6;
address stor6; offset 8
uint256 stor7;
uint256 stor8;
uint64 stor10;
uint64 stor10; offset 64

function _fallback() payable {
    Mask(96, 0, stor3.field_160) = 0
    require not msg.value
    mem[96 len -6264] = code.data[7000 len -6264]
    mem[64] = -6168
    address(stor3.field_0) = msg.sender
    require mem[96] > 0
    require mem[140 len 20]
    require mem[312 len 8] > mem[280 len 8]
    stor7 = mem[96]
    address(stor6.field_8) = mem[140 len 20]
    stor4[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor5[] = Array(len=mem[mem[192] + 96], data=mem[mem[192] + 128 len mem[mem[192] + 96]])
    uint8(stor6.field_0) = mem[255 len 1]
    stor8 = 2000 * 10^18
    uint64(stor10.field_0) = mem[280 len 8]
    uint64(stor10.field_64) = mem[312 len 8]
    return code.data[736 len 6264]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor3; offset 160
uint128 stor3; offset 160
address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address walletAddress; offset 8
uint256 rate;
uint256 hardCap;
uint256 sub_5974f160;
uint64 dateStart;
uint64 dateEnd; offset 64

function mintingFinished() {
    return bool(uint8(stor3.field_160))
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

function sub_5974f160(?) {
    return sub_5974f160
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function dateEnd() {
    return dateEnd
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function dateStart() {
    return dateStart
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function hardCap() {
    return hardCap
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function changeWallet(address arg1) {
    require msg.sender == owner
    require arg1
    walletAddress = arg1
    return 1
}

function sub_c1837db8(?) {
    require msg.sender == owner
    require arg1 > block.timestamp
    dateEnd = arg1
    return 1
}

function finishMinting() {
    require msg.sender == owner
    Mask(96, 0, stor3.field_160) = 1
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
    require msg.sender == owner
    require not uint8(stor3.field_160)
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function buyTokens(address arg1) payable {
    require dateEnd > block.timestamp
    require block.timestamp > dateStart
    require sub_5974f160 < hardCap
    require arg1
    require msg.value > 0
    if msg.value:
        require msg.value
        require msg.value * rate / msg.value == rate
    require not uint8(stor3.field_160)
    require totalSupply + (msg.value * rate) + (50 * msg.value * rate / 100) >= totalSupply
    totalSupply = totalSupply + (msg.value * rate) + (50 * msg.value * rate / 100)
    require balanceOf[address(arg1)] + (msg.value * rate) + (50 * msg.value * rate / 100) >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] = balanceOf[address(arg1)] + (msg.value * rate) + (50 * msg.value * rate / 100)
    emit Mint(((msg.value * rate) + (50 * msg.value * rate / 100)), arg1);
    emit TokenPurchase(msg.value, (msg.value * rate) + (50 * msg.value * rate / 100), msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require sub_5974f160 + msg.value >= sub_5974f160
    sub_5974f160 += msg.value
}

function _fallback() payable {
    require dateEnd > block.timestamp
    require block.timestamp > dateStart
    require sub_5974f160 < hardCap
    require msg.sender
    require msg.value > 0
    if msg.value:
        require msg.value
        require msg.value * rate / msg.value == rate
    require not uint8(stor3.field_160)
    require totalSupply + (msg.value * rate) + (50 * msg.value * rate / 100) >= totalSupply
    totalSupply = totalSupply + (msg.value * rate) + (50 * msg.value * rate / 100)
    require balanceOf[address(msg.sender)] + (msg.value * rate) + (50 * msg.value * rate / 100) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (msg.value * rate) + (50 * msg.value * rate / 100)
    emit Mint(((msg.value * rate) + (50 * msg.value * rate / 100)), msg.sender);
    emit TokenPurchase(msg.value, (msg.value * rate) + (50 * msg.value * rate / 100), msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require sub_5974f160 + msg.value >= sub_5974f160
    sub_5974f160 += msg.value
}



}
