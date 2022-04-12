contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint256 stor1;
array of uint256 stor3;
uint256 stor4;
uint256 stor5;
uint8 stor6;
uint256 stor7;

function _fallback() payable {
    bool(stor3.length) = 0
    stor3.length.field_1 = 9
    stor3.length.field_8 = 'Token 0.1' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 605000 * 3600
    require not msg.value
    stor0 = msg.sender
    stor4 = 82500000000 * 10^18
    stor1[address(msg.sender)] = 82500000000 * 10^18
    stor6 = 0
    stor7 = 0
    return code.data[388 len 5008]
}



// =====================  Runtime code  =====================


const name = 'PlusCoin Token'

const decimals = 18

const symbol = 'PCT'

const fpct_packet_size = 3300

const owner_MIN_LIMIT = (13750000 * 10^18 * 3600)

const TOKEN_ICO1_LIMIT = (2750000 * 10^18 * 3600)

const TOKEN_PRESALE_LIMIT = 330000000 * 10^18

const PRESALE_PRICE = 132000

const TOKEN_ICO2_LIMIT = (2750000 * 10^18 * 3600)

const TOKEN_ICO3_LIMIT = (2750000 * 10^18 * 3600)


address owner;
mapping of uint256 balances;
mapping of uint256 stor2;
array of uint256 standard;
uint256 totalSupply;
uint256 ownerPrice;
uint8 _token_state;
uint256 soldAmount;

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function standard() {
    return standard[0 len standard.length]
}

