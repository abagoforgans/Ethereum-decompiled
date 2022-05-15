contract main {




// =====================  Runtime code  =====================


const name = 'TGIF Token'

const decimals = 18

const symbol = 'TGIF'

const INITIAL_SUPPLY = 5000000000 * 10^18


uint256 totalSupply;
uint8 stor3;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 weiRaised;
uint256 tokenAllocated;
uint8 stor8; offset 160
uint128 stor8; offset 160
address owner;

function totalSupply() {
    return totalSupply
}

function weiRaised() {
    return weiRaised
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function tokenAllocated() {
    return tokenAllocated
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

function saleToken() {
    return bool(uint8(stor8.field_160))
}

function stopSale() {
    require msg.sender == owner
    Mask(96, 0, stor8.field_160) = 0
}

function startSale() {
    require msg.sender == owner
    Mask(96, 0, stor8.field_160) = 1
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
    require balanceOf[address(stor8.field_0)] + balanceOf[address(this.address)] >= balanceOf[address(stor8.field_0)]
    balanceOf[address(stor8.field_0)] += balanceOf[address(this.address)]
    emit Transfer(balanceOf[address(this.address)], msg.sender, owner);
    emit Transfer(balanceOf[address(this.address)], this.address, owner);
}

function validPurchaseTokens(uint256 arg1) {
    if arg1 != 2 * 10^15:
        if arg1 != 5 * 10^15:
            if arg1 != 10^16:
                if arg1 != 5 * 10^16:
                    if arg1 != 10^17:
                        if arg1 != 5 * 10^17:
                            if arg1 != 10^18:
                                if 0 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 0);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                        else:
                            if arg1 != 10^18:
                                if 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                    else:
                        if arg1 != 5 * 10^17:
                            if arg1 != 10^18:
                                if 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 1000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 1000000 * 10^18);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                        else:
                            if arg1 != 10^18:
                                if 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                else:
                    if arg1 != 10^17:
                        if arg1 != 5 * 10^17:
                            if arg1 != 10^18:
                                if 500000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 500000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 500000 * 10^18);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                        else:
                            if arg1 != 10^18:
                                if 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                    else:
                        if arg1 != 5 * 10^17:
                            if arg1 != 10^18:
                                if 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 1000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 1000000 * 10^18);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                        else:
                            if arg1 != 10^18:
                                if 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
            else:
                if arg1 != 5 * 10^16:
                    if arg1 != 10^17:
                        if arg1 != 5 * 10^17:
                            if arg1 != 10^18:
                                if 100000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 100000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 100000 * 10^18);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                        else:
                            if arg1 != 10^18:
                                if 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                    else:
                        if arg1 != 5 * 10^17:
                            if arg1 != 10^18:
                                if 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 1000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 1000000 * 10^18);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                        else:
                            if arg1 != 10^18:
                                if 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                else:
                    if arg1 != 10^17:
                        if arg1 != 5 * 10^17:
                            if arg1 != 10^18:
                                if 500000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 500000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 500000 * 10^18);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                        else:
                            if arg1 != 10^18:
                                if 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                    else:
                        if arg1 != 5 * 10^17:
                            if arg1 != 10^18:
                                if 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 1000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 1000000 * 10^18);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                        else:
                            if arg1 != 10^18:
                                if 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
        else:
            if arg1 != 10^16:
                if arg1 != 5 * 10^16:
                    if arg1 != 10^17:
                        if arg1 != 5 * 10^17:
                            if arg1 != 10^18:
                                if 50000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 50000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 50000 * 10^18);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                        else:
                            if arg1 != 10^18:
                                if 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                    else:
                        if arg1 != 5 * 10^17:
                            if arg1 != 10^18:
                                if 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 1000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 1000000 * 10^18);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                        else:
                            if arg1 != 10^18:
                                if 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                else:
                    if arg1 != 10^17:
                        if arg1 != 5 * 10^17:
                            if arg1 != 10^18:
                                if 500000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 500000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 500000 * 10^18);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                        else:
                            if arg1 != 10^18:
                                if 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                    else:
                        if arg1 != 5 * 10^17:
                            if arg1 != 10^18:
                                if 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 1000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 1000000 * 10^18);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                        else:
                            if arg1 != 10^18:
                                if 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
            else:
                if arg1 != 5 * 10^16:
                    if arg1 != 10^17:
                        if arg1 != 5 * 10^17:
                            if arg1 != 10^18:
                                if 100000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 100000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 100000 * 10^18);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                        else:
                            if arg1 != 10^18:
                                if 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                    else:
                        if arg1 != 5 * 10^17:
                            if arg1 != 10^18:
                                if 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 1000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 1000000 * 10^18);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                        else:
                            if arg1 != 10^18:
                                if 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                else:
                    if arg1 != 10^17:
                        if arg1 != 5 * 10^17:
                            if arg1 != 10^18:
                                if 500000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 500000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 500000 * 10^18);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                        else:
                            if arg1 != 10^18:
                                if 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                    else:
                        if arg1 != 5 * 10^17:
                            if arg1 != 10^18:
                                if 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 1000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 1000000 * 10^18);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                        else:
                            if arg1 != 10^18:
                                if 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
    else:
        if arg1 != 5 * 10^15:
            if arg1 != 10^16:
                if arg1 != 5 * 10^16:
                    if arg1 != 10^17:
                        if arg1 != 5 * 10^17:
                            if arg1 != 10^18:
                                if 20000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 20000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 20000 * 10^18);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                        else:
                            if arg1 != 10^18:
                                if 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                    else:
                        if arg1 != 5 * 10^17:
                            if arg1 != 10^18:
                                if 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 1000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 1000000 * 10^18);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                        else:
                            if arg1 != 10^18:
                                if 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                else:
                    if arg1 != 10^17:
                        if arg1 != 5 * 10^17:
                            if arg1 != 10^18:
                                if 500000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 500000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 500000 * 10^18);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                        else:
                            if arg1 != 10^18:
                                if 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                    else:
                        if arg1 != 5 * 10^17:
                            if arg1 != 10^18:
                                if 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 1000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 1000000 * 10^18);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                        else:
                            if arg1 != 10^18:
                                if 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
            else:
                if arg1 != 5 * 10^16:
                    if arg1 != 10^17:
                        if arg1 != 5 * 10^17:
                            if arg1 != 10^18:
                                if 100000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 100000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 100000 * 10^18);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                        else:
                            if arg1 != 10^18:
                                if 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                    else:
                        if arg1 != 5 * 10^17:
                            if arg1 != 10^18:
                                if 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 1000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 1000000 * 10^18);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                        else:
                            if arg1 != 10^18:
                                if 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                else:
                    if arg1 != 10^17:
                        if arg1 != 5 * 10^17:
                            if arg1 != 10^18:
                                if 500000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 500000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 500000 * 10^18);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                        else:
                            if arg1 != 10^18:
                                if 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                    else:
                        if arg1 != 5 * 10^17:
                            if arg1 != 10^18:
                                if 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 1000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 1000000 * 10^18);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                        else:
                            if arg1 != 10^18:
                                if 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
        else:
            if arg1 != 10^16:
                if arg1 != 5 * 10^16:
                    if arg1 != 10^17:
                        if arg1 != 5 * 10^17:
                            if arg1 != 10^18:
                                if 50000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 50000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 50000 * 10^18);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                        else:
                            if arg1 != 10^18:
                                if 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                    else:
                        if arg1 != 5 * 10^17:
                            if arg1 != 10^18:
                                if 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 1000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 1000000 * 10^18);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                        else:
                            if arg1 != 10^18:
                                if 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                else:
                    if arg1 != 10^17:
                        if arg1 != 5 * 10^17:
                            if arg1 != 10^18:
                                if 500000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 500000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 500000 * 10^18);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                        else:
                            if arg1 != 10^18:
                                if 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                    else:
                        if arg1 != 5 * 10^17:
                            if arg1 != 10^18:
                                if 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 1000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 1000000 * 10^18);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                        else:
                            if arg1 != 10^18:
                                if 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
            else:
                if arg1 != 5 * 10^16:
                    if arg1 != 10^17:
                        if arg1 != 5 * 10^17:
                            if arg1 != 10^18:
                                if 100000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 100000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 100000 * 10^18);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                        else:
                            if arg1 != 10^18:
                                if 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                    else:
                        if arg1 != 5 * 10^17:
                            if arg1 != 10^18:
                                if 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 1000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 1000000 * 10^18);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                        else:
                            if arg1 != 10^18:
                                if 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                else:
                    if arg1 != 10^17:
                        if arg1 != 5 * 10^17:
                            if arg1 != 10^18:
                                if 500000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 500000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 500000 * 10^18);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                        else:
                            if arg1 != 10^18:
                                if 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                    else:
                        if arg1 != 5 * 10^17:
                            if arg1 != 10^18:
                                if 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 1000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 1000000 * 10^18);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                        else:
                            if arg1 != 10^18:
                                if 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                            else:
                                if 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 10000000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
    return 0
}

