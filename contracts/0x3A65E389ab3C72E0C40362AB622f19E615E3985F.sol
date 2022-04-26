contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
address stor3;
uint8 stor4; offset 160
uint128 stor4; offset 160
address stor4;

function _fallback() {
    stor3 = msg.sender
    stor1[address(msg.sender)] = 1000000000 * 10^18
    stor0 = 1000000000 * 10^18
    address(stor4.field_0) = msg.sender
    uint8(stor4.field_160) = 1
    Mask(96, 0, stor4.field_160) = 0
    emit Transfer(1000000000 * 10^18, 0, msg.sender);
    return code.data[209 len 3272]
}



// =====================  Runtime code  =====================


const name = 'Ryan Huang Coin'

const decimals = 18

const symbol = 'RYAN'

const INITIAL_SUPPLY = 1000000000 * 10^18


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
uint8 stor4; offset 160
uint128 stor4; offset 160
address crowdsaleContractAddress;

function totalSupply() {
    return totalSupply
}

function crowdsaleContract() {
    return crowdsaleContractAddress
}

function transferEnabled() {
    return bool(uint8(stor4.field_160))
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
    if arg1:
        owner = arg1
}

function setupCrowdsale(address arg1, bool arg2) {
    require owner == msg.sender
    crowdsaleContractAddress = arg1
    Mask(96, 0, stor4.field_160) = Mask(96, 0, arg2)
}

function ChangeTransferStatus() {
    require owner == msg.sender
    if uint8(stor4.field_160):
        uint8(stor4.field_160) = 0
    else:
        uint8(stor4.field_160) = 1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function emergencyERC20Drain(address arg1, uint256 arg2) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, arg2
    require ext_call.success
}

function burn(uint256 arg1) {
    if crowdsaleContractAddress != msg.sender:
        require uint8(stor4.field_160)
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if crowdsaleContractAddress != msg.sender:
        require uint8(stor4.field_160)
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if crowdsaleContractAddress != msg.sender:
        require uint8(stor4.field_160)
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    if crowdsaleContractAddress != msg.sender:
        require uint8(stor4.field_160)
        if crowdsaleContractAddress != msg.sender:
            require uint8(stor4.field_160)
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 + balanceOf[msg.sender] >= balanceOf[msg.sender]
    balanceOf[address(msg.sender)] = arg2 + balanceOf[msg.sender]
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Transfer(arg2, arg1, msg.sender);
    if crowdsaleContractAddress != msg.sender:
        require uint8(stor4.field_160)
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Burn(arg2, msg.sender);
    emit Transfer(arg2, msg.sender, 0);
    return 1
}



}
