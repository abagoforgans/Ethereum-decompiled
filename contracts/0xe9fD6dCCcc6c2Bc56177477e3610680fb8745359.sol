contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
mapping of uint256 stor3;

function _fallback() payable {
    stor0 = 1000000 * 10^18
    require not msg.value
    stor1 = msg.sender
    stor3[address(msg.sender)] = stor0
    return code.data[101 len 2250]
}



// =====================  Runtime code  =====================


const name = 'IcofundNO1 token'

const decimals = 18

const symbol = 'IFN1'


uint256 totalSupply;
address owner;
address mintingContractAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function mintingContract() {
    return mintingContractAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function sub_640cff98(?) {
    require owner == msg.sender
    mintingContractAddress = arg1
    balanceOf[arg1] = balanceOf[stor1]
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require mintingContractAddress == msg.sender
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require totalSupply + arg2 >= arg2
    totalSupply += arg2
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    if owner == arg1:
        totalSupply += arg3
    else:
        balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    if owner == msg.sender:
        require totalSupply + arg2 >= arg2
        totalSupply += arg2
    else:
        if mintingContractAddress != msg.sender:
            balanceOf[address(msg.sender)] -= arg2
        else:
            require totalSupply + arg2 >= arg2
            totalSupply += arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