function buyTokens(address arg1) payable {
    require arg1
    require bool(uint8(stor8.field_160)) == 1
    if 2 * 10^15 != msg.value:
        if 5 * 10^15 != msg.value:
            if 10^16 != msg.value:
                if 5 * 10^16 != msg.value:
                    if 10^17 != msg.value:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                require 0 > balanceOf[address(stor8.field_0)]
                                emit TokenLimitReached(tokenAllocated, 0);
                                revert
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require arg1
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 5000000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return 5000000 * 10^18
                    else:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 1000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 1000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 1000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 1000000 * 10^18
                                require arg1
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 1000000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 1000000 * 10^18
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 1000000 * 10^18
                                emit Transfer(1000000 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 1000000 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return 1000000 * 10^18
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require arg1
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 5000000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return 5000000 * 10^18
                else:
                    if 10^17 != msg.value:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 500000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500000 * 10^18 >= tokenAllocated
                                tokenAllocated += 500000 * 10^18
                                require arg1
                                require 500000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 500000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 500000 * 10^18
                                require 500000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500000 * 10^18
                                emit Transfer(500000 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 500000 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return 500000 * 10^18
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require arg1
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 5000000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return 5000000 * 10^18
                    else:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 1000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 1000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 1000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 1000000 * 10^18
                                require arg1
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 1000000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 1000000 * 10^18
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 1000000 * 10^18
                                emit Transfer(1000000 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 1000000 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return 1000000 * 10^18
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require arg1
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 5000000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return 5000000 * 10^18
            else:
                if 5 * 10^16 != msg.value:
                    if 10^17 != msg.value:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 100000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 100000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 100000 * 10^18 >= tokenAllocated
                                tokenAllocated += 100000 * 10^18
                                require arg1
                                require 100000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 100000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 100000 * 10^18
                                require 100000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 100000 * 10^18
                                emit Transfer(100000 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 100000 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return 100000 * 10^18
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require arg1
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 5000000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return 5000000 * 10^18
                    else:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 1000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 1000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 1000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 1000000 * 10^18
                                require arg1
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 1000000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 1000000 * 10^18
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 1000000 * 10^18
                                emit Transfer(1000000 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 1000000 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return 1000000 * 10^18
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require arg1
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 5000000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return 5000000 * 10^18
                else:
                    if 10^17 != msg.value:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 500000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500000 * 10^18 >= tokenAllocated
                                tokenAllocated += 500000 * 10^18
                                require arg1
                                require 500000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 500000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 500000 * 10^18
                                require 500000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500000 * 10^18
                                emit Transfer(500000 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 500000 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return 500000 * 10^18
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require arg1
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 5000000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return 5000000 * 10^18
                    else:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 1000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 1000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 1000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 1000000 * 10^18
                                require arg1
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 1000000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 1000000 * 10^18
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 1000000 * 10^18
                                emit Transfer(1000000 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 1000000 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return 1000000 * 10^18
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require arg1
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 5000000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return 5000000 * 10^18
        else:
            if 10^16 != msg.value:
                if 5 * 10^16 != msg.value:
                    if 10^17 != msg.value:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 50000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 50000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 50000 * 10^18 >= tokenAllocated
                                tokenAllocated += 50000 * 10^18
                                require arg1
                                require 50000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 50000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 50000 * 10^18
                                require 50000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 50000 * 10^18
                                emit Transfer(50000 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 50000 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return 50000 * 10^18
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require arg1
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 5000000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return 5000000 * 10^18
                    else:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 1000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 1000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 1000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 1000000 * 10^18
                                require arg1
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 1000000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 1000000 * 10^18
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 1000000 * 10^18
                                emit Transfer(1000000 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 1000000 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return 1000000 * 10^18
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require arg1
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 5000000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return 5000000 * 10^18
                else:
                    if 10^17 != msg.value:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 500000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500000 * 10^18 >= tokenAllocated
                                tokenAllocated += 500000 * 10^18
                                require arg1
                                require 500000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 500000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 500000 * 10^18
                                require 500000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500000 * 10^18
                                emit Transfer(500000 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 500000 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return 500000 * 10^18
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require arg1
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 5000000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return 5000000 * 10^18
                    else:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 1000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 1000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 1000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 1000000 * 10^18
                                require arg1
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 1000000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 1000000 * 10^18
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 1000000 * 10^18
                                emit Transfer(1000000 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 1000000 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return 1000000 * 10^18
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require arg1
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 5000000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return 5000000 * 10^18
            else:
                if 5 * 10^16 != msg.value:
                    if 10^17 != msg.value:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 100000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 100000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 100000 * 10^18 >= tokenAllocated
                                tokenAllocated += 100000 * 10^18
                                require arg1
                                require 100000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 100000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 100000 * 10^18
                                require 100000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 100000 * 10^18
                                emit Transfer(100000 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 100000 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return 100000 * 10^18
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require arg1
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 5000000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return 5000000 * 10^18
                    else:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 1000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 1000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 1000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 1000000 * 10^18
                                require arg1
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 1000000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 1000000 * 10^18
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 1000000 * 10^18
                                emit Transfer(1000000 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 1000000 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return 1000000 * 10^18
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require arg1
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 5000000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return 5000000 * 10^18
                else:
                    if 10^17 != msg.value:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 500000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500000 * 10^18 >= tokenAllocated
                                tokenAllocated += 500000 * 10^18
                                require arg1
                                require 500000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 500000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 500000 * 10^18
                                require 500000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500000 * 10^18
                                emit Transfer(500000 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 500000 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return 500000 * 10^18
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require arg1
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 5000000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return 5000000 * 10^18
                    else:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 1000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 1000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 1000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 1000000 * 10^18
                                require arg1
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 1000000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 1000000 * 10^18
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 1000000 * 10^18
                                emit Transfer(1000000 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 1000000 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return 1000000 * 10^18
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require arg1
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 5000000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return 5000000 * 10^18
    else:
        if 5 * 10^15 != msg.value:
            if 10^16 != msg.value:
                if 5 * 10^16 != msg.value:
                    if 10^17 != msg.value:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 20000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 20000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 20000 * 10^18 >= tokenAllocated
                                tokenAllocated += 20000 * 10^18
                                require arg1
                                require 20000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 20000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 20000 * 10^18
                                require 20000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 20000 * 10^18
                                emit Transfer(20000 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 20000 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return 20000 * 10^18
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require arg1
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 5000000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return 5000000 * 10^18
                    else:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 1000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 1000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 1000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 1000000 * 10^18
                                require arg1
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 1000000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 1000000 * 10^18
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 1000000 * 10^18
                                emit Transfer(1000000 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 1000000 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return 1000000 * 10^18
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require arg1
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 5000000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return 5000000 * 10^18
                else:
                    if 10^17 != msg.value:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 500000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500000 * 10^18 >= tokenAllocated
                                tokenAllocated += 500000 * 10^18
                                require arg1
                                require 500000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 500000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 500000 * 10^18
                                require 500000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500000 * 10^18
                                emit Transfer(500000 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 500000 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return 500000 * 10^18
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require arg1
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 5000000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return 5000000 * 10^18
                    else:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 1000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 1000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 1000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 1000000 * 10^18
                                require arg1
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 1000000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 1000000 * 10^18
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 1000000 * 10^18
                                emit Transfer(1000000 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 1000000 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return 1000000 * 10^18
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require arg1
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 5000000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return 5000000 * 10^18
            else:
                if 5 * 10^16 != msg.value:
                    if 10^17 != msg.value:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 100000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 100000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 100000 * 10^18 >= tokenAllocated
                                tokenAllocated += 100000 * 10^18
                                require arg1
                                require 100000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 100000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 100000 * 10^18
                                require 100000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 100000 * 10^18
                                emit Transfer(100000 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 100000 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return 100000 * 10^18
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require arg1
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 5000000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return 5000000 * 10^18
                    else:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 1000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 1000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 1000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 1000000 * 10^18
                                require arg1
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 1000000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 1000000 * 10^18
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 1000000 * 10^18
                                emit Transfer(1000000 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 1000000 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return 1000000 * 10^18
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require arg1
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 5000000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return 5000000 * 10^18
                else:
                    if 10^17 != msg.value:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 500000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500000 * 10^18 >= tokenAllocated
                                tokenAllocated += 500000 * 10^18
                                require arg1
                                require 500000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 500000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 500000 * 10^18
                                require 500000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500000 * 10^18
                                emit Transfer(500000 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 500000 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return 500000 * 10^18
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require arg1
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 5000000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return 5000000 * 10^18
                    else:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 1000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 1000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 1000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 1000000 * 10^18
                                require arg1
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 1000000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 1000000 * 10^18
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 1000000 * 10^18
                                emit Transfer(1000000 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 1000000 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return 1000000 * 10^18
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require arg1
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 5000000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return 5000000 * 10^18
        else:
            if 10^16 != msg.value:
                if 5 * 10^16 != msg.value:
                    if 10^17 != msg.value:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 50000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 50000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 50000 * 10^18 >= tokenAllocated
                                tokenAllocated += 50000 * 10^18
                                require arg1
                                require 50000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 50000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 50000 * 10^18
                                require 50000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 50000 * 10^18
                                emit Transfer(50000 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 50000 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return 50000 * 10^18
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require arg1
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 5000000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return 5000000 * 10^18
                    else:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 1000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 1000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 1000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 1000000 * 10^18
                                require arg1
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 1000000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 1000000 * 10^18
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 1000000 * 10^18
                                emit Transfer(1000000 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 1000000 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return 1000000 * 10^18
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require arg1
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 5000000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return 5000000 * 10^18
                else:
                    if 10^17 != msg.value:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 500000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500000 * 10^18 >= tokenAllocated
                                tokenAllocated += 500000 * 10^18
                                require arg1
                                require 500000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 500000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 500000 * 10^18
                                require 500000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500000 * 10^18
                                emit Transfer(500000 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 500000 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return 500000 * 10^18
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require arg1
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 5000000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return 5000000 * 10^18
                    else:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 1000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 1000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 1000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 1000000 * 10^18
                                require arg1
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 1000000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 1000000 * 10^18
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 1000000 * 10^18
                                emit Transfer(1000000 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 1000000 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return 1000000 * 10^18
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require arg1
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 5000000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return 5000000 * 10^18
            else:
                if 5 * 10^16 != msg.value:
                    if 10^17 != msg.value:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 100000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 100000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 100000 * 10^18 >= tokenAllocated
                                tokenAllocated += 100000 * 10^18
                                require arg1
                                require 100000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 100000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 100000 * 10^18
                                require 100000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 100000 * 10^18
                                emit Transfer(100000 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 100000 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return 100000 * 10^18
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require arg1
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 5000000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return 5000000 * 10^18
                    else:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 1000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 1000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 1000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 1000000 * 10^18
                                require arg1
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 1000000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 1000000 * 10^18
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 1000000 * 10^18
                                emit Transfer(1000000 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 1000000 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return 1000000 * 10^18
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require arg1
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 5000000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return 5000000 * 10^18
                else:
                    if 10^17 != msg.value:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 500000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500000 * 10^18 >= tokenAllocated
                                tokenAllocated += 500000 * 10^18
                                require arg1
                                require 500000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 500000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 500000 * 10^18
                                require 500000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500000 * 10^18
                                emit Transfer(500000 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 500000 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return 500000 * 10^18
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require arg1
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 5000000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return 5000000 * 10^18
                    else:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 1000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 1000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 1000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 1000000 * 10^18
                                require arg1
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 1000000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 1000000 * 10^18
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 1000000 * 10^18
                                emit Transfer(1000000 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 1000000 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return 1000000 * 10^18
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require arg1
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 5000000 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                return 5000000 * 10^18
    ('eq', 'callvalue', 1000000000000000000)
    if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
        emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
        revert
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
    tokenAllocated += 10000000 * 10^18
    require arg1
    require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
    require balanceOf[address(arg1)] + 10000000 * 10^18 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += 10000000 * 10^18
    require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
    balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
    emit Transfer(10000000 * 10^18, owner, arg1);
    emit TokenPurchase(msg.value, 10000000 * 10^18, arg1);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 10000000 * 10^18
}

function _fallback() payable {
    require msg.sender
    require bool(uint8(stor8.field_160)) == 1
    if 2 * 10^15 != msg.value:
        if 5 * 10^15 != msg.value:
            if 10^16 != msg.value:
                if 5 * 10^16 != msg.value:
                    if 10^17 != msg.value:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                require 0 > balanceOf[address(stor8.field_0)]
                                emit TokenLimitReached(tokenAllocated, 0);
                                revert
                            if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                revert
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                            tokenAllocated += 10000000 * 10^18
                            require msg.sender
                            require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                            require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 10000000 * 10^18
                            require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                            balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                            emit Transfer(10000000 * 10^18, owner, msg.sender);
                            emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require msg.sender
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, msg.sender);
                            else:
                                if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 10000000 * 10^18
                                require msg.sender
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10000000 * 10^18
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                                emit Transfer(10000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
                    else:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 1000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 1000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 1000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 1000000 * 10^18
                                require msg.sender
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 1000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 1000000 * 10^18
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 1000000 * 10^18
                                emit Transfer(1000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 1000000 * 10^18, msg.sender);
                            else:
                                if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 10000000 * 10^18
                                require msg.sender
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10000000 * 10^18
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                                emit Transfer(10000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require msg.sender
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, msg.sender);
                            else:
                                if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 10000000 * 10^18
                                require msg.sender
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10000000 * 10^18
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                                emit Transfer(10000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
                else:
                    if 10^17 != msg.value:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 500000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500000 * 10^18 >= tokenAllocated
                                tokenAllocated += 500000 * 10^18
                                require msg.sender
                                require 500000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 500000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 500000 * 10^18
                                require 500000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500000 * 10^18
                                emit Transfer(500000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 500000 * 10^18, msg.sender);
                            else:
                                if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 10000000 * 10^18
                                require msg.sender
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10000000 * 10^18
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                                emit Transfer(10000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require msg.sender
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, msg.sender);
                            else:
                                if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 10000000 * 10^18
                                require msg.sender
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10000000 * 10^18
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                                emit Transfer(10000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
                    else:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 1000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 1000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 1000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 1000000 * 10^18
                                require msg.sender
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 1000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 1000000 * 10^18
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 1000000 * 10^18
                                emit Transfer(1000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 1000000 * 10^18, msg.sender);
                            else:
                                if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 10000000 * 10^18
                                require msg.sender
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10000000 * 10^18
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                                emit Transfer(10000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require msg.sender
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, msg.sender);
                            else:
                                if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 10000000 * 10^18
                                require msg.sender
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10000000 * 10^18
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                                emit Transfer(10000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
            else:
                if 5 * 10^16 != msg.value:
                    if 10^17 != msg.value:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 100000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 100000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 100000 * 10^18 >= tokenAllocated
                                tokenAllocated += 100000 * 10^18
                                require msg.sender
                                require 100000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 100000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 100000 * 10^18
                                require 100000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 100000 * 10^18
                                emit Transfer(100000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 100000 * 10^18, msg.sender);
                            else:
                                if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 10000000 * 10^18
                                require msg.sender
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10000000 * 10^18
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                                emit Transfer(10000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require msg.sender
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, msg.sender);
                            else:
                                if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 10000000 * 10^18
                                require msg.sender
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10000000 * 10^18
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                                emit Transfer(10000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
                    else:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 1000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 1000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 1000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 1000000 * 10^18
                                require msg.sender
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 1000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 1000000 * 10^18
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 1000000 * 10^18
                                emit Transfer(1000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 1000000 * 10^18, msg.sender);
                            else:
                                if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 10000000 * 10^18
                                require msg.sender
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10000000 * 10^18
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                                emit Transfer(10000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require msg.sender
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, msg.sender);
                            else:
                                if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 10000000 * 10^18
                                require msg.sender
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10000000 * 10^18
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                                emit Transfer(10000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
                else:
                    if 10^17 != msg.value:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 500000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500000 * 10^18 >= tokenAllocated
                                tokenAllocated += 500000 * 10^18
                                require msg.sender
                                require 500000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 500000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 500000 * 10^18
                                require 500000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500000 * 10^18
                                emit Transfer(500000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 500000 * 10^18, msg.sender);
                            else:
                                if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 10000000 * 10^18
                                require msg.sender
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10000000 * 10^18
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                                emit Transfer(10000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require msg.sender
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, msg.sender);
                            else:
                                if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 10000000 * 10^18
                                require msg.sender
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10000000 * 10^18
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                                emit Transfer(10000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
                    else:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 1000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 1000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 1000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 1000000 * 10^18
                                require msg.sender
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 1000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 1000000 * 10^18
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 1000000 * 10^18
                                emit Transfer(1000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 1000000 * 10^18, msg.sender);
                            else:
                                if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 10000000 * 10^18
                                require msg.sender
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10000000 * 10^18
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                                emit Transfer(10000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require msg.sender
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, msg.sender);
                            else:
                                if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 10000000 * 10^18
                                require msg.sender
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10000000 * 10^18
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                                emit Transfer(10000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
        else:
            if 10^16 != msg.value:
                if 5 * 10^16 != msg.value:
                    if 10^17 != msg.value:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 50000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 50000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 50000 * 10^18 >= tokenAllocated
                                tokenAllocated += 50000 * 10^18
                                require msg.sender
                                require 50000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 50000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 50000 * 10^18
                                require 50000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 50000 * 10^18
                                emit Transfer(50000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 50000 * 10^18, msg.sender);
                            else:
                                if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 10000000 * 10^18
                                require msg.sender
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10000000 * 10^18
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                                emit Transfer(10000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require msg.sender
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, msg.sender);
                            else:
                                if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 10000000 * 10^18
                                require msg.sender
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10000000 * 10^18
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                                emit Transfer(10000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
                    else:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 1000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 1000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 1000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 1000000 * 10^18
                                require msg.sender
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 1000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 1000000 * 10^18
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 1000000 * 10^18
                                emit Transfer(1000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 1000000 * 10^18, msg.sender);
                            else:
                                if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 10000000 * 10^18
                                require msg.sender
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10000000 * 10^18
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                                emit Transfer(10000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require msg.sender
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, msg.sender);
                            else:
                                if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 10000000 * 10^18
                                require msg.sender
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10000000 * 10^18
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                                emit Transfer(10000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
                else:
                    if 10^17 != msg.value:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 500000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500000 * 10^18 >= tokenAllocated
                                tokenAllocated += 500000 * 10^18
                                require msg.sender
                                require 500000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 500000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 500000 * 10^18
                                require 500000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500000 * 10^18
                                emit Transfer(500000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 500000 * 10^18, msg.sender);
                            else:
                                if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 10000000 * 10^18
                                require msg.sender
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10000000 * 10^18
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                                emit Transfer(10000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require msg.sender
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, msg.sender);
                            else:
                                if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 10000000 * 10^18
                                require msg.sender
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10000000 * 10^18
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                                emit Transfer(10000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
                    else:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 1000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 1000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 1000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 1000000 * 10^18
                                require msg.sender
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 1000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 1000000 * 10^18
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 1000000 * 10^18
                                emit Transfer(1000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 1000000 * 10^18, msg.sender);
                            else:
                                if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 10000000 * 10^18
                                require msg.sender
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10000000 * 10^18
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                                emit Transfer(10000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require msg.sender
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, msg.sender);
                            else:
                                if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 10000000 * 10^18
                                require msg.sender
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10000000 * 10^18
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                                emit Transfer(10000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
            else:
                if 5 * 10^16 != msg.value:
                    if 10^17 != msg.value:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 100000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 100000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 100000 * 10^18 >= tokenAllocated
                                tokenAllocated += 100000 * 10^18
                                require msg.sender
                                require 100000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 100000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 100000 * 10^18
                                require 100000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 100000 * 10^18
                                emit Transfer(100000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 100000 * 10^18, msg.sender);
                            else:
                                if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 10000000 * 10^18
                                require msg.sender
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10000000 * 10^18
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                                emit Transfer(10000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require msg.sender
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, msg.sender);
                            else:
                                if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 10000000 * 10^18
                                require msg.sender
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10000000 * 10^18
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                                emit Transfer(10000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
                    else:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 1000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 1000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 1000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 1000000 * 10^18
                                require msg.sender
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 1000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 1000000 * 10^18
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 1000000 * 10^18
                                emit Transfer(1000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 1000000 * 10^18, msg.sender);
                            else:
                                if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 10000000 * 10^18
                                require msg.sender
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10000000 * 10^18
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                                emit Transfer(10000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require msg.sender
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, msg.sender);
                            else:
                                if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 10000000 * 10^18
                                require msg.sender
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10000000 * 10^18
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                                emit Transfer(10000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
                else:
                    if 10^17 != msg.value:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 500000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500000 * 10^18 >= tokenAllocated
                                tokenAllocated += 500000 * 10^18
                                require msg.sender
                                require 500000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 500000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 500000 * 10^18
                                require 500000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500000 * 10^18
                                emit Transfer(500000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 500000 * 10^18, msg.sender);
                            else:
                                if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 10000000 * 10^18
                                require msg.sender
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10000000 * 10^18
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                                emit Transfer(10000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require msg.sender
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, msg.sender);
                            else:
                                if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 10000000 * 10^18
                                require msg.sender
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10000000 * 10^18
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                                emit Transfer(10000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
                    else:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 1000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 1000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 1000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 1000000 * 10^18
                                require msg.sender
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 1000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 1000000 * 10^18
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 1000000 * 10^18
                                emit Transfer(1000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 1000000 * 10^18, msg.sender);
                            else:
                                if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 10000000 * 10^18
                                require msg.sender
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10000000 * 10^18
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                                emit Transfer(10000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require msg.sender
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, msg.sender);
                            else:
                                if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 10000000 * 10^18
                                require msg.sender
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10000000 * 10^18
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                                emit Transfer(10000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
    else:
        if 5 * 10^15 != msg.value:
            if 10^16 != msg.value:
                if 5 * 10^16 != msg.value:
                    if 10^17 != msg.value:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 20000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 20000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 20000 * 10^18 >= tokenAllocated
                                tokenAllocated += 20000 * 10^18
                                require msg.sender
                                require 20000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 20000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 20000 * 10^18
                                require 20000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 20000 * 10^18
                                emit Transfer(20000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 20000 * 10^18, msg.sender);
                            else:
                                if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 10000000 * 10^18
                                require msg.sender
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10000000 * 10^18
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                                emit Transfer(10000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require msg.sender
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, msg.sender);
                            else:
                                if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 10000000 * 10^18
                                require msg.sender
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10000000 * 10^18
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                                emit Transfer(10000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
                    else:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 1000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 1000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 1000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 1000000 * 10^18
                                require msg.sender
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 1000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 1000000 * 10^18
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 1000000 * 10^18
                                emit Transfer(1000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 1000000 * 10^18, msg.sender);
                            else:
                                if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 10000000 * 10^18
                                require msg.sender
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10000000 * 10^18
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                                emit Transfer(10000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require msg.sender
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, msg.sender);
                            else:
                                if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 10000000 * 10^18
                                require msg.sender
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10000000 * 10^18
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                                emit Transfer(10000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
                else:
                    if 10^17 != msg.value:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 500000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500000 * 10^18 >= tokenAllocated
                                tokenAllocated += 500000 * 10^18
                                require msg.sender
                                require 500000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 500000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 500000 * 10^18
                                require 500000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500000 * 10^18
                                emit Transfer(500000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 500000 * 10^18, msg.sender);
                            else:
                                if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 10000000 * 10^18
                                require msg.sender
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10000000 * 10^18
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                                emit Transfer(10000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require msg.sender
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, msg.sender);
                            else:
                                if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 10000000 * 10^18
                                require msg.sender
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10000000 * 10^18
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                                emit Transfer(10000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
                    else:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 1000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 1000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 1000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 1000000 * 10^18
                                require msg.sender
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 1000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 1000000 * 10^18
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 1000000 * 10^18
                                emit Transfer(1000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 1000000 * 10^18, msg.sender);
                            else:
                                if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 10000000 * 10^18
                                require msg.sender
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10000000 * 10^18
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                                emit Transfer(10000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require msg.sender
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, msg.sender);
                            else:
                                if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 10000000 * 10^18
                                require msg.sender
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10000000 * 10^18
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                                emit Transfer(10000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
            else:
                if 5 * 10^16 != msg.value:
                    if 10^17 != msg.value:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 100000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 100000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 100000 * 10^18 >= tokenAllocated
                                tokenAllocated += 100000 * 10^18
                                require msg.sender
                                require 100000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 100000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 100000 * 10^18
                                require 100000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 100000 * 10^18
                                emit Transfer(100000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 100000 * 10^18, msg.sender);
                            else:
                                if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 10000000 * 10^18
                                require msg.sender
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10000000 * 10^18
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                                emit Transfer(10000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require msg.sender
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, msg.sender);
                            else:
                                if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 10000000 * 10^18
                                require msg.sender
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10000000 * 10^18
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                                emit Transfer(10000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
                    else:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 1000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 1000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 1000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 1000000 * 10^18
                                require msg.sender
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 1000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 1000000 * 10^18
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 1000000 * 10^18
                                emit Transfer(1000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 1000000 * 10^18, msg.sender);
                            else:
                                if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 10000000 * 10^18
                                require msg.sender
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10000000 * 10^18
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                                emit Transfer(10000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require msg.sender
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, msg.sender);
                            else:
                                if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 10000000 * 10^18
                                require msg.sender
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10000000 * 10^18
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                                emit Transfer(10000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
                else:
                    if 10^17 != msg.value:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 500000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500000 * 10^18 >= tokenAllocated
                                tokenAllocated += 500000 * 10^18
                                require msg.sender
                                require 500000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 500000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 500000 * 10^18
                                require 500000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500000 * 10^18
                                emit Transfer(500000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 500000 * 10^18, msg.sender);
                            else:
                                if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 10000000 * 10^18
                                require msg.sender
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10000000 * 10^18
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                                emit Transfer(10000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require msg.sender
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, msg.sender);
                            else:
                                if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 10000000 * 10^18
                                require msg.sender
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10000000 * 10^18
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                                emit Transfer(10000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
                    else:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 1000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 1000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 1000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 1000000 * 10^18
                                require msg.sender
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 1000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 1000000 * 10^18
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 1000000 * 10^18
                                emit Transfer(1000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 1000000 * 10^18, msg.sender);
                            else:
                                if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 10000000 * 10^18
                                require msg.sender
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10000000 * 10^18
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                                emit Transfer(10000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require msg.sender
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, msg.sender);
                            else:
                                if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 10000000 * 10^18
                                require msg.sender
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10000000 * 10^18
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                                emit Transfer(10000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
        else:
            if 10^16 != msg.value:
                if 5 * 10^16 != msg.value:
                    if 10^17 != msg.value:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 50000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 50000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 50000 * 10^18 >= tokenAllocated
                                tokenAllocated += 50000 * 10^18
                                require msg.sender
                                require 50000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 50000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 50000 * 10^18
                                require 50000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 50000 * 10^18
                                emit Transfer(50000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 50000 * 10^18, msg.sender);
                            else:
                                if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 10000000 * 10^18
                                require msg.sender
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10000000 * 10^18
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                                emit Transfer(10000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require msg.sender
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, msg.sender);
                            else:
                                if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 10000000 * 10^18
                                require msg.sender
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10000000 * 10^18
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                                emit Transfer(10000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
                    else:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 1000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 1000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 1000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 1000000 * 10^18
                                require msg.sender
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 1000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 1000000 * 10^18
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 1000000 * 10^18
                                emit Transfer(1000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 1000000 * 10^18, msg.sender);
                            else:
                                if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 10000000 * 10^18
                                require msg.sender
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10000000 * 10^18
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                                emit Transfer(10000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require msg.sender
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, msg.sender);
                            else:
                                if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 10000000 * 10^18
                                require msg.sender
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10000000 * 10^18
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                                emit Transfer(10000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
                else:
                    if 10^17 != msg.value:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 500000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500000 * 10^18 >= tokenAllocated
                                tokenAllocated += 500000 * 10^18
                                require msg.sender
                                require 500000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 500000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 500000 * 10^18
                                require 500000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500000 * 10^18
                                emit Transfer(500000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 500000 * 10^18, msg.sender);
                            else:
                                if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 10000000 * 10^18
                                require msg.sender
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10000000 * 10^18
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                                emit Transfer(10000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require msg.sender
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, msg.sender);
                            else:
                                if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 10000000 * 10^18
                                require msg.sender
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10000000 * 10^18
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                                emit Transfer(10000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
                    else:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 1000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 1000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 1000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 1000000 * 10^18
                                require msg.sender
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 1000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 1000000 * 10^18
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 1000000 * 10^18
                                emit Transfer(1000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 1000000 * 10^18, msg.sender);
                            else:
                                if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 10000000 * 10^18
                                require msg.sender
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10000000 * 10^18
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                                emit Transfer(10000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require msg.sender
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, msg.sender);
                            else:
                                if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 10000000 * 10^18
                                require msg.sender
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10000000 * 10^18
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                                emit Transfer(10000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
            else:
                if 5 * 10^16 != msg.value:
                    if 10^17 != msg.value:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 100000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 100000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 100000 * 10^18 >= tokenAllocated
                                tokenAllocated += 100000 * 10^18
                                require msg.sender
                                require 100000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 100000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 100000 * 10^18
                                require 100000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 100000 * 10^18
                                emit Transfer(100000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 100000 * 10^18, msg.sender);
                            else:
                                if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 10000000 * 10^18
                                require msg.sender
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10000000 * 10^18
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                                emit Transfer(10000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require msg.sender
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, msg.sender);
                            else:
                                if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 10000000 * 10^18
                                require msg.sender
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10000000 * 10^18
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                                emit Transfer(10000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
                    else:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 1000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 1000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 1000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 1000000 * 10^18
                                require msg.sender
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 1000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 1000000 * 10^18
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 1000000 * 10^18
                                emit Transfer(1000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 1000000 * 10^18, msg.sender);
                            else:
                                if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 10000000 * 10^18
                                require msg.sender
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10000000 * 10^18
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                                emit Transfer(10000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require msg.sender
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, msg.sender);
                            else:
                                if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 10000000 * 10^18
                                require msg.sender
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10000000 * 10^18
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                                emit Transfer(10000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
                else:
                    if 10^17 != msg.value:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 500000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500000 * 10^18 >= tokenAllocated
                                tokenAllocated += 500000 * 10^18
                                require msg.sender
                                require 500000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 500000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 500000 * 10^18
                                require 500000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500000 * 10^18
                                emit Transfer(500000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 500000 * 10^18, msg.sender);
                            else:
                                if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 10000000 * 10^18
                                require msg.sender
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10000000 * 10^18
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                                emit Transfer(10000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require msg.sender
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, msg.sender);
                            else:
                                if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 10000000 * 10^18
                                require msg.sender
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10000000 * 10^18
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                                emit Transfer(10000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
                    else:
                        if 5 * 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 1000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 1000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 1000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 1000000 * 10^18
                                require msg.sender
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 1000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 1000000 * 10^18
                                require 1000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 1000000 * 10^18
                                emit Transfer(1000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 1000000 * 10^18, msg.sender);
                            else:
                                if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 10000000 * 10^18
                                require msg.sender
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10000000 * 10^18
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                                emit Transfer(10000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
                        else:
                            if 10^18 != msg.value:
                                if 5000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000000 * 10^18
                                require msg.sender
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000000 * 10^18
                                require 5000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000000 * 10^18
                                emit Transfer(5000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000000 * 10^18, msg.sender);
                            else:
                                if 10000000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 10000000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 10000000 * 10^18 >= tokenAllocated
                                tokenAllocated += 10000000 * 10^18
                                require msg.sender
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 10000000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 10000000 * 10^18
                                require 10000000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 10000000 * 10^18
                                emit Transfer(10000000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 10000000 * 10^18, msg.sender);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
