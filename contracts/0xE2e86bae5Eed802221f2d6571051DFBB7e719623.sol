contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 cap;
mapping of uint256 balanceOf;
mapping of uint256 sub_f5e9282d;
uint256 totalSupply;
address minterAddress;

function name() {
    return name[0 len name.length]
}

function minter() {
    return minterAddress
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function cap() {
    return cap
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_f5e9282d(?) {
    require calldata.size - 4 >= 32
    return sub_f5e9282d[address(arg1)]
}

function _fallback() payable {
    revert
}

function isMinter() {
    return (msg.sender == minterAddress)
}

function transferMintership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == minterAddress
    require arg1
    emit MinterTransferred(minterAddress, arg1);
    minterAddress = arg1
}

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == minterAddress
    require totalSupply + arg2 >= totalSupply
    require totalSupply + arg2 <= cap
    require arg1
    require not balanceOf[address(arg1)]
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    balanceOf[address(arg1)] = arg2
    sub_f5e9282d[address(arg1)] = block.timestamp
    emit Transfer(arg2, 0, arg1);
    return 1
}



}
