contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
uint256 stor3;
mapping of uint256 stor4;
mapping of uint8 stor5;
address stor9;
uint8 stor10; offset 160
address stor10;

function _fallback() payable {
    stor2 = 18
    uint8(stor10.field_160) = 1
    require not msg.value
    mem[96 len -3757] = code.data[4225 len -3757]
    mem[64] = -3661
    stor3 = mem[96] * 10^stor2
    stor4[address(this.address)] = mem[96] * 10^stor2
    stor0[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor1[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor5[address(mem[192])] = 1
    address(stor10.field_0) = mem[236 len 20]
    stor9 = mem[268 len 20]
    return code.data[468 len 3757]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint8 stor5;
uint256 buyPrice;
uint256 sellPrice;
uint256 fees;
address stor9;
uint8 stor10; offset 160
uint128 stor10; offset 160
address stor10;

function sub_01327e33(?) {
    return bool(uint8(stor10.field_160))
}

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

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function buyPrice() {
    return buyPrice
}

function symbol() {
    return symbol[0 len symbol.length]
}

function fees() {
    return fees
}

function sub_f6fbb359(?) {
    return bool(stor5[arg1])
}

function sub_b76e42ce(?) {
    require stor9 == msg.sender
    selfdestruct(address(stor10.field_0))
}

function setAdmin(address arg1, bool arg2) {
    require stor9 == msg.sender
    stor5[address(arg1)] = uint8(arg2)
}

function setOpen(bool arg1) {
    require stor9 == msg.sender
    Mask(96, 0, stor10.field_160) = Mask(96, 0, arg1)
}

function sub_d9cc7a74(?) {
    require stor5[address(msg.sender)]
    require uint8(stor10.field_160)
    fees = 10^decimals * arg1
    buyPrice = arg2
    sellPrice = arg3
}

function sub_b558d10a(?) {
    require stor5[address(msg.sender)]
    require uint8(stor10.field_160)
    require arg1 >= 0
    totalSupply += 10^decimals * arg1
    balanceOf[address(this.address)] += 10^decimals * arg1
}

function _fallback() payable {
    require uint8(stor10.field_160)
    require buyPrice >= 0
    require buyPrice * msg.value <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] += -1 * buyPrice * msg.value
    balanceOf[msg.sender] += buyPrice * msg.value
    emit Transfer((buyPrice * msg.value), this.address, msg.sender);
}

function getETH(uint256 arg1) {
    require stor5[address(msg.sender)]
    require uint8(stor10.field_160)
    require 10^14 * arg1 <= eth.balance(this.address)
    call address(stor10.field_0) with:
       value 10^14 * arg1 wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        emit SendEth((10^14 * arg1), address(stor10.field_0));
}

function transfer(address arg1, uint256 arg2) {
    require stor5[address(msg.sender)]
    require uint8(stor10.field_160)
    require balanceOf[address(this.address)] >= arg2 * 10^decimals
    require balanceOf[address(arg1)] + (arg2 * 10^decimals) >= balanceOf[address(arg1)]
    balanceOf[this.address] += -1 * arg2 * 10^decimals
    balanceOf[address(arg1)] += arg2 * 10^decimals
    emit Transfer((arg2 * 10^decimals), this.address, arg1);
    require balanceOf[address(arg1)] + balanceOf[this.address] == balanceOf[this.address] + balanceOf[address(arg1)]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require stor5[address(msg.sender)]
    require uint8(stor10.field_160)
    require arg3 * 10^decimals > fees
    require balanceOf[address(arg1)] >= arg3 * 10^decimals
    require balanceOf[address(arg1)] - (arg3 * 10^decimals) < balanceOf[address(arg1)]
    require balanceOf[address(arg2)] + (arg3 * 10^decimals) - fees > balanceOf[address(arg2)]
    balanceOf[arg1] += -1 * arg3 * 10^decimals
    balanceOf[arg2] = (arg3 * 10^decimals) - fees + balanceOf[arg2]
    balanceOf[address(this.address)] += fees
    emit Transfer((arg3 * 10^decimals), arg1, arg2);
    require balanceOf[address(this.address)] + balanceOf[arg2] + balanceOf[arg1] == balanceOf[arg2] + balanceOf[arg1] + balanceOf[address(this.address)]
}

function sellCoin(address arg1, uint256 arg2) {
    require stor5[address(msg.sender)]
    require uint8(stor10.field_160)
    require balanceOf[address(arg1)] >= arg2 * 10^decimals
    require sellPrice > 0
    require sellPrice
    require eth.balance(this.address) >= arg2 * 10^decimals / sellPrice
    require balanceOf[address(arg1)] - (arg2 * 10^decimals) < balanceOf[address(arg1)]
    balanceOf[this.address] += arg2 * 10^decimals
    balanceOf[address(arg1)] += -1 * arg2 * 10^decimals
    call arg1 with:
       value arg2 * 10^decimals / sellPrice wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        emit SendEth((arg2 * 10^decimals / sellPrice), arg1);
    require balanceOf[address(arg1)] + balanceOf[this.address] == balanceOf[this.address] + balanceOf[address(arg1)]
}

function transferBatch(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require stor5[address(msg.sender)]
    require uint8(stor10.field_160)
    require arg1.length == arg2.length
    idx = 0
    s = 0
    while idx < arg2.length:
        require idx < arg2.length
        idx = idx + 1
        s = (mem[(32 * idx) + (32 * arg1.length) + 160] * 10^decimals) + s
        continue 
    require balanceOf[address(this.address)] >= mem[(32 * arg2.length) + (32 * arg1.length) + 160] * 10^decimals * arg2.length
    balanceOf[address(this.address)] += -1 * mem[(32 * arg2.length) + (32 * arg1.length) + 160] * 10^decimals * arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        balanceOf[mem[(32 * idx) + 140 len 20]] += mem[(32 * idx) + (32 * arg1.length) + 160] * 10^decimals
        idx = idx + 1
        continue 
}



}
