contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
uint256 stor2;

function _fallback() {
    require mem[108 len 20]
    stor2 = 10000000 * 10^18
    stor0[mem[108 len 20]] = 2500 * 10^18 * 3600
    emit Transfer((2500 * 10^18 * 3600), 0, mem[108 len 20]);
    stor0[address(msg.sender)] = 1000000 * 10^18
    return code.data[233 len 1442]
}



// =====================  Runtime code  =====================


const name = 'Gnosis Token'

const decimals = 18

const symbol = 'GNO'


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert 
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    balanceOf[address(arg2)] += arg3
    balanceOf[arg1] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
