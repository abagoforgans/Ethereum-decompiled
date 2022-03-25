contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;

function _fallback() payable {
    mem[96 len -1268] = code.data[1725 len -1268]
    mem[64] = -1172
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1[address(msg.sender)] = mem[96]
    stor2.length = (2 * mem[mem[128] + 96]) + 1
    s = 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace
    idx = mem[128] + 128
    while mem[128] + mem[mem[128] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[128] + 96] + 31) >> 5) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace
    while (stor2.length + 31 / 32) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor3[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor4 = mem[192]
    stor5 = 10^13
    stor6 = 10^13
    return code.data[457 len 1268]
}



// =====================  Runtime code  =====================


address stor0;
mapping of uint256 getBalance;
array of uint256 name;
array of uint256 symbol;
uint8 decimal;
uint256 sellPrice;
uint256 buyPrice;

function name() {
    return name[0 len name.length]
}

function GetBalance(address arg1) {
    return getBalance[address(arg1)]
}

function sellPrice() {
    return sellPrice
}

function decimal() {
    return decimal
}

function buyPrice() {
    return buyPrice
}

function symbol() {
    return symbol[0 len symbol.length]
}

function balance(address arg1) {
    return getBalance[arg1]
}

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    revert 
}

function sub_aaeb4878(?) {
    require getBalance[address(msg.sender)] >= arg2
    require arg2 > 0
    getBalance[address(msg.sender)] -= arg2
    getBalance[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function sub_827e2479(?) {
    require buyPrice
    require getBalance[address(this.address)] >= msg.value / buyPrice
    getBalance[address(this.address)] -= msg.value / buyPrice
    getBalance[msg.sender] += msg.value / buyPrice
    emit Transfer((msg.value / buyPrice), this.address, msg.sender);
    return (msg.value / buyPrice)
}

function sub_98421a21(?) {
    require getBalance[address(msg.sender)] >= arg1
    getBalance[address(msg.sender)] -= arg1
    getBalance[this.address] += arg1
    call msg.sender with:
       value arg1 * sellPrice wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Transfer(arg1, msg.sender, this.address);
    return (arg1 * sellPrice)
}



}
