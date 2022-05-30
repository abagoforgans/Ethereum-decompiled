contract main {


// =======================  Init code  ======================


uint256 stor2;
uint8 stor3;
mapping of uint256 stor4;
uint256 stor7;
uint128 stor8; offset 160
address stor8;

function _fallback() payable {
    Mask(96, 0, stor8.field_160) = 1
    require not msg.value
    stor2 = 2500000000 * 10^18
    address(stor8.field_0) = code.data[8399 len 20]
    stor4[address(stor8.field_0)] = 2500000000 * 10^18
    stor7 = 0
    stor3 = 1
    return code.data[321 len 8066]
}



// =====================  Runtime code  =====================


const name = 'Maia'

const decimals = 18

const symbol = 'MAIA'

const INITIAL_SUPPLY = 2500000000 * 10^18


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
    require ext_call.success
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
    if arg1:
        if arg1 != 10^15:
            if arg1 != 5 * 10^15:
                if arg1 != 10^16:
                    if arg1 != 5 * 10^16:
                        if arg1 != 10^17:
                            if arg1 != 10^18:
                                if 0 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 0);
                            else:
                                if 5000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                        else:
                            if arg1 != 10^18:
                                if 500 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 500 * 10^18
                                emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                            else:
                                if 5000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                    else:
                        if arg1 != 10^17:
                            if arg1 != 10^18:
                                if 250 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 250 * 10^18
                                emit TokenLimitReached(tokenAllocated, 250 * 10^18);
                            else:
                                if 5000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                        else:
                            if arg1 != 10^18:
                                if 500 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 500 * 10^18
                                emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                            else:
                                if 5000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                else:
                    if arg1 != 5 * 10^16:
                        if arg1 != 10^17:
                            if arg1 != 10^18:
                                if 50 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 50 * 10^18
                                emit TokenLimitReached(tokenAllocated, 50 * 10^18);
                            else:
                                if 5000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                        else:
                            if arg1 != 10^18:
                                if 500 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 500 * 10^18
                                emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                            else:
                                if 5000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                    else:
                        if arg1 != 10^17:
                            if arg1 != 10^18:
                                if 250 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 250 * 10^18
                                emit TokenLimitReached(tokenAllocated, 250 * 10^18);
                            else:
                                if 5000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                        else:
                            if arg1 != 10^18:
                                if 500 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 500 * 10^18
                                emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                            else:
                                if 5000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
            else:
                if arg1 != 10^16:
                    if arg1 != 5 * 10^16:
                        if arg1 != 10^17:
                            if arg1 != 10^18:
                                if 25 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 25 * 10^18
                                emit TokenLimitReached(tokenAllocated, 25 * 10^18);
                            else:
                                if 5000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                        else:
                            if arg1 != 10^18:
                                if 500 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 500 * 10^18
                                emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                            else:
                                if 5000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                    else:
                        if arg1 != 10^17:
                            if arg1 != 10^18:
                                if 250 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 250 * 10^18
                                emit TokenLimitReached(tokenAllocated, 250 * 10^18);
                            else:
                                if 5000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                        else:
                            if arg1 != 10^18:
                                if 500 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 500 * 10^18
                                emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                            else:
                                if 5000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                else:
                    if arg1 != 5 * 10^16:
                        if arg1 != 10^17:
                            if arg1 != 10^18:
                                if 50 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 50 * 10^18
                                emit TokenLimitReached(tokenAllocated, 50 * 10^18);
                            else:
                                if 5000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                        else:
                            if arg1 != 10^18:
                                if 500 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 500 * 10^18
                                emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                            else:
                                if 5000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                    else:
                        if arg1 != 10^17:
                            if arg1 != 10^18:
                                if 250 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 250 * 10^18
                                emit TokenLimitReached(tokenAllocated, 250 * 10^18);
                            else:
                                if 5000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                        else:
                            if arg1 != 10^18:
                                if 500 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 500 * 10^18
                                emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                            else:
                                if 5000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
        else:
            if arg1 != 5 * 10^15:
                if arg1 != 10^16:
                    if arg1 != 5 * 10^16:
                        if arg1 != 10^17:
                            if arg1 != 10^18:
                                if 5 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5 * 10^18);
                            else:
                                if 5000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                        else:
                            if arg1 != 10^18:
                                if 500 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 500 * 10^18
                                emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                            else:
                                if 5000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                    else:
                        if arg1 != 10^17:
                            if arg1 != 10^18:
                                if 250 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 250 * 10^18
                                emit TokenLimitReached(tokenAllocated, 250 * 10^18);
                            else:
                                if 5000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                        else:
                            if arg1 != 10^18:
                                if 500 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 500 * 10^18
                                emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                            else:
                                if 5000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                else:
                    if arg1 != 5 * 10^16:
                        if arg1 != 10^17:
                            if arg1 != 10^18:
                                if 50 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 50 * 10^18
                                emit TokenLimitReached(tokenAllocated, 50 * 10^18);
                            else:
                                if 5000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                        else:
                            if arg1 != 10^18:
                                if 500 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 500 * 10^18
                                emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                            else:
                                if 5000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                    else:
                        if arg1 != 10^17:
                            if arg1 != 10^18:
                                if 250 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 250 * 10^18
                                emit TokenLimitReached(tokenAllocated, 250 * 10^18);
                            else:
                                if 5000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                        else:
                            if arg1 != 10^18:
                                if 500 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 500 * 10^18
                                emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                            else:
                                if 5000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
            else:
                if arg1 != 10^16:
                    if arg1 != 5 * 10^16:
                        if arg1 != 10^17:
                            if arg1 != 10^18:
                                if 25 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 25 * 10^18
                                emit TokenLimitReached(tokenAllocated, 25 * 10^18);
                            else:
                                if 5000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                        else:
                            if arg1 != 10^18:
                                if 500 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 500 * 10^18
                                emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                            else:
                                if 5000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                    else:
                        if arg1 != 10^17:
                            if arg1 != 10^18:
                                if 250 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 250 * 10^18
                                emit TokenLimitReached(tokenAllocated, 250 * 10^18);
                            else:
                                if 5000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                        else:
                            if arg1 != 10^18:
                                if 500 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 500 * 10^18
                                emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                            else:
                                if 5000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                else:
                    if arg1 != 5 * 10^16:
                        if arg1 != 10^17:
                            if arg1 != 10^18:
                                if 50 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 50 * 10^18
                                emit TokenLimitReached(tokenAllocated, 50 * 10^18);
                            else:
                                if 5000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                        else:
                            if arg1 != 10^18:
                                if 500 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 500 * 10^18
                                emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                            else:
                                if 5000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                    else:
                        if arg1 != 10^17:
                            if arg1 != 10^18:
                                if 250 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 250 * 10^18
                                emit TokenLimitReached(tokenAllocated, 250 * 10^18);
                            else:
                                if 5000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                        else:
                            if arg1 != 10^18:
                                if 500 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 500 * 10^18
                                emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                            else:
                                if 5000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
    else:
        if arg1 != 10^15:
            if arg1 != 5 * 10^15:
                if arg1 != 5 * 10^16:
                    if arg1 != 10^17:
                        if arg1 != 10^18:
                            if 50 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                return 50 * 10^18
                            emit TokenLimitReached(tokenAllocated, 50 * 10^18);
                        else:
                            if 5000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                return 5000 * 10^18
                            emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                    else:
                        if arg1 != 10^18:
                            if 500 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                return 500 * 10^18
                            emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                        else:
                            if 5000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                return 5000 * 10^18
                            emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                else:
                    if arg1 != 10^17:
                        if arg1 != 10^18:
                            if 250 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                return 250 * 10^18
                            emit TokenLimitReached(tokenAllocated, 250 * 10^18);
                        else:
                            if 5000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                return 5000 * 10^18
                            emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                    else:
                        if arg1 != 10^18:
                            if 500 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                return 500 * 10^18
                            emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                        else:
                            if 5000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                return 5000 * 10^18
                            emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
            else:
                if arg1 != 10^16:
                    if arg1 != 5 * 10^16:
                        if arg1 != 10^17:
                            if arg1 != 10^18:
                                if 25 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 25 * 10^18
                                emit TokenLimitReached(tokenAllocated, 25 * 10^18);
                            else:
                                if 5000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                        else:
                            if arg1 != 10^18:
                                if 500 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 500 * 10^18
                                emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                            else:
                                if 5000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                    else:
                        if arg1 != 10^17:
                            if arg1 != 10^18:
                                if 250 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 250 * 10^18
                                emit TokenLimitReached(tokenAllocated, 250 * 10^18);
                            else:
                                if 5000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                        else:
                            if arg1 != 10^18:
                                if 500 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 500 * 10^18
                                emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                            else:
                                if 5000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                else:
                    if arg1 != 5 * 10^16:
                        if arg1 != 10^17:
                            if arg1 != 10^18:
                                if 50 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 50 * 10^18
                                emit TokenLimitReached(tokenAllocated, 50 * 10^18);
                            else:
                                if 5000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                        else:
                            if arg1 != 10^18:
                                if 500 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 500 * 10^18
                                emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                            else:
                                if 5000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                    else:
                        if arg1 != 10^17:
                            if arg1 != 10^18:
                                if 250 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 250 * 10^18
                                emit TokenLimitReached(tokenAllocated, 250 * 10^18);
                            else:
                                if 5000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                        else:
                            if arg1 != 10^18:
                                if 500 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 500 * 10^18
                                emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                            else:
                                if 5000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
        else:
            if arg1 != 5 * 10^15:
                if arg1 != 10^16:
                    if arg1 != 5 * 10^16:
                        if arg1 != 10^17:
                            if arg1 != 10^18:
                                if 5 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5 * 10^18);
                            else:
                                if 5000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                        else:
                            if arg1 != 10^18:
                                if 500 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 500 * 10^18
                                emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                            else:
                                if 5000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                    else:
                        if arg1 != 10^17:
                            if arg1 != 10^18:
                                if 250 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 250 * 10^18
                                emit TokenLimitReached(tokenAllocated, 250 * 10^18);
                            else:
                                if 5000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                        else:
                            if arg1 != 10^18:
                                if 500 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 500 * 10^18
                                emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                            else:
                                if 5000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                else:
                    if arg1 != 5 * 10^16:
                        if arg1 != 10^17:
                            if arg1 != 10^18:
                                if 50 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 50 * 10^18
                                emit TokenLimitReached(tokenAllocated, 50 * 10^18);
                            else:
                                if 5000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                        else:
                            if arg1 != 10^18:
                                if 500 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 500 * 10^18
                                emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                            else:
                                if 5000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                    else:
                        if arg1 != 10^17:
                            if arg1 != 10^18:
                                if 250 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 250 * 10^18
                                emit TokenLimitReached(tokenAllocated, 250 * 10^18);
                            else:
                                if 5000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                        else:
                            if arg1 != 10^18:
                                if 500 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 500 * 10^18
                                emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                            else:
                                if 5000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
            else:
                if arg1 != 10^16:
                    if arg1 != 5 * 10^16:
                        if arg1 != 10^17:
                            if arg1 != 10^18:
                                if 25 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 25 * 10^18
                                emit TokenLimitReached(tokenAllocated, 25 * 10^18);
                            else:
                                if 5000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                        else:
                            if arg1 != 10^18:
                                if 500 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 500 * 10^18
                                emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                            else:
                                if 5000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                    else:
                        if arg1 != 10^17:
                            if arg1 != 10^18:
                                if 250 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 250 * 10^18
                                emit TokenLimitReached(tokenAllocated, 250 * 10^18);
                            else:
                                if 5000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                        else:
                            if arg1 != 10^18:
                                if 500 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 500 * 10^18
                                emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                            else:
                                if 5000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                else:
                    if arg1 != 5 * 10^16:
                        if arg1 != 10^17:
                            if arg1 != 10^18:
                                if 50 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 50 * 10^18
                                emit TokenLimitReached(tokenAllocated, 50 * 10^18);
                            else:
                                if 5000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                        else:
                            if arg1 != 10^18:
                                if 500 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 500 * 10^18
                                emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                            else:
                                if 5000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                    else:
                        if arg1 != 10^17:
                            if arg1 != 10^18:
                                if 250 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 250 * 10^18
                                emit TokenLimitReached(tokenAllocated, 250 * 10^18);
                            else:
                                if 5000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                        else:
                            if arg1 != 10^18:
                                if 500 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 500 * 10^18
                                emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                            else:
                                if 5000 * 10^18 <= balanceOf[address(stor8.field_0)]:
                                    return 5000 * 10^18
                                emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
    return 0
}

