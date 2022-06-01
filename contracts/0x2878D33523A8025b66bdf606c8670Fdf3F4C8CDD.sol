contract main {




// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor3; offset 160
uint128 stor3; offset 160
address owner;
array of uint256 name;
array of uint256 symbol;
array of uint256 version;
uint8 decimals;
uint8 ico; offset 8
uint256 stor7; offset 8
uint256 ico_price;
uint8 ico_percent;
uint256 ico_amount;
uint256 initShares;
uint256 totalShare;
uint256 stor13;
uint256 stor14;
array of struct stor15;

function totalShare() {
    return totalShare
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

function ico_amount() {
    return ico_amount
}

function version() {
    return version[0 len version.length]
}

function ico_price() {
    return ico_price
}

function paused() {
    return bool(uint8(stor3.field_160))
}

function ico() {
    return bool(ico)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function initShares() {
    return initShares
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function ico_percent() {
    return ico_percent
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    emit ReciveEth(msg.sender, msg.value);
}

function setIcoStatus(bool arg1) {
    require msg.sender == owner
    stor7 = Mask(248, 0, arg1)
}

function setIcoPrice(uint256 arg1) {
    require msg.sender == owner
    require arg1 > 0
    ico_price = arg1
}

function unpause() {
    require msg.sender == owner
    require uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function addAccount(address arg1) {
    require msg.sender == owner
    if stor15.length:
        mem[128] = address(stor15.field_0)
        idx = 128
        s = 0
        while (32 * stor15.length) + 96 > idx:
            mem[idx + 32] = stor15[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    idx = 0
    while idx < stor15.length:
        require idx < stor15.length
        if mem[(32 * idx) + 140 len 20] != arg1:
            idx = idx + 1
            continue 
    stor15.length++
    stor15[stor15.length].field_0 = arg1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    require arg1
    require arg2 > 0
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    if stor15.length:
        mem[128] = address(stor15.field_0)
        idx = 128
        s = 0
        while (32 * stor15.length) + 96 > idx:
            mem[idx + 32] = stor15[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    idx = 0
    while idx < stor15.length:
        require idx < stor15.length
        if mem[(32 * idx) + 140 len 20] != arg1:
            idx = idx + 1
            continue 
        else:
            return 0
    stor15.length++
    stor15[stor15.length].field_0 = arg1
    return 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor3.field_160)
    require arg2
    require arg3 > 0
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    if stor15.length:
        mem[128] = address(stor15.field_0)
        idx = 128
        s = 0
        while (32 * stor15.length) + 96 > idx:
            mem[idx + 32] = stor15[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    idx = 0
    while idx < stor15.length:
        require idx < stor15.length
        if mem[(32 * idx) + 140 len 20] != arg2:
            idx = idx + 1
            continue 
        else:
            return 0
    stor15.length++
    stor15[stor15.length].field_0 = arg2
    return 0
}

function buy() payable {
    require ico
    require msg.value > 0
    require ico_price
    require not msg.value % ico_price
    require ico_price
    if not initShares / 100:
        require ico_amount + (msg.value / ico_price) >= ico_amount
        require ico_amount + (msg.value / ico_price) <= 0
    else:
        require initShares / 100
        require initShares / 100 * ico_percent / initShares / 100 == ico_percent
        require ico_amount + (msg.value / ico_price) >= ico_amount
        require ico_amount + (msg.value / ico_price) <= initShares / 100 * ico_percent
    emit ReciveFound(msg.sender, msg.value);
    require balanceOf[address(msg.sender)] + (msg.value / ico_price) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += msg.value / ico_price
    if not msg.value / ico_price:
        require totalSupply >= totalSupply
    else:
        require msg.value / ico_price
        require msg.value / ico_price * uint8(10^decimals) / msg.value / ico_price == uint8(10^decimals)
        require totalSupply + (msg.value / ico_price * uint8(10^decimals)) >= totalSupply
        totalSupply += msg.value / ico_price * uint8(10^decimals)
    require ico_amount + (msg.value / ico_price) >= ico_amount
    ico_amount += msg.value / ico_price
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit TransferFound(owner, msg.value);
}

function sendBouns() {
    require eth.balance(this.address) >= 10^18
    require block.number - stor13 >= stor14
    mem[0] = msg.sender
    require balanceOf[address(msg.sender)] > 0
    stor13 = block.number
    if stor15.length:
        mem[0] = 15
        mem[128] = address(stor15.field_0)
        idx = 128
        s = 0
        while (32 * stor15.length) + 96 > idx:
            mem[idx + 32] = stor15[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    idx = 0
    while idx < stor15.length:
        require idx < stor15.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        if balanceOf[mem[(32 * idx) + 140 len 20]] > 0:
            require idx < stor15.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 1
            require totalSupply
            if eth.balance(this.address) / totalSupply:
                require eth.balance(this.address) / totalSupply
                require eth.balance(this.address) / totalSupply * balanceOf[mem[(32 * idx) + 140 len 20]] / eth.balance(this.address) / totalSupply == balanceOf[mem[(32 * idx) + 140 len 20]]
                if eth.balance(this.address) / totalSupply * balanceOf[mem[(32 * idx) + 140 len 20]] > 0:
                    require idx < stor15.length
                    call mem[(32 * idx) + 140 len 20] with:
                       value eth.balance(this.address) / totalSupply * balanceOf[mem[(32 * idx) + 140 len 20]] wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
                        require idx < stor15.length
                        mem[(32 * stor15.length) + 128] = mem[(32 * idx) + 140 len 20]
                        mem[(32 * stor15.length) + 160] = eth.balance(this.address) / totalSupply * balanceOf[mem[0]]
                        emit MyProfitRecord(mem[(32 * stor15.length) + 128], eth.balance(this.address) / totalSupply * balanceOf[mem[0]]);
        idx = idx + 1
        continue 
    require totalShare + eth.balance(this.address) >= totalShare
    emit SendBouns(eth.balance(this.address));
}



}
