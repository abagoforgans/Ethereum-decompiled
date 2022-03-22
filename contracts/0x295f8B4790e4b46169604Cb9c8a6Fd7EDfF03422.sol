contract main {


// =======================  Init code  ======================


uint256 stor10;

function _fallback() payable {
    stor10 = 15 * 10^16
    return code.data[30 len 2874]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 entropy;
uint256 ownbalance;
mapping of uint256 balanceOf;
uint256 sellPrice;
uint256 buyPrice;
uint256 startPrice;
uint256 stor11;
mapping of uint256 voters;

function name() payable {
    return name[0 len name.length].field_0
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function Entropy() payable {
    return entropy
}

function sellPrice() payable {
    return sellPrice
}

function balanceOf(address arg1) payable {
    return balanceOf[arg1]
}

function buyPrice() payable {
    return buyPrice
}

function owner() payable {
    return address(owner)
}

function symbol() payable {
    return symbol[0 len symbol.length].field_0
}

function voters(address arg1) payable {
    return voters[arg1]
}

function ownbalance() payable {
    return ownbalance
}

function startPrice() payable {
    return startPrice
}

function sub_68d4246b(?) payable {
    emit 0x3e4629b4: block.timestamp, buyPrice, sellPrice, entropy, totalSupply, ownbalance
}

function transferOwnership(address arg1) payable {
    require msg.sender == address(owner)
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function ivote(bool arg1) payable {
    stor11 += balanceOf[address(msg.sender)]
    require voters[address(msg.sender)] <= 0
    voters[address(msg.sender)]++
    emit votelog(arg1, msg.sender, balanceOf[address(msg.sender)]);
    return stor11
}

function setPrices() payable {
    if startPrice + (startPrice * totalSupply / 500) > buyPrice:
        buyPrice = startPrice + (startPrice * totalSupply / 500)
    sellPrice = eth.balance(this.address) / totalSupply
    ownbalance = eth.balance(this.address)
    return buyPrice
}

function newIncome(string arg1) payable {
    require msg.value > 10^16
    emit newincomelog(msg.value, Array(len=arg1.length, data=arg1[all]));
    emit 0x3e4629b4: block.timestamp, buyPrice, sellPrice, entropy, totalSupply, ownbalance
    return Array(len=arg1.length, data=arg1[all])
}

function transfer(address arg1, uint256 arg2) payable {
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function newProposal(string arg1) payable {
    if address(owner) != msg.sender:
        mem[ceil32(arg1.length) + 288] = Mask(96, 80, 'Only admin can do this') >> 80, mem[ceil32(arg1.length) + 310 len 10]
        return Array(len=22, data=mem[ceil32(arg1.length) + 288])
    stor11 = 0
    mem[ceil32(arg1.length) + 224 len arg1.length] = arg1[all]
    emit newProposallog(Array(len=arg1.length, data=arg1[all]));
    mem[ceil32(arg1.length) + 288] = mem[ceil32(arg1.length) + 318 len 2]
    return Array(len=2, data=mem[ceil32(arg1.length) + 288])
}

function sell(uint256 arg1) payable {
    if startPrice + (startPrice * totalSupply / 500) > buyPrice:
        buyPrice = startPrice + (startPrice * totalSupply / 500)
    sellPrice = eth.balance(this.address) / totalSupply
    ownbalance = eth.balance(this.address)
    require balanceOf[address(msg.sender)] >= arg1
    emit Transfer(arg1, msg.sender, this.address);
    totalSupply -= arg1
    balanceOf[address(msg.sender)] -= arg1
    call msg.sender with:
       value arg1 * sellPrice wei
         gas 0 wei
    if startPrice + (startPrice * totalSupply / 500) > buyPrice:
        buyPrice = startPrice + (startPrice * totalSupply / 500)
    sellPrice = eth.balance(this.address) / totalSupply
    ownbalance = eth.balance(this.address)
}

function token() payable {
    require not address(owner)
    balanceOf[address(msg.sender)] = 0
    totalSupply = 0
    uint8(name.length) = 26
    Mask(248, 0, name.length.field_8) = 'noxonfund.com' / 256
    idx = 0xb10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0cf6
    while (name.length + 31 / 32) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    uint8(symbol.length) = 20
    Mask(168, 0, symbol.length.field_8) = 0
    Mask(80, 0, symbol.length.field_176) = 1136311112323939065483845
    idx = 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace
    while (symbol.length + 31 / 32) + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    decimals = 0
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    if startPrice + (startPrice * totalSupply / 500) > buyPrice:
        buyPrice = startPrice + (startPrice * totalSupply / 500)
    sellPrice = eth.balance(this.address) / totalSupply
    ownbalance = eth.balance(this.address)
}

function _fallback() payable {
    if startPrice + (startPrice * totalSupply / 500) <= buyPrice:
        sellPrice = eth.balance(this.address) / totalSupply
        ownbalance = eth.balance(this.address)
        balanceOf[address(msg.sender)] += msg.value / buyPrice
        totalSupply += msg.value / buyPrice
        entropy += msg.value / buyPrice
        emit Transfer((msg.value / buyPrice), 0, msg.sender);
        call address(owner) with:
           value msg.value / 2 wei
             gas 0 wei
    else:
        buyPrice = startPrice + (startPrice * totalSupply / 500)
        sellPrice = eth.balance(this.address) / totalSupply
        ownbalance = eth.balance(this.address)
        balanceOf[address(msg.sender)] += msg.value / buyPrice
        totalSupply += msg.value / buyPrice
        entropy += msg.value / buyPrice
        emit Transfer((msg.value / buyPrice), 0, msg.sender);
        call address(owner) with:
           value msg.value / 2 wei
             gas 0 wei
        buyPrice = startPrice + (startPrice * totalSupply / 500)
    sellPrice = eth.balance(this.address) / totalSupply
    ownbalance = eth.balance(this.address)
    return buyPrice
}



}
