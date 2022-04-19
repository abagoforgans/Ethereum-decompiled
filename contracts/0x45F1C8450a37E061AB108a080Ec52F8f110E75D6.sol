contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
uint256 stor3;

function _fallback() {
    stor0 = 11 * 10^16
    stor1[0xb2478a6be00391cc7c4d3383c41cb376f2acfcf8] = stor0
    stor3 = stor0
    emit Transfer(stor0, 0, this.address);
    emit Transfer(stor0, this.address, 0xb2478a6be00391cc7c4d3383c41cb376f2acfcf8);
    return code.data[349 len 2957]
}



// =====================  Runtime code  =====================


const name = 'Bitcoin advets'

const decimals = 10

const symbol = 'BTA'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 initialSupply;

function totalSupply() {
    return totalSupply
}

function initialSupply() {
    return initialSupply
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
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
}



}
