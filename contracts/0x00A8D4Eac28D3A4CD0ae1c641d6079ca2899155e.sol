contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
mapping of uint256 stor3;

function _fallback() {
    stor0 = msg.sender
    stor0 = code.data[2976 len 20]
    stor2 = 1000000000 * 10^18
    stor3[code.data[2976 len 20]] = 1000000000 * 10^18
    return code.data[150 len 2814]
}



// =====================  Runtime code  =====================


const name = 'BTOCoin'

const decimals = 18

const symbol = 'BTO'


uint8 stopped; offset 160
address owner;
mapping of uint8 stor1;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function stopped() {
    return bool(stopped)
}

function owner() {
    return owner
}

function frozenAccount(address arg1) {
    return bool(stor1[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function stop() {
    if owner != msg.sender:
        emit InvalidCaller(msg.sender);
        revert
    stopped = 1
}

function start() {
    if owner != msg.sender:
        emit InvalidCaller(msg.sender);
        revert
    stopped = 0
}

function freezeAccount(address arg1, bool arg2) {
    if owner != msg.sender:
        emit InvalidCaller(msg.sender);
        revert
    stor1[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function approve(address arg1, uint256 arg2) {
    require not stopped
    require not stor1[address(msg.sender)]
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stopped
    require not stor1[address(msg.sender)]
    require calldata.size >= 68
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stopped
    require not stor1[address(arg1)]
    require calldata.size >= 100
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