function current_state() {
    require _token_state <= 6
    return _token_state
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function get_token_state() {
    require _token_state <= 6
    return _token_state
}

function owner() {
    return owner
}

function ownerPrice() {
    return ownerPrice
}

function soldAmount() {
    return soldAmount
}

function _fallback() {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function allowance(address arg1, address arg2) {
    require _token_state <= 6
    if _token_state != 5:
        require owner == msg.sender
    return stor2[address(arg1)][address(arg2)]
}

function approve(address arg1, uint256 arg2) {
    require _token_state <= 6
    if _token_state != 5:
        require owner == msg.sender
    stor2[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require _token_state <= 6
    if _token_state != 5:
        require owner == msg.sender
    if balances[address(msg.sender)] < arg2:
        return 0
    if balances[address(arg1)] + arg2 <= balances[address(arg1)]:
        return 0
    balances[address(msg.sender)] -= arg2
    balances[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require _token_state <= 6
    if _token_state != 5:
        require owner == msg.sender
    if balances[address(arg1)] < arg3:
        return 0
    if stor2[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if balances[address(arg2)] + arg3 <= balances[address(arg2)]:
        return 0
    balances[address(arg2)] += arg3
    balances[arg1] -= arg3
    stor2[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function remaining_for_sale() {
    require _token_state <= 6
    require _token_state <= 6
    require _token_state <= 6
    require _token_state <= 6
    require _token_state <= 6
    if _token_state != 1:
        if _token_state != 2:
            if _token_state != 3:
                if _token_state != 4:
                    if _token_state != 5:
                        return 0
                else:
                    if _token_state != 5:
                        return (-soldAmount + 330000000 * 10^18)
            else:
                if _token_state != 5:
                    return (-soldAmount + 330000000 * 10^18)
        else:
            if _token_state != 5:
                return (-soldAmount + 330000000 * 10^18)
    else:
        if _token_state != 5:
            return (-soldAmount + 330000000 * 10^18)
    ('eq', ('stor', ('name', '_token_state', 6)), 5)
    return (balances[stor0] - (13750000 * 10^18 * 3600))
}

function price() {
    require _token_state <= 6
    require _token_state <= 6
    require _token_state <= 6
    require _token_state <= 6
    if _token_state != 2:
        if _token_state != 3:
            if _token_state != 4:
                if _token_state != 5:
                    return 132000
            else:
                if _token_state != 5:
                    return 528000
        else:
            if _token_state != 4:
                if _token_state != 5:
                    return (110 * 3600)
            else:
                if _token_state != 5:
                    return 528000
    else:
        if _token_state != 3:
            if _token_state != 4:
                if _token_state != 5:
                    return 264000
            else:
                if _token_state != 5:
                    return 528000
        else:
            if _token_state != 4:
                if _token_state != 5:
                    return (110 * 3600)
            else:
                if _token_state != 5:
                    return 528000
    ('eq', ('stor', ('name', '_token_state', 6)), 5)
    return ownerPrice
}

function setTokenState(uint8 arg1) {
    require owner == msg.sender
    require _token_state <= 6
    if _token_state:
        require _token_state <= 6
        if _token_state != 1:
            require _token_state <= 6
            if _token_state != 2:
                require _token_state <= 6
                if _token_state != 3:
                    require _token_state <= 6
                    if _token_state != 4:
                        require _token_state <= 6
                        if _token_state != 1:
                            require _token_state <= 6
                            require _token_state == 6
                            require arg1 <= 6
                            require arg1 == 1
                        else:
                            require arg1 <= 6
                            if arg1 != 6:
                                require _token_state <= 6
                                require _token_state == 6
                                require arg1 <= 6
                                require arg1 == 1
                    else:
                        require arg1 <= 6
                        if arg1 != 5:
                            require _token_state <= 6
                            if _token_state != 1:
                                require _token_state <= 6
                                require _token_state == 6
                                require arg1 <= 6
                                require arg1 == 1
                            else:
                                require arg1 <= 6
                                if arg1 != 6:
                                    require _token_state <= 6
                                    require _token_state == 6
                                    require arg1 <= 6
                                    require arg1 == 1
                else:
                    require arg1 <= 6
                    if arg1 != 4:
                        require _token_state <= 6
                        if _token_state != 4:
                            require _token_state <= 6
                            if _token_state != 1:
                                require _token_state <= 6
                                require _token_state == 6
                                require arg1 <= 6
                                require arg1 == 1
                            else:
                                require arg1 <= 6
                                if arg1 != 6:
                                    require _token_state <= 6
                                    require _token_state == 6
                                    require arg1 <= 6
                                    require arg1 == 1
                        else:
                            require arg1 <= 6
                            if arg1 != 5:
                                require _token_state <= 6
                                if _token_state != 1:
                                    require _token_state <= 6
                                    require _token_state == 6
                                    require arg1 <= 6
                                    require arg1 == 1
                                else:
                                    require arg1 <= 6
                                    if arg1 != 6:
                                        require _token_state <= 6
                                        require _token_state == 6
                                        require arg1 <= 6
                                        require arg1 == 1
            else:
                require arg1 <= 6
                if arg1 != 3:
                    require _token_state <= 6
                    if _token_state != 3:
                        require _token_state <= 6
                        if _token_state != 4:
                            require _token_state <= 6
                            if _token_state != 1:
                                require _token_state <= 6
                                require _token_state == 6
                                require arg1 <= 6
                                require arg1 == 1
                            else:
                                require arg1 <= 6
                                if arg1 != 6:
                                    require _token_state <= 6
                                    require _token_state == 6
                                    require arg1 <= 6
                                    require arg1 == 1
                        else:
                            require arg1 <= 6
                            if arg1 != 5:
                                require _token_state <= 6
                                if _token_state != 1:
                                    require _token_state <= 6
                                    require _token_state == 6
                                    require arg1 <= 6
                                    require arg1 == 1
                                else:
                                    require arg1 <= 6
                                    if arg1 != 6:
                                        require _token_state <= 6
                                        require _token_state == 6
                                        require arg1 <= 6
                                        require arg1 == 1
                    else:
                        require arg1 <= 6
                        if arg1 != 4:
                            require _token_state <= 6
                            if _token_state != 4:
                                require _token_state <= 6
                                if _token_state != 1:
                                    require _token_state <= 6
                                    require _token_state == 6
                                    require arg1 <= 6
                                    require arg1 == 1
                                else:
                                    require arg1 <= 6
                                    if arg1 != 6:
                                        require _token_state <= 6
                                        require _token_state == 6
                                        require arg1 <= 6
                                        require arg1 == 1
                            else:
                                require arg1 <= 6
                                if arg1 != 5:
                                    require _token_state <= 6
                                    if _token_state != 1:
                                        require _token_state <= 6
                                        require _token_state == 6
                                        require arg1 <= 6
                                        require arg1 == 1
                                    else:
                                        require arg1 <= 6
                                        if arg1 != 6:
                                            require _token_state <= 6
                                            require _token_state == 6
                                            require arg1 <= 6
                                            require arg1 == 1
        else:
            require arg1 <= 6
            if arg1 != 2:
                require _token_state <= 6
                if _token_state != 2:
                    require _token_state <= 6
                    if _token_state != 3:
                        require _token_state <= 6
                        if _token_state != 4:
                            require _token_state <= 6
                            if _token_state != 1:
                                require _token_state <= 6
                                require _token_state == 6
                                require arg1 <= 6
                                require arg1 == 1
                            else:
                                require arg1 <= 6
                                if arg1 != 6:
                                    require _token_state <= 6
                                    require _token_state == 6
                                    require arg1 <= 6
                                    require arg1 == 1
                        else:
                            require arg1 <= 6
                            if arg1 != 5:
                                require _token_state <= 6
                                if _token_state != 1:
                                    require _token_state <= 6
                                    require _token_state == 6
                                    require arg1 <= 6
                                    require arg1 == 1
                                else:
                                    require arg1 <= 6
                                    if arg1 != 6:
                                        require _token_state <= 6
                                        require _token_state == 6
                                        require arg1 <= 6
                                        require arg1 == 1
                    else:
                        require arg1 <= 6
                        if arg1 != 4:
                            require _token_state <= 6
                            if _token_state != 4:
                                require _token_state <= 6
                                if _token_state != 1:
                                    require _token_state <= 6
                                    require _token_state == 6
                                    require arg1 <= 6
                                    require arg1 == 1
                                else:
                                    require arg1 <= 6
                                    if arg1 != 6:
                                        require _token_state <= 6
                                        require _token_state == 6
                                        require arg1 <= 6
                                        require arg1 == 1
                            else:
                                require arg1 <= 6
                                if arg1 != 5:
                                    require _token_state <= 6
                                    if _token_state != 1:
                                        require _token_state <= 6
                                        require _token_state == 6
                                        require arg1 <= 6
                                        require arg1 == 1
                                    else:
                                        require arg1 <= 6
                                        if arg1 != 6:
                                            require _token_state <= 6
                                            require _token_state == 6
                                            require arg1 <= 6
                                            require arg1 == 1
                else:
                    require arg1 <= 6
                    if arg1 != 3:
                        require _token_state <= 6
                        if _token_state != 3:
                            require _token_state <= 6
                            if _token_state != 4:
                                require _token_state <= 6
                                if _token_state != 1:
                                    require _token_state <= 6
                                    require _token_state == 6
                                    require arg1 <= 6
                                    require arg1 == 1
                                else:
                                    require arg1 <= 6
                                    if arg1 != 6:
                                        require _token_state <= 6
                                        require _token_state == 6
                                        require arg1 <= 6
                                        require arg1 == 1
                            else:
                                require arg1 <= 6
                                if arg1 != 5:
                                    require _token_state <= 6
                                    if _token_state != 1:
                                        require _token_state <= 6
                                        require _token_state == 6
                                        require arg1 <= 6
                                        require arg1 == 1
                                    else:
                                        require arg1 <= 6
                                        if arg1 != 6:
                                            require _token_state <= 6
                                            require _token_state == 6
                                            require arg1 <= 6
                                            require arg1 == 1
                        else:
                            require arg1 <= 6
                            if arg1 != 4:
                                require _token_state <= 6
                                if _token_state != 4:
                                    require _token_state <= 6
                                    if _token_state != 1:
                                        require _token_state <= 6
                                        require _token_state == 6
                                        require arg1 <= 6
                                        require arg1 == 1
                                    else:
                                        require arg1 <= 6
                                        if arg1 != 6:
                                            require _token_state <= 6
                                            require _token_state == 6
                                            require arg1 <= 6
                                            require arg1 == 1
                                else:
                                    require arg1 <= 6
                                    if arg1 != 5:
                                        require _token_state <= 6
                                        if _token_state != 1:
                                            require _token_state <= 6
                                            require _token_state == 6
                                            require arg1 <= 6
                                            require arg1 == 1
                                        else:
                                            require arg1 <= 6
                                            if arg1 != 6:
                                                require _token_state <= 6
                                                require _token_state == 6
                                                require arg1 <= 6
                                                require arg1 == 1
    else:
        require arg1 <= 6
        if arg1 != 1:
            require _token_state <= 6
            if _token_state != 1:
                require _token_state <= 6
                if _token_state != 2:
                    require _token_state <= 6
                    if _token_state != 3:
                        require _token_state <= 6
                        if _token_state != 4:
                            require _token_state <= 6
                            if _token_state != 1:
                                require _token_state <= 6
                                require _token_state == 6
                                require arg1 <= 6
                                require arg1 == 1
                            else:
                                require arg1 <= 6
                                if arg1 != 6:
                                    require _token_state <= 6
                                    require _token_state == 6
                                    require arg1 <= 6
                                    require arg1 == 1
                        else:
                            require arg1 <= 6
                            if arg1 != 5:
                                require _token_state <= 6
                                if _token_state != 1:
                                    require _token_state <= 6
                                    require _token_state == 6
                                    require arg1 <= 6
                                    require arg1 == 1
                                else:
                                    require arg1 <= 6
                                    if arg1 != 6:
                                        require _token_state <= 6
                                        require _token_state == 6
                                        require arg1 <= 6
                                        require arg1 == 1
                    else:
                        require arg1 <= 6
                        if arg1 != 4:
                            require _token_state <= 6
                            if _token_state != 4:
                                require _token_state <= 6
                                if _token_state != 1:
                                    require _token_state <= 6
                                    require _token_state == 6
                                    require arg1 <= 6
                                    require arg1 == 1
                                else:
                                    require arg1 <= 6
                                    if arg1 != 6:
                                        require _token_state <= 6
                                        require _token_state == 6
                                        require arg1 <= 6
                                        require arg1 == 1
                            else:
                                require arg1 <= 6
                                if arg1 != 5:
                                    require _token_state <= 6
                                    if _token_state != 1:
                                        require _token_state <= 6
                                        require _token_state == 6
                                        require arg1 <= 6
                                        require arg1 == 1
                                    else:
                                        require arg1 <= 6
                                        if arg1 != 6:
                                            require _token_state <= 6
                                            require _token_state == 6
                                            require arg1 <= 6
                                            require arg1 == 1
                else:
                    require arg1 <= 6
                    if arg1 != 3:
                        require _token_state <= 6
                        if _token_state != 3:
                            require _token_state <= 6
                            if _token_state != 4:
                                require _token_state <= 6
                                if _token_state != 1:
                                    require _token_state <= 6
                                    require _token_state == 6
                                    require arg1 <= 6
                                    require arg1 == 1
                                else:
                                    require arg1 <= 6
                                    if arg1 != 6:
                                        require _token_state <= 6
                                        require _token_state == 6
                                        require arg1 <= 6
                                        require arg1 == 1
                            else:
                                require arg1 <= 6
                                if arg1 != 5:
                                    require _token_state <= 6
                                    if _token_state != 1:
                                        require _token_state <= 6
                                        require _token_state == 6
                                        require arg1 <= 6
                                        require arg1 == 1
                                    else:
                                        require arg1 <= 6
                                        if arg1 != 6:
                                            require _token_state <= 6
                                            require _token_state == 6
                                            require arg1 <= 6
                                            require arg1 == 1
                        else:
                            require arg1 <= 6
                            if arg1 != 4:
                                require _token_state <= 6
                                if _token_state != 4:
                                    require _token_state <= 6
                                    if _token_state != 1:
                                        require _token_state <= 6
                                        require _token_state == 6
                                        require arg1 <= 6
                                        require arg1 == 1
                                    else:
                                        require arg1 <= 6
                                        if arg1 != 6:
                                            require _token_state <= 6
                                            require _token_state == 6
                                            require arg1 <= 6
                                            require arg1 == 1
                                else:
                                    require arg1 <= 6
                                    if arg1 != 5:
                                        require _token_state <= 6
                                        if _token_state != 1:
                                            require _token_state <= 6
                                            require _token_state == 6
                                            require arg1 <= 6
                                            require arg1 == 1
                                        else:
                                            require arg1 <= 6
                                            if arg1 != 6:
                                                require _token_state <= 6
                                                require _token_state == 6
                                                require arg1 <= 6
                                                require arg1 == 1
            else:
                require arg1 <= 6
                if arg1 != 2:
                    require _token_state <= 6
                    if _token_state != 2:
                        require _token_state <= 6
                        if _token_state != 3:
                            require _token_state <= 6
                            if _token_state != 4:
                                require _token_state <= 6
                                if _token_state != 1:
                                    require _token_state <= 6
                                    require _token_state == 6
                                    require arg1 <= 6
                                    require arg1 == 1
                                else:
                                    require arg1 <= 6
                                    if arg1 != 6:
                                        require _token_state <= 6
                                        require _token_state == 6
                                        require arg1 <= 6
                                        require arg1 == 1
                            else:
                                require arg1 <= 6
                                if arg1 != 5:
                                    require _token_state <= 6
                                    if _token_state != 1:
                                        require _token_state <= 6
                                        require _token_state == 6
                                        require arg1 <= 6
                                        require arg1 == 1
                                    else:
                                        require arg1 <= 6
                                        if arg1 != 6:
                                            require _token_state <= 6
                                            require _token_state == 6
                                            require arg1 <= 6
                                            require arg1 == 1
                        else:
                            require arg1 <= 6
                            if arg1 != 4:
                                require _token_state <= 6
                                if _token_state != 4:
                                    require _token_state <= 6
                                    if _token_state != 1:
                                        require _token_state <= 6
                                        require _token_state == 6
                                        require arg1 <= 6
                                        require arg1 == 1
                                    else:
                                        require arg1 <= 6
                                        if arg1 != 6:
                                            require _token_state <= 6
                                            require _token_state == 6
                                            require arg1 <= 6
                                            require arg1 == 1
                                else:
                                    require arg1 <= 6
                                    if arg1 != 5:
                                        require _token_state <= 6
                                        if _token_state != 1:
                                            require _token_state <= 6
                                            require _token_state == 6
                                            require arg1 <= 6
                                            require arg1 == 1
                                        else:
                                            require arg1 <= 6
                                            if arg1 != 6:
                                                require _token_state <= 6
                                                require _token_state == 6
                                                require arg1 <= 6
                                                require arg1 == 1
                    else:
                        require arg1 <= 6
                        if arg1 != 3:
                            require _token_state <= 6
                            if _token_state != 3:
                                require _token_state <= 6
                                if _token_state != 4:
                                    require _token_state <= 6
                                    if _token_state != 1:
                                        require _token_state <= 6
                                        require _token_state == 6
                                        require arg1 <= 6
                                        require arg1 == 1
                                    else:
                                        require arg1 <= 6
                                        if arg1 != 6:
                                            require _token_state <= 6
                                            require _token_state == 6
                                            require arg1 <= 6
                                            require arg1 == 1
                                else:
                                    require arg1 <= 6
                                    if arg1 != 5:
                                        require _token_state <= 6
                                        if _token_state != 1:
                                            require _token_state <= 6
                                            require _token_state == 6
                                            require arg1 <= 6
                                            require arg1 == 1
                                        else:
                                            require arg1 <= 6
                                            if arg1 != 6:
                                                require _token_state <= 6
                                                require _token_state == 6
                                                require arg1 <= 6
                                                require arg1 == 1
                            else:
                                require arg1 <= 6
                                if arg1 != 4:
                                    require _token_state <= 6
                                    if _token_state != 4:
                                        require _token_state <= 6
                                        if _token_state != 1:
                                            require _token_state <= 6
                                            require _token_state == 6
                                            require arg1 <= 6
                                            require arg1 == 1
                                        else:
                                            require arg1 <= 6
                                            if arg1 != 6:
                                                require _token_state <= 6
                                                require _token_state == 6
                                                require arg1 <= 6
                                                require arg1 == 1
                                    else:
                                        require arg1 <= 6
                                        if arg1 != 5:
                                            require _token_state <= 6
                                            if _token_state != 1:
                                                require _token_state <= 6
                                                require _token_state == 6
                                                require arg1 <= 6
                                                require arg1 == 1
                                            else:
                                                require arg1 <= 6
                                                if arg1 != 6:
                                                    require _token_state <= 6
                                                    require _token_state == 6
                                                    require arg1 <= 6
                                                    require arg1 == 1
    require arg1 <= 6
    _token_state = arg1
    soldAmount = 0
    emit StateSwitch(arg1);
}

function buyTokens(address arg1) payable {
    require _token_state <= 6
    require _token_state != 6
    require _token_state <= 6
    require _token_state
    require msg.value >= 1
    require owner != arg1
    require _token_state <= 6
    require _token_state <= 6
    require _token_state <= 6
    require _token_state <= 6
    if _token_state != 2:
        if _token_state != 3:
            if _token_state != 4:
                if _token_state != 5:
                    if msg.value:
                        require msg.value
                        require 132000 * msg.value / msg.value == 132000
                    require soldAmount + (132000 * msg.value) >= 132000 * msg.value
                    require soldAmount + (132000 * msg.value) >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require soldAmount + (132000 * msg.value) <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require soldAmount + (132000 * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require soldAmount + (132000 * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require soldAmount + (132000 * msg.value) <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (132000 * msg.value) >= 13750000 * 10^18 * 3600
                    require 132000 * msg.value <= balances[stor0]
                    balances[stor0] += -132000 * msg.value
                    require (132000 * msg.value) + balances[arg1] >= balances[arg1]
                    require (132000 * msg.value) + balances[arg1] >= 132000 * msg.value
                    balances[address(arg1)] = (132000 * msg.value) + balances[arg1]
                    require (132000 * msg.value) + soldAmount >= soldAmount
                    require (132000 * msg.value) + soldAmount >= 132000 * msg.value
                    soldAmount += 132000 * msg.value
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, 132000 * msg.value, arg1);
                else:
                    if msg.value:
                        require msg.value
                        require ownerPrice * msg.value / msg.value == ownerPrice
                    require soldAmount + (ownerPrice * msg.value) >= ownerPrice * msg.value
                    require soldAmount + (ownerPrice * msg.value) >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require soldAmount + (ownerPrice * msg.value) <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require soldAmount + (ownerPrice * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require soldAmount + (ownerPrice * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require soldAmount + (ownerPrice * msg.value) <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (ownerPrice * msg.value) >= 13750000 * 10^18 * 3600
                    require ownerPrice * msg.value <= balances[stor0]
                    balances[stor0] += -1 * ownerPrice * msg.value
                    require (ownerPrice * msg.value) + balances[arg1] >= balances[arg1]
                    require (ownerPrice * msg.value) + balances[arg1] >= ownerPrice * msg.value
                    balances[address(arg1)] = (ownerPrice * msg.value) + balances[arg1]
                    require (ownerPrice * msg.value) + soldAmount >= soldAmount
                    require (ownerPrice * msg.value) + soldAmount >= ownerPrice * msg.value
                    soldAmount += ownerPrice * msg.value
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, ownerPrice * msg.value, arg1);
            else:
                if _token_state != 5:
                    if msg.value:
                        require msg.value
                        require 528000 * msg.value / msg.value == 528000
                    require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                    require soldAmount + (528000 * msg.value) >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require soldAmount + (528000 * msg.value) <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require soldAmount + (528000 * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require soldAmount + (528000 * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require soldAmount + (528000 * msg.value) <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                    require 528000 * msg.value <= balances[stor0]
                    balances[stor0] += -528000 * msg.value
                    require (528000 * msg.value) + balances[arg1] >= balances[arg1]
                    require (528000 * msg.value) + balances[arg1] >= 528000 * msg.value
                    balances[address(arg1)] = (528000 * msg.value) + balances[arg1]
                    require (528000 * msg.value) + soldAmount >= soldAmount
                    require (528000 * msg.value) + soldAmount >= 528000 * msg.value
                    soldAmount += 528000 * msg.value
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, 528000 * msg.value, arg1);
                else:
                    if msg.value:
                        require msg.value
                        require ownerPrice * msg.value / msg.value == ownerPrice
                    require soldAmount + (ownerPrice * msg.value) >= ownerPrice * msg.value
                    require soldAmount + (ownerPrice * msg.value) >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require soldAmount + (ownerPrice * msg.value) <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require soldAmount + (ownerPrice * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require soldAmount + (ownerPrice * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require soldAmount + (ownerPrice * msg.value) <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (ownerPrice * msg.value) >= 13750000 * 10^18 * 3600
                    require ownerPrice * msg.value <= balances[stor0]
                    balances[stor0] += -1 * ownerPrice * msg.value
                    require (ownerPrice * msg.value) + balances[arg1] >= balances[arg1]
                    require (ownerPrice * msg.value) + balances[arg1] >= ownerPrice * msg.value
                    balances[address(arg1)] = (ownerPrice * msg.value) + balances[arg1]
                    require (ownerPrice * msg.value) + soldAmount >= soldAmount
                    require (ownerPrice * msg.value) + soldAmount >= ownerPrice * msg.value
                    soldAmount += ownerPrice * msg.value
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, ownerPrice * msg.value, arg1);
        else:
            if _token_state != 4:
                if _token_state != 5:
                    if msg.value:
                        require msg.value
                        require 110 * 3600 * msg.value / msg.value == 110 * 3600
                    require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                    require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require soldAmount + (110 * 3600 * msg.value) <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require soldAmount + (110 * 3600 * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require soldAmount + (110 * 3600 * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require soldAmount + (110 * 3600 * msg.value) <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                    require 110 * 3600 * msg.value <= balances[stor0]
                    balances[stor0] += -396000 * msg.value
                    require (110 * 3600 * msg.value) + balances[arg1] >= balances[arg1]
                    require (110 * 3600 * msg.value) + balances[arg1] >= 110 * 3600 * msg.value
                    balances[address(arg1)] = (110 * 3600 * msg.value) + balances[arg1]
                    require (110 * 3600 * msg.value) + soldAmount >= soldAmount
                    require (110 * 3600 * msg.value) + soldAmount >= 110 * 3600 * msg.value
                    soldAmount += 110 * 3600 * msg.value
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, 110 * 3600 * msg.value, arg1);
                else:
                    if msg.value:
                        require msg.value
                        require ownerPrice * msg.value / msg.value == ownerPrice
                    require soldAmount + (ownerPrice * msg.value) >= ownerPrice * msg.value
                    require soldAmount + (ownerPrice * msg.value) >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require soldAmount + (ownerPrice * msg.value) <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require soldAmount + (ownerPrice * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require soldAmount + (ownerPrice * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require soldAmount + (ownerPrice * msg.value) <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (ownerPrice * msg.value) >= 13750000 * 10^18 * 3600
                    require ownerPrice * msg.value <= balances[stor0]
                    balances[stor0] += -1 * ownerPrice * msg.value
                    require (ownerPrice * msg.value) + balances[arg1] >= balances[arg1]
                    require (ownerPrice * msg.value) + balances[arg1] >= ownerPrice * msg.value
                    balances[address(arg1)] = (ownerPrice * msg.value) + balances[arg1]
                    require (ownerPrice * msg.value) + soldAmount >= soldAmount
                    require (ownerPrice * msg.value) + soldAmount >= ownerPrice * msg.value
                    soldAmount += ownerPrice * msg.value
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, ownerPrice * msg.value, arg1);
            else:
                if _token_state != 5:
                    if msg.value:
                        require msg.value
                        require 528000 * msg.value / msg.value == 528000
                    require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                    require soldAmount + (528000 * msg.value) >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require soldAmount + (528000 * msg.value) <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require soldAmount + (528000 * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require soldAmount + (528000 * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require soldAmount + (528000 * msg.value) <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                    require 528000 * msg.value <= balances[stor0]
                    balances[stor0] += -528000 * msg.value
                    require (528000 * msg.value) + balances[arg1] >= balances[arg1]
                    require (528000 * msg.value) + balances[arg1] >= 528000 * msg.value
                    balances[address(arg1)] = (528000 * msg.value) + balances[arg1]
                    require (528000 * msg.value) + soldAmount >= soldAmount
                    require (528000 * msg.value) + soldAmount >= 528000 * msg.value
                    soldAmount += 528000 * msg.value
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, 528000 * msg.value, arg1);
                else:
                    if msg.value:
                        require msg.value
                        require ownerPrice * msg.value / msg.value == ownerPrice
                    require soldAmount + (ownerPrice * msg.value) >= ownerPrice * msg.value
                    require soldAmount + (ownerPrice * msg.value) >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require soldAmount + (ownerPrice * msg.value) <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require soldAmount + (ownerPrice * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require soldAmount + (ownerPrice * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require soldAmount + (ownerPrice * msg.value) <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (ownerPrice * msg.value) >= 13750000 * 10^18 * 3600
                    require ownerPrice * msg.value <= balances[stor0]
                    balances[stor0] += -1 * ownerPrice * msg.value
                    require (ownerPrice * msg.value) + balances[arg1] >= balances[arg1]
                    require (ownerPrice * msg.value) + balances[arg1] >= ownerPrice * msg.value
                    balances[address(arg1)] = (ownerPrice * msg.value) + balances[arg1]
                    require (ownerPrice * msg.value) + soldAmount >= soldAmount
                    require (ownerPrice * msg.value) + soldAmount >= ownerPrice * msg.value
                    soldAmount += ownerPrice * msg.value
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, ownerPrice * msg.value, arg1);
    else:
        if _token_state != 3:
            if _token_state != 4:
                if _token_state != 5:
                    if msg.value:
                        require msg.value
                        require 264000 * msg.value / msg.value == 264000
                    require soldAmount + (264000 * msg.value) >= 264000 * msg.value
                    require soldAmount + (264000 * msg.value) >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require soldAmount + (264000 * msg.value) <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require soldAmount + (264000 * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require soldAmount + (264000 * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require soldAmount + (264000 * msg.value) <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (264000 * msg.value) >= 13750000 * 10^18 * 3600
                    require 264000 * msg.value <= balances[stor0]
                    balances[stor0] += -264000 * msg.value
                    require (264000 * msg.value) + balances[arg1] >= balances[arg1]
                    require (264000 * msg.value) + balances[arg1] >= 264000 * msg.value
                    balances[address(arg1)] = (264000 * msg.value) + balances[arg1]
                    require (264000 * msg.value) + soldAmount >= soldAmount
                    require (264000 * msg.value) + soldAmount >= 264000 * msg.value
                    soldAmount += 264000 * msg.value
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, 264000 * msg.value, arg1);
                else:
                    if msg.value:
                        require msg.value
                        require ownerPrice * msg.value / msg.value == ownerPrice
                    require soldAmount + (ownerPrice * msg.value) >= ownerPrice * msg.value
                    require soldAmount + (ownerPrice * msg.value) >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require soldAmount + (ownerPrice * msg.value) <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require soldAmount + (ownerPrice * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require soldAmount + (ownerPrice * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require soldAmount + (ownerPrice * msg.value) <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (ownerPrice * msg.value) >= 13750000 * 10^18 * 3600
                    require ownerPrice * msg.value <= balances[stor0]
                    balances[stor0] += -1 * ownerPrice * msg.value
                    require (ownerPrice * msg.value) + balances[arg1] >= balances[arg1]
                    require (ownerPrice * msg.value) + balances[arg1] >= ownerPrice * msg.value
                    balances[address(arg1)] = (ownerPrice * msg.value) + balances[arg1]
                    require (ownerPrice * msg.value) + soldAmount >= soldAmount
                    require (ownerPrice * msg.value) + soldAmount >= ownerPrice * msg.value
                    soldAmount += ownerPrice * msg.value
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, ownerPrice * msg.value, arg1);
            else:
                if _token_state != 5:
                    if msg.value:
                        require msg.value
                        require 528000 * msg.value / msg.value == 528000
                    require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                    require soldAmount + (528000 * msg.value) >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require soldAmount + (528000 * msg.value) <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require soldAmount + (528000 * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require soldAmount + (528000 * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require soldAmount + (528000 * msg.value) <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                    require 528000 * msg.value <= balances[stor0]
                    balances[stor0] += -528000 * msg.value
                    require (528000 * msg.value) + balances[arg1] >= balances[arg1]
                    require (528000 * msg.value) + balances[arg1] >= 528000 * msg.value
                    balances[address(arg1)] = (528000 * msg.value) + balances[arg1]
                    require (528000 * msg.value) + soldAmount >= soldAmount
                    require (528000 * msg.value) + soldAmount >= 528000 * msg.value
                    soldAmount += 528000 * msg.value
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, 528000 * msg.value, arg1);
                else:
                    if msg.value:
                        require msg.value
                        require ownerPrice * msg.value / msg.value == ownerPrice
                    require soldAmount + (ownerPrice * msg.value) >= ownerPrice * msg.value
                    require soldAmount + (ownerPrice * msg.value) >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require soldAmount + (ownerPrice * msg.value) <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require soldAmount + (ownerPrice * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require soldAmount + (ownerPrice * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require soldAmount + (ownerPrice * msg.value) <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (ownerPrice * msg.value) >= 13750000 * 10^18 * 3600
                    require ownerPrice * msg.value <= balances[stor0]
                    balances[stor0] += -1 * ownerPrice * msg.value
                    require (ownerPrice * msg.value) + balances[arg1] >= balances[arg1]
                    require (ownerPrice * msg.value) + balances[arg1] >= ownerPrice * msg.value
                    balances[address(arg1)] = (ownerPrice * msg.value) + balances[arg1]
                    require (ownerPrice * msg.value) + soldAmount >= soldAmount
                    require (ownerPrice * msg.value) + soldAmount >= ownerPrice * msg.value
                    soldAmount += ownerPrice * msg.value
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, ownerPrice * msg.value, arg1);
        else:
            if _token_state != 4:
                if _token_state != 5:
                    if msg.value:
                        require msg.value
                        require 110 * 3600 * msg.value / msg.value == 110 * 3600
                    require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                    require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require soldAmount + (110 * 3600 * msg.value) <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require soldAmount + (110 * 3600 * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require soldAmount + (110 * 3600 * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require soldAmount + (110 * 3600 * msg.value) <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                    require 110 * 3600 * msg.value <= balances[stor0]
                    balances[stor0] += -396000 * msg.value
                    require (110 * 3600 * msg.value) + balances[arg1] >= balances[arg1]
                    require (110 * 3600 * msg.value) + balances[arg1] >= 110 * 3600 * msg.value
                    balances[address(arg1)] = (110 * 3600 * msg.value) + balances[arg1]
                    require (110 * 3600 * msg.value) + soldAmount >= soldAmount
                    require (110 * 3600 * msg.value) + soldAmount >= 110 * 3600 * msg.value
                    soldAmount += 110 * 3600 * msg.value
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, 110 * 3600 * msg.value, arg1);
                else:
                    if msg.value:
                        require msg.value
                        require ownerPrice * msg.value / msg.value == ownerPrice
                    require soldAmount + (ownerPrice * msg.value) >= ownerPrice * msg.value
                    require soldAmount + (ownerPrice * msg.value) >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require soldAmount + (ownerPrice * msg.value) <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require soldAmount + (ownerPrice * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require soldAmount + (ownerPrice * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require soldAmount + (ownerPrice * msg.value) <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (ownerPrice * msg.value) >= 13750000 * 10^18 * 3600
                    require ownerPrice * msg.value <= balances[stor0]
                    balances[stor0] += -1 * ownerPrice * msg.value
                    require (ownerPrice * msg.value) + balances[arg1] >= balances[arg1]
                    require (ownerPrice * msg.value) + balances[arg1] >= ownerPrice * msg.value
                    balances[address(arg1)] = (ownerPrice * msg.value) + balances[arg1]
                    require (ownerPrice * msg.value) + soldAmount >= soldAmount
                    require (ownerPrice * msg.value) + soldAmount >= ownerPrice * msg.value
                    soldAmount += ownerPrice * msg.value
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, ownerPrice * msg.value, arg1);
            else:
                if _token_state != 5:
                    if msg.value:
                        require msg.value
                        require 528000 * msg.value / msg.value == 528000
                    require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                    require soldAmount + (528000 * msg.value) >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require soldAmount + (528000 * msg.value) <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require soldAmount + (528000 * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require soldAmount + (528000 * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require soldAmount + (528000 * msg.value) <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                    require 528000 * msg.value <= balances[stor0]
                    balances[stor0] += -528000 * msg.value
                    require (528000 * msg.value) + balances[arg1] >= balances[arg1]
                    require (528000 * msg.value) + balances[arg1] >= 528000 * msg.value
                    balances[address(arg1)] = (528000 * msg.value) + balances[arg1]
                    require (528000 * msg.value) + soldAmount >= soldAmount
                    require (528000 * msg.value) + soldAmount >= 528000 * msg.value
                    soldAmount += 528000 * msg.value
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, 528000 * msg.value, arg1);
                else:
                    if msg.value:
                        require msg.value
                        require ownerPrice * msg.value / msg.value == ownerPrice
                    require soldAmount + (ownerPrice * msg.value) >= ownerPrice * msg.value
                    require soldAmount + (ownerPrice * msg.value) >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require soldAmount + (ownerPrice * msg.value) <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require soldAmount + (ownerPrice * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require soldAmount + (ownerPrice * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require soldAmount + (ownerPrice * msg.value) <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (ownerPrice * msg.value) >= 13750000 * 10^18 * 3600
                    require ownerPrice * msg.value <= balances[stor0]
                    balances[stor0] += -1 * ownerPrice * msg.value
                    require (ownerPrice * msg.value) + balances[arg1] >= balances[arg1]
                    require (ownerPrice * msg.value) + balances[arg1] >= ownerPrice * msg.value
                    balances[address(arg1)] = (ownerPrice * msg.value) + balances[arg1]
                    require (ownerPrice * msg.value) + soldAmount >= soldAmount
                    require (ownerPrice * msg.value) + soldAmount >= ownerPrice * msg.value
                    soldAmount += ownerPrice * msg.value
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, ownerPrice * msg.value, arg1);
}

function buy() payable {
    require _token_state <= 6
    require _token_state != 6
    require _token_state <= 6
    require _token_state
    require msg.value >= 1
    require owner != msg.sender
    require _token_state <= 6
    require _token_state <= 6
    require _token_state <= 6
    require _token_state <= 6
    if _token_state != 2:
        if _token_state != 3:
            if _token_state != 4:
                if _token_state != 5:
                    if msg.value:
                        require msg.value
                        require 132000 * msg.value / msg.value == 132000
                    require soldAmount + (132000 * msg.value) >= 132000 * msg.value
                    require soldAmount + (132000 * msg.value) >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require soldAmount + (132000 * msg.value) <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require soldAmount + (132000 * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require soldAmount + (132000 * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require soldAmount + (132000 * msg.value) <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (132000 * msg.value) >= 13750000 * 10^18 * 3600
                    require 132000 * msg.value <= balances[stor0]
                    balances[stor0] += -132000 * msg.value
                    require (132000 * msg.value) + balances[msg.sender] >= balances[msg.sender]
                    require (132000 * msg.value) + balances[msg.sender] >= 132000 * msg.value
                    balances[address(msg.sender)] = (132000 * msg.value) + balances[msg.sender]
                    require (132000 * msg.value) + soldAmount >= soldAmount
                    require (132000 * msg.value) + soldAmount >= 132000 * msg.value
                    soldAmount += 132000 * msg.value
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, 132000 * msg.value, msg.sender);
                else:
                    if msg.value:
                        require msg.value
                        require ownerPrice * msg.value / msg.value == ownerPrice
                    require soldAmount + (ownerPrice * msg.value) >= ownerPrice * msg.value
                    require soldAmount + (ownerPrice * msg.value) >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require soldAmount + (ownerPrice * msg.value) <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require soldAmount + (ownerPrice * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require soldAmount + (ownerPrice * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require soldAmount + (ownerPrice * msg.value) <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (ownerPrice * msg.value) >= 13750000 * 10^18 * 3600
                    require ownerPrice * msg.value <= balances[stor0]
                    balances[stor0] += -1 * ownerPrice * msg.value
                    require (ownerPrice * msg.value) + balances[msg.sender] >= balances[msg.sender]
                    require (ownerPrice * msg.value) + balances[msg.sender] >= ownerPrice * msg.value
                    balances[address(msg.sender)] = (ownerPrice * msg.value) + balances[msg.sender]
                    require (ownerPrice * msg.value) + soldAmount >= soldAmount
                    require (ownerPrice * msg.value) + soldAmount >= ownerPrice * msg.value
                    soldAmount += ownerPrice * msg.value
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, ownerPrice * msg.value, msg.sender);
            else:
                if _token_state != 5:
                    if msg.value:
                        require msg.value
                        require 528000 * msg.value / msg.value == 528000
                    require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                    require soldAmount + (528000 * msg.value) >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require soldAmount + (528000 * msg.value) <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require soldAmount + (528000 * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require soldAmount + (528000 * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require soldAmount + (528000 * msg.value) <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                    require 528000 * msg.value <= balances[stor0]
                    balances[stor0] += -528000 * msg.value
                    require (528000 * msg.value) + balances[msg.sender] >= balances[msg.sender]
                    require (528000 * msg.value) + balances[msg.sender] >= 528000 * msg.value
                    balances[address(msg.sender)] = (528000 * msg.value) + balances[msg.sender]
                    require (528000 * msg.value) + soldAmount >= soldAmount
                    require (528000 * msg.value) + soldAmount >= 528000 * msg.value
                    soldAmount += 528000 * msg.value
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, 528000 * msg.value, msg.sender);
                else:
                    if msg.value:
                        require msg.value
                        require ownerPrice * msg.value / msg.value == ownerPrice
                    require soldAmount + (ownerPrice * msg.value) >= ownerPrice * msg.value
                    require soldAmount + (ownerPrice * msg.value) >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require soldAmount + (ownerPrice * msg.value) <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require soldAmount + (ownerPrice * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require soldAmount + (ownerPrice * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require soldAmount + (ownerPrice * msg.value) <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (ownerPrice * msg.value) >= 13750000 * 10^18 * 3600
                    require ownerPrice * msg.value <= balances[stor0]
                    balances[stor0] += -1 * ownerPrice * msg.value
                    require (ownerPrice * msg.value) + balances[msg.sender] >= balances[msg.sender]
                    require (ownerPrice * msg.value) + balances[msg.sender] >= ownerPrice * msg.value
                    balances[address(msg.sender)] = (ownerPrice * msg.value) + balances[msg.sender]
                    require (ownerPrice * msg.value) + soldAmount >= soldAmount
                    require (ownerPrice * msg.value) + soldAmount >= ownerPrice * msg.value
                    soldAmount += ownerPrice * msg.value
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, ownerPrice * msg.value, msg.sender);
        else:
            if _token_state != 4:
                if _token_state != 5:
                    if msg.value:
                        require msg.value
                        require 110 * 3600 * msg.value / msg.value == 110 * 3600
                    require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                    require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require soldAmount + (110 * 3600 * msg.value) <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require soldAmount + (110 * 3600 * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require soldAmount + (110 * 3600 * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require soldAmount + (110 * 3600 * msg.value) <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                    require 110 * 3600 * msg.value <= balances[stor0]
                    balances[stor0] += -396000 * msg.value
                    require (110 * 3600 * msg.value) + balances[msg.sender] >= balances[msg.sender]
                    require (110 * 3600 * msg.value) + balances[msg.sender] >= 110 * 3600 * msg.value
                    balances[address(msg.sender)] = (110 * 3600 * msg.value) + balances[msg.sender]
                    require (110 * 3600 * msg.value) + soldAmount >= soldAmount
                    require (110 * 3600 * msg.value) + soldAmount >= 110 * 3600 * msg.value
                    soldAmount += 110 * 3600 * msg.value
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                else:
                    if msg.value:
                        require msg.value
                        require ownerPrice * msg.value / msg.value == ownerPrice
                    require soldAmount + (ownerPrice * msg.value) >= ownerPrice * msg.value
                    require soldAmount + (ownerPrice * msg.value) >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require soldAmount + (ownerPrice * msg.value) <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require soldAmount + (ownerPrice * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require soldAmount + (ownerPrice * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require soldAmount + (ownerPrice * msg.value) <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (ownerPrice * msg.value) >= 13750000 * 10^18 * 3600
                    require ownerPrice * msg.value <= balances[stor0]
                    balances[stor0] += -1 * ownerPrice * msg.value
                    require (ownerPrice * msg.value) + balances[msg.sender] >= balances[msg.sender]
                    require (ownerPrice * msg.value) + balances[msg.sender] >= ownerPrice * msg.value
                    balances[address(msg.sender)] = (ownerPrice * msg.value) + balances[msg.sender]
                    require (ownerPrice * msg.value) + soldAmount >= soldAmount
                    require (ownerPrice * msg.value) + soldAmount >= ownerPrice * msg.value
                    soldAmount += ownerPrice * msg.value
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, ownerPrice * msg.value, msg.sender);
            else:
                if _token_state != 5:
                    if msg.value:
                        require msg.value
                        require 528000 * msg.value / msg.value == 528000
                    require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                    require soldAmount + (528000 * msg.value) >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require soldAmount + (528000 * msg.value) <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require soldAmount + (528000 * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require soldAmount + (528000 * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require soldAmount + (528000 * msg.value) <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                    require 528000 * msg.value <= balances[stor0]
                    balances[stor0] += -528000 * msg.value
                    require (528000 * msg.value) + balances[msg.sender] >= balances[msg.sender]
                    require (528000 * msg.value) + balances[msg.sender] >= 528000 * msg.value
                    balances[address(msg.sender)] = (528000 * msg.value) + balances[msg.sender]
                    require (528000 * msg.value) + soldAmount >= soldAmount
                    require (528000 * msg.value) + soldAmount >= 528000 * msg.value
                    soldAmount += 528000 * msg.value
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, 528000 * msg.value, msg.sender);
                else:
                    if msg.value:
                        require msg.value
                        require ownerPrice * msg.value / msg.value == ownerPrice
                    require soldAmount + (ownerPrice * msg.value) >= ownerPrice * msg.value
                    require soldAmount + (ownerPrice * msg.value) >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require soldAmount + (ownerPrice * msg.value) <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require soldAmount + (ownerPrice * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require soldAmount + (ownerPrice * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require soldAmount + (ownerPrice * msg.value) <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (ownerPrice * msg.value) >= 13750000 * 10^18 * 3600
                    require ownerPrice * msg.value <= balances[stor0]
                    balances[stor0] += -1 * ownerPrice * msg.value
                    require (ownerPrice * msg.value) + balances[msg.sender] >= balances[msg.sender]
                    require (ownerPrice * msg.value) + balances[msg.sender] >= ownerPrice * msg.value
                    balances[address(msg.sender)] = (ownerPrice * msg.value) + balances[msg.sender]
                    require (ownerPrice * msg.value) + soldAmount >= soldAmount
                    require (ownerPrice * msg.value) + soldAmount >= ownerPrice * msg.value
                    soldAmount += ownerPrice * msg.value
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, ownerPrice * msg.value, msg.sender);
    else:
        if _token_state != 3:
            if _token_state != 4:
                if _token_state != 5:
                    if msg.value:
                        require msg.value
                        require 264000 * msg.value / msg.value == 264000
                    require soldAmount + (264000 * msg.value) >= 264000 * msg.value
                    require soldAmount + (264000 * msg.value) >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require soldAmount + (264000 * msg.value) <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require soldAmount + (264000 * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require soldAmount + (264000 * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require soldAmount + (264000 * msg.value) <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (264000 * msg.value) >= 13750000 * 10^18 * 3600
                    require 264000 * msg.value <= balances[stor0]
                    balances[stor0] += -264000 * msg.value
                    require (264000 * msg.value) + balances[msg.sender] >= balances[msg.sender]
                    require (264000 * msg.value) + balances[msg.sender] >= 264000 * msg.value
                    balances[address(msg.sender)] = (264000 * msg.value) + balances[msg.sender]
                    require (264000 * msg.value) + soldAmount >= soldAmount
                    require (264000 * msg.value) + soldAmount >= 264000 * msg.value
                    soldAmount += 264000 * msg.value
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, 264000 * msg.value, msg.sender);
                else:
                    if msg.value:
                        require msg.value
                        require ownerPrice * msg.value / msg.value == ownerPrice
                    require soldAmount + (ownerPrice * msg.value) >= ownerPrice * msg.value
                    require soldAmount + (ownerPrice * msg.value) >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require soldAmount + (ownerPrice * msg.value) <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require soldAmount + (ownerPrice * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require soldAmount + (ownerPrice * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require soldAmount + (ownerPrice * msg.value) <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (ownerPrice * msg.value) >= 13750000 * 10^18 * 3600
                    require ownerPrice * msg.value <= balances[stor0]
                    balances[stor0] += -1 * ownerPrice * msg.value
                    require (ownerPrice * msg.value) + balances[msg.sender] >= balances[msg.sender]
                    require (ownerPrice * msg.value) + balances[msg.sender] >= ownerPrice * msg.value
                    balances[address(msg.sender)] = (ownerPrice * msg.value) + balances[msg.sender]
                    require (ownerPrice * msg.value) + soldAmount >= soldAmount
                    require (ownerPrice * msg.value) + soldAmount >= ownerPrice * msg.value
                    soldAmount += ownerPrice * msg.value
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, ownerPrice * msg.value, msg.sender);
            else:
                if _token_state != 5:
                    if msg.value:
                        require msg.value
                        require 528000 * msg.value / msg.value == 528000
                    require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                    require soldAmount + (528000 * msg.value) >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require soldAmount + (528000 * msg.value) <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require soldAmount + (528000 * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require soldAmount + (528000 * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require soldAmount + (528000 * msg.value) <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                    require 528000 * msg.value <= balances[stor0]
                    balances[stor0] += -528000 * msg.value
                    require (528000 * msg.value) + balances[msg.sender] >= balances[msg.sender]
                    require (528000 * msg.value) + balances[msg.sender] >= 528000 * msg.value
                    balances[address(msg.sender)] = (528000 * msg.value) + balances[msg.sender]
                    require (528000 * msg.value) + soldAmount >= soldAmount
                    require (528000 * msg.value) + soldAmount >= 528000 * msg.value
                    soldAmount += 528000 * msg.value
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, 528000 * msg.value, msg.sender);
                else:
                    if msg.value:
                        require msg.value
                        require ownerPrice * msg.value / msg.value == ownerPrice
                    require soldAmount + (ownerPrice * msg.value) >= ownerPrice * msg.value
                    require soldAmount + (ownerPrice * msg.value) >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require soldAmount + (ownerPrice * msg.value) <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require soldAmount + (ownerPrice * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require soldAmount + (ownerPrice * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require soldAmount + (ownerPrice * msg.value) <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (ownerPrice * msg.value) >= 13750000 * 10^18 * 3600
                    require ownerPrice * msg.value <= balances[stor0]
                    balances[stor0] += -1 * ownerPrice * msg.value
                    require (ownerPrice * msg.value) + balances[msg.sender] >= balances[msg.sender]
                    require (ownerPrice * msg.value) + balances[msg.sender] >= ownerPrice * msg.value
                    balances[address(msg.sender)] = (ownerPrice * msg.value) + balances[msg.sender]
                    require (ownerPrice * msg.value) + soldAmount >= soldAmount
                    require (ownerPrice * msg.value) + soldAmount >= ownerPrice * msg.value
                    soldAmount += ownerPrice * msg.value
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, ownerPrice * msg.value, msg.sender);
        else:
            if _token_state != 4:
                if _token_state != 5:
                    if msg.value:
                        require msg.value
                        require 110 * 3600 * msg.value / msg.value == 110 * 3600
                    require soldAmount + (110 * 3600 * msg.value) >= 110 * 3600 * msg.value
                    require soldAmount + (110 * 3600 * msg.value) >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require soldAmount + (110 * 3600 * msg.value) <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require soldAmount + (110 * 3600 * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require soldAmount + (110 * 3600 * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require soldAmount + (110 * 3600 * msg.value) <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (110 * 3600 * msg.value) >= 13750000 * 10^18 * 3600
                    require 110 * 3600 * msg.value <= balances[stor0]
                    balances[stor0] += -396000 * msg.value
                    require (110 * 3600 * msg.value) + balances[msg.sender] >= balances[msg.sender]
                    require (110 * 3600 * msg.value) + balances[msg.sender] >= 110 * 3600 * msg.value
                    balances[address(msg.sender)] = (110 * 3600 * msg.value) + balances[msg.sender]
                    require (110 * 3600 * msg.value) + soldAmount >= soldAmount
                    require (110 * 3600 * msg.value) + soldAmount >= 110 * 3600 * msg.value
                    soldAmount += 110 * 3600 * msg.value
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, 110 * 3600 * msg.value, msg.sender);
                else:
                    if msg.value:
                        require msg.value
                        require ownerPrice * msg.value / msg.value == ownerPrice
                    require soldAmount + (ownerPrice * msg.value) >= ownerPrice * msg.value
                    require soldAmount + (ownerPrice * msg.value) >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require soldAmount + (ownerPrice * msg.value) <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require soldAmount + (ownerPrice * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require soldAmount + (ownerPrice * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require soldAmount + (ownerPrice * msg.value) <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (ownerPrice * msg.value) >= 13750000 * 10^18 * 3600
                    require ownerPrice * msg.value <= balances[stor0]
                    balances[stor0] += -1 * ownerPrice * msg.value
                    require (ownerPrice * msg.value) + balances[msg.sender] >= balances[msg.sender]
                    require (ownerPrice * msg.value) + balances[msg.sender] >= ownerPrice * msg.value
                    balances[address(msg.sender)] = (ownerPrice * msg.value) + balances[msg.sender]
                    require (ownerPrice * msg.value) + soldAmount >= soldAmount
                    require (ownerPrice * msg.value) + soldAmount >= ownerPrice * msg.value
                    soldAmount += ownerPrice * msg.value
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, ownerPrice * msg.value, msg.sender);
            else:
                if _token_state != 5:
                    if msg.value:
                        require msg.value
                        require 528000 * msg.value / msg.value == 528000
                    require soldAmount + (528000 * msg.value) >= 528000 * msg.value
                    require soldAmount + (528000 * msg.value) >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require soldAmount + (528000 * msg.value) <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require soldAmount + (528000 * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require soldAmount + (528000 * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require soldAmount + (528000 * msg.value) <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (528000 * msg.value) >= 13750000 * 10^18 * 3600
                    require 528000 * msg.value <= balances[stor0]
                    balances[stor0] += -528000 * msg.value
                    require (528000 * msg.value) + balances[msg.sender] >= balances[msg.sender]
                    require (528000 * msg.value) + balances[msg.sender] >= 528000 * msg.value
                    balances[address(msg.sender)] = (528000 * msg.value) + balances[msg.sender]
                    require (528000 * msg.value) + soldAmount >= soldAmount
                    require (528000 * msg.value) + soldAmount >= 528000 * msg.value
                    soldAmount += 528000 * msg.value
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, 528000 * msg.value, msg.sender);
                else:
                    if msg.value:
                        require msg.value
                        require ownerPrice * msg.value / msg.value == ownerPrice
                    require soldAmount + (ownerPrice * msg.value) >= ownerPrice * msg.value
                    require soldAmount + (ownerPrice * msg.value) >= soldAmount
                    require _token_state <= 6
                    if _token_state == 1:
                        require soldAmount + (ownerPrice * msg.value) <= 330000000 * 10^18
                    require _token_state <= 6
                    if _token_state == 2:
                        require soldAmount + (ownerPrice * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 3:
                        require soldAmount + (ownerPrice * msg.value) <= 2750000 * 10^18 * 3600
                    require _token_state <= 6
                    if _token_state == 4:
                        require soldAmount + (ownerPrice * msg.value) <= 2750000 * 10^18 * 3600
                    require balances[stor0] - (ownerPrice * msg.value) >= 13750000 * 10^18 * 3600
                    require ownerPrice * msg.value <= balances[stor0]
                    balances[stor0] += -1 * ownerPrice * msg.value
                    require (ownerPrice * msg.value) + balances[msg.sender] >= balances[msg.sender]
                    require (ownerPrice * msg.value) + balances[msg.sender] >= ownerPrice * msg.value
                    balances[address(msg.sender)] = (ownerPrice * msg.value) + balances[msg.sender]
                    require (ownerPrice * msg.value) + soldAmount >= soldAmount
                    require (ownerPrice * msg.value) + soldAmount >= ownerPrice * msg.value
                    soldAmount += ownerPrice * msg.value
                    call owner with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit Buy(msg.value, ownerPrice * msg.value, msg.sender);
}



}
