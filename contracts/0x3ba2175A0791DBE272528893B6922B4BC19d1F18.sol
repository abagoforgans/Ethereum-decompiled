contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint8 stor9;
uint256 stor10;
array of uint256 stor11;
array of uint256 stor12;
uint256 stor13;
uint256 stor14;
mapping of uint256 stor15;

function _fallback() payable {
    stor3 = 18
    stor9 = 0
    stor10 = 10^10
    bool(stor11.length) = 0
    stor11.length.field_1 = 8
    stor11.length.field_8 = 'Dudecoin' / 256
    idx = 0
    while stor11.length + 31 / 32 > idx:
        stor11[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor12.length) = 0
    stor12.length.field_1 = 4
    stor12.length.field_8 = 'DUDE' / 256
    idx = 0
    while stor12.length + 31 / 32 > idx:
        stor12[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor13 = 10^12
    stor14 = 72 * 24 * 3600
    require not msg.value
    stor0 = msg.sender
    stor4 = stor10 * 10^stor3
    stor15[address(this.address)] = 8 * stor10 * 10^uint8(stor3 - 1)
    stor15[address(msg.sender)] = 2 * stor10 * 10^uint8(stor3 - 1)
    if 31 >= stor11.length:
        stor1.length = stor11.length
        idx = 0
        while stor1.length + 31 / 32 > idx:
            stor1[idx] = 0
            idx = idx + 1
            continue 
        if 31 >= stor12.length:
            stor2.length = stor12.length
            idx = 0
            while stor2.length + 31 / 32 > idx:
                stor2[idx] = 0
                idx = idx + 1
                continue 
        else:
            stor2.length = Mask(255, 1, (256 * not bool(stor12.length)) - 1 and stor12.length) + 1
            if not Mask(255, 1, (256 * not bool(stor12.length)) - 1 and stor12.length):
                idx = 0
                while stor2.length + 31 / 32 > idx:
                    stor2[idx] = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while stor12.length + 31 / 32 > idx:
                    stor2[s] = stor12[idx].field_0
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor12.length + 31 / 32
                while stor2.length + 31 / 32 > idx:
                    stor2[idx] = 0
                    idx = idx + 1
                    continue 
    else:
        stor1.length = Mask(255, 1, (256 * not bool(stor11.length)) - 1 and stor11.length) + 1
        if not Mask(255, 1, (256 * not bool(stor11.length)) - 1 and stor11.length):
            idx = 0
            while stor1.length + 31 / 32 > idx:
                stor1[idx] = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while stor11.length + 31 / 32 > idx:
                stor1[s] = stor11[idx].field_0
                s = s + 1
                idx = idx + 1
                continue 
            idx = stor11.length + 31 / 32
            while stor1.length + 31 / 32 > idx:
                stor1[idx] = 0
                idx = idx + 1
                continue 
        if 31 >= stor12.length:
            stor2.length = stor12.length
            idx = 0
            while stor2.length + 31 / 32 > idx:
                stor2[idx] = 0
                idx = idx + 1
                continue 
        else:
            stor2.length = Mask(255, 1, (256 * not bool(stor12.length)) - 1 and stor12.length) + 1
            if not Mask(255, 1, (256 * not bool(stor12.length)) - 1 and stor12.length):
                idx = 0
                while stor2.length + 31 / 32 > idx:
                    stor2[idx] = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while stor12.length + 31 / 32 > idx:
                    stor2[s] = stor12[idx].field_0
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor12.length + 31 / 32
                while stor2.length + 31 / 32 > idx:
                    stor2[idx] = 0
                    idx = idx + 1
                    continue 
    stor5 = stor13
    stor6 = 0
    stor8 = stor14
    stor7 = block.timestamp + (60 * stor8)
    return code.data[1001 len 5939]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 buyPrice;
uint256 amountRaised;
uint256 deadline;
uint8 stor9;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function deadline() {
    return deadline
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function amountRaised() {
    return amountRaised
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

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function setPrices(uint256 arg1) {
    require msg.sender == owner
    buyPrice = arg1
}

function transferOwnership(address arg1) {
    if msg.sender == owner:
        owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function postDeadline() {
    if block.timestamp >= deadline:
        call owner with:
           value amountRaised wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        amountRaised = 0
        stor9 = 1
}

function burnFrom(address arg1, uint256 arg2) {
    require balanceOf[address(arg1)] >= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg2
    allowance[address(arg1)][address(msg.sender)] -= arg2
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require balanceOf[address(arg1)] + balanceOf[address(arg2)] == balanceOf[address(arg1)] + balanceOf[address(arg2)]
    return 1
}

function _fallback() payable {
    require not stor9
    require buyPrice
    require balanceOf[address(this.address)] >= 10^18 * msg.value / buyPrice
    balanceOf[address(msg.sender)] += 10^18 * msg.value / buyPrice
    balanceOf[address(this.address)] -= 10^18 * msg.value / buyPrice
    emit Transfer((10^18 * msg.value / buyPrice), this.address, msg.sender);
    amountRaised += msg.value
    if amountRaised >= 5 * 10^17:
        call owner with:
           value amountRaised wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        amountRaised = 0
}



}
