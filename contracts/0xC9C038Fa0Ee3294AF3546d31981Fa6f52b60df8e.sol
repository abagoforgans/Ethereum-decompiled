contract main {




// =====================  Runtime code  =====================


const name = 'Brewer's coin 0.3'

const decimals = 18

const symbol = 'BREW'


address owner;
uint256 totalSupply;
mapping of uint256 balances;
mapping of uint256 allowance;

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
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
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    if arg1 > balances[address(msg.sender)]:
        revert with 0, 'Not enough tokens'
    if arg1 > balances[address(msg.sender)]:
        revert with 0, 'Subtraction overflow'
    balances[address(msg.sender)] -= arg1
    if arg1 > totalSupply:
        revert with 0, 'Subtraction overflow'
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), arg2, this.address, 128, arg3.length, arg3[all]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if arg2 > balances[address(msg.sender)]:
        revert with 0, 'Not enough tokens'
    if not arg1:
        revert with 0, 'Address 0 not allowed'
    if arg2 > balances[address(msg.sender)]:
        revert with 0, 'Subtraction overflow'
    balances[address(msg.sender)] -= arg2
    if arg2 + balances[arg1] < balances[arg1]:
        revert with 0, 'Addition overflow'
    balances[address(arg1)] = arg2 + balances[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    if arg2 > allowance[address(arg1)][msg.sender]:
        revert with 0, 'Not enough allowance'
    if arg2 > balances[address(arg1)]:
        revert with 0, 'Not enough tokens'
    if arg2 > balances[address(arg1)]:
        revert with 0, 'Subtraction overflow'
    balances[address(arg1)] -= arg2
    if arg2 > totalSupply:
        revert with 0, 'Subtraction overflow'
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    if arg2 > allowance[address(arg1)][msg.sender]:
        revert with 0, 'Subtraction overflow'
    allowance[address(arg1)][msg.sender] -= arg2
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if arg3 > allowance[address(arg1)][msg.sender]:
        revert with 0, 'Not enough allowance'
    if arg3 > balances[address(arg1)]:
        revert with 0, 'Not enough tokens'
    if not arg2:
        revert with 0, 'Address 0 not allowed'
    if arg3 > balances[address(arg1)]:
        revert with 0, 'Subtraction overflow'
    balances[address(arg1)] -= arg3
    if arg3 + balances[arg2] < balances[arg2]:
        revert with 0, 'Addition overflow'
    balances[address(arg2)] = arg3 + balances[arg2]
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][msg.sender]:
        revert with 0, 'Subtraction overflow'
    allowance[address(arg1)][msg.sender] -= arg3
    return 1
}



}
