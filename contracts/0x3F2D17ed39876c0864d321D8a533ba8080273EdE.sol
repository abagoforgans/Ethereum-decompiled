contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 2608]




// =====================  Runtime code  =====================


address owner;
uint256 stor0;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 entropy;
uint256 ownbalance;
uint256 sellPrice;
bool stor8;
uint256 stor8; offset 1
uint256 buyPrice;
mapping of uint256 balanceOf;
uint256 stor10;
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

function newIncome(string arg1) payable {
    require msg.value > 10^16
    emit newincomelog(msg.value, Array(len=arg1.length, data=arg1[all]));
    return Array(len=arg1.length, data=arg1[all])
}

function setPrices() payable {
    ownbalance = eth.balance(this.address)
    sellPrice = eth.balance(this.address) / totalSupply
    bool(stor8.field_0) = 0
    uint255(stor8.field_1) = uint255(eth.balance(this.address) / totalSupply)
}

function ivote(bool arg1) payable {
    stor10 += balanceOf[address(msg.sender)]
    require voters[address(msg.sender)] <= 0
    voters[address(msg.sender)]++
    emit votelog(arg1, msg.sender, balanceOf[address(msg.sender)]);
    return stor10
}

function transfer(address arg1, uint256 arg2) payable {
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function _fallback() payable {
    balanceOf[address(msg.sender)] += msg.value / buyPrice
    totalSupply += msg.value / buyPrice
    entropy += msg.value / buyPrice
    emit Transfer((msg.value / buyPrice), 0, msg.sender);
    call address(owner) with:
       value msg.value / 2 wei
         gas 0 wei
    ownbalance = eth.balance(this.address)
    sellPrice = eth.balance(this.address) / totalSupply
    bool(stor8.field_0) = 0
    uint255(stor8.field_1) = uint255(eth.balance(this.address) / totalSupply)
    return buyPrice
}

function newProposal(string arg1) payable {
    if address(owner) != msg.sender:
        mem[ceil32(arg1.length) + 288] = Mask(96, 80, 'Only admin can do this') >> 80, mem[ceil32(arg1.length) + 310 len 10]
        return Array(len=22, data=mem[ceil32(arg1.length) + 288])
    stor10 = 0
    mem[ceil32(arg1.length) + 224 len arg1.length] = arg1[all]
    emit newProposallog(Array(len=arg1.length, data=arg1[all]));
    mem[ceil32(arg1.length) + 288] = mem[ceil32(arg1.length) + 318 len 2]
    return Array(len=2, data=mem[ceil32(arg1.length) + 288])
}

function sell(uint256 arg1) payable {
    ownbalance = eth.balance(this.address)
    sellPrice = eth.balance(this.address) / totalSupply
    bool(stor8.field_0) = 0
    uint255(stor8.field_1) = uint255(eth.balance(this.address) / totalSupply)
    require balanceOf[address(msg.sender)] >= arg1
    emit Transfer(arg1, msg.sender, this.address);
    totalSupply -= arg1
    balanceOf[address(msg.sender)] -= arg1
    call msg.sender with:
       value arg1 * sellPrice wei
         gas 0 wei
    ownbalance = eth.balance(this.address)
    sellPrice = eth.balance(this.address) / totalSupply
    bool(stor8.field_0) = 0
    uint255(stor8.field_1) = uint255(eth.balance(this.address) / totalSupply)
}

function token() payable {
    require not address(owner)
    buyPrice = msg.value
    balanceOf[address(msg.sender)] = 1
    totalSupply = 1
    entropy = 1
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
    ownbalance = eth.balance(this.address)
    sellPrice = eth.balance(this.address) / totalSupply
    bool(stor8.field_0) = 0
    uint255(stor8.field_1) = uint255(eth.balance(this.address) / totalSupply)
}



}
