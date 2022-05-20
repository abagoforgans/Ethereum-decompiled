contract main {




// =====================  Runtime code  =====================


mapping of uint256 sub_68f15a40;
mapping of uint256 allowed;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function sub_68f15a40(?) {
    return sub_68f15a40[arg1]
}

function balanceOf(address arg1) {
    return sub_68f15a40[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowed[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowed[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 > 0
    require arg2 <= sub_68f15a40[msg.sender]
    require sub_68f15a40[address(arg1)] + arg2 >= sub_68f15a40[address(arg1)]
    sub_68f15a40[msg.sender] -= arg2
    sub_68f15a40[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= sub_68f15a40[address(arg1)]
    require allowed[address(arg1)][msg.sender] >= arg3
    require arg3 > 0
    sub_68f15a40[address(arg2)] += arg3
    sub_68f15a40[arg1] -= arg3
    if allowed[address(arg1)][msg.sender] < 511:
        allowed[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
