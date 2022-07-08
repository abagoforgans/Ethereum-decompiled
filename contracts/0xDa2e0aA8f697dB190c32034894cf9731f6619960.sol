contract main {




// =====================  Runtime code  =====================


const name = 'Wise Blockchain'

const sub_18af7611(?) = 0xafd390d55d2e02fdf715e77df120b8e9cee52f30

const decimals = 18

const symbol = 'WB'


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowed;
uint256 totalSupply;

function totalSupply() {
    return totalSupply
}

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function balanceOf(address arg1) {
    require arg1
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function transfersEnabled() {
    return bool(uint8(stor0.field_160))
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function disableTransfers(bool arg1) {
    require msg.sender == owner
    Mask(96, 0, stor0.field_160) = Mask(96, 0, not arg1)
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require uint8(stor0.field_160)
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
