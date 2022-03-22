contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint8 stor1;
mapping of uint256 stor2;
mapping of uint256 stor3;
array of uint256 stor6;
array of uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint8 stor11;
uint256 stor12;
uint256 stor13;

function _fallback() payable {
    mem[96 len -1885] = code.data[2457 len -1885]
    mem[64] = -1789
    require not stor11
    if mem[236 len 20] != 0:
        stor0 = msg.sender or Mask(96, 160, stor0)
    stor2[address(msg.sender)] = stor10
    mem[32] = 1
    stor1[address(msg.sender)] = 0
    mem[0] = 6
    stor6.length = (2 * mem[mem[128] + 96]) + 1
    s = 0xf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d3f
    idx = mem[128] + 128
    while mem[128] + mem[mem[128] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[128] + 96] + 31) >> 5) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2c1
    while (stor6.length + 31 / 32) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2c1 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor7[] = Array(len=mem[mem[192] + 96], data=mem[mem[192] + 128 len mem[mem[192] + 96]])
    stor8 = mem[160]
    stor3[address(msg.sender)] = 100
    stor12 = 1000
    stor13 = 100
    stor9 = mem[96]
    stor10 = mem[96]
    if not stor11:
        return code.data[572 len 1885]
    revert 
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
mapping of uint8 frozenAccount;
mapping of uint256 balance;
mapping of uint256 sub_7b5d9795;
mapping of uint256 sub_1bd2bde2;
mapping of uint256 sub_8ab916cf;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 initialSupply;
uint8 disabled;
uint256 sub_808fc206;
uint256 walletFee;
uint256 price;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function sub_1bd2bde2(?) payable {
    return sub_1bd2bde2[arg1]
}

function decimals() payable {
    return decimals
}

function initialSupply() payable {
    return initialSupply
}

function sub_7b5d9795(?) payable {
    return sub_7b5d9795[arg1]
}

function sub_808fc206(?) payable {
    return sub_808fc206
}

function sub_8ab916cf(?) payable {
    return sub_8ab916cf[arg1]
}

function owner() payable {
    return address(owner)
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function price() payable {
    return price
}

function walletFee() payable {
    return walletFee
}

function frozenAccount(address arg1) payable {
    return frozenAccount[arg1]
}

function balance(address arg1) payable {
    return balance[arg1]
}

function disabled() payable {
    return disabled
}

function _fallback() payable {
  stop
}

function adjustPrice() payable {
    require not disabled
}

function setPrice(uint256 arg1) payable {
    price = arg1
}

function disableContract(bool arg1) payable {
    require address(owner) == msg.sender
}

function owned() payable {
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
}

function transferOwnership(address arg1) payable {
    require address(owner) == msg.sender
}

function setFee(address arg1, uint256 arg2) payable {
    require address(owner) == msg.sender
}

function mintToken(address arg1, uint256 arg2) payable {
    require address(owner) == msg.sender
}

function freezeAccount(address arg1, bool arg2) payable {
    require address(owner) == msg.sender
}

function buyToken() payable {
    require not disabled
    require balance[address(this.address)] >= msg.value / price
    balance[address(msg.sender)] += msg.value / price
    balance[this.address] -= msg.value / price
    emit Transfer((msg.value / price), this.address, msg.sender);
    return (msg.value / price)
}

function sellToken(uint256 arg1) payable {
    require not disabled
    require balance[address(msg.sender)] >= arg1
    balance[address(this.address)] += arg1
    balance[msg.sender] -= arg1
    call msg.sender with:
       value arg1 * price wei
         gas 0 wei
    emit Transfer(arg1, msg.sender, this.address);
    return (arg1 * price)
}

function transfer(address arg1, uint256 arg2) payable {
    require not disabled
    require not frozenAccount[address(msg.sender)]
    require balance[address(msg.sender)] >= arg2 + (arg2 / sub_7b5d9795[address(msg.sender)]) + (arg2 / sub_808fc206)
    require arg2 + balance[arg1] >= balance[arg1]
    balance[address(msg.sender)] -= arg2
    balance[arg1] += arg2
    balance[address(msg.sender)] -= arg2 / sub_7b5d9795[address(msg.sender)]
    balance[address(msg.sender)] = balance[address(msg.sender)] - (arg2 / sub_7b5d9795[address(msg.sender)]) - (arg2 / sub_808fc206)
    balance[address(stor0)] += arg2 / sub_7b5d9795[address(msg.sender)]
    balance[this.address] += arg2 / walletFee
    totalSupply -= arg2 / sub_808fc206
    sub_1bd2bde2[address(msg.sender)]++
    sub_8ab916cf[address(msg.sender)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}



}
