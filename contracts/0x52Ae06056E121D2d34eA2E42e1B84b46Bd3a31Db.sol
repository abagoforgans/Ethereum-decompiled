contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[49 len 2325]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
address controllerAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowed;
uint256 totalSupply;

function totalSupply() {
    return totalSupply
}

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    require controllerAddress == msg.sender
    return allowed[address(arg1)][address(arg2)]
}

function contractFinalized() {
    return bool(stor0)
}

function controller() {
    return controllerAddress
}

function _fallback() payable {
    revert
}

function finalizeContract() {
    require owner == msg.sender
    stor0 = 1
}

function setController(address arg1) {
    require owner == msg.sender
    require not stor0
    controllerAddress = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function mint(address arg1, uint256 arg2) {
    require controllerAddress == msg.sender
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    return 1
}

function approve(address arg1, address arg2, uint256 arg3) {
    require controllerAddress == msg.sender
    if arg3:
        require not allowed[address(arg1)][address(arg2)]
    allowed[address(arg1)][address(arg2)] = arg3
    return 1
}

function burn(address arg1, uint256 arg2) {
    require controllerAddress == msg.sender
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    return 1
}

function transfer(address arg1, address arg2, uint256 arg3) {
    require controllerAddress == msg.sender
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    return 1
}

function transferFrom(address arg1, address arg2, address arg3, uint256 arg4) {
    require controllerAddress == msg.sender
    require arg4 + balanceOf[address(arg3)] >= balanceOf[address(arg3)]
    balanceOf[address(arg3)] += arg4
    require arg4 <= balanceOf[arg2]
    balanceOf[address(arg2)] = balanceOf[arg2] - arg4
    require arg4 <= allowed[address(arg2)][address(arg1)]
    allowed[address(arg2)][address(arg1)] -= arg4
    return 1
}



}
