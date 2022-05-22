contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor0;
address newOwner;
uint256 stor1;
array of uint256 symbol;
array of uint256 name;
uint8 decimals;
uint256 stor5;
uint256 sellPrice;
uint256 buyPrice;
uint256 sysPrice;
uint256 sysPer;
uint256 onceOuttime;
uint256 onceAddTime;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor14;
array of struct mycan;
mapping of uint256 tradenum;
mapping of uint256 cronaddOf;

function name() {
    return name[0 len name.length]
}

function sysPer() {
    return sysPer
}

function onceAddTime() {
    return onceAddTime
}

function decimals() {
    return decimals
}

function sellPrice() {
    return sellPrice
}

function sysPrice() {
    return sysPrice
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
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

function mycan(address arg1, uint256 arg2) {
    require arg2 < mycan[arg1].field_0
    return mycan[arg1][arg2].field_0, mycan[arg1][arg2].field_256
}

function frozenAccount(address arg1) {
    return bool(stor14[arg1])
}

function cronaddOf(address arg1) {
    return cronaddOf[arg1]
}

function newOwner() {
    return address(newOwner)
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function tradenum(address arg1) {
    return tradenum[arg1]
}

function onceOuttime() {
    return onceOuttime
}

function getprice() {
    return buyPrice, sellPrice, sysPrice, sysPer
}

function totalSupply() {
    require balanceOf[0] <= stor5
    return (stor5 - balanceOf[0])
}

function transferOwnership(address arg1) {
    require msg.sender == address(owner)
    address(newOwner) = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == address(owner)
    stor14[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function setPrices(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require msg.sender == address(owner)
    buyPrice = arg1
    sellPrice = arg2
    sysPrice = arg3
    sysPer = arg4
}

function acceptOwnership() {
    require msg.sender == address(newOwner)
    emit OwnershipTransferred(address(owner), address(newOwner));
    address(owner) = address(newOwner)
    address(newOwner) = 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, arg2, this.address, Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function _fallback() payable {
    require not stor14[msg.sender]
    balanceOf[msg.sender] += msg.value * buyPrice
    balanceOf[this.address] += -1 * msg.value * buyPrice
    uint256(stor0) = block.timestamp
    uint256(stor1) = msg.value * buyPrice
    mycan[address(msg.sender)].field_0++
    mycan[address(msg.sender)][mycan[address(msg.sender)].field_0].field_0 = uint256(stor0)
    mycan[address(msg.sender)][mycan[address(msg.sender)].field_0].field_256 = uint256(stor1)
    tradenum[address(msg.sender)]++
    emit Transfer((msg.value * buyPrice), this.address, msg.sender);
}

function mintToken(address arg1, uint256 arg2) {
    require msg.sender == address(owner)
    require not stor14[address(arg1)]
    if 1 > cronaddOf[msg.sender]:
        cronaddOf[msg.sender] = onceAddTime + block.timestamp
    balanceOf[address(arg1)] += arg2
    uint256(stor0) = block.timestamp
    uint256(stor1) = arg2
    mycan[address(arg1)].field_0++
    mycan[address(arg1)][mycan[address(arg1)].field_0].field_0 = uint256(stor0)
    mycan[address(arg1)][mycan[address(arg1)].field_0].field_256 = uint256(stor1)
    tradenum[address(arg1)]++
    emit Transfer(arg2, this.address, arg1);
}

function buy(uint256 arg1) payable {
    require not stor14[msg.sender]
    balanceOf[msg.sender] += arg1 * buyPrice
    balanceOf[this.address] += -1 * arg1 * buyPrice
    uint256(stor0) = block.timestamp
    uint256(stor1) = arg1 * buyPrice
    mycan[address(msg.sender)].field_0++
    mycan[address(msg.sender)][mycan[address(msg.sender)].field_0].field_0 = uint256(stor0)
    mycan[address(msg.sender)][mycan[address(msg.sender)].field_0].field_256 = uint256(stor1)
    tradenum[address(msg.sender)]++
    emit Transfer((arg1 * buyPrice), this.address, msg.sender);
    return (arg1 * buyPrice)
}

function mintme() {
    require not stor14[msg.sender]
    require block.timestamp > cronaddOf[msg.sender]
    balanceOf[msg.sender] += balanceOf[msg.sender] * sysPer / 10000
    cronaddOf[msg.sender] = onceAddTime + block.timestamp
    uint256(stor0) = block.timestamp
    uint256(stor1) = balanceOf[msg.sender] * sysPer / 10000
    mycan[address(msg.sender)].field_0++
    mycan[address(msg.sender)][mycan[address(msg.sender)].field_0].field_0 = uint256(stor0)
    mycan[address(msg.sender)][mycan[address(msg.sender)].field_0].field_256 = uint256(stor1)
    tradenum[address(msg.sender)]++
    emit Transfer((balanceOf[msg.sender] * sysPer / 10000), this.address, msg.sender);
}

function getcanuse(address arg1) {
    s = 0
    t = 0
    t = 0
    t = 0
    t = 0
    idx = 0
    t = 0
    while idx < tradenum[address(arg1)]:
        require idx < mycan[address(arg1)].field_0
        if block.timestamp - mycan[address(arg1)][idx].field_0 < onceOuttime:
            mem[0] = arg1
            mem[32] = 16
            s = s
            t = block.timestamp - mycan[address(arg1)][idx].field_0
            t = mycan[address(arg1)][idx].field_256
            t = mycan[address(arg1)][idx].field_0
            t = (2 * idx) + sha3(sha3(address(arg1), 15))
            idx = idx + 1
            t = t
            continue 
        require onceOuttime
        mem[0] = arg1
        mem[32] = 16
        if block.timestamp - mycan[address(arg1)][idx].field_0 / onceOuttime <= 100:
            s = block.timestamp - mycan[address(arg1)][idx].field_0 / onceOuttime
            t = block.timestamp - mycan[address(arg1)][idx].field_0
            t = mycan[address(arg1)][idx].field_256
            t = mycan[address(arg1)][idx].field_0
            t = (2 * idx) + sha3(sha3(address(arg1), 15))
            idx = idx + 1
            t = (block.timestamp - mycan[address(arg1)][idx].field_0 / onceOuttime * mycan[address(arg1)][idx].field_256 / 100) + t
            continue 
        s = 100
        t = block.timestamp - mycan[address(arg1)][idx].field_0
        t = mycan[address(arg1)][idx].field_256
        t = mycan[address(arg1)][idx].field_0
        t = (2 * idx) + sha3(sha3(address(arg1), 15))
        idx = idx + 1
        t = (100 * mycan[address(arg1)][idx].field_256 / 100) + t
        continue 
    return t
}

function sell(uint256 arg1) {
    s = 0
    t = 0
    t = 0
    t = 0
    t = 0
    idx = 0
    t = 0
    while idx < tradenum[address(msg.sender)]:
        require idx < mycan[address(msg.sender)].field_0
        if block.timestamp - mycan[address(msg.sender)][idx].field_0 < onceOuttime:
            mem[0] = msg.sender
            mem[32] = 16
            s = s
            t = block.timestamp - mycan[address(msg.sender)][idx].field_0
            t = mycan[address(msg.sender)][idx].field_256
            t = mycan[address(msg.sender)][idx].field_0
            t = (2 * idx) + sha3(sha3(address(msg.sender), 15))
            idx = idx + 1
            t = t
            continue 
        require onceOuttime
        mem[0] = msg.sender
        mem[32] = 16
        if block.timestamp - mycan[address(msg.sender)][idx].field_0 / onceOuttime <= 100:
            s = block.timestamp - mycan[address(msg.sender)][idx].field_0 / onceOuttime
            t = block.timestamp - mycan[address(msg.sender)][idx].field_0
            t = mycan[address(msg.sender)][idx].field_256
            t = mycan[address(msg.sender)][idx].field_0
            t = (2 * idx) + sha3(sha3(address(msg.sender), 15))
            idx = idx + 1
            t = (block.timestamp - mycan[address(msg.sender)][idx].field_0 / onceOuttime * mycan[address(msg.sender)][idx].field_256 / 100) + t
            continue 
        s = 100
        t = block.timestamp - mycan[address(msg.sender)][idx].field_0
        t = mycan[address(msg.sender)][idx].field_256
        t = mycan[address(msg.sender)][idx].field_0
        t = (2 * idx) + sha3(sha3(address(msg.sender), 15))
        idx = idx + 1
        t = (100 * mycan[address(msg.sender)][idx].field_256 / 100) + t
        continue 
    require t >= arg1
    require sellPrice
    call msg.sender with:
       value arg1 / sellPrice wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    balanceOf[msg.sender] -= arg1
    balanceOf[this.address] += arg1
    emit Transfer((arg1 / sellPrice), this.address, msg.sender);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor14[msg.sender]
    require not stor14[address(arg1)]
    s = 0
    t = 0
    t = 0
    t = 0
    t = 0
    idx = 0
    t = 0
    while idx < tradenum[address(msg.sender)]:
        require idx < mycan[address(msg.sender)].field_0
        if block.timestamp - mycan[address(msg.sender)][idx].field_0 < onceOuttime:
            mem[0] = msg.sender
            mem[32] = 16
            s = s
            t = block.timestamp - mycan[address(msg.sender)][idx].field_0
            t = mycan[address(msg.sender)][idx].field_256
            t = mycan[address(msg.sender)][idx].field_0
            t = (2 * idx) + sha3(sha3(address(msg.sender), 15))
            idx = idx + 1
            t = t
            continue 
        require onceOuttime
        mem[0] = msg.sender
        mem[32] = 16
        if block.timestamp - mycan[address(msg.sender)][idx].field_0 / onceOuttime <= 100:
            s = block.timestamp - mycan[address(msg.sender)][idx].field_0 / onceOuttime
            t = block.timestamp - mycan[address(msg.sender)][idx].field_0
            t = mycan[address(msg.sender)][idx].field_256
            t = mycan[address(msg.sender)][idx].field_0
            t = (2 * idx) + sha3(sha3(address(msg.sender), 15))
            idx = idx + 1
            t = (block.timestamp - mycan[address(msg.sender)][idx].field_0 / onceOuttime * mycan[address(msg.sender)][idx].field_256 / 100) + t
            continue 
        s = 100
        t = block.timestamp - mycan[address(msg.sender)][idx].field_0
        t = mycan[address(msg.sender)][idx].field_256
        t = mycan[address(msg.sender)][idx].field_0
        t = (2 * idx) + sha3(sha3(address(msg.sender), 15))
        idx = idx + 1
        t = (100 * mycan[address(msg.sender)][idx].field_256 / 100) + t
        continue 
    require t >= arg2
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    uint256(stor0) = block.timestamp
    uint256(stor1) = arg2
    mycan[address(arg1)].field_0++
    mycan[address(arg1)][mycan[address(arg1)].field_0].field_0 = uint256(stor0)
    mycan[address(arg1)][mycan[address(arg1)].field_0].field_256 = uint256(stor1)
    tradenum[address(arg1)]++
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
