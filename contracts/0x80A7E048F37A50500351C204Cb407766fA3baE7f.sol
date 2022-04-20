contract main {


// =======================  Init code  ======================


address stor0;
uint16 stor4;

function _fallback() payable {
    stor4 = 0
    stor0 = msg.sender
    return code.data[60 len 3136]
}



// =====================  Runtime code  =====================


const name = 'CrypteriumToken'

const decimals = 18

const symbol = 'CRPT'

const hardcap = 300000000 * 10^18


address owner;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor4;
uint8 stor4; offset 8

function mintingFinished() {
    return bool(uint8(stor4.field_8))
}

function totalSupply() {
    return totalSupply
}

function transferAllowed() {
    return bool(uint8(stor4.field_0))
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

function allowTransfer() {
    require owner == msg.sender
    uint8(stor4.field_0) = 1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function finishMinting() {
    require owner == msg.sender
    uint8(stor4.field_8) = 1
    emit MintFinished()
    return 1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if owner != msg.sender:
        require uint8(stor4.field_0)
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg2
    allowance[address(arg1)][address(msg.sender)] -= arg2
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if owner != msg.sender:
        require uint8(stor4.field_0)
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require owner == msg.sender
    require block.timestamp > 419294 * 3600
    require block.timestamp < 421382 * 3600
    require not uint8(stor4.field_8)
    require arg1
    require (30 * arg2 / 70) + arg2 >= arg2
    if (30 * arg2 / 70) + arg2 + totalSupply <= 300000000 * 10^18:
        totalSupply = (30 * arg2 / 70) + arg2 + totalSupply
        require totalSupply >= 0
        balanceOf[address(msg.sender)] = (30 * arg2 / 70) + arg2 + balanceOf[address(msg.sender)]
        require balanceOf[address(msg.sender)] >= 0
        emit Mint(((30 * arg2 / 70) + arg2), msg.sender);
        if owner != msg.sender:
            require uint8(stor4.field_0)
        require arg1
        require arg2 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg2
        balanceOf[arg1] += arg2
        emit Transfer(arg2, msg.sender, arg1);
        if owner != msg.sender:
            require uint8(stor4.field_0)
        require 30 * arg2 / 70 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= 30 * arg2 / 70
        balanceOf[0x1d907c982b0b093b5173574fabe7965181522c7b] += 30 * arg2 / 70
        emit Transfer((30 * arg2 / 70), msg.sender, 0x1d907c982b0b093b5173574fabe7965181522c7b);
    return 1
}



}
