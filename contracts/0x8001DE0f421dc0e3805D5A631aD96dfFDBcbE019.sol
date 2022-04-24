contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
address stor2;
uint256 stor3;
address stor4;

function _fallback() payable {
    stor3 = 111 * 10^12
    stor4 = 0x933252a4fd45d12bc0ea4211427eae934912d002
    require not msg.value
    stor2 = stor4
    stor0 = 21 * 10^6
    stor1[stor4] = 21 * 10^10
    return code.data[151 len 2261]
}



// =====================  Runtime code  =====================


const name = 'Etherpay'

const decimals = 4

const symbol = 'EPC'

const INITIAL_SUPPLY = 21 * 10^6


uint256 totalSupply;
mapping of uint256 balanceOf;
address owner;
uint256 buyPrice;
address ethStoreAddress;
array of struct stor5;

function totalSupply() {
    return totalSupply
}

function ethStore() {
    return ethStoreAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function buyPrice() {
    return buyPrice
}

function owner() {
    return owner
}

function changeBuyPrice(uint256 arg1) {
    require owner == msg.sender
    buyPrice = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getTokenBalance() {
    require balanceOf[address(msg.sender)] == (10000 * balanceOf[address(msg.sender)] / 10000) + (balanceOf[address(msg.sender)] % 10000)
    return (balanceOf[address(msg.sender)] / 10000)
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function buy(address arg1) payable {
    require buyPrice > 0
    require buyPrice
    require msg.value == (buyPrice * msg.value / buyPrice) + (msg.value % buyPrice)
    require balanceOf[stor2] >= 10000 * msg.value / buyPrice
    require (10000 * msg.value / buyPrice) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += 10000 * msg.value / buyPrice
    require 10000 * msg.value / buyPrice <= balanceOf[stor2]
    balanceOf[stor2] += -10000 * msg.value / buyPrice
    emit Transfer((10000 * msg.value / buyPrice), owner, arg1);
    call ethStoreAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    mem[128] = 'Thank you for participating in E'
    mem[160] = 'therpayCoin ICO'
    stor5.length = 95
    s = 0
    idx = 128
    while 175 > idx:
        stor5[s].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[256] = uint256(stor5.field_0)
    idx = 256
    s = 0
    while stor5.length + 256 > idx + 32:
        mem[idx + 32] = stor5[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit Message(Array(len=stor5.length, data=mem[256 len stor5.length + (floor32(stor5.length - 1) + -stor5.length + 32 % 32)]));
}

function _fallback() payable {
    require buyPrice > 0
    require buyPrice
    require msg.value == (buyPrice * msg.value / buyPrice) + (msg.value % buyPrice)
    require balanceOf[stor2] >= 10000 * msg.value / buyPrice
    require (10000 * msg.value / buyPrice) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += 10000 * msg.value / buyPrice
    require 10000 * msg.value / buyPrice <= balanceOf[stor2]
    balanceOf[stor2] += -10000 * msg.value / buyPrice
    emit Transfer((10000 * msg.value / buyPrice), owner, msg.sender);
    call ethStoreAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    mem[128] = 'Thank you for participating in E'
    mem[160] = 'therpayCoin ICO'
    stor5.length = 95
    s = 0
    idx = 128
    while 175 > idx:
        stor5[s].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[256] = uint256(stor5.field_0)
    idx = 256
    s = 0
    while stor5.length + 256 > idx + 32:
        mem[idx + 32] = stor5[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit Message(Array(len=stor5.length, data=mem[256 len stor5.length + (floor32(stor5.length - 1) + -stor5.length + 32 % 32)]));
}



}
