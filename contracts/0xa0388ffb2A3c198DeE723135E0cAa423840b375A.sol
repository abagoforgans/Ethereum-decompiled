contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
address stor4;
address stor5;

function _fallback() payable {
    require code.data[3477 len 32] >= block.timestamp
    require code.data[3477 len 32] > code.data[3445 len 32]
    require code.data[3509 len 32] <= 10000 * 10^18
    require address(code.data[3541 len 32])
    stor0 = code.data[3445 len 32]
    stor1 = code.data[3477 len 32]
    stor2 = code.data[3509 len 32]
    create contract with 0 wei
                    code: code.data[212 len 2461]
    require create.new_address
    stor4 = address(create.new_address)
    stor5 = address(code.data[3541 len 32])
    return code.data[2673 len 772]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;
array of uint256 version;
address tokenControllerAddress;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function version() {
    return version[0 len version.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function tokenController() {
    return tokenControllerAddress
}

function _fallback() {
    revert 
}

function sealed() {
    return not bool(tokenControllerAddress)
}

function seal() {
    require tokenControllerAddress == msg.sender
    tokenControllerAddress = 0
    return 1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function createTokens(address arg1, uint256 arg2) {
    require tokenControllerAddress == msg.sender
    require tokenControllerAddress
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[arg1] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
