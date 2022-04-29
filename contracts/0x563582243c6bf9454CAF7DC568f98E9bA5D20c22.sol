contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
uint128 stor2; offset 160
mapping of uint256 stor3;

function _fallback() payable {
    stor0 = 1000000000 * 10^18
    stor2 = 0
    require not msg.value
    stor3[code.data[4653 len 20]] = stor0
    stor1 = code.data[4653 len 20]
    return code.data[237 len 4404]
}



// =====================  Runtime code  =====================


const name = 'Verime Mobile'

const decimals = 18

const symbol = 'VME'


uint256 _totalSupply;
address owner;
uint8 stor2; offset 160
uint128 stor2; offset 160
address whitelistedContractAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function totalSupply() {
    return _totalSupply
}

function whitelistedContract() {
    return whitelistedContractAddress
}

function _totalSupply() {
    return _totalSupply
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
    require msg.sender == owner
    require arg1
    owner = arg1
    return 0
}

function changeWhitelistedContract(address arg1) {
    require msg.sender == owner
    require arg1
    whitelistedContractAddress = arg1
    return 0
}

function enableTransfer() {
    if not uint8(stor2.field_160):
        if owner != msg.sender:
            require msg.sender == whitelistedContractAddress
    Mask(96, 0, stor2.field_160) = 1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if not uint8(stor2.field_160):
        if owner != msg.sender:
            require msg.sender == whitelistedContractAddress
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 > 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not uint8(stor2.field_160):
        if owner != msg.sender:
            require msg.sender == whitelistedContractAddress
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
