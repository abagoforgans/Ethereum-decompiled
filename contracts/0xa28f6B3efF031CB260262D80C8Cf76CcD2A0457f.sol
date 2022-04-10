contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint8 stor2;
mapping of uint256 stor3;

function _fallback() payable {
    stor2 = 0
    require not msg.value
    stor0 = msg.sender
    stor3[address(msg.sender)] = 3 * 10^12
    stor1 = 3 * 10^12
    return code.data[107 len 1451]
}



// =====================  Runtime code  =====================


const name = 'Neureal Early Contributor Points'

const decimals = 8

const standard = 'Token 0.1'

const symbol = 'NECP'

const MAXIMUM_SUPPLY = 3 * 10^12


address owner;
uint256 totalSupply;
uint8 stor2;
mapping of uint256 balanceOf;

function frozen() {
    return bool(stor2)
}

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function _fallback() {
    revert
}

function freezeTransfers() {
    require owner == msg.sender
    stor2 = 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor2
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}



}
