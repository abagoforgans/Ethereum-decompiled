contract main {




// =====================  Runtime code  =====================


#
#  - _fallback()
#
address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
uint256 tokenValue;
array of struct sub_abf6066b;
uint256 sub_e4e52cc7;
uint256 sub_23d64e44;
uint256 sub_7be027f1;
array of uint8 sub_9887c6be;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function tokenValue() {
    return tokenValue
}

function sub_23d64e44(?) {
    return sub_23d64e44
}

function decimals() {
    return decimals
}

function sub_4484b573(?) {
    return sub_abf6066b.length
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function sub_7be027f1(?) {
    return sub_7be027f1
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_9887c6be(?) {
    require arg1 < 12
    return sub_9887c6be[uint8(arg1)]
}

function sub_abf6066b(?) {
    require arg1 < sub_abf6066b.length
    return sub_abf6066b[arg1].field_0, 
           sub_abf6066b[arg1].field_256,
           sub_abf6066b[arg1].field_512,
           sub_abf6066b[arg1].field_768,
           sub_abf6066b[arg1].field_1024,
           sub_abf6066b[arg1].field_1280
}

function sub_e4e52cc7(?) {
    return sub_e4e52cc7
}

function close() {
    require msg.sender == owner
    selfdestruct(owner)
}

function refund(address arg1) {
    require msg.sender == owner
    require balanceOf[address(arg1)]
    balanceOf[stor0] += balanceOf[address(arg1)]
    balanceOf[address(arg1)] = 0
}

function payEther() {
    require msg.sender == owner
    if eth.balance(this.address) > 0:
        call owner with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
        emit 0xdf1d3588: eth.balance(this.address), bool(ext_call.success), msg.sender
}

function transfer(address arg1, uint256 arg2) {
    require msg.sender == owner
    require balanceOf[stor0] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[stor0] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, owner, arg1);
}



}
