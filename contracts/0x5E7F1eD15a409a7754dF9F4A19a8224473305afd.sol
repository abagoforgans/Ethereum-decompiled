contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
address stor3;
uint256 stor4;
uint256 stor5;
address stor6;

function _fallback() {
    stor3 = msg.sender
    stor1[address(msg.sender)] = 10^10
    stor0 = 10^10
    emit Transfer(code.data[3035 len 32], 0, msg.sender);
    stor4 = block.timestamp
    stor5 = 4320 * 24 * 3600
    stor6 = msg.sender
    require stor3 == msg.sender
    if code.data[3143 len 20]:
        stor3 = code.data[3143 len 20]
    return code.data[327 len 2708]
}



// =====================  Runtime code  =====================


const name = 'Crypto Coin'

const decimals = 2

const symbol = 'CF'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
uint256 saleStartTime;
uint256 saleEndTime;
address tokenSaleContractAddress;

function totalSupply() {
    return totalSupply
}

function saleStartTime() {
    return saleStartTime
}

function tokenSaleContract() {
    return tokenSaleContractAddress
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

function saleEndTime() {
    return saleEndTime
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
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
    if block.timestamp <= saleEndTime:
        if block.timestamp >= saleStartTime:
            require tokenSaleContractAddress == msg.sender
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if block.timestamp <= saleEndTime:
        if block.timestamp >= saleStartTime:
            require tokenSaleContractAddress == msg.sender
    require arg1
    require arg1 != this.address
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if block.timestamp <= saleEndTime:
        if block.timestamp >= saleStartTime:
            require tokenSaleContractAddress == msg.sender
    require arg2
    require arg2 != this.address
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
    if block.timestamp <= saleEndTime:
        if block.timestamp >= saleStartTime:
            require tokenSaleContractAddress == msg.sender
        if block.timestamp <= saleEndTime:
            if block.timestamp >= saleStartTime:
                require tokenSaleContractAddress == msg.sender
    require msg.sender
    require this.address != msg.sender
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 + balanceOf[msg.sender] >= balanceOf[msg.sender]
    balanceOf[address(msg.sender)] = arg2 + balanceOf[msg.sender]
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Transfer(arg2, arg1, msg.sender);
    if block.timestamp <= saleEndTime:
        if block.timestamp >= saleStartTime:
            require tokenSaleContractAddress == msg.sender
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Burn(arg2, msg.sender);
    emit Transfer(arg2, msg.sender, 0);
    return 1
}



}
