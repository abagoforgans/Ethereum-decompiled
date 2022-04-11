contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
uint8 stor4;
uint16 stor10;

function _fallback() payable {
    mem[128] = 'BMXToken 0.1'
    bool(stor1.length) = 0
    stor1.length.field_1 = 12
    stor1.length.field_8 = 'BMXToken 0.1' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor10 = 0
    require not msg.value
    mem[160 len -4547] = code.data[4986 len -4547]
    stor0 = msg.sender
    stor2[] = Array(len=mem[mem[160] + 160], data=mem[mem[160] + 192 len mem[mem[160] + 160]])
    stor3[] = Array(len=mem[mem[224] + 160], data=mem[mem[224] + 192 len mem[mem[224] + 160]])
    stor4 = mem[223 len 1]
    return code.data[439 len 4547]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint256 sub_8ed79147;
uint256 sellPrice;
uint256 buyPrice;
uint8 stor10;
uint8 currentStage; offset 8
mapping of uint8 stor11;
mapping of uint256 sub_c4a88b8b;
mapping of uint256 sub_64073e12;

function name() {
    return name[0 len name.length]
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

function currentStage() {
    return currentStage
}

function sub_64073e12(?) {
    return sub_64073e12[arg1]
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function buyPrice() {
    return buyPrice
}

function owner() {
    return owner
}

function sub_8ed79147(?) {
    return sub_8ed79147[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) {
    return bool(stor11[arg1])
}

function sub_c4a88b8b(?) {
    return sub_c4a88b8b[arg1]
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function sub_f805d0c9(?) {
    return bool(stor10)
}

function _fallback() {
    revert
}

function sub_e2170c4a(?) {
    require owner == msg.sender
    currentStage = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function setPrices(uint256 arg1, uint256 arg2) {
    require owner == msg.sender
    sellPrice = arg1
    buyPrice = arg2
}

function sub_6cab9aca(?) {
    require owner == msg.sender
    sub_c4a88b8b[arg1 << 248] = arg2
    emit 0x8460cc53: arg1 << 248, arg2
}

function sub_92ba0952(?) {
    require owner == msg.sender
    sub_64073e12[arg1 << 248] = arg2
    emit 0xdb8f531d: arg1 << 248, arg2
}

function freezeAccount(address arg1, bool arg2) {
    require owner == msg.sender
    stor11[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function mintToken(address arg1, uint256 arg2) {
    require owner == msg.sender
    balanceOf[address(arg1)] += arg2
    sub_8ed79147[stor10] += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require not stor11[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function sell(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(this.address)] += arg1
    balanceOf[msg.sender] -= arg1
    call msg.sender with:
       value arg1 * sub_c4a88b8b[stor10] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Transfer(arg1, msg.sender, this.address);
}

function buy() payable {
    require sub_64073e12[stor10]
    require balanceOf[address(this.address)] >= msg.value / sub_64073e12[stor10]
    balanceOf[address(msg.sender)] += msg.value / sub_64073e12[stor10]
    balanceOf[this.address] -= msg.value / sub_64073e12[stor10]
    emit Transfer((msg.value / sub_64073e12[stor10]), this.address, msg.sender);
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor11[address(arg1)]
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