function buyTokens(address arg1) payable {
    require arg1
    require bool(uint8(stor8.field_160)) == 1
    if msg.value:
        if 10^15 != msg.value:
            if 5 * 10^15 != msg.value:
                if 10^16 != msg.value:
                    if 5 * 10^16 != msg.value:
                        if 10^17 != msg.value:
                            if 10^18 != msg.value:
                                require 0 > balanceOf[address(stor8.field_0)]
                                emit TokenLimitReached(tokenAllocated, 0);
                                revert
                        else:
                            if 10^18 != msg.value:
                                if 500 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500 * 10^18 >= tokenAllocated
                                tokenAllocated += 500 * 10^18
                                require arg1
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 500 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 500 * 10^18
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500 * 10^18
                                emit Transfer(500 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 500 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                return 500 * 10^18
                    else:
                        if 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 250 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 250 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 250 * 10^18 >= tokenAllocated
                                tokenAllocated += 250 * 10^18
                                require arg1
                                require 250 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 250 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 250 * 10^18
                                require 250 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 250 * 10^18
                                emit Transfer(250 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 250 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                return 250 * 10^18
                        else:
                            if 10^18 != msg.value:
                                if 500 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500 * 10^18 >= tokenAllocated
                                tokenAllocated += 500 * 10^18
                                require arg1
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 500 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 500 * 10^18
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500 * 10^18
                                emit Transfer(500 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 500 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                return 500 * 10^18
                else:
                    if 5 * 10^16 != msg.value:
                        if 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 50 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 50 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 50 * 10^18 >= tokenAllocated
                                tokenAllocated += 50 * 10^18
                                require arg1
                                require 50 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 50 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 50 * 10^18
                                require 50 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 50 * 10^18
                                emit Transfer(50 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 50 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                return 50 * 10^18
                        else:
                            if 10^18 != msg.value:
                                if 500 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500 * 10^18 >= tokenAllocated
                                tokenAllocated += 500 * 10^18
                                require arg1
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 500 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 500 * 10^18
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500 * 10^18
                                emit Transfer(500 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 500 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                return 500 * 10^18
                    else:
                        if 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 250 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 250 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 250 * 10^18 >= tokenAllocated
                                tokenAllocated += 250 * 10^18
                                require arg1
                                require 250 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 250 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 250 * 10^18
                                require 250 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 250 * 10^18
                                emit Transfer(250 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 250 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                return 250 * 10^18
                        else:
                            if 10^18 != msg.value:
                                if 500 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500 * 10^18 >= tokenAllocated
                                tokenAllocated += 500 * 10^18
                                require arg1
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 500 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 500 * 10^18
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500 * 10^18
                                emit Transfer(500 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 500 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                return 500 * 10^18
            else:
                if 10^16 != msg.value:
                    if 5 * 10^16 != msg.value:
                        if 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 25 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 25 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 25 * 10^18 >= tokenAllocated
                                tokenAllocated += 25 * 10^18
                                require arg1
                                require 25 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 25 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 25 * 10^18
                                require 25 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 25 * 10^18
                                emit Transfer(25 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 25 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                return 25 * 10^18
                        else:
                            if 10^18 != msg.value:
                                if 500 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500 * 10^18 >= tokenAllocated
                                tokenAllocated += 500 * 10^18
                                require arg1
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 500 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 500 * 10^18
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500 * 10^18
                                emit Transfer(500 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 500 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                return 500 * 10^18
                    else:
                        if 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 250 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 250 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 250 * 10^18 >= tokenAllocated
                                tokenAllocated += 250 * 10^18
                                require arg1
                                require 250 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 250 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 250 * 10^18
                                require 250 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 250 * 10^18
                                emit Transfer(250 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 250 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                return 250 * 10^18
                        else:
                            if 10^18 != msg.value:
                                if 500 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500 * 10^18 >= tokenAllocated
                                tokenAllocated += 500 * 10^18
                                require arg1
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 500 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 500 * 10^18
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500 * 10^18
                                emit Transfer(500 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 500 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                return 500 * 10^18
                else:
                    if 5 * 10^16 != msg.value:
                        if 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 50 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 50 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 50 * 10^18 >= tokenAllocated
                                tokenAllocated += 50 * 10^18
                                require arg1
                                require 50 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 50 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 50 * 10^18
                                require 50 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 50 * 10^18
                                emit Transfer(50 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 50 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                return 50 * 10^18
                        else:
                            if 10^18 != msg.value:
                                if 500 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500 * 10^18 >= tokenAllocated
                                tokenAllocated += 500 * 10^18
                                require arg1
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 500 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 500 * 10^18
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500 * 10^18
                                emit Transfer(500 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 500 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                return 500 * 10^18
                    else:
                        if 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 250 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 250 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 250 * 10^18 >= tokenAllocated
                                tokenAllocated += 250 * 10^18
                                require arg1
                                require 250 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 250 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 250 * 10^18
                                require 250 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 250 * 10^18
                                emit Transfer(250 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 250 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                return 250 * 10^18
                        else:
                            if 10^18 != msg.value:
                                if 500 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500 * 10^18 >= tokenAllocated
                                tokenAllocated += 500 * 10^18
                                require arg1
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 500 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 500 * 10^18
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500 * 10^18
                                emit Transfer(500 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 500 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                return 500 * 10^18
        else:
            if 5 * 10^15 != msg.value:
                if 10^16 != msg.value:
                    if 5 * 10^16 != msg.value:
                        if 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 5 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5 * 10^18 >= tokenAllocated
                                tokenAllocated += 5 * 10^18
                                require arg1
                                require 5 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 5 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 5 * 10^18
                                require 5 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5 * 10^18
                                emit Transfer(5 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 5 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                return 5 * 10^18
                        else:
                            if 10^18 != msg.value:
                                if 500 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500 * 10^18 >= tokenAllocated
                                tokenAllocated += 500 * 10^18
                                require arg1
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 500 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 500 * 10^18
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500 * 10^18
                                emit Transfer(500 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 500 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                return 500 * 10^18
                    else:
                        if 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 250 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 250 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 250 * 10^18 >= tokenAllocated
                                tokenAllocated += 250 * 10^18
                                require arg1
                                require 250 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 250 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 250 * 10^18
                                require 250 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 250 * 10^18
                                emit Transfer(250 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 250 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                return 250 * 10^18
                        else:
                            if 10^18 != msg.value:
                                if 500 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500 * 10^18 >= tokenAllocated
                                tokenAllocated += 500 * 10^18
                                require arg1
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 500 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 500 * 10^18
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500 * 10^18
                                emit Transfer(500 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 500 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                return 500 * 10^18
                else:
                    if 5 * 10^16 != msg.value:
                        if 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 50 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 50 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 50 * 10^18 >= tokenAllocated
                                tokenAllocated += 50 * 10^18
                                require arg1
                                require 50 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 50 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 50 * 10^18
                                require 50 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 50 * 10^18
                                emit Transfer(50 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 50 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                return 50 * 10^18
                        else:
                            if 10^18 != msg.value:
                                if 500 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500 * 10^18 >= tokenAllocated
                                tokenAllocated += 500 * 10^18
                                require arg1
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 500 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 500 * 10^18
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500 * 10^18
                                emit Transfer(500 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 500 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                return 500 * 10^18
                    else:
                        if 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 250 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 250 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 250 * 10^18 >= tokenAllocated
                                tokenAllocated += 250 * 10^18
                                require arg1
                                require 250 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 250 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 250 * 10^18
                                require 250 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 250 * 10^18
                                emit Transfer(250 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 250 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                return 250 * 10^18
                        else:
                            if 10^18 != msg.value:
                                if 500 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500 * 10^18 >= tokenAllocated
                                tokenAllocated += 500 * 10^18
                                require arg1
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 500 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 500 * 10^18
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500 * 10^18
                                emit Transfer(500 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 500 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                return 500 * 10^18
            else:
                if 10^16 != msg.value:
                    if 5 * 10^16 != msg.value:
                        if 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 25 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 25 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 25 * 10^18 >= tokenAllocated
                                tokenAllocated += 25 * 10^18
                                require arg1
                                require 25 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 25 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 25 * 10^18
                                require 25 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 25 * 10^18
                                emit Transfer(25 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 25 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                return 25 * 10^18
                        else:
                            if 10^18 != msg.value:
                                if 500 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500 * 10^18 >= tokenAllocated
                                tokenAllocated += 500 * 10^18
                                require arg1
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 500 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 500 * 10^18
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500 * 10^18
                                emit Transfer(500 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 500 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                return 500 * 10^18
                    else:
                        if 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 250 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 250 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 250 * 10^18 >= tokenAllocated
                                tokenAllocated += 250 * 10^18
                                require arg1
                                require 250 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 250 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 250 * 10^18
                                require 250 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 250 * 10^18
                                emit Transfer(250 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 250 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                return 250 * 10^18
                        else:
                            if 10^18 != msg.value:
                                if 500 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500 * 10^18 >= tokenAllocated
                                tokenAllocated += 500 * 10^18
                                require arg1
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 500 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 500 * 10^18
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500 * 10^18
                                emit Transfer(500 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 500 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                return 500 * 10^18
                else:
                    if 5 * 10^16 != msg.value:
                        if 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 50 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 50 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 50 * 10^18 >= tokenAllocated
                                tokenAllocated += 50 * 10^18
                                require arg1
                                require 50 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 50 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 50 * 10^18
                                require 50 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 50 * 10^18
                                emit Transfer(50 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 50 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                return 50 * 10^18
                        else:
                            if 10^18 != msg.value:
                                if 500 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500 * 10^18 >= tokenAllocated
                                tokenAllocated += 500 * 10^18
                                require arg1
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 500 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 500 * 10^18
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500 * 10^18
                                emit Transfer(500 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 500 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                return 500 * 10^18
                    else:
                        if 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 250 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 250 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 250 * 10^18 >= tokenAllocated
                                tokenAllocated += 250 * 10^18
                                require arg1
                                require 250 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 250 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 250 * 10^18
                                require 250 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 250 * 10^18
                                emit Transfer(250 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 250 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                return 250 * 10^18
                        else:
                            if 10^18 != msg.value:
                                if 500 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500 * 10^18 >= tokenAllocated
                                tokenAllocated += 500 * 10^18
                                require arg1
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 500 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 500 * 10^18
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500 * 10^18
                                emit Transfer(500 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 500 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                return 500 * 10^18
    else:
        if 10^15 != msg.value:
            if 5 * 10^15 != msg.value:
                if 5 * 10^16 != msg.value:
                    if 10^17 != msg.value:
                        if 10^18 != msg.value:
                            if 50 * 10^18 > balanceOf[address(stor8.field_0)]:
                                emit TokenLimitReached(tokenAllocated, 50 * 10^18);
                                revert
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require tokenAllocated + 50 * 10^18 >= tokenAllocated
                            tokenAllocated += 50 * 10^18
                            require arg1
                            require 50 * 10^18 <= balanceOf[address(stor8.field_0)]
                            require balanceOf[address(arg1)] + 50 * 10^18 >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] += 50 * 10^18
                            require 50 * 10^18 <= balanceOf[address(stor8.field_0)]
                            balanceOf[address(stor8.field_0)] -= 50 * 10^18
                            emit Transfer(50 * 10^18, owner, arg1);
                            emit TokenPurchase(msg.value, 50 * 10^18, arg1);
                            call owner with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            return 50 * 10^18
                    else:
                        if 10^18 != msg.value:
                            if 500 * 10^18 > balanceOf[address(stor8.field_0)]:
                                emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                                revert
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require tokenAllocated + 500 * 10^18 >= tokenAllocated
                            tokenAllocated += 500 * 10^18
                            require arg1
                            require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                            require balanceOf[address(arg1)] + 500 * 10^18 >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] += 500 * 10^18
                            require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                            balanceOf[address(stor8.field_0)] -= 500 * 10^18
                            emit Transfer(500 * 10^18, owner, arg1);
                            emit TokenPurchase(msg.value, 500 * 10^18, arg1);
                            call owner with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            return 500 * 10^18
                else:
                    if 10^17 != msg.value:
                        if 10^18 != msg.value:
                            if 250 * 10^18 > balanceOf[address(stor8.field_0)]:
                                emit TokenLimitReached(tokenAllocated, 250 * 10^18);
                                revert
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require tokenAllocated + 250 * 10^18 >= tokenAllocated
                            tokenAllocated += 250 * 10^18
                            require arg1
                            require 250 * 10^18 <= balanceOf[address(stor8.field_0)]
                            require balanceOf[address(arg1)] + 250 * 10^18 >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] += 250 * 10^18
                            require 250 * 10^18 <= balanceOf[address(stor8.field_0)]
                            balanceOf[address(stor8.field_0)] -= 250 * 10^18
                            emit Transfer(250 * 10^18, owner, arg1);
                            emit TokenPurchase(msg.value, 250 * 10^18, arg1);
                            call owner with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            return 250 * 10^18
                    else:
                        if 10^18 != msg.value:
                            if 500 * 10^18 > balanceOf[address(stor8.field_0)]:
                                emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                                revert
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require tokenAllocated + 500 * 10^18 >= tokenAllocated
                            tokenAllocated += 500 * 10^18
                            require arg1
                            require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                            require balanceOf[address(arg1)] + 500 * 10^18 >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] += 500 * 10^18
                            require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                            balanceOf[address(stor8.field_0)] -= 500 * 10^18
                            emit Transfer(500 * 10^18, owner, arg1);
                            emit TokenPurchase(msg.value, 500 * 10^18, arg1);
                            call owner with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            return 500 * 10^18
            else:
                if 10^16 != msg.value:
                    if 5 * 10^16 != msg.value:
                        if 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 25 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 25 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 25 * 10^18 >= tokenAllocated
                                tokenAllocated += 25 * 10^18
                                require arg1
                                require 25 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 25 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 25 * 10^18
                                require 25 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 25 * 10^18
                                emit Transfer(25 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 25 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                return 25 * 10^18
                        else:
                            if 10^18 != msg.value:
                                if 500 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500 * 10^18 >= tokenAllocated
                                tokenAllocated += 500 * 10^18
                                require arg1
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 500 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 500 * 10^18
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500 * 10^18
                                emit Transfer(500 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 500 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                return 500 * 10^18
                    else:
                        if 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 250 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 250 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 250 * 10^18 >= tokenAllocated
                                tokenAllocated += 250 * 10^18
                                require arg1
                                require 250 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 250 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 250 * 10^18
                                require 250 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 250 * 10^18
                                emit Transfer(250 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 250 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                return 250 * 10^18
                        else:
                            if 10^18 != msg.value:
                                if 500 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500 * 10^18 >= tokenAllocated
                                tokenAllocated += 500 * 10^18
                                require arg1
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 500 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 500 * 10^18
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500 * 10^18
                                emit Transfer(500 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 500 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                return 500 * 10^18
                else:
                    if 5 * 10^16 != msg.value:
                        if 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 50 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 50 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 50 * 10^18 >= tokenAllocated
                                tokenAllocated += 50 * 10^18
                                require arg1
                                require 50 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 50 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 50 * 10^18
                                require 50 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 50 * 10^18
                                emit Transfer(50 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 50 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                return 50 * 10^18
                        else:
                            if 10^18 != msg.value:
                                if 500 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500 * 10^18 >= tokenAllocated
                                tokenAllocated += 500 * 10^18
                                require arg1
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 500 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 500 * 10^18
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500 * 10^18
                                emit Transfer(500 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 500 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                return 500 * 10^18
                    else:
                        if 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 250 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 250 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 250 * 10^18 >= tokenAllocated
                                tokenAllocated += 250 * 10^18
                                require arg1
                                require 250 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 250 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 250 * 10^18
                                require 250 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 250 * 10^18
                                emit Transfer(250 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 250 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                return 250 * 10^18
                        else:
                            if 10^18 != msg.value:
                                if 500 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500 * 10^18 >= tokenAllocated
                                tokenAllocated += 500 * 10^18
                                require arg1
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 500 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 500 * 10^18
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500 * 10^18
                                emit Transfer(500 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 500 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                return 500 * 10^18
        else:
            if 5 * 10^15 != msg.value:
                if 10^16 != msg.value:
                    if 5 * 10^16 != msg.value:
                        if 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 5 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5 * 10^18 >= tokenAllocated
                                tokenAllocated += 5 * 10^18
                                require arg1
                                require 5 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 5 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 5 * 10^18
                                require 5 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5 * 10^18
                                emit Transfer(5 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 5 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                return 5 * 10^18
                        else:
                            if 10^18 != msg.value:
                                if 500 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500 * 10^18 >= tokenAllocated
                                tokenAllocated += 500 * 10^18
                                require arg1
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 500 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 500 * 10^18
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500 * 10^18
                                emit Transfer(500 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 500 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                return 500 * 10^18
                    else:
                        if 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 250 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 250 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 250 * 10^18 >= tokenAllocated
                                tokenAllocated += 250 * 10^18
                                require arg1
                                require 250 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 250 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 250 * 10^18
                                require 250 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 250 * 10^18
                                emit Transfer(250 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 250 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                return 250 * 10^18
                        else:
                            if 10^18 != msg.value:
                                if 500 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500 * 10^18 >= tokenAllocated
                                tokenAllocated += 500 * 10^18
                                require arg1
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 500 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 500 * 10^18
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500 * 10^18
                                emit Transfer(500 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 500 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                return 500 * 10^18
                else:
                    if 5 * 10^16 != msg.value:
                        if 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 50 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 50 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 50 * 10^18 >= tokenAllocated
                                tokenAllocated += 50 * 10^18
                                require arg1
                                require 50 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 50 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 50 * 10^18
                                require 50 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 50 * 10^18
                                emit Transfer(50 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 50 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                return 50 * 10^18
                        else:
                            if 10^18 != msg.value:
                                if 500 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500 * 10^18 >= tokenAllocated
                                tokenAllocated += 500 * 10^18
                                require arg1
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 500 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 500 * 10^18
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500 * 10^18
                                emit Transfer(500 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 500 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                return 500 * 10^18
                    else:
                        if 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 250 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 250 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 250 * 10^18 >= tokenAllocated
                                tokenAllocated += 250 * 10^18
                                require arg1
                                require 250 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 250 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 250 * 10^18
                                require 250 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 250 * 10^18
                                emit Transfer(250 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 250 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                return 250 * 10^18
                        else:
                            if 10^18 != msg.value:
                                if 500 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500 * 10^18 >= tokenAllocated
                                tokenAllocated += 500 * 10^18
                                require arg1
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 500 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 500 * 10^18
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500 * 10^18
                                emit Transfer(500 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 500 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                return 500 * 10^18
            else:
                if 10^16 != msg.value:
                    if 5 * 10^16 != msg.value:
                        if 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 25 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 25 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 25 * 10^18 >= tokenAllocated
                                tokenAllocated += 25 * 10^18
                                require arg1
                                require 25 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 25 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 25 * 10^18
                                require 25 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 25 * 10^18
                                emit Transfer(25 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 25 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                return 25 * 10^18
                        else:
                            if 10^18 != msg.value:
                                if 500 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500 * 10^18 >= tokenAllocated
                                tokenAllocated += 500 * 10^18
                                require arg1
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 500 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 500 * 10^18
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500 * 10^18
                                emit Transfer(500 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 500 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                return 500 * 10^18
                    else:
                        if 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 250 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 250 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 250 * 10^18 >= tokenAllocated
                                tokenAllocated += 250 * 10^18
                                require arg1
                                require 250 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 250 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 250 * 10^18
                                require 250 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 250 * 10^18
                                emit Transfer(250 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 250 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                return 250 * 10^18
                        else:
                            if 10^18 != msg.value:
                                if 500 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500 * 10^18 >= tokenAllocated
                                tokenAllocated += 500 * 10^18
                                require arg1
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 500 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 500 * 10^18
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500 * 10^18
                                emit Transfer(500 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 500 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                return 500 * 10^18
                else:
                    if 5 * 10^16 != msg.value:
                        if 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 50 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 50 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 50 * 10^18 >= tokenAllocated
                                tokenAllocated += 50 * 10^18
                                require arg1
                                require 50 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 50 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 50 * 10^18
                                require 50 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 50 * 10^18
                                emit Transfer(50 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 50 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                return 50 * 10^18
                        else:
                            if 10^18 != msg.value:
                                if 500 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500 * 10^18 >= tokenAllocated
                                tokenAllocated += 500 * 10^18
                                require arg1
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 500 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 500 * 10^18
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500 * 10^18
                                emit Transfer(500 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 500 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                return 500 * 10^18
                    else:
                        if 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 250 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 250 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 250 * 10^18 >= tokenAllocated
                                tokenAllocated += 250 * 10^18
                                require arg1
                                require 250 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 250 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 250 * 10^18
                                require 250 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 250 * 10^18
                                emit Transfer(250 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 250 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                return 250 * 10^18
                        else:
                            if 10^18 != msg.value:
                                if 500 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500 * 10^18 >= tokenAllocated
                                tokenAllocated += 500 * 10^18
                                require arg1
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(arg1)] + 500 * 10^18 >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 500 * 10^18
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500 * 10^18
                                emit Transfer(500 * 10^18, owner, arg1);
                                emit TokenPurchase(msg.value, 500 * 10^18, arg1);
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                return 500 * 10^18
    ('eq', 'callvalue', 1000000000000000000)
    if 5000 * 10^18 > balanceOf[address(stor8.field_0)]:
        emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
        revert
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require tokenAllocated + 5000 * 10^18 >= tokenAllocated
    tokenAllocated += 5000 * 10^18
    require arg1
    require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
    require balanceOf[address(arg1)] + 5000 * 10^18 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += 5000 * 10^18
    require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
    balanceOf[address(stor8.field_0)] -= 5000 * 10^18
    emit Transfer(5000 * 10^18, owner, arg1);
    emit TokenPurchase(msg.value, 5000 * 10^18, arg1);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 5000 * 10^18
}

function _fallback() payable {
    require msg.sender
    require bool(uint8(stor8.field_160)) == 1
    if msg.value:
        if 10^15 != msg.value:
            if 5 * 10^15 != msg.value:
                if 10^16 != msg.value:
                    if 5 * 10^16 != msg.value:
                        if 10^17 != msg.value:
                            if 10^18 != msg.value:
                                require 0 > balanceOf[address(stor8.field_0)]
                                emit TokenLimitReached(tokenAllocated, 0);
                                revert
                            if 5000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                                revert
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require tokenAllocated + 5000 * 10^18 >= tokenAllocated
                            tokenAllocated += 5000 * 10^18
                            require msg.sender
                            require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                            require balanceOf[address(msg.sender)] + 5000 * 10^18 >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 5000 * 10^18
                            require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                            balanceOf[address(stor8.field_0)] -= 5000 * 10^18
                            emit Transfer(5000 * 10^18, owner, msg.sender);
                            emit TokenPurchase(msg.value, 5000 * 10^18, msg.sender);
                        else:
                            if 10^18 != msg.value:
                                if 500 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500 * 10^18 >= tokenAllocated
                                tokenAllocated += 500 * 10^18
                                require msg.sender
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 500 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 500 * 10^18
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500 * 10^18
                                emit Transfer(500 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 500 * 10^18, msg.sender);
                            else:
                                if 5000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000 * 10^18
                                require msg.sender
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000 * 10^18
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000 * 10^18
                                emit Transfer(5000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000 * 10^18, msg.sender);
                    else:
                        if 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 250 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 250 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 250 * 10^18 >= tokenAllocated
                                tokenAllocated += 250 * 10^18
                                require msg.sender
                                require 250 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 250 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 250 * 10^18
                                require 250 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 250 * 10^18
                                emit Transfer(250 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 250 * 10^18, msg.sender);
                            else:
                                if 5000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000 * 10^18
                                require msg.sender
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000 * 10^18
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000 * 10^18
                                emit Transfer(5000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000 * 10^18, msg.sender);
                        else:
                            if 10^18 != msg.value:
                                if 500 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500 * 10^18 >= tokenAllocated
                                tokenAllocated += 500 * 10^18
                                require msg.sender
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 500 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 500 * 10^18
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500 * 10^18
                                emit Transfer(500 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 500 * 10^18, msg.sender);
                            else:
                                if 5000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000 * 10^18
                                require msg.sender
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000 * 10^18
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000 * 10^18
                                emit Transfer(5000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000 * 10^18, msg.sender);
                else:
                    if 5 * 10^16 != msg.value:
                        if 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 50 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 50 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 50 * 10^18 >= tokenAllocated
                                tokenAllocated += 50 * 10^18
                                require msg.sender
                                require 50 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 50 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 50 * 10^18
                                require 50 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 50 * 10^18
                                emit Transfer(50 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 50 * 10^18, msg.sender);
                            else:
                                if 5000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000 * 10^18
                                require msg.sender
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000 * 10^18
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000 * 10^18
                                emit Transfer(5000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000 * 10^18, msg.sender);
                        else:
                            if 10^18 != msg.value:
                                if 500 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500 * 10^18 >= tokenAllocated
                                tokenAllocated += 500 * 10^18
                                require msg.sender
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 500 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 500 * 10^18
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500 * 10^18
                                emit Transfer(500 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 500 * 10^18, msg.sender);
                            else:
                                if 5000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000 * 10^18
                                require msg.sender
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000 * 10^18
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000 * 10^18
                                emit Transfer(5000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000 * 10^18, msg.sender);
                    else:
                        if 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 250 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 250 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 250 * 10^18 >= tokenAllocated
                                tokenAllocated += 250 * 10^18
                                require msg.sender
                                require 250 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 250 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 250 * 10^18
                                require 250 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 250 * 10^18
                                emit Transfer(250 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 250 * 10^18, msg.sender);
                            else:
                                if 5000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000 * 10^18
                                require msg.sender
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000 * 10^18
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000 * 10^18
                                emit Transfer(5000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000 * 10^18, msg.sender);
                        else:
                            if 10^18 != msg.value:
                                if 500 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500 * 10^18 >= tokenAllocated
                                tokenAllocated += 500 * 10^18
                                require msg.sender
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 500 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 500 * 10^18
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500 * 10^18
                                emit Transfer(500 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 500 * 10^18, msg.sender);
                            else:
                                if 5000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000 * 10^18
                                require msg.sender
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000 * 10^18
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000 * 10^18
                                emit Transfer(5000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000 * 10^18, msg.sender);
            else:
                if 10^16 != msg.value:
                    if 5 * 10^16 != msg.value:
                        if 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 25 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 25 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 25 * 10^18 >= tokenAllocated
                                tokenAllocated += 25 * 10^18
                                require msg.sender
                                require 25 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 25 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 25 * 10^18
                                require 25 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 25 * 10^18
                                emit Transfer(25 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 25 * 10^18, msg.sender);
                            else:
                                if 5000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000 * 10^18
                                require msg.sender
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000 * 10^18
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000 * 10^18
                                emit Transfer(5000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000 * 10^18, msg.sender);
                        else:
                            if 10^18 != msg.value:
                                if 500 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500 * 10^18 >= tokenAllocated
                                tokenAllocated += 500 * 10^18
                                require msg.sender
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 500 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 500 * 10^18
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500 * 10^18
                                emit Transfer(500 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 500 * 10^18, msg.sender);
                            else:
                                if 5000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000 * 10^18
                                require msg.sender
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000 * 10^18
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000 * 10^18
                                emit Transfer(5000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000 * 10^18, msg.sender);
                    else:
                        if 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 250 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 250 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 250 * 10^18 >= tokenAllocated
                                tokenAllocated += 250 * 10^18
                                require msg.sender
                                require 250 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 250 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 250 * 10^18
                                require 250 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 250 * 10^18
                                emit Transfer(250 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 250 * 10^18, msg.sender);
                            else:
                                if 5000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000 * 10^18
                                require msg.sender
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000 * 10^18
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000 * 10^18
                                emit Transfer(5000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000 * 10^18, msg.sender);
                        else:
                            if 10^18 != msg.value:
                                if 500 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500 * 10^18 >= tokenAllocated
                                tokenAllocated += 500 * 10^18
                                require msg.sender
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 500 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 500 * 10^18
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500 * 10^18
                                emit Transfer(500 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 500 * 10^18, msg.sender);
                            else:
                                if 5000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000 * 10^18
                                require msg.sender
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000 * 10^18
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000 * 10^18
                                emit Transfer(5000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000 * 10^18, msg.sender);
                else:
                    if 5 * 10^16 != msg.value:
                        if 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 50 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 50 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 50 * 10^18 >= tokenAllocated
                                tokenAllocated += 50 * 10^18
                                require msg.sender
                                require 50 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 50 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 50 * 10^18
                                require 50 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 50 * 10^18
                                emit Transfer(50 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 50 * 10^18, msg.sender);
                            else:
                                if 5000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000 * 10^18
                                require msg.sender
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000 * 10^18
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000 * 10^18
                                emit Transfer(5000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000 * 10^18, msg.sender);
                        else:
                            if 10^18 != msg.value:
                                if 500 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500 * 10^18 >= tokenAllocated
                                tokenAllocated += 500 * 10^18
                                require msg.sender
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 500 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 500 * 10^18
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500 * 10^18
                                emit Transfer(500 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 500 * 10^18, msg.sender);
                            else:
                                if 5000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000 * 10^18
                                require msg.sender
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000 * 10^18
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000 * 10^18
                                emit Transfer(5000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000 * 10^18, msg.sender);
                    else:
                        if 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 250 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 250 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 250 * 10^18 >= tokenAllocated
                                tokenAllocated += 250 * 10^18
                                require msg.sender
                                require 250 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 250 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 250 * 10^18
                                require 250 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 250 * 10^18
                                emit Transfer(250 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 250 * 10^18, msg.sender);
                            else:
                                if 5000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000 * 10^18
                                require msg.sender
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000 * 10^18
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000 * 10^18
                                emit Transfer(5000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000 * 10^18, msg.sender);
                        else:
                            if 10^18 != msg.value:
                                if 500 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500 * 10^18 >= tokenAllocated
                                tokenAllocated += 500 * 10^18
                                require msg.sender
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 500 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 500 * 10^18
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500 * 10^18
                                emit Transfer(500 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 500 * 10^18, msg.sender);
                            else:
                                if 5000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000 * 10^18
                                require msg.sender
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000 * 10^18
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000 * 10^18
                                emit Transfer(5000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000 * 10^18, msg.sender);
        else:
            if 5 * 10^15 != msg.value:
                if 10^16 != msg.value:
                    if 5 * 10^16 != msg.value:
                        if 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 5 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5 * 10^18 >= tokenAllocated
                                tokenAllocated += 5 * 10^18
                                require msg.sender
                                require 5 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5 * 10^18
                                require 5 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5 * 10^18
                                emit Transfer(5 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5 * 10^18, msg.sender);
                            else:
                                if 5000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000 * 10^18
                                require msg.sender
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000 * 10^18
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000 * 10^18
                                emit Transfer(5000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000 * 10^18, msg.sender);
                        else:
                            if 10^18 != msg.value:
                                if 500 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500 * 10^18 >= tokenAllocated
                                tokenAllocated += 500 * 10^18
                                require msg.sender
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 500 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 500 * 10^18
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500 * 10^18
                                emit Transfer(500 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 500 * 10^18, msg.sender);
                            else:
                                if 5000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000 * 10^18
                                require msg.sender
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000 * 10^18
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000 * 10^18
                                emit Transfer(5000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000 * 10^18, msg.sender);
                    else:
                        if 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 250 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 250 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 250 * 10^18 >= tokenAllocated
                                tokenAllocated += 250 * 10^18
                                require msg.sender
                                require 250 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 250 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 250 * 10^18
                                require 250 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 250 * 10^18
                                emit Transfer(250 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 250 * 10^18, msg.sender);
                            else:
                                if 5000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000 * 10^18
                                require msg.sender
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000 * 10^18
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000 * 10^18
                                emit Transfer(5000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000 * 10^18, msg.sender);
                        else:
                            if 10^18 != msg.value:
                                if 500 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500 * 10^18 >= tokenAllocated
                                tokenAllocated += 500 * 10^18
                                require msg.sender
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 500 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 500 * 10^18
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500 * 10^18
                                emit Transfer(500 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 500 * 10^18, msg.sender);
                            else:
                                if 5000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000 * 10^18
                                require msg.sender
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000 * 10^18
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000 * 10^18
                                emit Transfer(5000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000 * 10^18, msg.sender);
                else:
                    if 5 * 10^16 != msg.value:
                        if 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 50 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 50 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 50 * 10^18 >= tokenAllocated
                                tokenAllocated += 50 * 10^18
                                require msg.sender
                                require 50 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 50 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 50 * 10^18
                                require 50 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 50 * 10^18
                                emit Transfer(50 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 50 * 10^18, msg.sender);
                            else:
                                if 5000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000 * 10^18
                                require msg.sender
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000 * 10^18
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000 * 10^18
                                emit Transfer(5000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000 * 10^18, msg.sender);
                        else:
                            if 10^18 != msg.value:
                                if 500 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500 * 10^18 >= tokenAllocated
                                tokenAllocated += 500 * 10^18
                                require msg.sender
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 500 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 500 * 10^18
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500 * 10^18
                                emit Transfer(500 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 500 * 10^18, msg.sender);
                            else:
                                if 5000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000 * 10^18
                                require msg.sender
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000 * 10^18
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000 * 10^18
                                emit Transfer(5000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000 * 10^18, msg.sender);
                    else:
                        if 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 250 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 250 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 250 * 10^18 >= tokenAllocated
                                tokenAllocated += 250 * 10^18
                                require msg.sender
                                require 250 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 250 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 250 * 10^18
                                require 250 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 250 * 10^18
                                emit Transfer(250 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 250 * 10^18, msg.sender);
                            else:
                                if 5000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000 * 10^18
                                require msg.sender
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000 * 10^18
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000 * 10^18
                                emit Transfer(5000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000 * 10^18, msg.sender);
                        else:
                            if 10^18 != msg.value:
                                if 500 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500 * 10^18 >= tokenAllocated
                                tokenAllocated += 500 * 10^18
                                require msg.sender
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 500 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 500 * 10^18
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500 * 10^18
                                emit Transfer(500 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 500 * 10^18, msg.sender);
                            else:
                                if 5000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000 * 10^18
                                require msg.sender
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000 * 10^18
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000 * 10^18
                                emit Transfer(5000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000 * 10^18, msg.sender);
            else:
                if 10^16 != msg.value:
                    if 5 * 10^16 != msg.value:
                        if 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 25 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 25 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 25 * 10^18 >= tokenAllocated
                                tokenAllocated += 25 * 10^18
                                require msg.sender
                                require 25 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 25 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 25 * 10^18
                                require 25 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 25 * 10^18
                                emit Transfer(25 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 25 * 10^18, msg.sender);
                            else:
                                if 5000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000 * 10^18
                                require msg.sender
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000 * 10^18
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000 * 10^18
                                emit Transfer(5000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000 * 10^18, msg.sender);
                        else:
                            if 10^18 != msg.value:
                                if 500 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500 * 10^18 >= tokenAllocated
                                tokenAllocated += 500 * 10^18
                                require msg.sender
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 500 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 500 * 10^18
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500 * 10^18
                                emit Transfer(500 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 500 * 10^18, msg.sender);
                            else:
                                if 5000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000 * 10^18
                                require msg.sender
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000 * 10^18
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000 * 10^18
                                emit Transfer(5000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000 * 10^18, msg.sender);
                    else:
                        if 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 250 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 250 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 250 * 10^18 >= tokenAllocated
                                tokenAllocated += 250 * 10^18
                                require msg.sender
                                require 250 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 250 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 250 * 10^18
                                require 250 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 250 * 10^18
                                emit Transfer(250 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 250 * 10^18, msg.sender);
                            else:
                                if 5000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000 * 10^18
                                require msg.sender
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000 * 10^18
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000 * 10^18
                                emit Transfer(5000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000 * 10^18, msg.sender);
                        else:
                            if 10^18 != msg.value:
                                if 500 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500 * 10^18 >= tokenAllocated
                                tokenAllocated += 500 * 10^18
                                require msg.sender
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 500 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 500 * 10^18
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500 * 10^18
                                emit Transfer(500 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 500 * 10^18, msg.sender);
                            else:
                                if 5000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000 * 10^18
                                require msg.sender
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000 * 10^18
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000 * 10^18
                                emit Transfer(5000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000 * 10^18, msg.sender);
                else:
                    if 5 * 10^16 != msg.value:
                        if 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 50 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 50 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 50 * 10^18 >= tokenAllocated
                                tokenAllocated += 50 * 10^18
                                require msg.sender
                                require 50 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 50 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 50 * 10^18
                                require 50 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 50 * 10^18
                                emit Transfer(50 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 50 * 10^18, msg.sender);
                            else:
                                if 5000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000 * 10^18
                                require msg.sender
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000 * 10^18
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000 * 10^18
                                emit Transfer(5000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000 * 10^18, msg.sender);
                        else:
                            if 10^18 != msg.value:
                                if 500 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500 * 10^18 >= tokenAllocated
                                tokenAllocated += 500 * 10^18
                                require msg.sender
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 500 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 500 * 10^18
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500 * 10^18
                                emit Transfer(500 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 500 * 10^18, msg.sender);
                            else:
                                if 5000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000 * 10^18
                                require msg.sender
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000 * 10^18
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000 * 10^18
                                emit Transfer(5000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000 * 10^18, msg.sender);
                    else:
                        if 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 250 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 250 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 250 * 10^18 >= tokenAllocated
                                tokenAllocated += 250 * 10^18
                                require msg.sender
                                require 250 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 250 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 250 * 10^18
                                require 250 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 250 * 10^18
                                emit Transfer(250 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 250 * 10^18, msg.sender);
                            else:
                                if 5000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000 * 10^18
                                require msg.sender
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000 * 10^18
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000 * 10^18
                                emit Transfer(5000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000 * 10^18, msg.sender);
                        else:
                            if 10^18 != msg.value:
                                if 500 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500 * 10^18 >= tokenAllocated
                                tokenAllocated += 500 * 10^18
                                require msg.sender
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 500 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 500 * 10^18
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500 * 10^18
                                emit Transfer(500 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 500 * 10^18, msg.sender);
                            else:
                                if 5000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000 * 10^18
                                require msg.sender
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000 * 10^18
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000 * 10^18
                                emit Transfer(5000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000 * 10^18, msg.sender);
    else:
        if 10^15 != msg.value:
            if 5 * 10^15 != msg.value:
                if 5 * 10^16 != msg.value:
                    if 10^17 != msg.value:
                        if 10^18 != msg.value:
                            if 50 * 10^18 > balanceOf[address(stor8.field_0)]:
                                emit TokenLimitReached(tokenAllocated, 50 * 10^18);
                                revert
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require tokenAllocated + 50 * 10^18 >= tokenAllocated
                            tokenAllocated += 50 * 10^18
                            require msg.sender
                            require 50 * 10^18 <= balanceOf[address(stor8.field_0)]
                            require balanceOf[address(msg.sender)] + 50 * 10^18 >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 50 * 10^18
                            require 50 * 10^18 <= balanceOf[address(stor8.field_0)]
                            balanceOf[address(stor8.field_0)] -= 50 * 10^18
                            emit Transfer(50 * 10^18, owner, msg.sender);
                            emit TokenPurchase(msg.value, 50 * 10^18, msg.sender);
                        else:
                            if 5000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                                revert
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require tokenAllocated + 5000 * 10^18 >= tokenAllocated
                            tokenAllocated += 5000 * 10^18
                            require msg.sender
                            require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                            require balanceOf[address(msg.sender)] + 5000 * 10^18 >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 5000 * 10^18
                            require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                            balanceOf[address(stor8.field_0)] -= 5000 * 10^18
                            emit Transfer(5000 * 10^18, owner, msg.sender);
                            emit TokenPurchase(msg.value, 5000 * 10^18, msg.sender);
                    else:
                        if 10^18 != msg.value:
                            if 500 * 10^18 > balanceOf[address(stor8.field_0)]:
                                emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                                revert
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require tokenAllocated + 500 * 10^18 >= tokenAllocated
                            tokenAllocated += 500 * 10^18
                            require msg.sender
                            require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                            require balanceOf[address(msg.sender)] + 500 * 10^18 >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 500 * 10^18
                            require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                            balanceOf[address(stor8.field_0)] -= 500 * 10^18
                            emit Transfer(500 * 10^18, owner, msg.sender);
                            emit TokenPurchase(msg.value, 500 * 10^18, msg.sender);
                        else:
                            if 5000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                                revert
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require tokenAllocated + 5000 * 10^18 >= tokenAllocated
                            tokenAllocated += 5000 * 10^18
                            require msg.sender
                            require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                            require balanceOf[address(msg.sender)] + 5000 * 10^18 >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 5000 * 10^18
                            require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                            balanceOf[address(stor8.field_0)] -= 5000 * 10^18
                            emit Transfer(5000 * 10^18, owner, msg.sender);
                            emit TokenPurchase(msg.value, 5000 * 10^18, msg.sender);
                else:
                    if 10^17 != msg.value:
                        if 10^18 != msg.value:
                            if 250 * 10^18 > balanceOf[address(stor8.field_0)]:
                                emit TokenLimitReached(tokenAllocated, 250 * 10^18);
                                revert
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require tokenAllocated + 250 * 10^18 >= tokenAllocated
                            tokenAllocated += 250 * 10^18
                            require msg.sender
                            require 250 * 10^18 <= balanceOf[address(stor8.field_0)]
                            require balanceOf[address(msg.sender)] + 250 * 10^18 >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 250 * 10^18
                            require 250 * 10^18 <= balanceOf[address(stor8.field_0)]
                            balanceOf[address(stor8.field_0)] -= 250 * 10^18
                            emit Transfer(250 * 10^18, owner, msg.sender);
                            emit TokenPurchase(msg.value, 250 * 10^18, msg.sender);
                        else:
                            if 5000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                                revert
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require tokenAllocated + 5000 * 10^18 >= tokenAllocated
                            tokenAllocated += 5000 * 10^18
                            require msg.sender
                            require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                            require balanceOf[address(msg.sender)] + 5000 * 10^18 >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 5000 * 10^18
                            require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                            balanceOf[address(stor8.field_0)] -= 5000 * 10^18
                            emit Transfer(5000 * 10^18, owner, msg.sender);
                            emit TokenPurchase(msg.value, 5000 * 10^18, msg.sender);
                    else:
                        if 10^18 != msg.value:
                            if 500 * 10^18 > balanceOf[address(stor8.field_0)]:
                                emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                                revert
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require tokenAllocated + 500 * 10^18 >= tokenAllocated
                            tokenAllocated += 500 * 10^18
                            require msg.sender
                            require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                            require balanceOf[address(msg.sender)] + 500 * 10^18 >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 500 * 10^18
                            require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                            balanceOf[address(stor8.field_0)] -= 500 * 10^18
                            emit Transfer(500 * 10^18, owner, msg.sender);
                            emit TokenPurchase(msg.value, 500 * 10^18, msg.sender);
                        else:
                            if 5000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                                revert
                            require weiRaised + msg.value >= weiRaised
                            weiRaised += msg.value
                            require tokenAllocated + 5000 * 10^18 >= tokenAllocated
                            tokenAllocated += 5000 * 10^18
                            require msg.sender
                            require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                            require balanceOf[address(msg.sender)] + 5000 * 10^18 >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 5000 * 10^18
                            require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                            balanceOf[address(stor8.field_0)] -= 5000 * 10^18
                            emit Transfer(5000 * 10^18, owner, msg.sender);
                            emit TokenPurchase(msg.value, 5000 * 10^18, msg.sender);
            else:
                if 10^16 != msg.value:
                    if 5 * 10^16 != msg.value:
                        if 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 25 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 25 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 25 * 10^18 >= tokenAllocated
                                tokenAllocated += 25 * 10^18
                                require msg.sender
                                require 25 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 25 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 25 * 10^18
                                require 25 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 25 * 10^18
                                emit Transfer(25 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 25 * 10^18, msg.sender);
                            else:
                                if 5000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000 * 10^18
                                require msg.sender
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000 * 10^18
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000 * 10^18
                                emit Transfer(5000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000 * 10^18, msg.sender);
                        else:
                            if 10^18 != msg.value:
                                if 500 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500 * 10^18 >= tokenAllocated
                                tokenAllocated += 500 * 10^18
                                require msg.sender
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 500 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 500 * 10^18
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500 * 10^18
                                emit Transfer(500 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 500 * 10^18, msg.sender);
                            else:
                                if 5000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000 * 10^18
                                require msg.sender
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000 * 10^18
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000 * 10^18
                                emit Transfer(5000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000 * 10^18, msg.sender);
                    else:
                        if 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 250 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 250 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 250 * 10^18 >= tokenAllocated
                                tokenAllocated += 250 * 10^18
                                require msg.sender
                                require 250 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 250 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 250 * 10^18
                                require 250 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 250 * 10^18
                                emit Transfer(250 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 250 * 10^18, msg.sender);
                            else:
                                if 5000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000 * 10^18
                                require msg.sender
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000 * 10^18
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000 * 10^18
                                emit Transfer(5000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000 * 10^18, msg.sender);
                        else:
                            if 10^18 != msg.value:
                                if 500 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500 * 10^18 >= tokenAllocated
                                tokenAllocated += 500 * 10^18
                                require msg.sender
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 500 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 500 * 10^18
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500 * 10^18
                                emit Transfer(500 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 500 * 10^18, msg.sender);
                            else:
                                if 5000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000 * 10^18
                                require msg.sender
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000 * 10^18
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000 * 10^18
                                emit Transfer(5000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000 * 10^18, msg.sender);
                else:
                    if 5 * 10^16 != msg.value:
                        if 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 50 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 50 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 50 * 10^18 >= tokenAllocated
                                tokenAllocated += 50 * 10^18
                                require msg.sender
                                require 50 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 50 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 50 * 10^18
                                require 50 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 50 * 10^18
                                emit Transfer(50 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 50 * 10^18, msg.sender);
                            else:
                                if 5000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000 * 10^18
                                require msg.sender
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000 * 10^18
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000 * 10^18
                                emit Transfer(5000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000 * 10^18, msg.sender);
                        else:
                            if 10^18 != msg.value:
                                if 500 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500 * 10^18 >= tokenAllocated
                                tokenAllocated += 500 * 10^18
                                require msg.sender
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 500 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 500 * 10^18
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500 * 10^18
                                emit Transfer(500 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 500 * 10^18, msg.sender);
                            else:
                                if 5000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000 * 10^18
                                require msg.sender
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000 * 10^18
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000 * 10^18
                                emit Transfer(5000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000 * 10^18, msg.sender);
                    else:
                        if 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 250 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 250 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 250 * 10^18 >= tokenAllocated
                                tokenAllocated += 250 * 10^18
                                require msg.sender
                                require 250 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 250 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 250 * 10^18
                                require 250 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 250 * 10^18
                                emit Transfer(250 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 250 * 10^18, msg.sender);
                            else:
                                if 5000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000 * 10^18
                                require msg.sender
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000 * 10^18
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000 * 10^18
                                emit Transfer(5000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000 * 10^18, msg.sender);
                        else:
                            if 10^18 != msg.value:
                                if 500 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500 * 10^18 >= tokenAllocated
                                tokenAllocated += 500 * 10^18
                                require msg.sender
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 500 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 500 * 10^18
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500 * 10^18
                                emit Transfer(500 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 500 * 10^18, msg.sender);
                            else:
                                if 5000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000 * 10^18
                                require msg.sender
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000 * 10^18
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000 * 10^18
                                emit Transfer(5000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000 * 10^18, msg.sender);
        else:
            if 5 * 10^15 != msg.value:
                if 10^16 != msg.value:
                    if 5 * 10^16 != msg.value:
                        if 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 5 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5 * 10^18 >= tokenAllocated
                                tokenAllocated += 5 * 10^18
                                require msg.sender
                                require 5 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5 * 10^18
                                require 5 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5 * 10^18
                                emit Transfer(5 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5 * 10^18, msg.sender);
                            else:
                                if 5000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000 * 10^18
                                require msg.sender
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000 * 10^18
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000 * 10^18
                                emit Transfer(5000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000 * 10^18, msg.sender);
                        else:
                            if 10^18 != msg.value:
                                if 500 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500 * 10^18 >= tokenAllocated
                                tokenAllocated += 500 * 10^18
                                require msg.sender
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 500 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 500 * 10^18
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500 * 10^18
                                emit Transfer(500 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 500 * 10^18, msg.sender);
                            else:
                                if 5000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000 * 10^18
                                require msg.sender
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000 * 10^18
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000 * 10^18
                                emit Transfer(5000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000 * 10^18, msg.sender);
                    else:
                        if 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 250 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 250 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 250 * 10^18 >= tokenAllocated
                                tokenAllocated += 250 * 10^18
                                require msg.sender
                                require 250 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 250 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 250 * 10^18
                                require 250 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 250 * 10^18
                                emit Transfer(250 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 250 * 10^18, msg.sender);
                            else:
                                if 5000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000 * 10^18
                                require msg.sender
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000 * 10^18
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000 * 10^18
                                emit Transfer(5000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000 * 10^18, msg.sender);
                        else:
                            if 10^18 != msg.value:
                                if 500 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500 * 10^18 >= tokenAllocated
                                tokenAllocated += 500 * 10^18
                                require msg.sender
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 500 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 500 * 10^18
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500 * 10^18
                                emit Transfer(500 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 500 * 10^18, msg.sender);
                            else:
                                if 5000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000 * 10^18
                                require msg.sender
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000 * 10^18
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000 * 10^18
                                emit Transfer(5000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000 * 10^18, msg.sender);
                else:
                    if 5 * 10^16 != msg.value:
                        if 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 50 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 50 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 50 * 10^18 >= tokenAllocated
                                tokenAllocated += 50 * 10^18
                                require msg.sender
                                require 50 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 50 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 50 * 10^18
                                require 50 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 50 * 10^18
                                emit Transfer(50 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 50 * 10^18, msg.sender);
                            else:
                                if 5000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000 * 10^18
                                require msg.sender
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000 * 10^18
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000 * 10^18
                                emit Transfer(5000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000 * 10^18, msg.sender);
                        else:
                            if 10^18 != msg.value:
                                if 500 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500 * 10^18 >= tokenAllocated
                                tokenAllocated += 500 * 10^18
                                require msg.sender
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 500 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 500 * 10^18
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500 * 10^18
                                emit Transfer(500 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 500 * 10^18, msg.sender);
                            else:
                                if 5000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000 * 10^18
                                require msg.sender
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000 * 10^18
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000 * 10^18
                                emit Transfer(5000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000 * 10^18, msg.sender);
                    else:
                        if 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 250 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 250 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 250 * 10^18 >= tokenAllocated
                                tokenAllocated += 250 * 10^18
                                require msg.sender
                                require 250 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 250 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 250 * 10^18
                                require 250 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 250 * 10^18
                                emit Transfer(250 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 250 * 10^18, msg.sender);
                            else:
                                if 5000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000 * 10^18
                                require msg.sender
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000 * 10^18
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000 * 10^18
                                emit Transfer(5000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000 * 10^18, msg.sender);
                        else:
                            if 10^18 != msg.value:
                                if 500 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500 * 10^18 >= tokenAllocated
                                tokenAllocated += 500 * 10^18
                                require msg.sender
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 500 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 500 * 10^18
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500 * 10^18
                                emit Transfer(500 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 500 * 10^18, msg.sender);
                            else:
                                if 5000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000 * 10^18
                                require msg.sender
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000 * 10^18
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000 * 10^18
                                emit Transfer(5000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000 * 10^18, msg.sender);
            else:
                if 10^16 != msg.value:
                    if 5 * 10^16 != msg.value:
                        if 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 25 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 25 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 25 * 10^18 >= tokenAllocated
                                tokenAllocated += 25 * 10^18
                                require msg.sender
                                require 25 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 25 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 25 * 10^18
                                require 25 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 25 * 10^18
                                emit Transfer(25 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 25 * 10^18, msg.sender);
                            else:
                                if 5000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000 * 10^18
                                require msg.sender
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000 * 10^18
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000 * 10^18
                                emit Transfer(5000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000 * 10^18, msg.sender);
                        else:
                            if 10^18 != msg.value:
                                if 500 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500 * 10^18 >= tokenAllocated
                                tokenAllocated += 500 * 10^18
                                require msg.sender
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 500 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 500 * 10^18
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500 * 10^18
                                emit Transfer(500 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 500 * 10^18, msg.sender);
                            else:
                                if 5000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000 * 10^18
                                require msg.sender
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000 * 10^18
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000 * 10^18
                                emit Transfer(5000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000 * 10^18, msg.sender);
                    else:
                        if 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 250 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 250 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 250 * 10^18 >= tokenAllocated
                                tokenAllocated += 250 * 10^18
                                require msg.sender
                                require 250 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 250 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 250 * 10^18
                                require 250 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 250 * 10^18
                                emit Transfer(250 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 250 * 10^18, msg.sender);
                            else:
                                if 5000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000 * 10^18
                                require msg.sender
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000 * 10^18
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000 * 10^18
                                emit Transfer(5000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000 * 10^18, msg.sender);
                        else:
                            if 10^18 != msg.value:
                                if 500 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500 * 10^18 >= tokenAllocated
                                tokenAllocated += 500 * 10^18
                                require msg.sender
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 500 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 500 * 10^18
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500 * 10^18
                                emit Transfer(500 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 500 * 10^18, msg.sender);
                            else:
                                if 5000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000 * 10^18
                                require msg.sender
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000 * 10^18
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000 * 10^18
                                emit Transfer(5000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000 * 10^18, msg.sender);
                else:
                    if 5 * 10^16 != msg.value:
                        if 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 50 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 50 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 50 * 10^18 >= tokenAllocated
                                tokenAllocated += 50 * 10^18
                                require msg.sender
                                require 50 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 50 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 50 * 10^18
                                require 50 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 50 * 10^18
                                emit Transfer(50 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 50 * 10^18, msg.sender);
                            else:
                                if 5000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000 * 10^18
                                require msg.sender
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000 * 10^18
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000 * 10^18
                                emit Transfer(5000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000 * 10^18, msg.sender);
                        else:
                            if 10^18 != msg.value:
                                if 500 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500 * 10^18 >= tokenAllocated
                                tokenAllocated += 500 * 10^18
                                require msg.sender
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 500 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 500 * 10^18
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500 * 10^18
                                emit Transfer(500 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 500 * 10^18, msg.sender);
                            else:
                                if 5000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000 * 10^18
                                require msg.sender
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000 * 10^18
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000 * 10^18
                                emit Transfer(5000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000 * 10^18, msg.sender);
                    else:
                        if 10^17 != msg.value:
                            if 10^18 != msg.value:
                                if 250 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 250 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 250 * 10^18 >= tokenAllocated
                                tokenAllocated += 250 * 10^18
                                require msg.sender
                                require 250 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 250 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 250 * 10^18
                                require 250 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 250 * 10^18
                                emit Transfer(250 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 250 * 10^18, msg.sender);
                            else:
                                if 5000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000 * 10^18
                                require msg.sender
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000 * 10^18
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000 * 10^18
                                emit Transfer(5000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000 * 10^18, msg.sender);
                        else:
                            if 10^18 != msg.value:
                                if 500 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 500 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 500 * 10^18 >= tokenAllocated
                                tokenAllocated += 500 * 10^18
                                require msg.sender
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 500 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 500 * 10^18
                                require 500 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 500 * 10^18
                                emit Transfer(500 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 500 * 10^18, msg.sender);
                            else:
                                if 5000 * 10^18 > balanceOf[address(stor8.field_0)]:
                                    emit TokenLimitReached(tokenAllocated, 5000 * 10^18);
                                    revert
                                require weiRaised + msg.value >= weiRaised
                                weiRaised += msg.value
                                require tokenAllocated + 5000 * 10^18 >= tokenAllocated
                                tokenAllocated += 5000 * 10^18
                                require msg.sender
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                require balanceOf[address(msg.sender)] + 5000 * 10^18 >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5000 * 10^18
                                require 5000 * 10^18 <= balanceOf[address(stor8.field_0)]
                                balanceOf[address(stor8.field_0)] -= 5000 * 10^18
                                emit Transfer(5000 * 10^18, owner, msg.sender);
                                emit TokenPurchase(msg.value, 5000 * 10^18, msg.sender);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
