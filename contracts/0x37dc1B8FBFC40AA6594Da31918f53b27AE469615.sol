contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
uint8 stor4;
uint256 stor5;
mapping of uint256 stor6;

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
    require not msg.value
    mem[160 len -3332] = code.data[3896 len -3332]
    stor0 = msg.sender
    stor6[address(msg.sender)] = mem[160]
    stor5 = mem[160]
    stor2[] = Array(len=mem[mem[192] + 160], data=mem[mem[192] + 192 len mem[mem[192] + 160]])
    stor3[] = Array(len=mem[mem[256] + 160], data=mem[mem[256] + 192 len mem[mem[256] + 160]])
    stor4 = mem[255 len 1]
    return code.data[564 len 3332]
}



// =====================  Runtime code  =====================


const approve(address arg1, uint256 arg2) = 1

const transferFrom(address arg1, address arg2, uint256 arg3) = 1

const approveAndCall(address arg1, uint256 arg2, bytes arg3) = 0


address owner;
array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 sellPrice;
uint256 buyPrice;
mapping of uint8 stor10;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
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
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) {
    return bool(stor10[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function buy() payable {
  stop
}

function sub_bc87c20d(?) {
  stop
}

function _fallback() {
    revert
}

function sell(uint256 arg1) {
  stop
}

function transfer(address arg1, uint256 arg2) {
  stop
}

function setPrices(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
}

function mintToken(address arg1, uint256 arg2) {
    require msg.sender == owner
}

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == owner
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}



}
