contract main {


// =======================  Init code  ======================


uint8 stor3; offset 160
address stor3;

function _fallback() payable {
    uint8(stor3.field_160) = 0
    address(stor3.field_0) = msg.sender
    return code.data[65 len 2133]
}



// =====================  Runtime code  =====================


const name = 'Veritium'

const decimals = 18

const symbol = 'VRTM'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 mintingFinished; offset 160
address owner;

function mintingFinished() {
    return bool(mintingFinished)
}

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function finishMinting() {
    require owner == msg.sender
    mintingFinished = 1
    emit MintFinished()
    return 1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require owner == msg.sender
    require not mintingFinished
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    return 1
}



}
