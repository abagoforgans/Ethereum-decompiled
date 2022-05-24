contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 sub_074f1ccf;
uint256 sub_a4f38615;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint256 sub_22cba66b;

function name() {
    return name[0 len name.length]
}

function sub_074f1ccf(?) {
    return sub_074f1ccf
}

function totalSupply() {
    return totalSupply
}

function sub_22cba66b(?) {
    return sub_22cba66b[arg1]
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_a4f38615(?) {
    return sub_a4f38615
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function sub_816127a7(?) {
    sub_22cba66b[address(arg1)] = arg2
}

function approve(address arg1, uint256 arg2) {
    if arg2 <= 0:
        revert with 0, 'Value Not Greater Than Zero'
    allowance[msg.sender][address(arg1)] = arg2
    return 1
}

function sub_93f270e8(?) {
    if owner != msg.sender:
        revert with 0, 'Sender Is Not The Owner'
    emit 0xd8871e74: sub_074f1ccf, arg1
    sub_a4f38615 = arg1
    sub_074f1ccf = arg2
}

function sub_6285194e(?) {
    emit 0xc0c7b6d4: address(arg1), arg2
    if arg2:
        sub_22cba66b[address(arg1)] = sub_a4f38615
    else:
        sub_22cba66b[address(arg1)] = sub_074f1ccf
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Sender Is Not The Owner'
    if not arg1:
        revert with 0, 'New Owner Address Is Invalid'
    owner = arg1
}

function burn(uint256 arg1) {
    if arg1 <= 0:
        revert with 0, 'Must Have Valid Value To Send'
    if arg1 > balanceOf[msg.sender]:
        revert with 0, 'Sender Must Have Enough To Send'
    require arg1 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    if arg2 <= 0:
        revert with 0, 'Value Not Greater Than Zero'
    allowance[msg.sender][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.0x8f4ffcb1 with:
         gas gas_remaining wei
        args msg.sender, arg2, this.address, Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    if arg2 <= 0:
        revert with 0, 'Must Have Valid Value To Send'
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 'Sender Must Have Enough To Send'
    require arg2 <= allowance[address(arg1)][msg.sender]
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if owner != msg.sender:
        require block.timestamp >= sub_22cba66b[address(msg.sender)]
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer Value Should Be More Than Zero'
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Balance Should Be More After Transfer'
    if not arg1:
        revert with 0, 'Address Is Null'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sender Does Not Have Enough For Transfer'
    require balanceOf[address(arg1)] + balanceOf[msg.sender] >= balanceOf[msg.sender]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(arg1)] + balanceOf[msg.sender] >= balanceOf[msg.sender]
    require balanceOf[address(arg1)] + balanceOf[msg.sender] == balanceOf[address(arg1)] + balanceOf[msg.sender]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if arg3 <= 0:
        revert with 0, 'Value Should Be More Than Zero'
    if arg3 > allowance[address(arg1)][msg.sender]:
        revert with 0, 'Check Allowance Failed'
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Transfer Value Should Be More Than Zero'
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Balance Should Be More After Transfer'
    if not arg2:
        revert with 0, 'Address Is Null'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Sender Does Not Have Enough For Transfer'
    require balanceOf[address(arg2)] + balanceOf[arg1] >= balanceOf[arg1]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    require balanceOf[address(arg2)] + balanceOf[arg1] >= balanceOf[arg1]
    require balanceOf[address(arg2)] + balanceOf[arg1] == balanceOf[address(arg2)] + balanceOf[arg1]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    return 1
}



}
