contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
uint256 stor4;
uint256 stor5;
address stor6;

function _fallback() payable {
    bool(stor2.length) = 0
    stor2.length.field_1 = 11
    stor2.length.field_8 = 'Doge2 Token' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor3.length) = 0
    stor3.length.field_1 = 5
    stor3.length.field_8 = 'DOGE2' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 8
    stor5 = 2 * 10^14
    require not msg.value
    stor0 = stor5
    stor1[address(msg.sender)] = stor5
    stor6 = msg.sender
    return code.data[410 len 2632]
}



// =====================  Runtime code  =====================


#
#  - transfer(address arg1, uint256 arg2, bytes arg3)
#
uint256 totalSupply;
mapping of uint256 balanceOf;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 INITIAL_SUPPLY;
address owner;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function INITIAL_SUPPLY() {
    return INITIAL_SUPPLY
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _fallback() payable {
    balanceOf[stor6] -= msg.value / 10000
    balanceOf[msg.sender] += msg.value / 10000
    emit Transfer((msg.value / 10000), owner, msg.sender, sha3(None));
    emit Buy(msg.value / 10000, msg.value, msg.sender);
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    if ext_code.size(arg1) > 0:
        require ext_code.size(arg1)
        call arg1.0xc0ee0b8a with:
             gas gas_remaining - 710 wei
            args msg.sender, arg2, 96, 0
        require ext_call.success
    emit Transfer(arg2, msg.sender, arg1, sha3(None));
}



}
