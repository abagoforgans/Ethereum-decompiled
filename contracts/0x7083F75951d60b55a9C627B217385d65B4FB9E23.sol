contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 1516]




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function MyToken(uint256 arg1, string arg2, string arg3, uint8 arg4) {
    if arg1:
        balanceOf[address(msg.sender)] = arg1
    else:
        balanceOf[address(msg.sender)] = 10^6
    name[] = Array(len=arg2.length, data=arg2[all])
    symbol[] = Array(len=arg3.length, data=arg3[all])
    decimals = arg4
}



}
