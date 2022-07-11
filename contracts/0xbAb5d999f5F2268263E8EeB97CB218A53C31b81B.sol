contract main {




// =====================  Runtime code  =====================


const name = 'Planetagro'

const decimals = 18

const symbol = 'AVOCADO'

const INITIAL_SUPPLY = 100000000 * 10^18


uint256 totalSupply;
uint8 stor3;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function transfersEnabled() {
    return bool(stor3)
}

function allowance(address arg1, address arg2) {
    require calldata.size == 68
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function enableTransfers(bool arg1) {
    require msg.sender == owner
    stor3 = uint8(arg1)
}

function changeOwner(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnerChanged(owner, arg1);
    owner = arg1
    return 1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size == 68
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require stor3
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size == 100
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require stor3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function claimTokens() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require calldata.size == 68
    require owner
    require balanceOf[address(this.address)] <= balanceOf[address(msg.sender)]
    require stor3
    require balanceOf[address(this.address)] <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= balanceOf[address(this.address)]
    require balanceOf[stor6] + balanceOf[address(this.address)] >= balanceOf[stor6]
    balanceOf[stor6] += balanceOf[address(this.address)]
    emit Transfer(balanceOf[address(this.address)], msg.sender, owner);
    emit Transfer(balanceOf[address(this.address)], this.address, owner);
}



}
