contract main {




// =====================  Runtime code  =====================


const name = 'Leber Network'

const airdropNum1 = 300 * 10^18

const airdropNum2 = 150 * 10^18

const decimals = 18

const airdropCountLimit2 = 20000

const symbol = 'LBN'

const airdropCountLimit1 = 20000


uint256 totalSupply;
uint256 airdropSupply;
uint256 airdropCount;
mapping of uint8 stor3;
address owner;
mapping of uint256 balanceOf;
mapping of uint256 freezeOf;
mapping of uint256 allowance;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function freezeOf(address arg1) {
    return freezeOf[arg1]
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function airdropCount() {
    return airdropCount
}

function airdropSupply() {
    return airdropSupply
}

function approve(address arg1, uint256 arg2) {
    require arg2 > 0
    allowance[msg.sender][address(arg1)] = arg2
    return 1
}

function withdrawEther(uint256 arg1) {
    require msg.sender == owner
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function burn(uint256 arg1) {
    require arg1 <= balanceOf[msg.sender]
    require arg1 > 0
    require arg1 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function freeze(uint256 arg1) {
    require arg1 <= balanceOf[msg.sender]
    require arg1 > 0
    require arg1 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg1
    require arg1 + freezeOf[msg.sender] >= freezeOf[msg.sender]
    require arg1 + freezeOf[msg.sender] >= arg1
    freezeOf[msg.sender] += arg1
    emit Freeze(arg1, msg.sender);
    return 1
}

function unfreeze(uint256 arg1) {
    require arg1 <= freezeOf[msg.sender]
    require arg1 > 0
    require arg1 <= freezeOf[msg.sender]
    freezeOf[msg.sender] -= arg1
    require arg1 + balanceOf[msg.sender] >= balanceOf[msg.sender]
    require arg1 + balanceOf[msg.sender] >= arg1
    balanceOf[msg.sender] += arg1
    emit Unfreeze(arg1, msg.sender);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 > 0
    require arg2 <= balanceOf[msg.sender]
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    require arg2 + balanceOf[arg1] >= arg2
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 > 0
    require arg3 <= balanceOf[address(arg1)]
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    require arg3 + balanceOf[arg2] >= arg3
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require balanceOf[this.address] > 0
    require not stor3[msg.sender]
    require 40000 > airdropCount
    stor3[msg.sender] = 1
    require airdropCount + 1 >= airdropCount
    require airdropCount + 1 >= 1
    airdropCount++
    if 20000 >= airdropCount + 1:
        require 300 * 10^18 <= balanceOf[address(this.address)]
        require balanceOf[address(msg.sender)] + 300 * 10^18 > balanceOf[address(msg.sender)]
        require 300 * 10^18 <= balanceOf[address(this.address)]
        balanceOf[address(this.address)] -= 300 * 10^18
        require balanceOf[msg.sender] + 300 * 10^18 >= balanceOf[msg.sender]
        require balanceOf[msg.sender] + 300 * 10^18 >= 300 * 10^18
        balanceOf[address(msg.sender)] = balanceOf[msg.sender] + 300 * 10^18
        emit Transfer(300 * 10^18, this.address, msg.sender);
    else:
        if 40000 >= airdropCount:
            require 150 * 10^18 <= balanceOf[address(this.address)]
            require balanceOf[address(msg.sender)] + 150 * 10^18 > balanceOf[address(msg.sender)]
            require 150 * 10^18 <= balanceOf[address(this.address)]
            balanceOf[address(this.address)] -= 150 * 10^18
            require balanceOf[msg.sender] + 150 * 10^18 >= balanceOf[msg.sender]
            require balanceOf[msg.sender] + 150 * 10^18 >= 150 * 10^18
            balanceOf[address(msg.sender)] = balanceOf[msg.sender] + 150 * 10^18
            emit Transfer(150 * 10^18, this.address, msg.sender);
}



}
