contract main {


// =======================  Init code  ======================


address stor0;
uint8 stor2;

function _fallback() payable {
    stor2 = 0
    stor0 = msg.sender
    return code.data[58 len 1479]
}



// =====================  Runtime code  =====================


const name = 'Altair VR presale token'

const decimals = 18

const symbol = 'ALT0'


address owner;
uint256 totalSupply;
uint8 stor2;
mapping of uint256 balances;

function mintingFinished() {
    return bool(stor2)
}

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    revert
}

function finishMinting() {
    require owner == msg.sender
    require not stor2
    stor2 = 1
    emit MintFinished()
    return 1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function mint(address arg1, uint256 arg2) {
    require owner == msg.sender
    require not stor2
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balances[address(arg1)] >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}



}
