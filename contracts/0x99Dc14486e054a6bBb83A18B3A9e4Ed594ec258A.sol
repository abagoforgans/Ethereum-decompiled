contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
uint256 stor4;
uint256 stor5;
mapping of uint256 stor6;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint8 stor11;

function _fallback() payable {
    mem[128] = 'Token 0.1'
    bool(stor1.length) = 0
    stor1.length.field_1 = 9
    stor1.length.field_8 = 'Token 0.1' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor8 = 0
    stor9 = 1000
    stor10 = 0
    stor11 = 0
    mem[160 len -7214] = code.data[8063 len -7214]
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor6[address(msg.sender)] = mem[160]
    stor5 = mem[160]
    stor2[] = Array(len=mem[mem[192] + 160], data=mem[mem[192] + 192 len mem[mem[192] + 160]])
    stor3[] = Array(len=mem[mem[256] + 160], data=mem[mem[256] + 192 len mem[mem[256] + 160]])
    stor4 = mem[224]
    return code.data[849 len 7214]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 sellPrice;
uint256 buyPrice;
uint256 index;
uint8 stor11;
mapping of uint8 stor12;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function selling() {
    return bool(stor11)
}

function index() {
    return index
}

function decimals() {
    return decimals
}

function sellPrice() {
    return sellPrice
}

function standard() {
    return standard[0 len standard.length]
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function buyPrice() {
    return buyPrice
}

function owner() {
    return address(owner)
}

function symbol() {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) {
    return bool(uint8(stor12[arg1]))
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function destroy() {
    require msg.sender == address(owner)
    selfdestruct(address(owner))
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function setPrices(uint256 arg1, uint256 arg2) {
    require msg.sender == address(owner)
    sellPrice = arg1
    buyPrice = arg2
}

function transferOwnership(address arg1) {
    require msg.sender == address(owner)
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function sub_6b8d3c0b(?) {
    require msg.sender == address(owner)
    require balanceOf[address(this.address)] >= arg2
    balanceOf[address(this.address)] -= arg2
    balanceOf[address(arg1)] += arg2
}

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == address(owner)
    uint256(stor12[address(arg1)]) = arg2 or Mask(248, 8, uint256(stor12[address(arg1)]))
    emit FrozenFunds(address(arg1), arg2);
}

function sub_3ea307f0(?) {
    require msg.sender == address(owner)
    if stor11:
        emit ShowMsg(Array(len=16, data='have been opened'));
    else:
        stor11 = 1
        emit ShowMsg(Array(len=7, data='open ok'));
}

function stopSell() {
    require msg.sender == address(owner)
    if not stor11:
        emit ShowMsg(Array(len=16, data='have been closed'));
    else:
        stor11 = 0
        emit ShowMsg(Array(len=8, data='close ok'));
}

function mintToken(address arg1, uint256 arg2) {
    require msg.sender == address(owner)
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require not uint8(stor12[address(msg.sender)])
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function sell(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(this.address)] += arg1
    balanceOf[address(msg.sender)] -= arg1
    call msg.sender with:
       value arg1 * sellPrice wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Transfer(arg1, msg.sender, this.address);
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining - 50 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor12[address(arg1)])
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function buy() payable {
    require buyPrice
    require balanceOf[address(this.address)] >= msg.value / buyPrice
    balanceOf[address(msg.sender)] += msg.value / buyPrice
    balanceOf[address(this.address)] -= msg.value / buyPrice
    emit Transfer((msg.value / buyPrice), this.address, msg.sender);
    call address(owner) with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        emit ShowMsg(Array(len=9, data='buy error'));
        revert 
    index++
    emit Issue(index, msg.sender, msg.value, msg.value / buyPrice);
}

function _fallback() payable {
    if not stor11:
        emit ShowMsg(Array(len=13, data='not open sell'));
        revert 
    require buyPrice
    require balanceOf[address(this.address)] >= msg.value / buyPrice
    balanceOf[address(msg.sender)] += msg.value / buyPrice
    balanceOf[address(this.address)] -= msg.value / buyPrice
    emit Transfer((msg.value / buyPrice), this.address, msg.sender);
    call address(owner) with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        emit ShowMsg(Array(len=9, data='buy error'));
        revert 
    index++
    emit Issue(index, msg.sender, msg.value, msg.value / buyPrice);
}



}
