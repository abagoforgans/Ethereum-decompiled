contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() payable {
    stor1 = msg.sender
    return code.data[49 len 1435]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
address sub_8574cd14Address;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_8574cd14(?) {
    return sub_8574cd14Address
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function sub_814a63ff(?) {
    require sub_8574cd14Address == msg.sender
    if arg1:
        sub_8574cd14Address = arg1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[stor1][address(arg1)]
    allowance[stor1][address(arg1)] = arg2
    emit Approval(arg2, sub_8574cd14Address, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require arg2 <= balanceOf[stor1]
    balanceOf[stor1] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, sub_8574cd14Address, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][stor1]
    allowance[address(arg1)][stor1] -= arg3
    emit Transfer(arg3, arg1, arg2);
}



}
