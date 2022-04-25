contract main {


// =======================  Init code  ======================


uint256 stor0;
uint128 stor1; offset 160
address stor1;
mapping of uint256 stor2;

function _fallback() payable {
    stor0 = 1000000000 * 10^18
    Mask(96, 0, stor1.field_160) = 0
    require not msg.value
    stor2[code.data[3360 len 20]] = stor0
    address(stor1.field_0) = code.data[3360 len 20]
    return code.data[237 len 3111]
}



// =====================  Runtime code  =====================


const name = 'Verime Mobile'

const decimals = 18

const symbol = 'VRM'


uint256 _totalSupply;
uint8 stor1; offset 160
uint128 stor1; offset 160
address stor1;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function totalSupply() {
    return _totalSupply
}

function _totalSupply() {
    return _totalSupply
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

function enableTransfer() {
    if not uint8(stor1.field_160):
        require msg.sender == address(stor1.field_0)
    Mask(96, 0, stor1.field_160) = 1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if not uint8(stor1.field_160):
        require msg.sender == address(stor1.field_0)
    require calldata.size == 68
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 > 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not uint8(stor1.field_160):
        require msg.sender == address(stor1.field_0)
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require balanceOf[address(arg1)] >= arg3
    require arg3 > 0
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
